# Thiết kế port semantic plain Canvas từ Turbo Stable sang CoreBridge

**Ngày:** 28-08-2026  
**Phạm vi:** Danger Dash, plain `Canvas`, logic hiển thị 360×640  
**Trạng thái:** Phân tích-first; chưa tạo JAR/APK mới và chưa thay đổi baseline r63/r64.

## 1. Mục tiêu và nguyên tắc

Mục tiêu không phải là chép JNI/ABI của Turbo Stable vào CoreBridge. Stable và CoreBridge dùng hai kiến trúc runtime khác nhau: Stable chạy legacy CVM với Android `Bitmap`/`ShortBuffer` và các native method của `FrameBufferView`, trong khi CoreBridge chạy runtime riêng, giữ pixel trong `Image`/`GraphicsStore`, publish vào `Framebuffer`, rồi xuất RGBA qua C API. Vì vậy, thứ có thể port là **hành vi semantic**: một lần paint của Canvas phải ghi vào đúng vùng pixel mà đường xuất frame đọc; commit/repaint phải làm cho thay đổi đó trở thành frame mới.

> **Nguyên tắc:** port invariant về ownership, target identity, dirty state, publish và lifetime; không port tên JNI, calling convention, layout struct, Android Bitmap path hoặc legacy CVM callback.

Các ràng buộc không thay đổi:

| Ràng buộc | Quyết định |
|---|---|
| Farm Frenzy 2 | Giữ nguyên r64 đã PASS; không ghi đè APK/native baseline. |
| Lifecycle fallback r63 | Giữ nguyên, không gộp sửa Danger Dash vào baseline. |
| JAR gốc Danger Dash | Bất biến, chỉ dùng làm bằng chứng và nguồn tạo bản sao thử nghiệm. |
| JAR mutation | Không tạo thêm nếu chưa có cơ chế mới được chứng minh. Hai patch registration/flush trước đã thất bại ở mức hiển thị. |
| Native `.so` | Không binary-patch offset mù. Chỉ sửa khi có source/build provenance đúng revision. |
| Xác minh thiết bị | Không tuyên bố test Android cục bộ; người dùng là người cài/test artifact trên thiết bị. |

## 2. Bản đồ pipeline hai hệ thống

### 2.1. Pipeline Turbo Stable đã quan sát được

Nguồn: `stable_bridge_disassembly_full.txt` và `stable_jniphoneme_framebuffer_disassembly.txt`.

| Giai đoạn | Stable thực hiện | Ý nghĩa semantic | Phần ABI-specific không port |
|---|---|---|---|
| Khởi tạo surface | `surfaceCreated` cấp phát `RGB_565 Bitmap` và direct `ShortBuffer`; gọi `initFrameBufferSize`/`resizeFrameBuffer`. | Có một storage pixel có kích thước logic của game và một chủ sở hữu frame rõ ràng. | Android `Bitmap`, `ShortBuffer`, JNI method name và layout toàn cục `g_framebuffer`. |
| Nguồn frame | Legacy CVM framebuffer/surface buffer. | Renderer và host phải dùng cùng nguồn pixel. | `connectFrameBuffer`, `get_surface_buffer`, CVM callbacks. |
| Copy frame | `renderFrame(Bitmap)` khóa mutex, lấy kích thước hợp lệ, `memcpy` từng hàng pixel RGB565 vào vùng pixel của Bitmap, unlock rồi trả `TRUE`. | Đây là endpoint copy/publish; nó không tự thực hiện semantics riêng của plain Canvas. | `AndroidBitmap_getInfo/lockPixels/unlockPixels`, mutex và RGB565 row copy. |
| Đường buffer phụ | `copyToBuffer(Buffer)` khóa rồi copy framebuffer RGB565 vào buffer đã đăng ký. | Có thể có nhiều host consumer nhưng đều đọc cùng framebuffer. | Native `Buffer`/ShortBuffer và legacy GL bridge. |
| Repaint/hiển thị | Java gọi repaint/forward; GL hoặc `doRepaint` vẽ Bitmap lên Surface. | Host chỉ trình bày pixel đã có. | `GLFramebufferView`, texture upload, Android Surface. |
| Chuyển đổi RGB565 | `toRGB565` ghi dữ liệu chuyển đổi vào global surface buffer. | Format conversion phải đi vào đúng source framebuffer. | API chuyển đổi và buffer global của Stable. |

