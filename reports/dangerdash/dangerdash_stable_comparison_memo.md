# Danger Dash — đối chiếu Turbo Stable và CoreBridge

**Tác giả:** Manus AI  
**Ngày:** 27-08-2026  
**Phạm vi:** Phân tích thụ động log Turbo Stable, đối chiếu với log CoreBridge và source snapshot hiện còn trong workspace. Không tạo hoặc phát hành JAR/APK mới trong chu kỳ này.

## Kết luận ngắn

Log Turbo Stable **có giá trị**, nhưng không theo cách ban đầu là tìm một dòng log trực tiếp nói rằng Danger Dash đã đọc ảnh nào hoặc gọi `DirectGraphics.drawPixels` ra sao. Giá trị lớn nhất của nó là cho thấy Stable và CoreBridge đang dùng **hai pipeline native/render khác nhau**, đồng thời cảnh báo `bitmapBuffer is NULL` không phải nguyên nhân gây màn hình đen: Stable cũng ghi cảnh báo này **1.398 lần trong đúng phiên Danger Dash mà người dùng xác nhận chạy được**.

Bằng chứng hiện tại đẩy trọng tâm khỏi các thử nghiệm JAR ở lớp gọi cuối `drawPixels`/`drawRGB`, và hướng về **đường đi của pixel bên trong CoreBridge**: cách `DirectGraphics`/`Graphics` ghi vào Image target, cách dirty region được công bố vào framebuffer, và cách pixel Image được chuyển qua `rgb565_roundtrip` trước khi xuất RGBA. Không nên tiếp tục vá JAR mù trước khi có một kiểm tra generic ở source/native hoặc một artifact Stable/source đầy đủ để so sánh sâu hơn.

## 1. Phiên Stable chính xác đã được khoanh vùng

Phiên cuối trong log Stable nằm trong khoảng **21:23:57.600–21:24:22.200**, PID chính là **31840**, package là `be.preuveneers.phoneme.fpmidp`. Trình tự Android cho thấy `PhoneMEActivity` mở `MidletActivity`, sau đó tạo `FrameBufferActivity`; surface được tạo với diện tích logic **360×640**, đúng kích thước Danger Dash đang dùng.

| Mốc quan sát được | Bằng chứng trong log Stable |
|---|---|
| Tạo framebuffer | `FrameBufferActivity.onCreate`, `GLFramebufferView created and added to layout OK` |
| Kích thước logic | `initFrameBufferSize: surface area is 360x640` và `resizeFrameBuffer: surface area is 360x640` |
| Kích thước view Android | `GLFramebufferView.onMeasure: view size 1080x2087` |
| CVM được gọi | `/data/data/be.preuveneers.phoneme.fpmidp/foundation/bin/cvm` |
| JAD được truyền vào CVM | `/data/user/0/be.preuveneers.phoneme.fpmidp/DangerDash_Nokia_5800_EN_IGP_IAP_EU_TS_109.jad` |
| Khởi tạo render | 7 lần đầu `fbCanvasReady=FALSE`, sau đó 1 lần `renderFrame returned FALSE`, rồi chuyển sang `TRUE` |
| Kết thúc phiên | `FrameBufferActivity.onPause/onStop`, sau đó `fbCanvasReady=FALSE` lặp lại |

Tên JAD trong log **khớp tên file Danger Dash gốc** đã có trong workspace. Người dùng đã xác nhận phiên Turbo Stable dùng đúng lõi của JAR gốc; chỉ có thể đổi tên file, không thay đổi nội dung. Vì vậy provenance JAR không còn là biến số cần điều tra trong so sánh này.

## 2. Cảnh báo `bitmapBuffer NULL` không phải nguyên nhân màn hình đen

Trong phiên Stable cuối, bộ đếm pipeline là:

