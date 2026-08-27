# Bằng chứng tĩnh plain Canvas / framebuffer — CoreBridge r64

Ngày phân tích: 2026-08-28.

## 1. Stable: endpoint Android-side

Nguồn chính: `/home/ubuntu/work/edge-menu-build/game_analysis/stable_bridge_disassembly_full.txt`, `/home/ubuntu/work/edge-menu-build/game_analysis/stable_jniphoneme_framebuffer_disassembly.txt`, APK tham chiếu `/home/ubuntu/work/edge-menu-build/PhoneME-CoreBridge-Archive/artifacts/apk/provenance/PhoneME-Turbo-nHD-1.1.apk`.

Stable `surfaceCreated` tạo một Bitmap `RGB_565` và một `ShortBuffer` trực tiếp. `updateView()` gọi native `FrameBufferView.renderFrame(Bitmap)` ở các API phù hợp; native endpoint khóa/đọc framebuffer legacy và ghi pixel RGB565 vào Bitmap. Sau đó lớp Android/GL repaint hoặc `doRepaint()` vẽ Bitmap lên Surface/GL. `copyToBuffer(Buffer)` là endpoint copy buffer khác, còn `toRGB565` là chuyển đổi định dạng. Các native methods `renderFrame`, `copyToBuffer`, `initFrameBufferSize`, `resizeFrameBuffer`, `setBusy` không phải native callback riêng của plain Canvas; chúng là ABI của legacy CVM/JNI framebuffer.

Kết luận semantic dùng được: callback Java Canvas phải tạo ra thay đổi trên framebuffer storage mà host presentation đọc; host presentation không tự sửa pixel. Không được bê tên JNI, Bitmap/ShortBuffer hay legacy GL wrapper sang CoreBridge.

## 2. CoreBridge: endpoint host

Nguồn: `/home/ubuntu/work/edge-menu-build/PhoneME-CoreBridge-Archive/source/core-resource-cache/Core/src/api/CAPI.cpp`, dòng 869–895.

`phoneme_copy_frame_rgba_since()` gọi `Runtime::pump_events()`, sau đó chỉ gọi `copy_current_frame_rgba_since(previous_generation, output)` và trả metadata/pixel đã có. Android `nativeCopyFrameSince` vì thế là đầu ra của framebuffer đã publish, không phải đường vẽ riêng cho GameCanvas. Nếu checksum RGBA đã là opaque black trước khi `Bitmap.setPixels`, lỗi nằm trước Android view.

## 3. CoreBridge: publication path trong source snapshot

Nguồn: `/home/ubuntu/work/edge-menu-build/PhoneME-CoreBridge-Archive/source/core-resource-cache/Core/src/runtime/Runtime.cpp`.

`prepare_canvas_graphics()` tạo một `Image` mutable kích thước display, pin object `javax/microedition/lcdui/Image`, tạo `Graphics`, đặt `Graphics.target` trỏ tới Image và attach `GraphicsContext` với `target_key` là Image key. `reset_canvas_graphics()` có thể đồng bộ pixel framebuffer cũ vào Image rồi reset clip/context.

`publish_canvas_graphics()` đọc đúng `Graphics.target`, lấy Image từ `GraphicsStore`, chỉ publish nếu Image có dirty region. Nó convert pixel Image qua `rgb565_roundtrip`, cập nhật vùng tương ứng trong Framebuffer, rồi clear dirty region. Nếu kích thước/byte count không khớp thì thay toàn framebuffer. `commit_paint()` và `flush_game_graphics()` trong snapshot đều đi qua publication helper này.

Semantic generic mong muốn: mọi Graphics được dùng để paint màn hình phải trỏ cùng display Image mà publication đọc; mọi primitive phải ghi pixel vào Image đó và đánh dấu dirty; commit/flush phải publish target đó.

## 4. Bằng chứng binary r64

ELF: `/home/ubuntu/work/edge-menu-build/game_analysis/stable_apk_static/corebridge/lib/arm64-v8a/libphoneMECoreBridge.so`.

`readelf/nm` cho thấy binary có DWARF và các symbol:

