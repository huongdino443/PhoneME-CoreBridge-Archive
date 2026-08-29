# PhoneME-Turbo OpenGL Filter Resource Pack

Gói này lưu lại tài nguyên bộ lọc OpenGL được trích từ bản phát hành `PhoneME-Turbo-nHD-1.1.2` để có thể port vào một app giả lập khác trong phiên làm việc chính tuyến.

> **Phạm vi:** Gói chỉ chứa shader và tài liệu kỹ thuật. Không bao gồm APK, DEX, keystore, chữ ký, log chứa dữ liệu cá nhân hoặc mã nguồn native.

## 1. Thành phần

| Tệp | Vai trò |
|---|---|
| `shaders/vertex.vert` | Vertex shader dùng chung cho cả hai pass |
| `shaders/xbrz_bicubic.frag` | Pass upscale từ texture nguồn vào FBO trung gian |
| `shaders/lcd_grid.frag` | Pass hiển thị từ FBO ra màn hình với hiệu ứng LCD/CRT |
| `shaders/passthrough.frag` | Shader dự phòng để kiểm tra texture và loại trừ lỗi filter |
| `RESOURCE_MANIFEST.txt` | Hash SHA-256 và thông tin nhận dạng tài nguyên |

## 2. Pipeline render

Bộ lọc dùng GLES 2.0 / GLSL ES 1.00 với hai pass:

```text
framebuffer nguồn
    -> upload vào texture GL_TEXTURE0
    -> vertex.vert + xbrz_bicubic.frag
    -> FBO trung gian kích thước output rectangle
    -> vertex.vert + lcd_grid.frag
    -> default framebuffer / SurfaceView
```

Pass thứ nhất đọc texture nguồn và thực hiện sharp-bilinear theo tọa độ pixel. Tên `xbrz_bicubic.frag` là tên tài nguyên lịch sử; shader hiện tại không phải triển khai xBRZ đầy đủ mà dùng lấy mẫu theo pixel trung tâm để ưu tiên độ sắc nét ở integer scale.

Pass thứ hai đọc texture của FBO trung gian, sau đó áp dụng mask RGB, scanline, bloom nhẹ, warm tint, contrast và vignette. `lcd_grid.frag` xuất alpha bằng `1.0`.

## 3. Uniform bắt buộc

Cả hai pass dùng vertex shader chung:

| Uniform/attribute | Kiểu | Ý nghĩa |
|---|---|---|
| `aPosition` | `vec2` | Tọa độ quad từ `-1` đến `1` |
| `aTexCoord` | `vec2` | Tọa độ texture từ `0` đến `1` |
| `uScreenSize` | `vec2` | Kích thước viewport đầy đủ |
| `uOutputSize` | `vec2` | Kích thước vùng output được scale |
| `uOutputOffset` | `vec2` | Offset vùng output trong viewport; pass upscale thường là `0,0` |
| `uSrcSize` | `vec2` | Kích thước framebuffer nguồn |
| `uTexture` | `sampler2D` | Texture ở texture unit 0 |

Trước mỗi pass cần gọi `glActiveTexture(GL_TEXTURE0)`, bind texture tương ứng và đặt `uTexture = 0`.

## 4. Thông số filter LCD hiện tại

Các hằng số trong `lcd_grid.frag` là cấu hình `R29-MED` của tài nguyên đã trích:

| Hằng số | Giá trị | Tác động |
|---|---:|---|
| `MASK_DARK` | `0.25` | Độ tối tương đối của mask RGB |
| `SCANLINE_DARK` | `0.22` | Độ tối của mỗi dòng scanline xen kẽ |
| `BRIGHTNESS` | `1.12` | Bù sáng sau mask và scanline |
| `BLOOM_STRENGTH` | `0.06` | Cường độ bloom bốn mẫu lân cận |
| `WARM_R` | `1.03` | Tăng nhẹ kênh đỏ |
| `WARM_B` | `0.97` | Giảm nhẹ kênh xanh |
| `VIGNETTE` | `0.10` | Tối góc nhẹ |
| `CONTRAST` | `1.05` | Tăng tương phản nhẹ |

Nếu kết quả hiển thị quá tối hoặc mờ, không nên kết luận ngay shader bị thay thế. Cần kiểm tra theo thứ tự: output có thực sự đến từ FBO hay không, texture có bị blend với Canvas phía dưới hay không, texture sampler của pass cuối có dùng `GL_LINEAR` ngoài ý muốn hay không, và framebuffer nguồn có đúng định dạng màu hay không.

## 5. Điều kiện texture/FBO

Texture nguồn cần được tạo trước khi upload frame. Với dữ liệu `Bitmap`, phải bảo đảm định dạng upload tương thích với định dạng texture đã cấp phát; không nên cấp phát texture RGB565 rồi dùng đường upload RGBA mà không kiểm tra kết quả trên thiết bị đích.