| Chỉ số | Số lần |
|---|---:|
| `updateView: called` | 1.406 |
| `fbCanvasReady=FALSE` | 7 |
| `renderFrame returned TRUE` | 1.398 |
| `renderFrame returned FALSE` | 1 |
| `forwardToGL: pushing fbBitmap frame to GL` | 1.398 |
| `pushFrame(Bitmap) -> submitFrame + requestRender` | 1.398 |
| `forwardToGL: bitmapBuffer is NULL, no frame to push` | 1.398 |

Thứ tự lặp được ghi nhận là:

> `renderFrame returned TRUE` → `forwardToGL: pushing fbBitmap frame to GL` → `pushFrame(Bitmap) -> submitFrame + requestRender` → `bitmapBuffer is NULL, no frame to push`

Vì Stable vẫn chạy được Danger Dash theo xác nhận trực quan của người dùng, dòng `bitmapBuffer is NULL` phải được xem là **cảnh báo của một nhánh phụ hoặc biến debug không đại diện cho Bitmap đã được gửi qua `pushFrame(Bitmap)`**, không phải bằng chứng rằng toàn bộ frame bị mất. Do đó không nên sửa CoreBridge chỉ bằng cách mô phỏng hoặc loại bỏ cảnh báo này.

Một chi tiết tương tự là lần `renderFrame returned FALSE` duy nhất xuất hiện ngay sau `surfaceCreated`; sau đó `renderFrame` chuyển sang `TRUE` ổn định. Đây là hành vi khởi tạo surface, không phải lỗi render kéo dài.

## 3. Stable không cung cấp log resource/decode/DirectGraphics đủ để kết luận format ảnh

Log Stable không có dấu vết game-level đáng tin cậy cho `Class.getResourceAsStream`, `/I`, `/S`, `/T`, `/SP`, `drawPixels`, `drawRGB`, PNG/JPEG/GIF decode hay checksum pixel. Nguyên nhân đã được ghi trực tiếp trong cùng phiên:

> `callCVM: Not redirecting stdout and stderr handles`

Vì stdout/stderr của CVM không được chuyển vào logcat, việc **không thấy** thông báo resource hoặc decoder không thể được diễn giải là Stable không đọc resource, cũng không thể dùng để chứng minh Danger Dash chỉ sử dụng PNG. Phần log Android còn lại chủ yếu là activity, surface, input và HWUI; các dòng `HWUI: Image decoding logging dropped!` không gắn được với đường nạp ảnh của game và không nên dùng làm bằng chứng engine.

## 4. Khác biệt native giữa Stable và CoreBridge là khác biệt thực chất

Mổ tĩnh APK cho thấy Stable không dùng cùng lớp native với CoreBridge.

| Thành phần | Stable | CoreBridge |
|---|---|---|
| VM/runtime được gọi trong phiên | `foundation/bin/cvm`, ELF **32-bit ARM** | `libphoneMECoreBridge.so`, ELF **64-bit AArch64** |
| Lớp JNI framebuffer | Có `FrameBufferView_renderFrame`, `copyToBuffer`, `toRGB565`, `flush_framebuffer`, Android `Bitmap` lock/unlock | Không có Android Bitmap bridge tương ứng; xuất qua C API `phoneme_copy_frame_rgba(_since)` |
| Native framebuffer | `connectFrameBuffer`, `initFrameBuffer`, `resizeFrameBuffer`, `get_surface_buffer` trong CVM | `Framebuffer`, `replace/update_regions`, `copy_current_frame_rgba` trong runtime riêng |
| Decoder tích hợp thấy được | Stable `libcvm.so` có các entry point JPEG/PNG legacy | CoreBridge có PNG decoder; string native còn ghi `JPEG/GIF decoding is unavailable on this platform` |
| Graphics implementation | Legacy CVM + JNI shim | Monolithic `GraphicsNatives`, `ImageNatives`, M3G/Image2D và Nokia `DirectGraphics` trong cùng native |

Stable APK đồng thời chứa `foundation64/bin/libcvm.so` 64-bit, nhưng **log phiên đang chạy gọi rõ `foundation/bin/cvm`**, tức nhánh 32-bit ARM. Đây là khác biệt đã quan sát được, không phải suy đoán. Nó không tự động chứng minh Danger Dash cần VM 32-bit, nhưng chứng minh hai bản không thể được xem là cùng một implementation chỉ vì cùng tên phoneME.