Disassembly native cho thấy `renderFrame` không gọi `Canvas.paint`, không gọi `Graphics` primitive và không giải mã ảnh. Nó chỉ kiểm tra Bitmap, lock pixel, khóa framebuffer, copy các hàng RGB565, unlock và trả kết quả. `copyToBuffer` cũng là copy endpoint. Vì vậy, không có cơ sở để port Stable bằng cách thêm một native method `renderFrame` tương tự vào CoreBridge.

### 2.2. Pipeline CoreBridge trong source snapshot và binary r64

Nguồn: `Runtime.cpp`, `CAPI.cpp`; binary: `libphoneMECoreBridge.so` r64.

| Giai đoạn | CoreBridge | Invariant cần giữ |
|---|---|---|
| Canvas đăng ký | `CanvasRuntime::register_canvas(ObjectRef,bool,bool)`; binary còn có các state/process/repaint entrypoint. | Canvas hiển thị phải được đăng ký với đúng kích thước/lifetime và được chọn khi foreground. |
| Acquire Graphics | `prepare_canvas_graphics` tạo mutable `Image`, tạo `Graphics`, đặt `Graphics.target` tới Image và attach context vào `GraphicsStore`. | Graphics mà Java nhận phải giữ **target Image display**; không chỉ có một object Graphics hợp lệ về mặt Java. |
| Paint callback | `CanvasRuntime::invoke_paint(ObjectRef,ObjectRef,bool)` gọi `paint(Graphics)` của Canvas. | Plain Canvas và GameCanvas đều cần callback đúng; lớp Java không quyết định nơi native lưu pixel. |
| Primitive | Binary có `graphics::fill_rect`, `draw_rgb`, `draw_image`, `draw_region`, `draw_text`, `draw_line`, `copy_area`, `draw_arc`, v.v.; có `draw_nokia_pixels`, `direct_graphics_target`, `bound_direct_graphics`. | Mọi path `Graphics` và Nokia `DirectGraphics` phải giải quyết cùng target display, ghi pixel thật và mark dirty. |
| Dirty tracking | `Image::mark_dirty_region`, `Image::set_pixel`; `GraphicsStore::consume_dirty_update`. | Dirty phải thuộc chính Image được `publish_canvas_graphics` đọc; không mất dirty vì dùng Image/handle khác. |
| Commit/flush | Snapshot có `commit_paint` và `flush_game_graphics`, cùng gọi publication helper. | Commit/flush phải publish target đã paint; flush không chỉ tăng counter. |
| Publication | `publish_canvas_graphics` lấy `Graphics.target`, truy Image, convert pixel và update/replace `Framebuffer`. | Publisher phải đọc đúng target mới bị primitive sửa, với dirty bounds hợp lệ. |
| Host output | `CAPI.cpp:869–895`: `phoneme_copy_frame_rgba_since` pump rồi gọi `copy_current_frame_rgba_since`; Android nhận RGBA đã publish. | C API không vẽ lại; frame black ở đây nghĩa là lỗi trước endpoint. |

## 3. Những gì đã được chứng minh và loại trừ

### 3.1. Stable không chỉ ra một missing JNI plain Canvas method

Inventory native Stable có 12 method Android wrapper thuộc `FrameBufferActivity`/`FrameBufferView`, trong đó `renderFrame`, `copyToBuffer`, `initFrameBufferSize`, `resizeFrameBuffer`, `toRGB565`, `setBusy` là bridge framebuffer. CoreBridge có 29 method DEX/native và các registry động `register_graphics_natives`, `register_game_canvas_natives`, `register_image_natives`, `register_lcdui_natives`. Không có một method plain Canvas của Stable bị thiếu trực tiếp theo kiểu lệch tên JNI. Khác biệt là **đường kiến trúc**, không phải một hàm wrapper bị quên đăng ký.

