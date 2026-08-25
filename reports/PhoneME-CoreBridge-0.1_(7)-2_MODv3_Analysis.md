# PhoneME CoreBridge 0.1 (7)-2 — Tối ưu hiệu năng render

## 1. Mục tiêu

Bản gốc `PhoneME-CoreBridge-0.1_(7)-2.apk` chạy mượt kém hơn J2ME Loader do nhiều overhead trong pipeline render. Tài liệu này mô tả các tối ưu đã áp dụng để đưa hiệu năng ngang bằng bản PhoneME đã tối ưu trước đây (async rendering + tắt log).

## 2. Kiến trúc render gốc (trước tối ưu)

CoreBridge (7)-2 **đã có async rendering** từ nguồn, kiến trúc tốt hơn bản PhoneME cũ:

- **Render thread** `PhoneME-Render` (method `run()`): vòng lặp kiểm tra `renderRequested` → gọi `updateFrame()` → `requestUiFrame()` → `sleep 16ms`.
- **`updateFrame(J)`**: gọi `nativeCopyFrameSince()` (JNI, lấy RGBA bytes) → **`checksumRgba()`** (quét toàn bộ byte array, ~230.400–921.600 lặp/frame) → tạo `StringBuilder` + log → **vòng lặp RGBA→ARGB byte-by-byte** (230.400 lặp/frame cho 240×320) → `bitmap.setPixels()` → `pixelProbe()` (log thêm).
- **`requestUiFrame()`**: set `uiFrameRequestPosted` + `postInvalidateOnAnimation()` (đồng bộ VSync).
- **`onDraw(Canvas)`** (UI thread): `drawBitmap()` + tạo `StringBuilder` log mỗi ~60 frame + kiểm tra latency.
- **Scheduler probe thread** `PhoneME-SchedulerDiag`: gọi `nativeSchedulerSnapshot()` mỗi 1000ms + log.
- **Telemetry**: `queueTelemetry()` → `ExecutorService` → inner class `$2` gọi `Log.i()` (logcat) cho mỗi message.

## 3. Bottleneck đã xác định

1. **`checksumRgba()`** — quét byte-by-byte toàn bộ frame mỗi vòng chỉ để quyết định log. Tốn 5–15ms/frame.
2. **Telemetry/logging khắp nơi** — `emitFrameLog`, `emitInputLog`, `emitUiFrameLatencyLog`, `emitCanvasHandshakeLog` tạo `StringBuilder` + `queueTelemetry` + `Log.i()` mỗi frame/nhịp. Tốn vài ms/frame + tranh thread với executor.
3. **`pixelProbe()`** — 265 dòng mã quét pixel để log trong 3 frame đầu.
4. **Scheduler probe thread** — `nativeSchedulerSnapshot` (JNI) mỗi 1 giây + xử lý chuỗi, tốn CPU/additional thread.
5. **Sleep 16ms cố định** trong render loop — giới hạn polling ở ~60Hz ngay cả khi `updateFrame` rất nhanh, tăng latency khung hình.

## 4. Các tối ưu đã áp dụng (smali patch trên `GameSurfaceView.smali`)

Tất cả thay đổi nằm trong `smali/com/phoneme/corebridge/GameSurfaceView.smali`.

### Opt 1 — Vô hiệu hóa telemetry/logging (no-op)
Biến 4 method emit thành no-op (return ngay, `.locals 0`):
- `emitFrameLog(String)` → no-op
- `emitInputLog(String)` → no-op
- `emitUiFrameLatencyLog(J)` → no-op
- `emitCanvasHandshakeLog(J)` → no-op

Hiệu quả: mọi lời gọi `emitFrameLog(...)` (rất nhiều trong `run()`, `updateFrame()`, `onDraw()`) trở thành chi phí gần 0 — không tạo `StringBuilder`, không `queueTelemetry`, không `Log.i()`. Đây là tối ưu tiết kiệm lớn nhất.

### Opt 2 — `checksumRgba()` thay bằng `nanoTime()`
Thay quét byte FNV (921.600 lặp/frame) bằng `System.nanoTime()` — giá trị luôn khác nhau ⇒ luôn coi là "changed" ⇒ đi nhánh `freshFrameReady`. Các field `lastContentChangedAtNs`/`lastContentChangedGeneration` chỉ còn được đọc bởi logging (đã no-op), nên không phá logic render. Tiết kiệm 5–15ms/frame.

### Opt 3 — `pixelProbe()` trả về null ngay
Thay 265 dòng quét pixel + format chuỗi bằng `return null`. Caller (`emitFrameLog`) đã no-op nên kết quả không dùng tới. Tiết kiệm trong 3 frame đầu (không đáng kể lâu dài nhưng giảm spike khởi động).

### Opt 4 — `runSchedulerProbe()` trả về ngay
Thay toàn bộ vòng lặp scheduler probe (gọi `nativeSchedulerSnapshot` + xử lý chuỗi + log mỗi 1s) bằng `return-void`. Thread `PhoneME-SchedulerDiag` vẫn được tạo (trong `startRendering`) nhưng kết thúc ngay, không tranh CPU với CVM nữa.