## 5. CoreBridge hiện đang xuất frame qua đường riêng của nó

Source snapshot còn lại của CoreBridge cho thấy `publish_canvas_graphics` lấy `Graphics.target`, truy ra Image đang làm đích vẽ, kiểm tra dirty region rồi chuyển pixel Image sang framebuffer. Cả nhánh cập nhật vùng và nhánh thay thế full-frame đều gọi `convert_image_region_to_rgba`; trong hàm này, mỗi pixel đi qua:

```cpp
graphics::rgb565_roundtrip(source_pixels[source++])
```

Sau đó CoreBridge ghi lần lượt red, green, blue và alpha vào framebuffer. C API `phoneme_copy_frame_rgba`/`phoneme_copy_frame_rgba_since` đọc framebuffer đó để đưa cho host Android. Vì vậy, pixel probe đã cho thấy **buffer cuối là 360×640, 921.600 byte, đen opaque**, nhưng điều đó chưa chỉ ra được pixel bị đen ở bước nào trong chuỗi:

1. Danger Dash có thể chưa ghi được vào Image target mà CoreBridge đang dùng;
2. `DirectGraphics` có thể đang đi qua một native path khác với path đã vá ở hai call-site public;
3. dirty-region/publication có thể công bố Image đen hoặc không công bố nội dung renderer thực tế;
4. hoặc dữ liệu đã bị biến đổi trước khi C API đọc ra.

Các thử nghiệm trước đã loại bớt những thay đổi ở cache `g.o`, lazy decoder `g.y`, transparency và hai call-site public `drawRGB`, nhưng **chưa loại được toàn bộ path generic trong `GraphicsNatives`/`ImageNatives`**. Đặc biệt, hai call-site private renderer chưa có device test hợp lệ.

## 6. Disassembly xác nhận pipeline Stable

Disassembly `classes.dex` của Turbo Stable làm rõ các dòng log mà logcat đơn thuần không thể giải thích. `FrameBufferView.renderFrame(Bitmap)`, `initFrameBufferView()`, `initFrameBufferSize(int,int,ShortBuffer,int)`, `resizeFrameBuffer(int,int,ShortBuffer)`, `setBusy(boolean)`, `getNativeAPIVersion()`, `toRGB565(...)` và `copyToBuffer(Buffer)` đều là **native methods**. Trong đó, `surfaceCreated`/`surfaceChanged` cấp phát `fbBitmap` kiểu `RGB_565` cùng một direct `ShortBuffer` có kích thước `targetWidth × targetHeight × 2`, rồi truyền buffer này vào native init/resize.

Đường cập nhật Stable được xác nhận như sau:

1. `updateView()` kiểm tra `fbCanvasReady`; nếu chưa sẵn sàng thì trả về.
2. Khi sẵn sàng, nó khóa `fbBitmap`, gọi native `renderFrame(fbBitmap)`, và chỉ khi trả về `TRUE` mới gọi `fbBitmap.copyPixelsFromBuffer(bitmapBuffer)`.
3. Sau đó `repaintView()` chuyển `fbBitmap` vào `GLFramebufferView`, nơi renderer dùng đường Bitmap hoặc `ShortBuffer` RGB565 để nạp texture.
4. Vì vậy, cảnh báo `bitmapBuffer is NULL` có thể xuất hiện ở nhánh forwarding ShortBuffer dù frame thực tế đang đi qua nhánh `Bitmap`; disassembly xác nhận đây là nhánh phụ, không phải bằng chứng frame Stable rỗng.

CoreBridge không có source snapshot tương đương cho các native handler này. Archive còn lại có Runtime/publication và khai báo API built-in, nhưng không có implementation đầy đủ của `GraphicsNatives`/`ImageNatives` hoặc recipe native để rebuild. Do đó chưa thể port cơ chế Stable một cách an toàn chỉ từ APK và log.

