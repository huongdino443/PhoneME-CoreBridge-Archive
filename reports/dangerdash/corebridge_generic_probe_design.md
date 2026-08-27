# Thiết kế probe generic CoreBridge — 2026-08-27

## Mục tiêu

Xác định một cách generic liệu `Graphics.drawRGB`/`DirectGraphics.drawPixels` có cập nhật Image target và dirty-region trước khi publication hay không, không hardcode Danger Dash và không thay đổi checkpoint r63/r64.

## Những gì source/API hiện có cho phép quan sát

`PhoneMECore.h` chỉ công khai các API lifecycle, input, LCDUI và framebuffer:

- `phoneme_copy_frame_rgba()` / `phoneme_copy_frame_rgba_since()` để pump và copy framebuffer RGBA.
- `phoneme_acquire_current_frame_rgba_since()` và biến thể có `PhoneMEFrameDamageRegion` để đọc generation/damage sau publication.
- `phoneme_copy_lcdui_image_rgba()` chỉ dành cho ảnh LCDUI.
- Không có API đọc pixel của `Image` Java, trạng thái `Graphics` target, dirty flag nội bộ, hoặc số lần `drawRGB/drawPixels`.

`CoreBridgeNative` trong classes.dex cũng chỉ có:

- `nativeCopyFrameSince(JJ[BI)I`;
- `nativeCopyLcduiImageRgba(JI[BI)I`;
- `nativePump(J)V`;
- `nativeSchedulerSnapshot(J)String`;
- lifecycle/input/LCDUI/error methods.

Không có native method diagnostic cho Image target, Graphics store, dirty-region trước publication, hay DirectGraphics.

## Hệ quả

Không thể dựng một probe Android chỉ bằng smali/Java bridge hiện tại mà đo trực tiếp điểm `drawRGB/drawPixels → Image/GraphicsStore → publication`. Một JAR fixture generic có thể kiểm tra kết quả cuối qua framebuffer, nhưng không phân biệt được lỗi ở call-site, Image target, GraphicsStore hay publication; nó chỉ tái hiện symptom ở một API path.

Source snapshot portable có các test `GraphicsOps` và `test_framebuffer_sizes`, trong đó framebuffer test đã xác nhận generation/damage publication ở lớp C++ độc lập. Tuy nhiên archive không có Android JNI implementation đầy đủ, không có CMake/build target relink APK, và report ghi rõ không được patch APK để tách/relink `.so` tại checkpoint hiện tại.

## Probe khả thi theo thứ tự ít rủi ro

1. **Host-level:** nếu phục hồi được build directory/CMake của Core portable, thêm một fixture Java generic gọi `Image.createRGBImage`, `Graphics.drawRGB`, DirectGraphics `drawPixels`, rồi dùng `phoneme_copy_frame_rgba*` để so sánh frame/generation. Đây chỉ là kiểm tra end-to-end, không phải internal probe.
2. **Native-level:** chỉ khi có Android JNI source/build boundary đầy đủ, thêm instrumentation vào handler Graphics/Image và publication để ghi: target identity, width/height, first/last pixel, dirty count, generation trước/sau. Đây mới là probe quyết định.
3. **JAR-only:** artifact `DangerDash-private-drawrgb-patched.jar` vẫn là một phép thử riêng cho 2 private call-site, nhưng không phải generic probe và chưa từng được device-test hợp lệ.

## Quyết định hiện tại

Chưa tạo APK/JAR mới. Việc tạo thêm JAR fixture hoặc mutation khác trước khi có host build/JNI source sẽ không xác định được root cause tốt hơn các thử nghiệm đã có. Cần phục hồi build surface hoặc native source của CoreBridge/Stable trước khi instrument generic.

## Bằng chứng liên quan

- `/home/ubuntu/work/edge-menu-build/PhoneME-CoreBridge-Archive/source/core-resource-cache/Core/include/PhoneMECore.h`
- `/home/ubuntu/work/edge-menu-build/PhoneME-CoreBridge-Archive/source/core-resource-cache/Core/Tests/CoreTests.cpp`
- `/home/ubuntu/work/edge-menu-build/PhoneME-CoreBridge-Archive/reports/corebridge_resource_cache_audit_report_vi.md`
- `/home/ubuntu/work/edge-menu-build/game_analysis/corebridge_native_surface_disassembly.txt`
- `/home/ubuntu/work/edge-menu-build/game_analysis/dangerdash_stable_comparison_memo.md`