### 3.2. Registration/attachment/flush không đủ để sửa frame

Hai test đã tách riêng và đều giữ lại làm evidence:

| Artifact đã test | Kết quả |
|---|---|
| `DangerDash-plain-canvas-gamecanvas-patched.jar` | `gameCanvasRegistered=1`, nhưng `gameGraphicsAttached=0`, frame vẫn black. |
| `DangerDash-gamecanvas-getgraphics-flush-patched.jar` | `gameCanvasRegistered=1`, `gameGraphicsAttached=1`, `paintCallbacks=342`, `paintCommits=341`, `gameFlushRequests=1`, `gameFlushCommits=1`; checksum/hash vẫn cố định và người dùng vẫn thấy đen. |

Điều này phủ nhận giả thuyết “chỉ cần ép plain Canvas thành GameCanvas” hoặc “chỉ cần attach Graphics và flush”. Các cờ instrumentation chứng minh lifecycle đã đi qua; chúng **không chứng minh** primitive đã ghi đúng Image mà publication đọc.

### 3.3. Primitive binary không phải no-op tổng quát

Disassembly r64 cho thấy:

- `graphics::fill_rect(Image&, GraphicsContext const&, ...)` có fast path ghi vector pixel trực tiếp vào storage của Image; path tổng quát gọi `Image::set_pixel`.
- `Image::set_pixel` kiểm tra mutable/bounds, ghi pixel RGB565 và cập nhật dirty state.
- `Image::mark_dirty_region` union các dirty bounds có clipping theo kích thước Image.
- Binary có đầy đủ primitive Graphics và Nokia DirectGraphics: `draw_rgb`, `draw_nokia_pixels`, `set_nokia_byte_pixel`, `direct_graphics_target`, `bound_direct_graphics`.

Vì vậy, bằng chứng hiện tại không ủng hộ kết luận “CoreBridge chưa implement Graphics” hoặc “fillRect tự thân luôn no-op”. Điểm cần đo là **handler nào truyền Image/Graphics nào** và publisher lấy identity nào.

## 4. Giả thuyết còn mở và cách phân biệt

| Giả thuyết | Dấu hiệu dự đoán | Probe cần có |
|---|---|---|
| A. Plain Canvas nhận Graphics không trỏ display Image | Paint callback có chạy, nhưng target key trong handler khác `Graphics.target` mà publisher truy cập. | Log/trace target object, Image key, GraphicsStore key tại acquire, primitive handler và publish. |
| B. DirectGraphics dùng target riêng | `Graphics` primitive có thể ghi, nhưng `drawPixels/drawRGB` vẫn không đổi frame. | Ghi target identity và dirty state riêng tại `direct_graphics_target/draw_nokia_pixels`. |
| C. Primitive ghi đúng Image nhưng dirty không truyền | Pixel storage thay đổi, nhưng `consume_dirty_update` trả empty hoặc publisher bỏ qua vì dirty flag sai. | Pixel mẫu trước/sau + dirty flag/bounds + generation trước/sau. |
| D. Publisher lấy Image stale/wrong | Handler dirty Image A, `publish_canvas_graphics` đọc Image B hoặc Image cũ sau reset/GC. | So sánh Image key/identity và pixel mẫu giữa handler và publisher. |
| E. Kích thước/clip logic làm mọi vẽ nằm ngoài target | Context clip/translation hoặc dimensions không phù hợp; primitive trả mà không ghi vùng hợp lệ. | Log context clip, translate, target dimensions và rectangle clipped của phép vẽ. |
| F. Frame bị reset sau paint trước khi host copy | Paint có pixel/dirty, nhưng reset/clear xảy ra trước C API copy. | Log generation/pixel hash sau publish, sau pump và ngay trước `copy_current_frame_rgba_since`. |

Các giả thuyết A–F không thể phân biệt bằng một JAR patch ở call-site. Một JAR fixture chỉ cho biết kết quả cuối vẫn đen; nó không nói được pixel mất ở Image, dirty, publication hay reset.

## 5. Semantic nên port từ Stable sang CoreBridge