## 7. Đối chiếu trực tiếp với CoreBridge

CoreBridge log 21:05 xác nhận JAR thực sự chạy là `DangerDash-graphics-drawrgb-patched.jar`, không phải `DangerDash-private-drawrgb-patched.jar`. Native khởi động thành công, VM tồn tại, paint callback/commit tăng, frame được copy với kích thước đúng **360×640**, nhưng checksum lặp lại `a9df1d5340c2c325`; pixel probe ở phiên decode-fallback cũng xác nhận toàn bộ buffer cuối là black opaque.

Các trường `gameCanvasRegistered=0` và `gameGraphicsAttached=0` lặp lại trong scheduler snapshot. Đây là tín hiệu đáng chú ý vì CoreBridge vẫn có paint callback/commit, nhưng instrumentation không nhìn thấy Canvas game theo cách mà các trường trạng thái đó kỳ vọng. Chưa đủ cơ sở để gọi đây là root cause, bởi Farm Frenzy 2 đã PASS trên r64; tuy nhiên nó củng cố việc cần kiểm tra **đường gắn Graphics/Image target và publication**, thay vì chỉ thay đổi lệnh vẽ cuối trong JAR.

| Câu hỏi | Kết quả hiện tại |
|---|---|
| Stable có chạy được CVM và surface 360×640 không? | Có, thể hiện rõ trong log. |
| Stable có cùng cảnh báo `bitmapBuffer NULL` không? | Có, 1.398 lần trong phiên chạy được. |
| Stable log có chứng minh resource/decode nào làm nên khác biệt không? | Không; stdout/stderr CVM không được redirect. |
| CoreBridge có thực sự chạy JAR private drawRGB không? | Không; log 21:16 ghi JAR public `graphics-drawrgb-patched`. |
| Các patch JAR public/cache/alpha đã sửa được frame không? | Chưa; frame vẫn đen opaque. |
| Private artifact đã thất bại chưa? | Chưa thể kết luận; chưa có device test đúng artifact. |

## 8. Quyết định kỹ thuật sau đối chiếu

**Không phát hành JAR/APK mới ở bước này.** Stable log đã trả lời được câu hỏi quan trọng nhất: lỗi không nằm đơn giản ở `bitmapBuffer NULL`, cũng không thể suy ra chỉ từ Canvas/Surface lifecycle Android. Việc tiếp tục tạo thêm một JAR mutation khác sẽ không làm tăng chất lượng bằng chứng.

Nếu tiếp tục điều tra, hướng hợp lý là một trong hai hướng sau. Hướng ưu tiên là kiểm tra generic CoreBridge ở `GraphicsNatives`/`ImageNatives` và `Runtime::publish_canvas_graphics`, với một probe nội bộ tối thiểu cho biết sau một lần gọi `drawPixels` hoặc `drawRGB`: Image target có dirty không, pixel đầu/cuối của Image là gì, framebuffer trước/sau publication có thay đổi không. Probe phải dùng game độc lập hoặc API test nhỏ, không hardcode Danger Dash và không thay đổi mốc r64.

Hướng có giá trị đối chiếu cao hơn nhưng phụ thuộc dữ liệu là lấy source/build artifact đầy đủ của Turbo Stable, hoặc ít nhất phần triển khai `FrameBufferView_renderFrame`, `copyToBuffer`, `toRGB565` và CVM graphics native tương ứng. Khi đó có thể so sánh semantics pixel từng bước; chỉ nhìn logcat không đủ để port nguyên cơ chế Stable sang CoreBridge.

`DangerDash-private-drawrgb-patched.jar` vẫn được giữ nguyên trạng thái **chưa test hợp lệ**, không đánh dấu thất bại. Nếu sau khi kiểm tra generic vẫn cần một phép thử cuối ở lớp JAR, chỉ nên test đúng artifact đó trong một chu kỳ riêng; không gộp thêm patch khác và không tạo nhiều lựa chọn APK.

