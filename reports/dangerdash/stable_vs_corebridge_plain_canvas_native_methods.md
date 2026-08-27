# Đối chiếu native methods plain Canvas: Turbo Stable và CoreBridge

## Kết luận ngắn

Không thấy một native method Java thuộc `javax.microedition.lcdui.Canvas` bị thiếu đơn lẻ trong CoreBridge. Khác biệt chính là **hai runtime dùng hai kiến trúc bridge khác nhau**:

- Turbo Stable dùng Android-side `FrameBufferView`/`FrameBufferActivity` với JNI export trực tiếp, rồi native trả frame qua `renderFrame(Bitmap)` hoặc `copyToBuffer(Buffer)`.
- CoreBridge dùng một lớp Android-side `CoreBridgeNative` duy nhất, rồi native runtime tự đăng ký các nhóm `graphics`, `game_canvas`, `image`, `lcdui` bằng registry động. Frame được Android lấy bằng `nativeCopyFrameSince(...)` và publication có symbol `publish_canvas_graphics`.

Do đó không thể kết luận rằng CoreBridge chỉ thiếu một JNI export cùng tên như Stable. Điểm lệch có khả năng nằm ở **semantics đường Graphics → framebuffer publication**, không phải ở danh sách method Java của plain Canvas.

## Stable: native Java methods và JNI exports quan sát được

DEX Stable có 12 native methods:

| Lớp | Method và descriptor | JNI export tương ứng |
|---|---|---|
| `FrameBufferActivity` | `callCVM(String,String,String,String,boolean,boolean):void` | `Java_be_preuveneers_phoneme_fpmidp_FrameBufferActivity_callCVM` |
| `FrameBufferActivity` | `cleanUpCVM():void` | `Java_be_preuveneers_phoneme_fpmidp_FrameBufferActivity_cleanUpCVM` |
| `FrameBufferView` | `copyToBuffer(Buffer):boolean` | `Java_be_preuveneers_phoneme_fpmidp_FrameBufferView_copyToBuffer` |
| `FrameBufferView` | `getNativeAPIVersion():int` | `Java_be_preuveneers_phoneme_fpmidp_FrameBufferView_getNativeAPIVersion` |
| `FrameBufferView` | `initFrameBufferSize(int,int,ShortBuffer,int):boolean` | `Java_be_preuveneers_phoneme_fpmidp_FrameBufferView_initFrameBufferSize` |
| `FrameBufferView` | `initFrameBufferView():boolean` | `Java_be_preuveneers_phoneme_fpmidp_FrameBufferView_initFrameBufferView` |
| `FrameBufferView` | `renderFrame(Bitmap):boolean` | `Java_be_preuveneers_phoneme_fpmidp_FrameBufferView_renderFrame` |
| `FrameBufferView` | `resizeFrameBuffer(int,int,ShortBuffer):boolean` | `Java_be_preuveneers_phoneme_fpmidp_FrameBufferView_resizeFrameBuffer` |
| `FrameBufferView` | `setBitmapFonts(boolean):void` | `Java_be_preuveneers_phoneme_fpmidp_FrameBufferView_setBitmapFonts` |
| `FrameBufferView` | `setBusy(boolean):void` | `Java_be_preuveneers_phoneme_fpmidp_FrameBufferView_setBusy` |
| `FrameBufferView` | `toRGB565(byte[],int,int,int,int):void` | `Java_be_preuveneers_phoneme_fpmidp_FrameBufferView_toRGB565` |
| `PhoneMECallbacks` | `init():void` | `Java_be_preuveneers_phoneme_fpmidp_PhoneMECallbacks_init` |

Stable also has Java-side, non-native framebuffer methods such as `getFbBitmapForGL():Bitmap`, `getBitmapBufferForGL():ShortBuffer`, `renderFrame(Bitmap)`, `doRepaint()`, and `repaintView()`. These methods form the Android rendering bridge; they are not methods of plain LCDUI `Canvas`.

## CoreBridge: native Java methods và JNI exports quan sát được

DEX CoreBridge có 29 native methods, tất cả thuộc `com.phoneme.corebridge.CoreBridgeNative`. Nhóm liên quan trực tiếp đến frame là:

| Method | Vai trò quan sát được |
|---|---|
| `nativeCreate():long` | Tạo machine/runtime |
| `nativeConfigure(long,String,String):int` | Cấu hình runtime |
| `nativeStartJar(...)` / `nativeStartJarScoped(...)` | Khởi chạy MIDlet/JAR |
| `nativePump(long):void` | Pump scheduler/runtime |
| `nativeCopyFrameSince(long,long,byte[],int[]):int` | Lấy frame RGBA hoặc metadata sau generation |
| `nativeCopyLcduiImageRgba(long,int,byte[],int[]):int` | Lấy ảnh LCDUI riêng |
| `nativeSendKey(...)` / `nativeSendPointer(...)` | Đưa input vào runtime |
| `nativeStop(long):void` / `nativeDestroy(long):void` | Dừng/hủy runtime |

JNI exports tương ứng bắt đầu bằng `Java_com_phoneme_corebridge_CoreBridgeNative_...`. ELF CoreBridge còn có các symbol/runtime token:

- `register_graphics_natives`
- `register_game_canvas_natives`
- `register_image_natives`
- `register_lcdui_natives`
- `publish_canvas_graphics`
- `phoneme_copy_frame_rgba_since`
- `phoneme_copy_lcdui_image_rgba`

Các nhóm `register_*_natives` cho thấy CoreBridge có triển khai native cho Graphics/GameCanvas/Image/LCDUI, nhưng chúng được đăng ký động trong VM và **không xuất hiện dưới dạng các JNI export Java cùng tên Stable**.

## Method Stable có mà CoreBridge không có

CoreBridge không có lớp/method tương đương trực tiếp với các method Android-side Stable sau:

- `FrameBufferView.initFrameBufferView()`
- `FrameBufferView.initFrameBufferSize(...)`
- `FrameBufferView.renderFrame(Bitmap)`
- `FrameBufferView.copyToBuffer(Buffer)`
- `FrameBufferView.resizeFrameBuffer(...)`
- `FrameBufferView.toRGB565(...)`
- `FrameBufferView.setBusy(...)`
- `FrameBufferActivity.callCVM(...)`

Tuy nhiên đây là khác biệt kiến trúc có chủ ý: CoreBridge không dùng `FrameBufferView` của Stable mà copy RGBA vào byte array qua `nativeCopyFrameSince(...)`, sau đó `GameSurfaceView` tạo/cập nhật Bitmap Android. Vì vậy việc thiếu các method trên **không tự chứng minh là lỗi**.

## Method CoreBridge có mà Stable không có

CoreBridge có các method bridge riêng mà Stable không có:

- `nativeCopyFrameSince(...)`
- `nativeCopyLcduiImageRgba(...)`
- `nativePollLcdUiEvent(...)`
- các method `nativeLcdUi*`
- `nativeSchedulerSnapshot(...)`
- `nativeMediaTrace(...)`
- `nativeMidletError(...)`

Đây cũng là khác biệt kiến trúc, không phải bằng chứng trực tiếp về plain Canvas.

## Liên hệ với log Danger Dash

Sau patch GameCanvas + `getGraphics/flushGraphics`, log 23:55 đã ghi nhận:

- `gameCanvasRegistered=1`
- `gameGraphicsAttached=1`
- `paintCallbacks=342`
- `paintCommits=341`
- `gameFlushRequests=1`
- `gameFlushCommits=1`
- frame publish lặp cùng hash đen

Điều này loại trừ giả thuyết chỉ thiếu registration/flush Java-side. Nó phù hợp hơn với một trong hai khả năng:

1. Graphics operations của Danger Dash đang ghi vào một Graphics/Image store không phải framebuffer mà `publish_canvas_graphics` đọc.
2. Native Graphics store có pixel, nhưng `nativeCopyFrameSince`/`phoneme_copy_frame_rgba_since` đang copy nhầm vùng, nhầm generation hoặc buffer không được dirty sau các lệnh vẽ.

## Kết luận hành động

Chưa có căn cứ tạo patch bằng cách đổi tên JNI method Stable sang CoreBridge. Bước có giá trị tiếp theo là instrument hoặc đối chiếu implementation của `register_graphics_natives` và `publish_canvas_graphics` để trả lời một câu hỏi duy nhất: **sau một lệnh `Graphics.fillRect` hoặc `drawRGB`, pixel trong Graphics store có thay đổi trước khi `nativeCopyFrameSince` được gọi hay không?**

Các kết luận trên chỉ dùng artifact đã có; không sửa APK/JAR baseline và không binary-patch native.
