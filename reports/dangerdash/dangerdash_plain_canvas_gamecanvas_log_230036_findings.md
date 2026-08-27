# Danger Dash plain Canvas → GameCanvas test — log findings

Nguồn: `/home/ubuntu/upload/PhoneME-CoreBridge-20260827-230036.log.txt`.

## Quan sát trực tiếp

- `phoneme_start_jar_scoped succeeded` lúc `23:00:24`; phiên chạy không crash và native vẫn chạy.
- Sau patch, scheduler ghi `gameCanvasRegistered=1` nhiều lần (ít nhất 14 snapshot), khác với các log JAR gốc/public patch trước có `gameCanvasRegistered=0`.
- Tuy nhiên mọi snapshot đều ghi `gameGraphicsAttached=0`.
- Paint path của plain Canvas đang chạy thật: trong snapshot lúc `23:00:33.637` có `repaintPasses=203`, `repaintCandidates=202`, `paintCallbacks=202`, `paintCommits=201`; lúc `23:00:37.640` tăng lên `paintCallbacks=326`, `paintCommits=325`.
- GameCanvas flush path không chạy: các snapshot ghi `gameFlushRequests=0`, `gameFlushCommits=0`.
- Native/frame copy vẫn có frame hợp lệ về kích thước: `frame available bytes=921600 size=360x640`, generation tăng liên tục; tổng log có 337 dòng `frame available`.
- Nhưng frame publish ở Java/host lặp cùng một hash: `source=paint_commit bytes=921600 hash=907e47d95bfda383 repeated=...`; hash xuất hiện ở count 1, 60, 120, 180, 240, 300. Pixel probe trong log không có dấu hiệu non-black mới.
- Có một cảnh báo `WATCHDOG copy_frame in-flight sequence=1 ageMs=1344 lastGeneration=0 lastResult=0`, nhưng sau đó `frame available` vẫn tăng; chưa đủ để coi là nguyên nhân chính.
- Không thấy exception/fatal/crash liên quan patch; `nativeIsRunning=true`, `nativeLastExitCode=0` ở cuối log.

## Kết luận trung gian

Patch superclass đã xác nhận đúng lớp nhận diện (`gameCanvasRegistered` chuyển từ 0 lên 1), nhưng không giải quyết publication nội dung. Vì `paintCallbacks/paintCommits` tăng mạnh trong khi `gameGraphicsAttached=0` và `gameFlushRequests=0`, đường đúng cần điều tra là **capture Graphics của plain Canvas và nối nó vào native framebuffer/pixel store**, không phải tiếp tục đổi plain Canvas thành GameCanvas hoặc tiếp tục patch DirectGraphics call-site.

Đặc biệt, `gameGraphicsAttached=0` có thể là chỉ số riêng cho `GameCanvas.getGraphics/flushGraphics`, không chứng minh `paint(Graphics)` không được gọi. Bytecode Danger Dash cho thấy `paint(Graphics)` nhận đối số Graphics, lưu vào static `a/a_`, rồi gọi routine game `a()`. Do đó bản sửa tiếp theo nếu có phải can thiệp generic ở bridge paint/Graphics attachment hoặc publication, không đổi superclass lần nữa.

## Bảo toàn

- Không sửa JAR gốc.
- Không ghi đè r63/r64/r65.
- `DangerDash-private-drawrgb-patched.jar` vẫn là artifact chưa test hợp lệ riêng biệt.
- JAR plain Canvas → GameCanvas đã test và chỉ chứng minh registration; chưa chứng minh đường frame content.