## 9. Trạng thái xác minh provenance

Người dùng đã xác nhận phiên Turbo Stable dùng đúng lõi của `DangerDash_Nokia_5800_EN_IGP_IAP_EU_TS_109.jar`; chỉ tên file có thể khác. Vì vậy kết luận so sánh Stable/CoreBridge không bị ảnh hưởng bởi khác edition hoặc JAR đã patch.

## Tài liệu tham chiếu nội bộ

[1]: /home/ubuntu/work/edge-menu-build/game_analysis/dangerdash_stable_final_session_counts.txt "Đếm pipeline phiên Stable cuối"
[2]: /home/ubuntu/work/edge-menu-build/game_analysis/dangerdash_stable_final_pipeline_context.txt "Context pipeline Stable cuối"
[3]: /home/ubuntu/work/edge-menu-build/game_analysis/stable_apk_static/native_token_summary.txt "So sánh token native Stable/CoreBridge"
[4]: /home/ubuntu/work/edge-menu-build/game_analysis/stable_corebridge_elf_headers.txt "Class/kiến trúc ELF"
[5]: /home/ubuntu/upload/PhoneME-CoreBridge-20260827-211611.log.txt "Log CoreBridge 21:16"
[6]: /home/ubuntu/work/edge-menu-build/PhoneME-CoreBridge-Archive/source/core-resource-cache/Core/src/runtime/Runtime.cpp "Source Runtime framebuffer/publication"
[7]: /home/ubuntu/upload/dangerdash_stable_logcat_full.txt "Logcat full Turbo Stable"
[8]: /home/ubuntu/upload/dangerdash_stable_logcat_focused.txt "Logcat focused Turbo Stable"
[9]: /home/ubuntu/work/edge-menu-build/game_analysis/stable_bridge_native_evidence.txt "Bằng chứng native bridge Stable từ disassembly"
[10]: /home/ubuntu/work/edge-menu-build/game_analysis/stable_bridge_disassembly_full.txt "Disassembly FrameBufferView/GLRenderer Stable"


## 10. Đánh giá probe generic CoreBridge

Sau khi rà soát source snapshot, test harness và classes.dex của CoreBridge, hiện chưa có một điểm móc Java/native đủ để đo trực tiếp chuỗi `drawRGB/drawPixels → Image/Graphics target → dirty-region → framebuffer publication`.

`PhoneMECore.h` chỉ công khai lifecycle, input, LCDUI và các API copy/acquire framebuffer. `CoreBridgeNative` cũng chỉ có `nativeCopyFrameSince`, `nativeCopyLcduiImageRgba`, `nativePump`, scheduler snapshot và các hàm lifecycle/input/LCDUI; không có API diagnostic cho target Image, Graphics store, DirectGraphics hoặc dirty flag nội bộ. Test `GraphicsOps` của source portable chỉ kiểm tra kết quả Graphics ở host; test framebuffer chỉ xác nhận generation/damage của lớp publication, không chỉ ra call-site Java nào đã tạo pixel.

Archive hiện không có Android JNI implementation đầy đủ, không có CMake/build target để relink `.so`, và không đủ recipe native để instrument an toàn vào handler Graphics/Image. Do đó một JAR fixture generic chạy end-to-end chỉ có thể tái hiện kết quả cuối, không phân biệt được lỗi ở call-site, Image target, GraphicsStore hay publication; nó không mang lại thông tin quyết định tốt hơn các phép thử đã thực hiện.

**Quyết định:** chưa tạo APK/JAR mới. Bước kỹ thuật có giá trị tiếp theo là phục hồi build surface hoặc native source đầy đủ của CoreBridge/Stable, sau đó instrument một lần tại handler Graphics/Image và publication với target identity, kích thước, pixel mẫu, dirty count và generation trước/sau. `DangerDash-private-drawrgb-patched.jar` tiếp tục giữ trạng thái **chưa test hợp lệ**.

Chi tiết thiết kế probe được lưu tại `corebridge_generic_probe_design.md`.