### 5.1. Invariant về một display surface duy nhất

Stable có một global framebuffer được `renderFrame` và `copyToBuffer` cùng đọc. CoreBridge nên có semantic tương đương nhưng bằng object model của nó: mỗi Canvas hiển thị tại một thời điểm phải có một **display Image duy nhất** được gắn vào Graphics dùng cho `paint`, và publication phải đọc chính Image này.

Không nên biến mọi Image trong game thành display Image. Image off-screen do game tạo để sprite/composite phải vẫn là Image riêng. Chỉ Image được runtime đánh dấu là Canvas display target mới tham gia publication. Việc ép tất cả `Image` hoặc mọi `GameCanvas` vào framebuffer sẽ phá các game đã PASS.

### 5.2. Invariant về Graphics target

Khi runtime gọi `paint(Graphics g)`, `g` có thể được lưu vào field/static của game như Danger Dash làm. Object đó phải tiếp tục tham chiếu tới context/target hợp lệ trong suốt callback và cho tới commit. Nếu `getGraphics()` trả object khác với object dùng ở callback, hai object phải vẫn resolve về cùng display target hoặc contract phải nêu rõ object nào là canonical.

Semantic tương thích cần đạt:

1. `acquire_paint_graphics(canvas)` xác định display Image của Canvas.
2. `Graphics.target` và `GraphicsStore` context cùng trỏ tới Image key đó.
3. Mọi `Graphics` method resolve target qua cùng cơ chế, không tự tạo Image tạm cho từng primitive.
4. `GameCanvas.getGraphics()` nếu được dùng phải trả target display của chính GameCanvas, nhưng không cần đổi plain Canvas thành GameCanvas.
5. Khi Canvas mất foreground hoặc bị huỷ, target cũ bị detach/clear theo lifetime; Canvas mới không được kế thừa frame stale.

### 5.3. Invariant về primitive và dirty state

Tất cả nhóm phép vẽ cần đi qua contract chung:

```text
resolve_bound_target(Graphics/DirectGraphics)
    -> Image display target
clip/transform operation to target bounds
write pixels to that Image
mark_dirty_region(actual_written_region)
return success/failure without silently switching target
```

Với các phép vẽ không tạo pixel do clip rỗng, dirty có thể vẫn empty. Với phép vẽ có dữ liệu nhưng alpha hoàn toàn trong suốt, pixel có thể không đổi; dirty policy phải nhất quán và không được dùng việc “pixel không đổi” để bỏ qua một target identity sai.

Nokia `DirectGraphics.drawPixels`/`drawRGB` không nên được chuyển cơ học thành một lời gọi Android. Chúng phải dùng `direct_graphics_target` để lấy cùng bound Image, chuyển format/alpha theo contract CoreBridge, ghi vùng và mark dirty. Việc đổi call-site bytecode chỉ là workaround ngoại lệ khi chứng minh game gọi một private method không được registry bắt; hiện chưa có bằng chứng đủ cho cách đó.

### 5.4. Invariant về publication

`publish_canvas_graphics` nên thực hiện theo thứ tự nguyên tử logic:

1. Xác định Canvas đang publish và Graphics canonical của nó.
2. Lấy `Graphics.target` và Image từ cùng `GraphicsStore`/heap identity.
3. Đọc dirty region của Image trước khi clear.
4. Convert pixel từ Image sang framebuffer theo đúng format.
5. Tạo generation mới nếu có thay đổi hợp lệ, cập nhật damage region.
6. Chỉ sau khi framebuffer update thành công mới clear dirty region.
7. Không để một reset/GC/Canvas switch chen giữa bước 2–6 làm publisher đọc Image stale.

Snapshot `Runtime.cpp` hiện mô tả phần lớn contract này, nhưng binary r64 có chữ ký `publish_canvas_graphics(..., char const*, vector<unsigned char>*)` khác snapshot. Vì chưa xác định exact revision, chưa được sửa source theo giả định rằng snapshot là code đang chạy.

### 5.5. Invariant về frame đầu và reset