FBO upscale cần có texture màu kích thước `uOutputSize`. Sau khi attach texture, phải kiểm tra `glCheckFramebufferStatus(GL_FRAMEBUFFER)` và ghi log mã lỗi nếu khác `GL_FRAMEBUFFER_COMPLETE` (`0x8CD5`). Sau pass upscale, bind framebuffer mặc định `0` trước khi vẽ pass LCD.

Texture wrapping nên dùng `GL_CLAMP_TO_EDGE`. Sampler của texture nguồn nên dùng `GL_NEAREST` khi muốn giữ pixel sắc; sampler của texture FBO có thể dùng `GL_LINEAR` hoặc `GL_NEAREST` tùy mục tiêu hình ảnh. Cần thử độc lập hai lựa chọn này thay vì thay cả shader.

## 6. Dependency Java khi port renderer

Nếu port nguyên lớp renderer Java/smali, các lớp được tham chiếu trực tiếp gồm:

```text
com.phoneme.gl.DisplayHelper
com.phoneme.gl.ScaleHelper
com.phoneme.gl.GLFramebufferView
com.phoneme.gl.GLRenderer
com.phoneme.gl.ShaderUtils
```

Hai lớp `DisplayHelper` và `ScaleHelper` không được bỏ sót. Thiếu chúng sẽ gây `NoClassDefFoundError` khi đo kích thước view hoặc tính output rectangle. Đây là lỗi đã xảy ra trong bản port thử nghiệm CoreBridge.

## 7. Cách tích hợp vào app khác

Có hai hướng tích hợp. Hướng an toàn hơn là giữ nguyên renderer và lifecycle của app đích, chỉ thay đường filter tại điểm app đã có framebuffer/texture; hướng này giảm nguy cơ phá input, surface và lifecycle. Hướng port nguyên `GLFramebufferView`/`GLRenderer` chỉ phù hợp khi app đích có layout chứa `GLSurfaceView` và có thể kiểm soát đầy đủ `onSurfaceCreated`, `onSurfaceChanged`, `onDrawFrame`, pause/resume và surface recreation.

Checkbox setting nên điều khiển một cờ rõ ràng, ví dụ `imageFilterEnabled`. Khi tắt, app phải quay lại filter Canvas cũ hoặc đường vẽ nguyên bản. Khi bật, chỉ một pipeline được trình bày frame; không để Canvas và GL cùng vẽ một framebuffer lên các surface chồng nhau.

GL view phải được thêm vào đúng container và đúng thứ tự Z. Không để GL surface che input view hoặc giành focus. Nếu GL surface chỉ có nhiệm vụ hiển thị, nên tắt clickable/focusable và để lớp input hiện tại tiếp tục nhận touch/key event.

## 8. Kiểm thử bắt buộc

Kiểm thử A/B cần dùng cùng game, cùng cảnh và cùng kích thước output:

1. Filter nguyên bản tắt.
2. Filter nguyên bản bật.
3. Filter Turbo bật với shader passthrough ở pass LCD.
4. Filter Turbo bật đầy đủ hai pass.
5. Filter Turbo bật nhưng sampler texture nguồn lần lượt là `GL_NEAREST` và `GL_LINEAR`.

Cần ghi nhận hình ảnh, FPS/độ giật, nhiệt độ tương đối, logcat và trạng thái surface. Khi crash, lấy đoạn từ `FATAL EXCEPTION` đến hết `Caused by`; khi hình ảnh sai nhưng không crash, thêm log program ID, shader compile/link status, FBO status, source size, viewport, output rectangle và `glGetError()` sau từng pass.

## 9. Lịch sử port CoreBridge và giới hạn

Bản port thử nghiệm trước đây đã chứng minh rằng shader có thể compile và renderer có thể khởi tạo trên thiết bị kiểm thử, nhưng hình ảnh quan sát được không khớp kỳ vọng của người phát triển. Vì vậy gói này được lưu như **tài nguyên tham chiếu**, không phải bản tích hợp CoreBridge hoàn chỉnh. Khi đưa vào phiên chính tuyến, cần đối chiếu với kiến trúc render thực tế của app đích thay vì ghép nguyên APK hoặc nguyên lifecycle của Turbo.

## 10. Hash tài nguyên

Hash đầy đủ nằm trong `RESOURCE_MANIFEST.txt`. Khi di chuyển gói sang repository hoặc phiên làm việc khác, nên kiểm tra lại hash để bảo đảm shader không bị thay đổi ngoài ý muốn.

## License / provenance

Tài nguyên được trích từ artifact PhoneME-Turbo do người dùng cung cấp trong phiên làm việc này và được lưu nhằm phục vụ phát triển các dự án PhoneME liên quan của người dùng. Không đưa keystore, token hoặc thông tin xác thực vào gói này.