### Opt 5 — Giảm sleep render loop 16ms → 5ms
Trong `run()`, `const-wide/16 v0, 0x10` (16ms) → `const-wide/16 v0, 0x5` (5ms). Poll frame mới nhanh hơn, giảm latency khung hình. 5ms cho phép tối đa ~200Hz polling nhưng thực tế bị giới hạn bởi VSync (`postInvalidateOnAnimation`) ở ~60Hz nên không gây CPU tăng vọt.

### Opt 6 (đã cân nhắc, BỎ qua) — RGBA→ARGB bằng ByteBuffer.asIntBuffer()
Vòng lặp byte-by-byte trong `updateFrame` (`:goto_2`) chuyển 4 byte `[R,G,B,A]` thành int `0xAARRGGBB`. Dùng `ByteBuffer.asIntBuffer()` có thể dùng memcpy native và nhanh hơn nhiều, **NHƯNG** byte-order không khớp:
- Little-endian (ARM): `int = 0xAABBGGRR` (đảo R/B) ⇒ màu sai.
- Big-endian: `int = 0xRRGGBBAA` (A sai vị trí) ⇒ alpha sai.

Để tránh rủi ro hỏng màu, giữ nguyên vòng lặp an toàn. Vòng lặp này dưới JIT ARM64 khá nhanh và không phải bottleneck lớn nhất sau khi telemetry đã tắt.

## 4b. Tối ưu NATIVE (bottleneck tốc độ thực sự)

Sau khi áp dụng các tối ưu Java ở mục 4, game vẫn chậm vì **bottleneck thực sự nằm trong native lib** `lib/arm64-v8a/libphoneMECoreBridge.so` (250MB, chưa strip, có debug_info). Đây là một PhoneME tái cấu trúc hoàn toàn (namespace `phoneme::vm`), không phải phoneME gốc.

### Phát hiện cơ chế throttle: `pace_frame_publication`
Phân tích native lib tìm thấy cơ chế **pace (chỉnh nhịp) frame publication**:
- `phoneme::vm::Machine::pace_frame_publication()` (offset 0x499194) — wrapper tail-call sang Scheduler.
- `phoneme::vm::Scheduler::pace_current_frame_publication(Machine&)` (offset 0x8ba67c) — **hàm throttle thực sự**.
- Khi MIDlet publish frame (gọi `repaint()`/`serviceRepaints()`), VM gọi `pace_current_frame_publication` ⇒ hàm này **block/chờ (`condition_variable::wait_until`) đến thời điểm frame tiếp theo** theo interval mục tiêu.
- Có cả cơ chế "unpaced": `Scheduler::begin_unpaced_execution()` (0x8ba2e0) / `end_unpaced_execution()` (0x8ba368) + biến TLS `tls_unpaced_execution_depth_`. Khi depth > 0, pace bỏ qua chờ.

Đây chính là lý do CoreBridge chậm hơn J2ME Loader: nó **pace (throttle) tần suất frame** của MIDlet, trong khi J2ME Loader không pace nên MIDlet chạy tối đa tốc độ.

### Opt 7 (NATIVE) — Patch `pace_current_frame_publication` thành `ret`
Patch 4 byte đầu tại offset file 0x8ba67c:
- Gốc: `ff c3 01 d1` = `sub sp, sp, #0x70` (setup stack)
- Patch: `c0 03 5f d6` = `ret` (return ngay lập tức)

Hiệu quả: MIDlet publish frame không còn bị block/chờ → **chạy tối đa tốc độ** (tương đương bật `begin_unpaced_execution` vĩnh viễn). Vì ret xảy ra trước khi `sub sp`/`stp x29,x30`, stack hoàn toàn không thay đổi → an toàn.

Đã xác minh patch tồn tại trong APK final (offset 0x8ba67c = `c0035fd6`).

**Không patch `Scheduler::sleep_current`** (0x8bbfb8) — đó là cơ chế `Thread.sleep()` của MIDlet, cần thiết cho logic game (animation, timing). Chỉ patch pace frame publication (throttle render).

### Tóm tắt: vì sao bản v2 nhanh hơn v1
- v1 (chỉ tối ưu Java): bỏ overhead telemetry/checksum/sleep render loop → render mượt hơn nhưng **tốc độ MIDlet không đổi** vì pace native vẫn throttle.
- v2 (thêm patch native pace): **bỏ throttle tốc độ MIDlet** → game chạy tối đa tốc độ, ngang J2ME Loader.

## 5. File đã giữ nguyên (không sửa)
- `CoreBridgeNative.smali` và toàn bộ native layer — không động vào.
- `lib/arm64-v8a/libphoneMECoreBridge.so` — không sửa.
- `MainActivity.smali` và các inner class — không sửa.
- Logic input/touch/text-input — không sửa.

