# Danger Dash test — gamecanvas-getgraphics-flush patch — 2026-08-27 23:55

## Provenance
- Log dùng đúng JAR: `DangerDash-gamecanvas-getgraphics-flush-patched.jar`.
- MIDlet: `GloftJDMP`.
- Canvas: `360x640`.
- `nativeStartJarScoped ... 0`; không có launch exception/fatal/error đáng kể.

## State transition
- Initial snapshot: `gameCanvasRegistered=1`, `gameGraphicsAttached=0`, `gameFlushRequests=0`, `gameFlushCommits=0`, `paintCallbacks=0`.
- Sau khi chạy: `gameCanvasRegistered=1`, `gameGraphicsAttached=1`.
- Có `paintCallbacks=342`, `paintCommits=341` ở snapshot cuối.
- `gameFlushRequests=1`, `gameFlushCommits=1` trong toàn bộ phiên; không tăng cùng số paint callback.
- `onDraw` và `bitmapUpdates` tiếp tục tăng, chứng minh Android view đang nhận/copy frame.

## Frame result
- Native/UI frame checksum vẫn cố định `a9df1d5340c2c325`, `changed=false` sau frame đầu.
- Native trace: `frame-publish source=paint_commit bytes=921600 hash=907e47d95bfda383 repeated=299 count=300`.
- Kết quả người dùng: màn hình đen.

## Kết luận có thể khẳng định
1. Patch superclass + `getGraphics/flushGraphics` đã làm đường nhận diện/attachment hoạt động (`gameCanvasRegistered=1`, `gameGraphicsAttached=1`, `gameFlush*` có giá trị).
2. Việc đó **không làm nội dung framebuffer đổi**; frame publish vẫn lặp cùng hash đen.
3. Vì vậy chẩn đoán “plain Canvas không được đăng ký” chỉ giải thích một lớp của lỗi, không phải toàn bộ lỗi. Không nên tiếp tục sửa JAR bằng cách thêm flush/getGraphics mù.
4. Điểm còn lại nằm ở đường tạo dữ liệu pixel/render trong VM hoặc Graphics implementation của CoreBridge: callback/commit chạy nhưng buffer nguồn được publish vẫn đen, hoặc các lệnh draw của game không ghi vào buffer mà CoreBridge copy.

## Trạng thái artifact
- `DangerDash-gamecanvas-getgraphics-flush-patched.jar`: đã device-test, thất bại về hiển thị; attachment/flush đã được chứng minh.
- Không đánh dấu các artifact private drawRGB khác thất bại nếu chưa test đúng file.
- Không đụng r64 Farm PASS.
