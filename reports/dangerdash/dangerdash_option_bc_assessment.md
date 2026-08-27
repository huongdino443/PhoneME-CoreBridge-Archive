# Đánh giá Option B/C — Danger Dash

## Phạm vi
Todo mô tả Option B là NOP nhánh ARM64 tại `CanvasRuntime::register_canvas` để plain Canvas vẫn được đánh dấu `game_canvas_registered_`. Option C là ép tham số `game_canvas=true` khi đăng ký mọi Canvas.

## Bằng chứng đối chiếu
Artifact `DangerDash-gamecanvas-getgraphics-flush-patched.jar` đã đổi class `i` sang GameCanvas, lấy `GameCanvas.getGraphics()` và gọi `flushGraphics()`. Đây là một phép mô phỏng ở tầng Java của hiệu ứng mà B/C muốn đạt trong CoreBridge.

Log test đúng artifact (`PhoneME-CoreBridge-20260827-235520.log.txt`) cho thấy `gameCanvasRegistered=1`, `gameGraphicsAttached=1`, `paintCallbacks=342`, `paintCommits=341`, `gameFlushRequests=1`, `gameFlushCommits=1`. Do đó lớp registration/attachment mà B/C nhắm tới đã chuyển sang trạng thái hoạt động.

Tuy nhiên frame vẫn không đổi: native/UI publish lặp cùng hash `907e47d95bfda383`, snapshot checksum là `a9df1d5340c2c325` với `changed=false`. Người dùng vẫn thấy màn hình đen.

## Kết luận
B/C chỉ thay đổi điều kiện đăng ký GameCanvas; nó không giải quyết đường ghi pixel vào buffer mà `nativeCopyFrame` publish. Vì A + getGraphics/flush đã đạt các trạng thái registration/attachment/flush nhưng vẫn đen, một B/C native patch đơn thuần không còn là phép thử có giá trị cao cho nguyên nhân còn lại.

Không thực hiện binary patch vào `libphoneMECoreBridge.so`: native source/build đầy đủ và provenance của offset chưa có; patch theo offset instruction có thể làm hỏng mọi game, đặc biệt r64 Farm PASS, mà không cung cấp rollback an toàn ngoài việc thay toàn bộ `.so`.

## Điều kiện để thử B/C đúng nghĩa
Cần Superninja cung cấp một `libphoneMECoreBridge.so` đã build từ đúng revision/ABI của r64 hoặc source + recipe build, kèm SHA-256 và mô tả offset/logic thay đổi. Khi đó chỉ tích hợp một bản `.so` vào một APK copy để test; không đụng APK r64 baseline và không gộp với JAR patch khác.

## Trạng thái
- Option A (superclass): đã test; registration chuyển 0→1 nhưng vẫn đen.
- A + getGraphics/flush: đã test; attachment/flush hoạt động nhưng vẫn đen.
- Option B/C native binary: chưa thực hiện vì không đủ điều kiện an toàn và về logic đã bị giảm giá trị bởi bằng chứng trên.
