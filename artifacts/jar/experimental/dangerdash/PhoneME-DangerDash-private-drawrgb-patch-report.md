# PhoneME Danger Dash — private-helper drawRGB patch

## Trạng thái

Đây là một artifact thử nghiệm riêng cho Danger Dash. Artifact được tạo từ JAR gốc bất biến; JAR gốc không bị ghi đè và các APK mốc r63, r64 Farm PASS, r65 diagnostic không bị sửa. Tôi không thực hiện device-test Android cục bộ.

## Giả thuyết

Các call-site `DirectGraphics.drawPixels` đã thử trước đó nằm trong public renderer, nhưng log sau patch public vẫn giữ nguyên frame đen. Class `l` còn một private render helper với hai call-site `DirectGraphics.drawPixels`. Giả thuyết lần này là nhánh private helper mới là nhánh thực sự được dùng cho một phần hoặc toàn bộ frame Danger Dash; vì vậy adapter DirectGraphics ở public renderer chưa chạm tới đường vẽ thực tế.

## Phạm vi thay đổi

Chỉ hai call-site `com/nokia/mid/ui/DirectGraphics.drawPixels([IZIIIIIIII)V` trong method private helper của `l.class` được thay bằng lời gọi tương đương `javax/microedition/lcdui/Graphics.drawRGB([IIIIIII)V`, giữ cùng buffer pixel, hình học và cờ xử lý alpha. Các call-site trong public renderer không bị thay đổi trong artifact này. Không thay đổi class `g`, resource `/I` hoặc `/S`, normalizer, cache, native `.so`, hay JAR nguồn.

## Kiểm tra offline

| Kiểm tra | Kết quả |
|---|---|
| JAR ZIP integrity | PASS |
| Structural ASM check `g.class` | PASS, 57.754 bytes |
| Structural ASM check `l.class` | PASS, 10.074 bytes |
| Số entry | 75 trước và sau |
| `Graphics.drawRGB` trong `l.class` | 2 call-site private-helper mới |
| `DirectGraphics.drawPixels` trong `l.class` | 2 call-site public renderer giữ nguyên |
| JAR input | Chỉ đọc, không sửa |
| Native/APK mốc | Không thay đổi |

SHA-256 của artifact:

```text
10cacba6baa9df33e3bb9043d9bf30188bfe75aa11d3d1e25af7977889323ecc
```

SHA-256 class trước/sau:

```text
l.class gốc:   eb1490792911d5ae755a001cdad47f2419f366027959c7727bab269b099b962d
l.class patch: ba93b1807918373cf9c351b73e487ba3a567fcd4bf342b5d4d63a7b5729819c1
```

## Cách thử và hoàn nguyên

Trên APK r64, hãy sao lưu JAR đang dùng rồi thay bằng artifact này với đúng tên mà launcher yêu cầu. Không ghép artifact này với int-cache, transparency, force-opaque hoặc drawRGB public patch trước. Nếu game vẫn đen, khởi chạy thất bại hoặc crash, xóa JAR patch và khôi phục JAR gốc; không cần gỡ APK.

Kết quả device-test chỉ cần phân loại thành: đã hiện hình, vẫn đen, khởi chạy thất bại, hoặc crash. Kết quả này chỉ kiểm tra giả thuyết chọn nhầm renderer; nó chưa chứng minh nguyên nhân gốc.

— Manus AI
