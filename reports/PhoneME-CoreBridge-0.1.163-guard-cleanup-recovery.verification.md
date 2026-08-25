# PhoneME-CoreBridge 0.1.163 — guard + cleanup recovery

## Trạng thái

Đây là APK baseline phục hồi sau khi hướng decoded-image overlay bị thu hồi. Không dùng `resource-cache-overlay-r1.apk` nữa. Artifact này chỉ giữ Java/manifest và native payload của checkpoint clean 0.1.163 đã được xác nhận trước đó.

| Mục | Giá trị |
|---|---|
| APK | `PhoneME-CoreBridge-0.1.163-guard-cleanup-recovery.apk` |
| SHA-256 APK | `c7d7ecb1966383ea9d25d39f97c17d7408e0d7be5876c8a1ed9211cc14a57c92` |
| ABI | `arm64-v8a` |
| `classes.dex` SHA-256 | `ade329798640ca1b244fdc5c7036ba103f34121962a7a282bb5394524586ffce` |
| `AndroidManifest.xml` SHA-256 | `cf42cdd4a420e8bb3588c2513ff1841ac4dc68f7875ce51ce042d89c7d01a26c` |
| `libphoneMECoreBridge.so` SHA-256 | `5b525c654cd265cb1fdd6185dbdd7a87e11a341e8d60885475fa60a0bd140668` |
| Dung lượng APK | khoảng 42 MB |

## Đã kiểm tra

APK pass `unzip -t`, `zipalign -c -p -v 4`, và chữ ký v1/v2/v3. APK chỉ có một native library `lib/arm64-v8a/libphoneMECoreBridge.so`; không chứa `libphoneMECoreBridgeLegacy.so`, `libc++_shared.so`, cache overlay hay dependency thử nghiệm.

Nội dung Java/manifest khớp SHA checkpoint clean 0.1.163. Native library khớp SHA checkpoint clean. Các guard lifecycle, logging native và behavior đã pass được giữ nguyên theo checkpoint; không có decoded-image cache, network patch, frame-pace patch, scheduler/affinity patch hoặc thay đổi logging mới.

## Lưu ý cài đặt

Do keystore gốc 0.1.163 không còn trong sandbox sau khi khôi phục phiên, artifact này được ký lại bằng keystore phục hồi cục bộ. Certificate SHA-256 mới là `fc1d6945d8e79c7b2fdf8edd88f71d98df9d21940f36605659d9ae848c90e7bd`. Nếu Android từ chối cài đè lên bản đang cài vì khác chữ ký, cần gỡ bản PhoneME hiện tại trước khi cài APK này; hãy sao lưu dữ liệu app trước nếu cần.

APK này được bàn giao để lưu làm baseline, chưa được coi là một bản tối ưu hiệu năng mới và chưa có kiểm thử thiết bị mới trong sandbox.
