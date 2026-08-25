# Verification — guard + cleanup + image-to-png r1

## Trạng thái

APK đã pass kiểm tra tĩnh ZIP integrity, zipalign và chữ ký Android v1/v2/v3. Đây là artifact thử nghiệm duy nhất của hướng image-to-png hiện tại; chưa có kiểm thử thiết bị trong sandbox.

## Phạm vi

Nền APK là guard + cleanup ổn định, dùng native clean checkpoint; không dùng dynamic native overlay, không có `libphoneMECoreBridgeLegacy.so` và không có `libc++_shared.so` bổ sung. DEX giữ guard/lifecycle và thêm đúng class `ResilientImageJar` cùng hook normalize ngay trước launch thread.

`ResilientImageJar.normalize(File)` được phục hồi nguyên bản từ `PhoneME-CoreBridge-0.1majestypass.apk`. Nó nhận diện JPEG/GIF theo chữ ký nội dung, giải mã bằng Android `BitmapFactory`, ghi lại byte PNG bằng `Bitmap.compress(PNG, 100, ...)`, giữ nguyên tên entry tài nguyên, bỏ qua file chữ ký, tạo JAR dẫn xuất có marker `.corebridge-image-normalized.jar`, và fallback về JAR gốc khi có lỗi.

## Hash

SHA-256 APK nằm trong file `.sha256` cạnh APK. Native `libphoneMECoreBridge.so` trong APK khớp clean checkpoint `5b525c654cd265cb1fdd6185dbdd7a87e11a341e8d60885475fa60a0bd140668`. APK có đúng một native entry dưới `lib/arm64-v8a/`.

## Không thay đổi

Không sửa network, logging native, lifecycle native, audio worker, frame pacing, VM scheduling hoặc CPU affinity. Không chỉnh game JAR gốc.

## Kiểm thử thiết bị

Chưa có kết luận về launch, Majesty, map loading hoặc hiệu năng. Khi test, chỉ cài APK này; nếu Android báo khác chữ ký thì gỡ bản đang cài sau khi sao lưu dữ liệu. So sánh Majesty lần mở đầu và lần mở lại, đồng thời kiểm tra log có dấu hiệu normalized JAR hay không.
