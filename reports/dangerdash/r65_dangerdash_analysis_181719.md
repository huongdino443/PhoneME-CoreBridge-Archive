# Phân tích log r65 Danger Dash — 2026-08-27 18:17

## Quan sát trực tiếp

Log export có 42.733 dòng và chứa nhiều session cũ. Session cần phân tích là native log bắt đầu lúc `18:17:04`, launch Danger Dash lúc `18:17:06`, main class `GloftJDMP`, kích thước `360x640`, `phoneme_start_jar_scoped succeeded`, kết thúc file với `nativeIsRunning=true` và `nativeLastExitCode=0`.

Trong toàn bộ file, số dòng `[resource-read]` là `0` và `[resource-miss]` là `0`. Vì vậy chưa thể nói resource lookup thành công hay thất bại: chỉ có thể nói hai mẫu trace resource không xuất hiện trong kênh log export này.

Native log hiện có các dòng RMS và `[phoneMETrace][frame-publish]`. Riêng session 18:17, frame publish có `bytes=921600`, `hash=907e47d95bfda383`, `repeated=0 count=1`, sau đó `repeated=59 count=60`, `119 count=120`, `179 count=180`, `239 count=240`, `299 count=300`, `359 count=360`, `419 count=420`. Java/UI log đồng thời ghi frame `360x640`, các callback/commit và checksum lặp lại. Điều này xác nhận canvas không bị thiếu callback hay đứng trước frame đầu; native tiếp tục publish cùng một buffer bất biến, phù hợp với hiện tượng màn hình đen tĩnh.

Người dùng có chạm nhiều tọa độ trong session 18:17 nhưng hash frame vẫn giữ nguyên. Không thấy crash fatal; `nativeStartJarScoped` thành công và exit code tại snapshot là `0`. Có một watchdog `copy_frame in-flight` ngay sau frame đầu, nhưng sau đó frame publish vẫn tiếp tục; không nên kết luận watchdog là nguyên nhân chính.

## Kết luận tạm thời

Trace r65 **chưa quan sát được** qua file export. Có hai khả năng cần tách: (1) cờ môi trường không đến được native/nhánh trace không thực thi; hoặc (2) binary có code trace nhưng các resource mà Danger Dash truy cập không đi qua đúng `Class.getResourceAsStream` path chứa hai trace này. Việc không có `[resource-miss]` cũng không chứng minh resource không miss.

Bằng chứng mạnh hơn hiện tại vẫn là: startup thành công, renderer/copy loop hoạt động, nhưng pixel buffer được publish lặp lại. Điều này tiếp tục phù hợp với đường `/S` proprietary → decoder/cache → renderer/DirectGraphics hoặc một nhánh vẽ tạo scratch zero-fill. Chưa đủ cơ sở để patch JAR, alpha, clip, cache hay DirectGraphics.

## Cần kiểm tra thêm

Cần xác định bằng disassembly xem binary native r63/r64 thật sự có call-site `getenv` và `fprintf` gắn với literal `PHONEME_TRACE_RESOURCE(_MISS)`, đồng thời xem app có redirect `stderr` vào `corebridge-native.log` hay chỉ ghi các trace sink riêng. Nếu không có call-site trace resource trong binary, r65 chỉ là một phép thử environment không quan sát được và không thể dùng để kết luận resource path.
