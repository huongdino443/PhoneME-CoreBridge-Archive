# Danger Dash plain Canvas root-cause evidence

## User-provided diagnosis

The attached Superninja todo states that Danger Dash uses `i extends javax.microedition.lcdui.Canvas`, not `javax.microedition.lcdui.game.GameCanvas`, and that CoreBridge r64's native canvas registration only enables the framebuffer path when the native `game_canvas` argument is true. It records the native branch at `0x2ca57c` (`tbz w21, #0, 2ca588`) and reports `game_canvas_registered=0` in all Danger Dash snapshots versus `1` from the first Farm Frenzy 2 snapshot.

## Independent local bytecode confirmation

The archived `source/dangerdash/dangerdash_i.javap.txt` shows the constructor invoking `javax/microedition/lcdui/Canvas.<init>()`, `setFullScreenMode(boolean)`, and `repaint()`. Its `paint(javax.microedition.lcdui.Graphics)` method is present. No `GameCanvas` reference, `flushGraphics`, `serviceRepaints`, or `GameCanvas.getGraphics` reference appears in the relevant class output. This confirms the game class is a plain Canvas from the preserved JAR disassembly.

## CoreBridge observations already recorded

The CoreBridge scheduler snapshots for Danger Dash show `paintCallbacks` and `paintCommits` advancing while `gameCanvasRegistered=0` and `gameGraphicsAttached=0`. The final framebuffer probe is fully opaque black and remains unchanged. Earlier patches to image decoding, cache access, alpha/transparency, public `drawRGB`, and other renderer call sites did not change that state. The Java `CoreBridgeNative` wrapper exposes frame-copy and LCDUI functions but no Java-side `registerCanvas` method; the registration decision therefore appears to happen inside the native runtime's Canvas/LCDUI path.

## Safe implementation constraint

Do not binary-patch `libphoneMECoreBridge.so`. The current archive lacks a complete native Android JNI implementation and a verified relink recipe. A JAR superclass mutation from Canvas to GameCanvas is also not yet approved: it changes class semantics and may break constructor/runtime behavior. The next investigation should locate the actual native registration bridge or an existing Java/smali call-site where the boolean can be changed generically, then run structural checks before making one r64-derived APK.


## 4. Evidence bổ sung ngày 28-08-2026

Hai thí nghiệm JAR đã kiểm chứng giả thuyết superclass/flush nhưng không sửa được frame. Bản Canvas→GameCanvas làm `gameCanvasRegistered=1` nhưng vẫn đen. Bản tiếp theo thêm `GameCanvas.getGraphics()` và `flushGraphics()` đạt `gameCanvasRegistered=1`, `gameGraphicsAttached=1`, `paintCallbacks=342`, `paintCommits=341`, `gameFlushRequests=1`, `gameFlushCommits=1`; checksum phía host và native frame-publish vẫn cố định ở frame đen. Vì vậy registration, Graphics attachment và flush riêng lẻ không phải điều kiện đủ.

Read-only symbol/disassembly của ELF r64 cho thấy CoreBridge có đầy đủ nhóm primitive Graphics/Image/Nokia DirectGraphics và dirty helpers, gồm `fill_rect`, `draw_rgb`, `draw_nokia_pixels`, `direct_graphics_target`, `GraphicsStore::attach_image`, `GraphicsStore::attach_context`, `Image::set_pixel` và `Image::mark_dirty_region`. `fill_rect`/`set_pixel` có đường ghi storage và dirty tracking; chưa có bằng chứng primitive core tự thân là no-op.

Kết luận hiện tại vì thế được hạ mức chắc chắn: **không thể khẳng định chỉ vì plain Canvas mà CoreBridge bỏ qua framebuffer**. Plain Canvas là khác biệt lifecycle/registration đáng kiểm tra, nhưng đã không giải thích đầy đủ symptom. Giả thuyết có sức nặng hơn là một trong các target/dirty/publication mismatch sau: Graphics mà callback nhận không trỏ cùng Image publisher đọc; DirectGraphics resolve target riêng; primitive ghi được nhưng dirty không tới publisher; publisher đọc Image stale/wrong; clip/transform làm vùng ghi rỗng; hoặc reset xảy ra trước khi C API copy.

## 5. Giới hạn phục hồi

ELF r64 còn DWARF và symbol/line mapping, nhưng archive source chỉ có 9 file. Không còn `CanvasRuntime.cpp/.hpp`, `GraphicsNatives.cpp`, `ImageNatives.cpp`, `GraphicsStore` headers/implementation, Android JNI implementation đầy đủ hoặc CMake/NDK graph của exact r64 binary. Không đủ cơ sở để sửa `.so` hoặc xác nhận snapshot `Runtime.cpp` là exact revision: symbol binary của `publish_canvas_graphics` có thêm tham số `const char*` so với snapshot.

Bản semantic port có căn cứ được lưu tại `dangerdash_plain_canvas_port_design.md`. Chưa tạo thêm artifact; không binary-patch và không lặp lại patch GameCanvas/flush khi chưa có native probe.
