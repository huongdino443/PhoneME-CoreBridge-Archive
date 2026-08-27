# PhoneME Danger Dash — GameCanvas getGraphics/flushGraphics patch

## Trạng thái

Đây là **một JAR thử nghiệm duy nhất**, được tạo từ `DangerDash-plain-canvas-gamecanvas-patched.jar`, không sửa JAR gốc và không tạo APK mới. Bản plain Canvas → GameCanvas trước đó đã được device-test; log `PhoneME-CoreBridge-20260827-230036.log.txt` xác nhận `gameCanvasRegistered=1` nhưng vẫn ghi `gameGraphicsAttached=0`, `gameFlushRequests=0`, `gameFlushCommits=0`, trong khi `paintCallbacks` và `paintCommits` tăng liên tục. Vì vậy patch này kiểm tra bước còn thiếu trong giả thuyết: Graphics dùng để vẽ chưa phải Graphics của GameCanvas và chưa được flush vào bridge.

## Thay đổi duy nhất

Trong `i.class`, method `paint(javax.microedition.lcdui.Graphics)` được chèn logic sau:

1. Gọi `GameCanvas.getGraphics()` trên chính instance `this`.
2. Nếu trả về Graphics khác null, dùng Graphics đó làm target vẽ.
3. Nếu trả về null, giữ lại Graphics do callback `paint(Graphics)` truyền vào, để tránh làm game crash chỉ vì GameCanvas chưa sẵn sàng.
4. Sau routine render `i.a()`, gọi `GameCanvas.flushGraphics()` để yêu cầu publish buffer GameCanvas.

Superclass `i` vẫn là `javax.microedition.lcdui.game.GameCanvas` và constructor vẫn dùng `GameCanvas.<init>(false)`. Không sửa call-site ảnh, resource, proprietary archive, input, âm thanh hoặc các class khác.

## Kiểm tra offline

JAR có 75 entry; so sánh byte với JAR đầu vào cho thấy chỉ `i.class` thay đổi. Entry set giữ nguyên và `unzip -t` thành công. Bytecode có đúng hai lời gọi mới trong `paint`: `GameCanvas.getGraphics():Graphics` và `GameCanvas.flushGraphics():void`, với fallback null an toàn.

SHA-256 `i.class` đầu vào: `c7cf0a275b0e86f43c6d0a2b1951e438ced8922b6b260bf5f88c59cd7027cf3b`.

SHA-256 `i.class` sau patch: `f358e16fde4b7d9d71800aa30f319081f72b0d1edf2f90da37d14949eeff7b84`.

SHA-256 toàn JAR: `ee15919a7555839e08810d6bab724907f383b1080b21575c4371adc2d8bdacec`.

## Hướng dẫn kiểm thử

Dùng APK CoreBridge **r64 hiện tại** và chỉ thay bằng JAR này trong một chu kỳ test. Không gộp với private drawRGB, decode-fallback hoặc các JAR thử nghiệm khác. Nếu game chạy, lấy log ngay sau launch và tìm `gameGraphicsAttached`, `gameFlushRequests`, `gameFlushCommits`, `frame-publish` và pixel probe. Kết quả mong đợi của phép thử là `gameGraphicsAttached=1` hoặc ít nhất `gameFlushRequests/gameFlushCommits` tăng; nếu vẫn bằng 0 mà `paintCallbacks` tiếp tục tăng, giả thuyết GameCanvas attachment ở Java đã bị loại thêm một bước.

Nếu game crash hoặc vẫn đen, rollback về JAR gốc đã sao lưu. APK r64, r63, r65 và mọi artifact trước đó không bị thay đổi.

## Lưu ý

Đây là kiểm tra có mục tiêu, chưa phải bản fix được xác nhận. Tôi không tuyên bố đã device-test JAR này trong sandbox.