Stable có những lần `renderFrame FALSE` ở lúc surface chưa sẵn sàng, sau đó chuyển TRUE ổn định. CoreBridge cũng cần phân biệt rõ:

- surface/Canvas chưa sẵn sàng: chưa publish là hợp lệ;
- frame đã paint nhưng toàn màu đen: phải publish được generation mới, không coi là “unchanged” chỉ vì pixel hash giống frame reset;
- Canvas đổi foreground: phải reset target/lifetime có chủ đích, không giữ frame game trước;
- host copy không có thay đổi: được skip theo generation, nhưng không skip frame đầu sau khi target mới attach.

## 6. Những phần không nên port

| Không port | Lý do |
|---|---|
| `FrameBufferView.renderFrame(Bitmap)` | Đây là JNI wrapper copy RGB565 vào Android Bitmap; CoreBridge host nhận RGBA qua C API. |
| `copyToBuffer(Buffer)` và direct `ShortBuffer` | Phụ thuộc Java NIO/Android buffer và global legacy surface của Stable. |
| `toRGB565` Stable | CoreBridge có representation/publish conversion riêng; chỉ port yêu cầu format tương đương, không bê hàm. |
| `flush_framebuffer` Stable | Chỉ khóa và `memcpy` một global buffer; CoreBridge phải publish Image/dirty trước khi copy C API. |
| GL/Suface forwarding | Stable-specific presentation; CoreBridge Android `GameSurfaceView` đã là downstream, checksum chứng minh black đến từ native frame. |
| Ép `Canvas` thành `GameCanvas` | Thay đổi Java type/lifecycle semantics và đã thử nhưng không đủ. |
| Ép tất cả Image/Graphics thành display target | Có thể phá off-screen rendering và Farm Frenzy 2. |
| Header stripping, magic decode fallback hoặc binary patch offset | Không liên quan trực tiếp tới plain Canvas root cause và không có provenance an toàn. |

## 7. Native probe tối thiểu cần phục hồi

Probe phải được build từ đúng r64 source/revision, không chèn vào binary đang cài đặt. Mỗi event nên ghi một dòng có `canvas_id`, `graphics_id`, `image_key`, `image dimensions`, `dirty flag/bounds`, `pixel[0]`, `pixel[last]`, `frame generation` và `stage`.

| Stage | Giá trị cần ghi |
|---|---|
| `acquire_paint_graphics` | Canvas object, Graphics object, target object/key, dimensions, initial dirty. |
| `bound_graphics` | Receiver, resolved context key, resolved Image key, clip/translation. |
| `bound_direct_graphics` | DirectGraphics receiver, associated Graphics/target key. |
| `draw_rgb`/`draw_nokia_pixels` | Input dimensions/format, clipped output rect, target key, pixel before/after. |
| `Image::set_pixel`/bulk draw | Actual storage write count, dirty flag and dirty bounds after operation. |
| `commit_paint`/`flush_game_graphics` | Target key, dirty before publication, generation before/after. |
| `publish_canvas_graphics` | `Graphics.target` key, Image key read, pixel sample and update branch. |
| C API copy | Published generation, framebuffer hash/sample immediately before copy. |

Một fixture generic nên có ba test độc lập, không phụ thuộc Danger Dash:

1. Plain `Canvas.paint`: `setColor` + `fillRect` + `drawRGB` vào Graphics được truyền cho paint.
2. Plain `Canvas` lưu Graphics rồi gọi lại trong callback kế tiếp, kiểm tra target identity không đổi.
3. Nokia `DirectGraphics.drawPixels/drawRGB` trên cùng Canvas, kiểm tra target/dirty/publish.

Fixture phải chạy được ở host/core test trước khi đưa vào APK. Nếu fixture 1 pass nhưng fixture 3 fail thì lỗi nằm ở DirectGraphics; nếu cả fixture đều fail, ưu tiên target binding/publication; nếu host pass nhưng Android fail, mới xem JNI/build/ABI.

## 8. Boundary source hiện tại và yêu cầu phục hồi