- `CanvasRuntime::register_canvas(ObjectRef,bool,bool)` tại `0x2c9fb4`, size `0x650`.
- `CanvasRuntime::request_repaint(ObjectRef,CanvasRect)` tại `0x2ca8e4`.
- `CanvasRuntime::process_repaints()` tại `0x2c94ac`.
- `CanvasRuntime::game_graphics(ObjectRef)` tại `0x2cbf88`.
- `CanvasRuntime::request_game_flush(ObjectRef,CanvasRect)` tại `0x2cc460`.
- `CanvasRuntime::invoke_paint(ObjectRef,ObjectRef,bool)` tại `0x2cd970`, size `0x89c`.
- anonymous `publish_canvas_graphics(Machine&,Framebuffer,ObjectRef,const char*,vector<unsigned char>*)` tại `0x2c034c`, size `0x85c`.
- `register_graphics_natives()` tại `0x606310`, `register_image_natives()` tại `0x664eb4`, `register_canvas_natives()` tại `0x5675c8`.

DWARF producer là Android clang 18.0.4 và source path của runtime là `/home/ubuntu/PhoneME-Turbo-CoreBridge/Core/src/runtime/Runtime.cpp`. DWARF có DIE `CanvasRuntime`, nhưng không cho thấy một CU/source path riêng recoverable cho `CanvasRuntime.cpp`, `GraphicsNatives.cpp`, `ImageNatives.cpp` hoặc `GraphicsStore`; source snapshot hiện có chỉ khớp một phần.

Đáng chú ý, binary symbol của `publish_canvas_graphics` có thêm tham số `const char*` trước reusable RGBA vector, trong khi source snapshot `Runtime.cpp` hiện có chữ ký 4 tham số logic (Machine, Framebuffer, ObjectRef, optional vector). Không được coi snapshot là exact source của APK r64 cho tới khi đối chiếu build provenance.

## 5. Primitive binary không phải no-op

Inventory symbol và disassembly: `/home/ubuntu/work/edge-menu-build/game_analysis/corebridge_graphics_image_symbols_filtered_r64.txt`, `/home/ubuntu/work/edge-menu-build/game_analysis/corebridge_graphics_primitives_disassembly_r64.txt`.

`graphics::fill_rect(Image&,GraphicsContext const&,...)` tại `0x2d2bd8` có nhánh fast path ghi trực tiếp các vector pixel vào `Image` pixel storage; nhánh alpha/general path gọi `Image::set_pixel`. Sau ghi, nó cập nhật dirty bounds/dirty flag ở Image. `Image::set_pixel` tại `0x2d784c` kiểm tra mutable/bounds, ghi pixel RGB565 vào buffer và cập nhật dirty region; `Image::mark_dirty_region` tại `0x2d6cb4` thực hiện union clipped dirty bounds. Vì vậy không có bằng chứng rằng primitive core tự thân là no-op.

`GraphicsStore::context()` và `GraphicsStore::image()` có hash lookup riêng và trả handle/context thông qua các struct; target identity vẫn là điểm cần kiểm chứng ở native handler. Việc log có `paintCallbacks`, `paintCommits`, `gameGraphicsAttached` chỉ chứng minh lifecycle/entrypoint; không chứng minh handler đã dùng đúng Image key hoặc dirty Image mà publication đọc.

## 6. Diễn giải hiện tại

Hai artifact đã test trước đó đã phủ nhận registration-only theory:

- superclass Canvas→GameCanvas: `gameCanvasRegistered=1`, vẫn black.
- thêm `GameCanvas.getGraphics()+flushGraphics`: `gameCanvasRegistered=1`, `gameGraphicsAttached=1`, `paintCallbacks=342`, `paintCommits=341`, `gameFlushRequests=1`, `gameFlushCommits=1`, nhưng checksum/hash black không đổi.

Do đó fault còn lại hợp lý hơn là ở native Graphics handler/store/publication identity hoặc việc Image dirty target không phải target mà publisher đọc. Không được tạo thêm JAR mutation cùng loại, và không binary patch offset mù.

## 7. Boundary recovery / build cần có

Để làm native correction có provenance, cần phục hồi đúng revision gồm tối thiểu: `CanvasRuntime.cpp/.hpp`, `GraphicsNatives.cpp`, `ImageNatives.cpp`, `GraphicsStore` headers/implementation, VM native registry headers, Android JNI bridge, CMake/NDK build graph, exact r64 commit/toolchain/flags và ABI header. ELF/DWARF hiện đủ để đọc symbol/line evidence và disassemble read-only, nhưng chưa đủ an toàn để rebuild/correct native.
