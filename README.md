# PhoneME/CoreBridge Archive

Kho lưu trữ private của dự án **PhoneME/CoreBridge**, dùng làm nguồn provenance và điểm khôi phục cho các lần phân tích hoặc build sau. Kho này lưu các artifact quan trọng, source patch, script đóng gói, JAR kiểm thử, log đại diện và báo cáo; không coi mọi APK trong kho là bản dùng để cài.

## Quy tắc chọn artifact

| Nhãn | Ý nghĩa |
|---|---|
| `current` | Bản thử nghiệm hiện tại cần dùng đúng theo biên bản đi kèm. |
| `baseline` | Bản guard + dọn rác hoặc native-clean dùng làm nền an toàn. |
| `provenance` | Artifact dùng để đối chiếu, phục hồi implementation hoặc kiểm tra lịch sử. |
| `withdrawn` | Artifact đã thất bại hoặc bị loại khỏi hướng đi; không cài và không dùng làm baseline. |

## Artifact chính

Bản `artifacts/apk/current/PhoneME-CoreBridge-0.1.163-guard-cleanup-imagepng-r1.apk` là tổ hợp **guard + dọn rác + image-to-png**. Cơ chế image-to-png được phục hồi từ APK Majesty pass và chạy ở Java/resource boundary trước khi launch; native clean được giữ nguyên. Bản này chưa được xác nhận trên thiết bị trong sandbox, nên cần đọc verification sidecar trước khi test.

Bản `artifacts/apk/baseline/PhoneME-CoreBridge-0.1.163-guard-cleanup-recovery.apk` là baseline guard + dọn rác không có image-to-png. APK `PhoneME-CoreBridge-0.1-19-native-clean.apk` là bản native-clean lịch sử được giữ thêm để đối chiếu; APK `(19)` và `(23)` ban đầu byte-identical, vì vậy chỉ lưu một bản để tránh trùng dữ liệu.

`artifacts/apk/provenance/PhoneME-CoreBridge-0.1majestypass.apk` là APK đã từng giúp xác nhận Majesty pass và là nguồn phục hồi `ResilientImageJar`. `artifacts/apk/withdrawn/` giữ overlay decoded-image cache chỉ để bảo toàn provenance; file này đã fail device test do treo ở Program List sau khi chọn clone.

## Thư mục

| Đường dẫn | Nội dung |
|---|---|
| `artifacts/apk/` | APK hiện tại, baseline, provenance và artifact bị thu hồi. |
| `source/core-resource-cache/` | Core patch decoded-image cache, audit ELF và script overlay; overlay chỉ là nghiên cứu đã thu hồi. |
| `source/java-imagepng/` | Smali của normalizer `ResilientImageJar`, hook launch và bộ smali đối chiếu. |
| `source/build-scripts/` | Script phục hồi, build và verification có thể dùng lại. |
| `fixtures/jars/` | Majesty, Plants vs Zombies và các JAR test tốc độ/clone. |
| `logs/` | Hai log đại diện: Majesty pass và overlay failure. |
| `logs/dangerdash/` | Log Stable/CoreBridge/r65 dùng cho điều tra Danger Dash. |
| `reports/` | Audit, verification, failure findings và handoff notes. |
| `reports/dangerdash/` | Memo so sánh Stable/CoreBridge, disassembly và probe design. |
| `source/dangerdash/` | Bytecode extract và ASM transformer thử nghiệm; không phải source game gốc. |
| `metadata/` | Manifest/hash/provenance của snapshot. |

## Cảnh báo kỹ thuật

Không dùng các hướng network direct/read-latency, frame-pace, JNI tuner, logging disable, `sched_setaffinity` hoặc native overlay làm baseline. Checkpoint clean và lifecycle guard phải được bảo toàn; mọi thay đổi mới cần tạo artifact riêng và cập nhật verification trước khi cài lên thiết bị.

Các hash SHA-256 chi tiết nằm trong `metadata/SHA256SUMS.txt`. Thông tin trạng thái từng file nằm trong `metadata/ARCHIVE_MANIFEST.md`.

## Cập nhật kho

Repository này được tạo private trên GitHub. Khi có artifact mới, hãy thêm sidecar SHA-256 và verification/build-info tương ứng, cập nhật manifest, rồi commit với mô tả rõ mốc test. Không ghi private key, token, keystore hoặc dữ liệu đăng nhập vào kho.