Inventory read-only hiện có chỉ gồm 9 file dưới `Core`: `PhoneMECore.h`, `CAPI.cpp`, `Runtime.cpp`, một số VM/LCDUI file, test và script. Không có `CanvasRuntime.cpp/.hpp`, `GraphicsNatives.cpp`, `ImageNatives.cpp`, `GraphicsStore` header/implementation hoặc Android JNI/CMake/NDK recipe đầy đủ.

ELF r64 có DWARF, symbol và line mapping về `/home/ubuntu/PhoneME-Turbo-CoreBridge/Core/src/runtime/Runtime.cpp`; DWARF có DIE `CanvasRuntime`, nhưng không cung cấp source body recoverable cho các file Graphics/Image bị mất. ELF cho phép disassemble read-only và xác nhận primitive có tồn tại, không đủ để tái lập exact build.

Để sửa native có thể kiểm chứng cần tối thiểu:

- exact r64 commit/tag của CoreBridge;
- `CanvasRuntime.cpp/.hpp`;
- `GraphicsNatives.cpp`, `ImageNatives.cpp`;
- `GraphicsStore` headers/implementation và struct definitions;
- native registry/VM object/heap headers;
- Android JNI bridge chứa `CoreBridgeNative` và build target;
- CMake/Gradle/NDK recipe, compiler flags, ABI và link dependencies;
- một fixture/test harness có thể chạy trước và sau sửa.

Nếu chỉ phục hồi được source Stable, phần có thể học thêm vẫn là contract framebuffer/pixel ownership; nó không đủ để sửa CoreBridge native.

## 9. Quyết định cho chu kỳ hiện tại

**Chưa tạo artifact mới.** Bằng chứng hiện tại đủ để chuyển từ giả thuyết “plain Canvas chưa đăng ký” sang thiết kế generic về target identity/dirty/publication, nhưng chưa đủ để chọn một dòng sửa an toàn trong native binary. Tạo thêm JAR mutation lúc này sẽ lặp lại cơ chế đã kiểm chứng thất bại và không tăng thông tin chẩn đoán.

Artifact JAR `DangerDash-private-drawrgb-patched.jar` tiếp tục giữ trạng thái **chưa device-test hợp lệ**, không được đánh dấu pass/fail và không được gộp với patch khác. Nếu sau này native source không phục hồi nhưng vẫn cần một phép thử JAR, chỉ được test riêng artifact này trong một chu kỳ mới; đó là phép thử call-site cụ thể, không phải bản port Stable và không thay thế native probe.

## 10. Hồ sơ bằng chứng nội bộ

- `/home/ubuntu/work/edge-menu-build/game_analysis/stable_bridge_disassembly_full.txt`
- `/home/ubuntu/work/edge-menu-build/game_analysis/stable_jniphoneme_framebuffer_disassembly.txt`
- `/home/ubuntu/work/edge-menu-build/game_analysis/corebridge_graphics_image_symbols_filtered_r64.txt`
- `/home/ubuntu/work/edge-menu-build/game_analysis/corebridge_canvas_graphics_symbols_r64.txt`
- `/home/ubuntu/work/edge-menu-build/game_analysis/corebridge_graphics_primitives_disassembly_r64.txt`
- `/home/ubuntu/work/edge-menu-build/game_analysis/plain_canvas_static_evidence_r64.md`
- `/home/ubuntu/work/edge-menu-build/game_analysis/corebridge_remaining_source_inventory.txt`
- `/home/ubuntu/work/edge-menu-build/PhoneME-CoreBridge-Archive/source/core-resource-cache/Core/src/runtime/Runtime.cpp`
- `/home/ubuntu/work/edge-menu-build/PhoneME-CoreBridge-Archive/source/core-resource-cache/Core/src/api/CAPI.cpp`
- `/home/ubuntu/upload/PhoneME-CoreBridge-20260827-230036.log.txt`
- `/home/ubuntu/upload/PhoneME-CoreBridge-20260827-235520.log.txt`
- `/home/ubuntu/work/edge-menu-build/game_analysis/dangerdash_gamecanvas_graphics_log_235520_findings.md`
- `/home/ubuntu/work/edge-menu-build/game_analysis/dangerdash_option_bc_assessment.md`
