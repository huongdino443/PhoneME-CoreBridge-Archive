# Kết quả quan sát video lỗi APK resource-cache overlay

Nguồn: `/home/ubuntu/upload/Screenrecording_20260825_121455.mp4`.

Video bắt đầu ở màn hình Quản lý ứng dụng, có `haitac_x2.jar`. Người dùng nhấn Khởi chạy; app chuyển sang Danh sách chương trình với Hải tặc 1 và Hải tặc 2. Người dùng chọn Hải tặc 1, mở menu tùy chọn và nhấn Chạy.

Sau thao tác Chạy, khoảng từ giây 00:06 đến 00:09 xuất hiện biểu tượng hai chấm loading màu xám ở giữa màn hình. Game không vào canvas và không có tiến triển, nhưng app không thoát về launcher, không đen màn hình và không hiện thông báo Android kiểu Ứng dụng đã dừng. Sau đó người dùng mở menu ba gạch, chọn Lưu log; tại khoảng 00:11 hệ thống chuyển sang trình chọn tệp Tệp đã tải xuống để lưu log.

Kết luận quan sát được: lỗi trong video là **treo ở quá trình chuyển/chạy clone sau khi đã vào Program List**, không phải crash process đã quan sát trực tiếp. Cần đối chiếu với log native để xác định có phải JNI/overlay call bị kẹt, hay lỗi lifecycle/clone routing xảy ra trước `nativeStartJarScoped` lần thứ hai.

## Phân tích video đầy đủ

Phân tích timeline xác nhận: 00:00–00:01 ở Quản lý ứng dụng với `haitac_x2.jar`; 00:02–00:04 chuyển sang Danh sách chương trình, có Hải tặc 1 và Hải tặc 2; người dùng chọn Hải tặc 1, mở Tùy chọn và chọn Chạy. Khoảng 00:05–00:09 giao diện vẫn là Danh sách chương trình, xuất hiện biểu tượng loading hai chấm xoay ở giữa, không chuyển sang canvas. Khoảng 00:10 người dùng mở menu ba gạch và chọn Lưu log; từ 00:12 hệ thống chuyển sang trình chọn tệp để lưu log.

Video không quan sát thấy màn hình đen, thông báo ứng dụng đã dừng, hoặc quay về launcher. Vì vậy biểu hiện trực tiếp là **treo ở quá trình chuyển/chạy clone sau Program List**, không phải bằng chứng crash process tại thời điểm quay video.