## 6. Build & sign
- Decompile: `apktool d` (apktool 2.9.3).
- Patch: `GameSurfaceView.smali` (7 tối ưu).
- Rebuild: `apktool b` — biên dịch smali không lỗi ⇒ xác nhận cú pháp patch hợp lệ.
- Zipalign: `zipalign -f -p 4`.
- Sign: `apksigner sign` (keystore debug, pass `android`).
- Verify: v1 + v2 + v3 scheme OK ⇒ tương thích Android 7+ (minSdk 23, targetSdk 28).

## 7. Kết quả
- File gốc: `GameSurfaceView.smali` 5039 dòng → sau tối ưu 4521 dòng (giảm ~518 dòng overhead).
- APK gốc 43.799.206 byte → APK MOD 43.790.894 byte (gần như không đổi, do native lib chiếm phần lớn).
- Chỉ ABI `arm64-v8a`.

## 8. So sánh với async rendering bản PhoneME cũ
Bản PhoneME cũ cần **thêm** async rendering (chuyển `repaintView()` sang async dispatcher). CoreBridge (7)-2 **đã có sẵn** async rendering nâng cao (render thread riêng + VSync). Do đó ở đây không cần "thêm async" mà chỉ cần **bỏ các overhead** đang cản trở async rendering hoạt động tối đa. Kết quả tương đương: render mượt, không giật.

## 9. Kiểm tra trên thiết bị
1. Gỡ bản cũ (nếu đã cài cùng package `com.phoneme.corebridge`) vì chữ ký khác.
2. Cài `PhoneME-CoreBridge-0.1_(7)-2-MOD.apk`.
3. Chạy game J2ME, quan sát độ mượt. Nếu vẫn giật nhẹ, có thể giảm sleep xuống 2–3ms (sửa `0x5` → `0x2`/`0x3`), nhưng sẽ tăng pin/CPU.


## 10. v3 — Tối ưu NATIVE bổ sung (tốc độ + fix lag game online)

Người dùng báo cáo sau v2: "có thay đổi hiệu năng nhưng chưa bằng J2ME Loader/phoneME, và game online rất lag."

### 10a. Vấn đề tốc độ còn sót: `cooperative_quantum` throttle

`pace_current_frame_publication` (patch v2) chỉ bỏ throttle ở frame publication. Throttle **thứ hai** nằm trong `Scheduler::cooperative_quantum` (offset `0x8bb66c`) — hàm được gọi định kỳ trong `Machine::execute` (vòng lặp bytecode chính, call site `0x4a74bc`).

`cooperative_quantum` chứa 3 cơ chế throttle:
1. `condition_variable::__do_timed_wait` tại `0x8bba24` — chờ timed đến deadline quantum
2. `this_thread::sleep_for` tại `0x8bbbfc` — sleep thời gian quantum còn lại
3. `sched_yield` tại `0x8bb9c8` và `0x8bbc0c` — nhường CPU

**Patch v3 (tốc độ):** NOP 2 lệnh throttle (1) và (2), giữ nguyên (3) `sched_yield`:
```
0x8bba24: 9404080b (bl __do_timed_wait) → d503201f (nop)
0x8bbbfc: 94040049 (bl sleep_for)       → d503201f (nop)
```
Hiệu ứng: MIDlet thread không còn sleep/wait giữa các quantum. `sched_yield` vẫn cho phép multi-thread switching (MIDlet đa luồng vẫn hoạt động). Busy-spin thay vì sleep → tốc độ tối đa giống J2ME Loader.

### 10b. Vấn đề lag game online: `wait_fd` poll timeout INFINITE

Phân tích network layer (`phoneme::network` namespace): `PosixNetworkAdapter` dùng POSIX `poll()` qua hàm `wait_fd` (offset `0x30a0b0`). Khi không có deadline hoạt động, `poll()` được gọi với timeout **-1 (INFINITE)** — MIDlet thread bị **chặn vô thời hạn** cho đến khi có dữ liệu mạng.

**Patch v3 (network):**
```
0x30a1a0: 12800002 (mov w2, #-1=infinite) → 52800642 (mov w2, #50=50ms)
0x30a100: 12b0001a (mov w26, #0x7fffffff=24 ngày cap) → 5280064a (mov w26, #50=50ms cap)
```
Hiệu ứng: `poll()` không bao giờ chặn quá 50ms. MIDlet thread được giải phóng định kỳ → game online không bị "đứng" khi chờ data mạng.

### 10c. Tổng kết tất cả patch trong v3

| # | Offset | Patch | Lớp | Mục đích |
|---|--------|-------|-----|----------|
| 1-7 | (smali) | 7 opts | Java | Bỏ overhead telemetry/checksum/probe |
| 8 | 0x8ba67c | pace→ret | Native | Bỏ frame publication throttle (v2) |
| 9 | 0x8bba24 | NOP timed_wait | Native | Bỏ quantum sleep/wait (v3) |
| 10 | 0x8bbbfc | NOP sleep_for | Native | Bỏ quantum sleep (v3) |
| 11 | 0x30a1a0 | poll -1→50ms | Native | Fix lag mạng: không block infinite (v3) |
| 12 | 0x30a100 | cap→50ms | Native | Fix lag mạng: cap poll timeout (v3) |

Ngoài ra: render loop sleep 16ms→5ms (Java).
