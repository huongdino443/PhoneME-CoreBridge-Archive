# Danger Dash – r64 regression analysis

## Runtime log

Source: `/home/ubuntu/upload/PhoneME-CoreBridge-20260827-160013.log.txt` (user-provided, exported 2026-08-27 16:00:14).

- JAR path: `.../DangerDash_Nokia_5800_EN_IGP_IAP_EU_TS_109.jar`.
- MIDlet: `GloftJDMP`.
- Saved profile/launch size: `360x640`, portrait; this test did not use the Farm 640x360 profile.
- `nativeStartJarScoped` returned `0`; host presentation switched to game session.
- At first scheduler snapshot: `gameCanvasRegistered=0`, `gameGraphicsAttached=0`, `paintCallbacks=0`, `paintCommits=0`, `gameFlushRequests=0`, `gameFlushCommits=0`; VM present, 3 threads.
- By later snapshot (line 1133): `gameCanvasRegistered=0`, `gameGraphicsAttached=0`, `paintCallbacks=399`, `paintCommits=398`, `gameFlushRequests=0`, `gameFlushCommits=0`, `inputProcessed=114`, VM present, 3 threads. Therefore the runtime keeps executing a Canvas paint path, but no GameCanvas flush path is observed.
- 369 copied frames were recorded, but all copied checksums were the same (`a9df1d5340c2c325`); 7 `frame-publish` records were found, all with the same hash (`907e47d95bfda383`) and count reaching 360. This is a static black/unchanged frame symptom, not the Farm white-frame symptom.
- No `normalized.jar` startup path appears in this log. The game was launched from the original JAR path, meaning r64's normalizer did not create a changed cache for this JAR.
- No decoder/exception/fatal diagnostic was found by the focused log parser.

## JAR inventory

Source: `/home/ubuntu/upload/DangerDash_Nokia_5800_EN_IGP_IAP_EU_TS_109.jar` (user-provided).

- 75 ZIP entries, approximately 3.49 MB.
- Only top-level standard image detected: `icon.png` (35,067 bytes).
- No valid Farm-style big-endian `[count][length][payload]...` packed container detected.
- Most game resources use extensionless names such as `S`, `S.1`..`S.21`, `T`, `T.1`..`T.6`, `1`..`4`, `G`, `K`, `M`, `O`, `SP` and `SP.1`.
- Several large extensionless resources are exactly 150,000 bytes and have proprietary-looking headers; some accidental `gzip` byte patterns occur at nonzero offsets but are not proven compressed image streams.
- Entry `I` contains a PNG signature at offset 27, not at offset 0. The normalizer currently only recognizes a complete top-level JPEG/GIF or Farm-style packed payload and will not extract or rewrite this embedded PNG.
- Resource entry `dataIGP` begins with `03 00000000 006e...` and includes ASCII-like tags such as `JDMF` and `GLFT`; it is not a standard image container by signature.

## Bytecode/API evidence

Decompiled output: `/home/ubuntu/work/edge-menu-build/game_analysis/dangerdash_javap/`.

- `i` is `abstract class i extends javax.microedition.lcdui.Canvas implements Runnable`.
- `GloftJDMP.startApp()` creates `b`, which extends `i`, then calls `i.A()`.
- `i` calls `Canvas.setFullScreenMode(true)` and `Display.setCurrent(...)`.
- `i` has a `paint(Graphics)` method and uses `Graphics.drawRGB`.
- `i` also has a helper that calls `Image.createImage(byte[], 0, length)` and a helper that calls `Image.createRGBImage(int[],...)`.
- `l` invokes Nokia `DirectUtils.getDirectGraphics(Graphics)` and `DirectGraphics.drawPixels(...)` with format constant `8888` in multiple paths.
- This shows Danger Dash has a Nokia-specific direct pixel pipeline in addition to ordinary `Graphics.drawRGB`; lack of `gameCanvasRegistered/gameGraphicsAttached` is not automatically an error because the game extends `Canvas`, not `GameCanvas`.
- A later binary scan of frozen native r63 found `com/nokia/mid/ui/DirectGraphics` (3 occurrences), `DirectGraphicsImpl`, `DirectUtils`, four `drawPixels` strings and `TYPE_INT_8888_ARGB`. Therefore the absence of these names from the Android app smali does **not** prove that the native CoreBridge lacks the Nokia API; the native built-in VM may provide it dynamically, as the public Core source does. This supersedes the earlier weaker wording that r63 had no DirectGraphics bridge.

## Current conclusion

r64's image normalizer is not exercised for Danger Dash, so the failed black-screen test does not disprove the Farm fix. The first confirmed difference from Farm is the resource format: Danger Dash does not use Farm's recognized packed image container and has no top-level JPEG/GIF. The runtime does execute `Canvas.paint` repeatedly and presents an unchanged frame, with no `GameCanvas.flushGraphics` path. The next investigation should not assume a missing DirectGraphics API. First determine, by native logging/disassembly or a focused runtime trace, whether Danger Dash's `DirectUtils.getDirectGraphics` and `drawPixels` calls reach the existing native implementation and whether the pixel format/coordinate arguments are accepted. In parallel, inspect the extensionless/proprietary resource loader and the `Image.createImage([BII)` path. Do not blindly broaden JPEG/GIF conversion or swallow exceptions.

The JAR remains immutable; no new APK was built from this analysis. r63 remains unchanged.

## Đối chiếu implementation tham chiếu

- Source phoneME-iOS hiện có implementation native đầy đủ cho Nokia DirectGraphics trong `Core/src/vm/GraphicsNatives.cpp`: `DirectUtils.getDirectGraphics` trả lại Graphics reference, `getNativePixelFormat` trả 565, còn `drawPixels(int[])` chấp nhận `TYPE_INT_888_RGB` và `TYPE_INT_8888_ARGB`, chuyển từng pixel sang `graphics::Image::create_immutable`, rồi vẽ qua `graphics::draw_region`. `DirectGraphicsImpl`/`DirectGraphics` và các overload draw/getPixels được đăng ký trong `Core/src/vm/LcduiBuiltinClasses.cpp`. Nguồn tham chiếu: https://github.com/phd051199/phoneME-iOS.
- Frozen native r63 của CoreBridge cũng chứa các chuỗi `com/nokia/mid/ui/DirectGraphics`, `DirectGraphicsImpl`, `DirectUtils`, `drawPixels` và `TYPE_INT_8888_ARGB`, nên cần coi API Nokia là đã có dấu hiệu được compile vào native, không được vá lại chỉ dựa trên việc app smali không có class Java.
- J2ME Loader source tại https://github.com/nikita36078/J2ME-Loader (revision `9b0fa48a0a0d1e61376c0b9af28b3d2caec0a4cc`) triển khai `DirectGraphicsImp.drawPixels(int[])` bằng cách kiểm tra `TYPE_INT_888_RGB/TYPE_INT_8888_ARGB`, copy mảng pixel sang `Image.createRGBImage(..., true)`, sau đó `graphics.drawRegion`. Cách này tương đồng về ý tưởng với phoneME-iOS; khác biệt không nằm ở việc J2ME Loader có một phép biến đổi 8888 bí mật nào đó.
- Kết luận cập nhật: hướng Danger Dash cần xác minh call path và dữ liệu resource/pixel cụ thể. Các ứng viên còn lại gồm: `Image.createImage([BII)` nhận buffer proprietary có header trước PNG (`entry I` có PNG signature ở offset 27), resource extensionless chưa được loader hiểu, hoặc `drawRGB/drawPixels` nhận dimensions/scan length/alpha/manipulation không phù hợp. Không nên kết luận DirectGraphics hoàn toàn thiếu và cũng không nên mở rộng normalizer quét magic ở offset bất kỳ khi chưa xác định hợp đồng resource.

## Bổ sung sau đối chiếu DirectGraphics/J2ME Loader

- Core phoneME-iOS có implementation thật cho `DirectGraphics.drawPixels` int[]; format `8888` được chấp nhận và mỗi pixel được copy nguyên ARGB, sau đó tạo immutable image rồi `graphics::draw_region` lên target. J2ME Loader cũng dùng đúng semantics này: `pix[off + ix + iy * scanlen]`, chỉ ép alpha cho `888`, rồi `Image.createRGBImage(..., true)` và `graphics.drawRegion(...)`.
- Danger Dash gọi `DirectUtils.getDirectGraphics(Graphics)` rồi `drawPixels(int[], true, off, scanlen, x, y, width, height, 0, 8888)`. Các call site dùng các block cao 14 pixel và buffer int[]; không có bằng chứng format 8888 là sai.
- `bound_direct_graphics` của Core lấy backing `Graphics`, resolve context và target framebuffer trước khi draw; về mặt source contract, DirectGraphics có đường tới target thật. Vì vậy không nên kết luận “thiếu DirectGraphics” chỉ từ việc source smali r63 không chứa class Java.
- Log Danger Dash: `paintCallbacks=399`, `paintCommits=398`, `gameFlushRequests=0`; 369 frame copies nhưng chỉ 1 checksum (`a9df1d5340c2c325`), publish cũng chỉ 1 hash. Native/VM vẫn present, không thấy fatal/crash. Focused grep không cho thấy exception graphics rõ ràng; game có exception table bao quanh call paint và có thể tự bắt `Exception`, nên lỗi Java bên trong paint vẫn là giả thuyết cần instrument, chưa được log chứng minh.
- Hướng hiện tại: không mở rộng image normalizer cho Danger Dash. Cần xác minh bằng trace/call counters xem `drawRGB`, `DirectGraphics.drawPixels`, `Image.createRGBImage` và resource decode có thực sự chạy; nếu chạy mà target vẫn không đổi thì so sánh clip/target/alpha với Core source và J2ME Loader. Nếu không chạy, tập trung vào state/resource loader trước.
- Nguồn tham chiếu: J2ME Loader repository `https://github.com/nikita36078/J2ME-Loader`; implementation `app/src/main/java/com/nokia/mid/ui/DirectGraphicsImp.java`; phoneME-iOS source `Core/src/vm/GraphicsNatives.cpp`.

## Bằng chứng header scan mới

Khảo sát JAR Danger Dash nguyên bản: 75 entry, chỉ có 1 ảnh top-level chuẩn là `icon.png`; không có packed container big-endian và không có JPEG/GIF. Entry extensionless `I` dài 25.048 byte có PNG signature tại offset 27 (`89504e470d0a1a0a`), với 27 byte đầu là header/bảng proprietary. Nhiều entry lớn như `1`, `S.*`, `T.*`, `SP` dài 150.000 byte không có PNG/JPEG/GIF magic ở offset 0; không được quét/chuẩn hóa bừa. Bytecode helper `a(byte[],int,int)` truyền nguyên offset/length vào `Image.createImage([BII)`, và call site preload `/I` dùng offset 0 + arraylength. Đây là bằng chứng trực tiếp cho một thử nghiệm generic mới: nhận diện ảnh chuẩn nằm sau một header nhỏ trong entry extensionless rồi cache lại phần ảnh, nhưng chỉ khi entry được chứng minh là image consumer (chẳng hạn call site `/I`), không đổi các resource raw khác.

Đối chiếu J2ME Loader: `DirectGraphicsImp.drawPixels(int[])` chấp nhận `TYPE_INT_888_RGB` và `TYPE_INT_8888_ARGB`, giữ nguyên từng int cho 8888, chỉ ép alpha cho 888 RGB, rồi tạo `Image.createRGBImage` và vẽ region. Core phoneME-iOS cũng đã đăng ký int[] `drawPixels` và kiểm tra format/bounds nghiêm ngặt. Vì vậy DirectGraphics chưa đủ bằng chứng là root cause; entry `I`/image header hiện là ứng viên hẹp và có thể kiểm chứng tốt hơn.

Nguồn tham chiếu: J2ME Loader, `app/src/main/java/com/nokia/mid/ui/DirectGraphicsImp.java`; phoneME-iOS, `Core/src/vm/GraphicsNatives.cpp`.

## Entry `I`: container ảnh nối tiếp, không phải PNG đơn lẻ

Boundary scan cho thấy entry `I` dài 25.048 byte có 5 PNG hợp lệ nối tiếp tại offset 27, 272, 5.916, 9.366 và 16.880; PNG cuối kết thúc đúng tại byte 25.048. 27 byte đầu có dạng:
`06 00 1a 00 00 00 0f 01 00 00 1b 17 00 00 95 24 00 00 ef 41 00 00 d8 61 00 00 03 89`

Các offset PNG tương ứng khớp các giá trị/ranh giới trong header. Vì vậy `I` là một resource container riêng có nhiều ảnh PNG và header index/offset; không được biến toàn bộ entry thành một PNG bằng cách cắt tại offset 27. Muốn hỗ trợ generic phải parse đúng format container, xác định semantics `count=6` và bảng offset/length, rồi bảo toàn cấu trúc mà game loader mong đợi hoặc chỉ can thiệp ở API ảnh với đúng slice. Đây là bằng chứng mới làm giảm độ an toàn của phương án DEX “strip 27 byte” đơn giản.

JAR gốc không có packed container Farm-style; chỉ `icon.png` là PNG top-level chuẩn. Các PNG nối tiếp trong `I` không được r64 hiện tại chuẩn hóa vì helper chỉ nhận diện magic tại offset 0 hoặc container big-endian hợp lệ.


## Bổ sung: archive thực tế và mode loader

Archive Danger Dash chỉ có các entry liên quan `I` là `i.class`, `I`, `IAP_profiles`, `IAP_texts` và `icon.png`; không có `I.1`, `I.2`, `I.3` hoặc các mảnh suffix tương ứng. Entry `I` dài 25.048 byte có header count 6, offset little-endian `[26, 271, 5915, 9365, 16879, 25048]`. Mỗi vùng bắt đầu từ offset tương ứng bằng byte `03`, sau đó là PNG signature tại offset +1; PNG kết thúc đúng ngay trước offset kế tiếp (độ dài thực tế lần lượt 244, 5643, 3449, 7513, 8168).

Bytecode `bI(int)` gọi `T(1..4)` sau khi khởi tạo `/2`, nhưng loader `T(index)`/`a(M,index,false)` có cơ chế đổi resource suffix khi stream hiện tại không cùng index. Vì archive chỉ có `I`, cần trace/giải mã thêm mode loader để xác định việc lookup `I.1` được fallback hay bị null; không được giả định rằng chỉ cần strip 27 byte. Kết quả này mở ra ứng viên loader/resource-contract riêng của Danger Dash, nhưng chưa đủ căn cứ tạo APK patch.

Các kết luận DirectGraphics trước đó vẫn giữ nguyên: phoneME-iOS Core và J2ME Loader đều có semantics 8888 tương đồng; chưa có mismatch alpha đã được chứng minh.

## Đối chiếu resource lookup và call path `/I`

`ClassNatives.cpp` của phoneME-iOS dùng `ClassRepository::read_resource(path)` theo tên entry chuẩn hóa, chỉ có fallback absolute-leading-slash sang package path khi root lookup không thấy; không có fallback tự động từ `I.1` về `I`. Bytecode Danger Dash `i.a(String,int,byte[],int)` khi `index>0` nối hậu tố `.index`, còn `bI(int)` gọi `i.T(1..4)` sau `i.c("/I")`. Vì archive hiện không có `I.1`–`I.4`, cần xác định runtime mode/resource provider thực tế của CoreBridge và cách game xử lý lỗi này; đây là bằng chứng mạnh cho một compatibility gap ở exact resource suffix, nhưng chưa đủ để sửa APK. Không được cắt toàn bộ `/I` thành PNG đơn lẻ vì game có offset table và marker `0x03` riêng.

## Bằng chứng archive logic và decoder `g` (27/08/2026)

Parser offline đã dựng đúng các continuation entry mà loader dùng (`S`, `S.1`…`S.20`; `T`, `T.1`…`T.6`; `SP`, `SP.1`). Với nhánh khởi tạo `bG(0)` hiện có `kq=2`, bytecode chọn `ks=[0,5,2,3]`, sau đó `bI` chuyển sang archive `/S` và tạo `g` cho các index này bằng `g.a(i.T(index), 0)`. Archive logic `/S` có header little-endian `count=70`, offset table hợp lệ; các segment được chọn có payload lần lượt bắt đầu bằng header proprietary `df 05 ...`, không phải PNG/JPEG và không bị rỗng: segment 0 dài 19.603 byte; segment 5 dài 40 byte; segment 2 dài 143.597 byte; segment 3 dài 114.576 byte. Việc các segment lớn trải qua nhiều entry continuation là thiết kế archive của game, không phải bằng chứng JAR hỏng.

Archive `/3` cũng có `count=9` và các segment bắt đầu bằng các header `df 05` hoặc phần tiếp nối nhỏ; `/I` vẫn là container riêng `count=6`, năm slice hữu ích đều bắt đầu bằng PNG sau marker `0x03`. Vì vậy không được áp dụng một normalizer chung cho `/S`, `/3` hoặc `/I`: đây là dữ liệu proprietary mà game tự giải mã, không phải các packed image Farm.

Source phoneME-iOS cho thấy `DirectUtils.getDirectGraphics` trả lại cùng Graphics receiver; constructor DirectGraphics lưu backing Graphics; `bound_direct_graphics` đọc backing Graphics rồi gọi `bound_graphics`. Registry đăng ký đúng overload `Graphics.drawPixels([IZIIIIIIII)V` vào `draw_nokia_pixels`. Implementation int[] chấp nhận `TYPE_INT_8888_ARGB`, giữ nguyên ARGB khi `transparency=true`, tạo immutable image và gọi `graphics::draw_region` vào target/context đã bind. Điều này tiếp tục làm yếu giả thuyết “thiếu DirectGraphics” hoặc “sai `/I`”; chưa đủ chứng cứ để sửa các đường đó.

Kết luận cập nhật: resource input của proprietary decoder có cấu trúc hợp lệ trên đĩa và decoder được gọi với segment cụ thể. Điểm chưa quan sát được vẫn là: sau `g.a`, các plane `bF`/cache `aB` có dữ liệu màu thực hay toàn transparent/null; và native Android r63 có thực thi/mutate target giống source reference trong runtime hay không. DEX-only patch không thể đo trực tiếp các native call này.

## Native binary r63

Native r63 là AArch64, symbol-rich, có symbol `phoneme::vm::register_graphics_natives` tại `0x606310`, có các chuỗi runtime `DirectGraphics.drawPixels(int[])`, `DirectUtils.getDirectGraphics`, `TYPE_INT_8888_ARGB` và lỗi `has no backing Graphics object`. Đây là bằng chứng binary có mã/đường đăng ký tương ứng, nhưng chỉ riêng symbol/chuỗi không chứng minh mọi instruction runtime trùng source hiện tại; chưa dùng binary patch mù.

## Quyết định vòng thử nghiệm

Chưa đóng gói APK mới. Một patch host DEX cho resource `/I`, `/S`, `/3` hoặc cho việc bỏ qua exception đều không còn được biện minh bởi bằng chứng hiện có. Nếu chưa khôi phục được native build/trace, bước an toàn là tiếp tục reverse-engineering và chuẩn bị một phép đo native có thể phân biệt `g`-plane rỗng với `drawPixels`/target failure, thay vì tạo một APK sửa đoán.


## Bằng chứng bổ sung: loader archive và cache sprite

`i.T(index)` không tìm một entry tên `I.index` theo kiểu đơn giản. Nó gọi `j(M)` để mở archive logic hiện tại, `b(index)` dùng bảng offset little-endian `P[]` để tính segment, rồi đọc qua `/S`, `/S.1`… hoặc family tương ứng bằng `a(String,int,byte[],int)`. Khi segment vượt physical entry, helper tạo tên continuation `base.(N+1)`; vì vậy việc JAR không có `I.1`–`I.4` không chứng minh startup thất bại. Với `/I`, game dùng bảng offset của chính entry và mỗi slice PNG đã hoàn chỉnh sau marker `0x03`.

`g.a(byte[],int)` đọc proprietary header little-endian, lấy flags `an` và số record `r`, cấp phát metadata/plane theo flags, rồi parse các record loại `0xff`…`0xf7`; sau đó đọc thêm các bảng tùy cờ. Đây là decoder thực sự, không phải image API của host. Các segment startup `/S` được chọn ở nhánh `kq=2` có header `df 05` và kích thước hợp lệ.

Điểm quan trọng trong vòng đời sprite: sau decode, `g.a(int,int,int)` mới materialize một trong các cache `aB:[[[I]` (int pixel), `aD:[[[B]` (byte plane), hoặc `aC:[[[Lr;]` (image object), tùy `au`. Getter `g.o(int)` chỉ trả `E(int)` từ `aB`; nếu cache chưa được materialize hoặc đã bị `g.o()` dọn, nó trả `null`. `g.o()` dọn mạnh `aB`, `aD`, các plane tạm và cache liên quan. Vì vậy hiện chưa thể kết luận native DirectGraphics là lỗi: cần phân biệt `g.o()` trả null/cache chưa build, `g.m()` trả byte plane rỗng, với trường hợp buffer có dữ liệu nhưng `drawPixels` không mutate target.

Không tạo APK ở bước này. Một normalizer host cho `/S`, `/3` hoặc `/I` vẫn không có cơ sở; các resource này phải được game tự giải mã theo archive/decoder của nó.


## Bổ sung: đường decode `/S` và materialize cache

- Archive logic `/S` có 70 segment, mỗi segment bắt đầu sau marker `0x03` bằng header `df 05 ...`; các segment startup đã tái dựng có độ dài hợp lệ và không phải PNG/JPEG. `/T` cũng có cùng họ proprietary header. `/I` vẫn là container PNG riêng, được loader game cắt trực tiếp.
- Decoder `g.a(byte[], int)` đọc 4 byte đầu theo little-endian vào `an`, đọc tiếp một `u16` little-endian vào `r`, sau đó duyệt từng record theo marker `0`, `0xff`, `0xfe`, `0xfd`… để dựng metadata/palette/descriptor. Decoder có nhánh bắt `Exception` và ghi chuỗi `ASprite.Load()`; không có bằng chứng segment `/S` bị coi là PNG hoặc bị host biến đổi.
- Factory `s.a(int,int,boolean,boolean)` tạo `g`, gọi `i.T(index)`, rồi `g.a(bytes, 0)`. Tùy bitmask và cờ truyền vào, factory gọi overload `g.a(IIII)` để dựng cache hình/biến đổi và gọi `g.b()` sau đó. Loader `bH(int)` cũng thực hiện `g.a(III)` cho các frame/plane của archive `/S` khi `i.G()` là `/S`, nên overload này không phải dead code.
- Renderer `l` kiểm tra `g.n()` và `g.m(index)`. Nếu byte-plane tồn tại, nó dùng byte path để điền buffer tạm; nếu không, nó gọi `g.o(index)` để lấy int-cache. Sau đó renderer gọi `DirectUtils.getDirectGraphics(Graphics)` và `drawPixels(int[], true, ..., 8888)` với buffer tạm, không gọi `Image.createImage` cho các sprite proprietary `/S`.
- `g.o(index)` chỉ trả `aB[ar][index]` nếu `aB` đã được materialize; `g.m(index)` chỉ trả `bF[index]`. `g.g(0, index)` là một object cache khác (`ao`), dùng cho dữ liệu phụ/descriptor, không phải bằng chứng rằng `g.o()` đã tạo pixel. Cần đọc tiếp giá trị/flag thực tế của các `g` startup để biết byte path có thật sự điền màu vào buffer.
- Helper tĩnh `g.a(int[])` quản lý hai scratch buffer tối đa 65.000 phần tử và tái sử dụng chúng; đây là buffer render tạm, không phải resource image. Vì vậy khung đen có thể xuất hiện nếu byte/int materializer trả dữ liệu rỗng hoặc nếu DirectGraphics không mutate target, nhưng static evidence hiện chưa đủ chọn một trong hai.

**Trạng thái:** chưa tạo APK mới; r64 Farm PASS và r63 fallback vẫn giữ nguyên. Không có cơ sở cho patch strip `/I`, patch resource lookup chung, hay patch image normalizer đối với Danger Dash.

## Bằng chứng mới: nhánh renderer có thể tự tạo khung đen

Disassembly `l.a(...)` tại khoảng dòng 301–467 cho thấy một render path cấp scratch `int[]` bằng `g.a([I)[I`, sau đó đặt `g.m(index)` vào `byte[]` nếu `g.n()` và byte plane tồn tại. Nếu byte path không được chọn, nó gọi `g.o(index)` nhưng lập tức `pop` kết quả ở bytecode 603–608; không lưu `int[]` trả về vào biến nguồn. Nhánh này vẫn tiếp tục điền/giữ scratch buffer và gọi `DirectGraphics.drawPixels([IZIIIIIIII)V` với `transparency=true`, `format=8888`. Scratch buffer mới được cấp phát/zero-fill, nên nếu byte plane không tồn tại hoặc không được materialize thì path này có thể gửi toàn số 0, tạo màn hình đen mà không cần native ném lỗi.

Helper byte-plane của `l` tại khoảng dòng 1245–1393 đọc từng byte chỉ số; giá trị `255` được chuyển thành integer `0` (transparent sentinel), còn giá trị khác dùng palette `int[]`. Vì vậy ngay cả khi `g.m(index)` khác null, cần biết phân bố chỉ số và palette trước khi kết luận dữ liệu có màu hữu hiệu. Một render path khác của `l` có lưu kết quả `g.m/g.o` và return sớm khi cả hai null, cho thấy behavior phụ thuộc vào overload/nhánh game đang dùng.

`i.paint(Graphics)` gán cùng Graphics argument vào static `i.a` và `i.a_` ngay trước `i.a()`; exception chỉ được bắt quanh lời gọi game-step/render. Do đó receiver DirectGraphics được chuẩn bị đúng theo bytecode tĩnh, còn exception trong renderer có thể bị game nuốt và không xuất hiện như fatal native error.

Hệ quả: giả thuyết hiện mạnh nhất là lỗi đường materialize/chọn cache của game (hoặc exception bị nuốt trong path đó), không phải thiếu API DirectGraphics, `/I` malformed, hay Farm-style image decode. Chưa tạo APK; cần quan sát runtime hoặc chứng minh bằng call-flow nào của startup thực sự đi vào nhánh render này trước khi chọn một patch generic.


## Tổng hợp sau vòng kiểm tra renderer/cache

`l` có hai overload render khác nhau. Nhánh `a(IIIIIIIII)` cấp scratch `int[]`, dùng `g.m(frame)` nếu `g.n()` báo có byte-plane; nếu không thì gọi `g.o(frame)` nhưng bỏ kết quả bằng `pop`, rồi vẫn có thể gửi scratch zero-fill tới `drawPixels(..., true, ..., 8888)`. Đây là khả năng tĩnh tạo khung đen nếu nhánh này thật sự được dùng với sprite chỉ có int-cache hoặc cache chưa materialize. Nhánh `a(IIIIIIIZZ)` giữ kết quả `g.o(frame)` và return khi cả hai nguồn đều null, nên không thể gộp behavior của hai overload.

`u` gọi các wrapper `l.c/d/e(Graphics,...)` trong vòng sprite, còn `b` có call trực tiếp tới overload 9 tham số tại bytecode 800. Chưa đủ call-flow để khẳng định overload đó vẽ toàn bộ màn startup hay chỉ một sprite phụ. `g.n()` tương ứng với `bF != null`; `g.m(frame)` lấy byte-plane; `g.o(frame)` lấy int-cache `aB` nếu đã materialize. `g.j(...)` là đường dựng byte-plane nhưng điều kiện gọi phụ thuộc loader/kích thước/flags. Do đó giả thuyết mạnh nhất hiện tại là lệch materialize/chọn cache hoặc exception bị game nuốt trong renderer, chưa phải lỗi DirectGraphics.

Native r63 có symbol-rich implementation và registry phù hợp với source phoneME-iOS: `DirectUtils.getDirectGraphics` giữ backing Graphics, `bound_direct_graphics` bind target, registry có đúng `Graphics.drawPixels([IZIIIIIIII)V`, format 8888 giữ ARGB và gọi `draw_region`. Tuy nhiên symbol/disassembly không thay thế được runtime trace trên thiết bị.

Feasibility hiện tại: không có full Android native source/static archive/NDK recipe để rebuild `.so`; `nativeConfigure` host chỉ cấu hình runtime/home path, không có kênh trace. DEX-only không thể intercept built-in native calls. Vì vậy chưa chọn patch chức năng và chưa tạo APK mới. r63 fallback bất biến; r64 Farm PASS vẫn giữ nguyên.


## Kết luận feasibility và observability

ABI JNI hiện có của r64 chỉ công khai các nhóm start/stop/render, `nativeConfigure(long,String,String)`, debug-log và media; không có setter trace DirectGraphics, callback pixel hay counter native riêng. `nativeConfigure` là kênh cấu hình cặp chuỗi nhưng host hiện dùng cho runtime/home path, chưa có bằng chứng native r63 hiểu các key trace. Các trace `PHONEME_TRACE_*` của source tham chiếu được kiểm tra ở phía native/environment; DEX không thể tự biến chúng thành trace hữu ích nếu `.so` không đọc key đó.

Workspace không còn full Android native source, static archive, NDK và recipe tương ứng để rebuild `.so` ARM64. Vì vậy một APK diagnostic native có trách nhiệm hiện chưa khả thi; không binary-patch `.so` r63 và không dùng `.so` Turbo Stable vì ABI/runtime khác. Đây là giới hạn kỹ thuật đã xác nhận, không phải lý do để tuyên bố native DirectGraphics hỏng.

Quyết định tạm thời: không phát hành APK mới chỉ để thử một giả thuyết chưa quan sát được. Bằng chứng tĩnh hiện nghiêng về đường sprite proprietary `/S` → `g` → `l`, đặc biệt nhánh có thể bỏ kết quả `g.o()` và gửi scratch zero-fill, nhưng chưa đủ để chọn đúng một sửa đổi generic. Cần hoặc khôi phục native build artifacts để thêm trace, hoặc có bằng chứng tĩnh mạnh hơn rằng một overload materialize/cache cụ thể bị gọi sai trên path startup.


## Phụ lục mới: diagnostic trace-only từ r64 (2026-08-27)

Phần này **supersede** các câu ở trên còn hàm ý rằng Danger Dash thiếu DirectGraphics, rằng `/I` cần strip marker/normalizer, hoặc rằng resource container của game chắc chắn malformed. Các kết luận đó không còn phù hợp với bằng chứng đã kiểm tra: `/I` có bảng offset little-endian hợp lệ và các slice PNG hợp lệ sau marker `0x03`; `/S` có proprietary header/segment hợp lệ; binary native r63/r64 có registry và mã liên quan `DirectUtils`/`drawPixels`; Farm Frenzy 2 đã PASS nhờ normalizer riêng nhưng normalizer không được kích hoạt với Danger Dash.

Native binary đang dùng có SHA-256 `5b525c654cd265cb1fdd6185dbdd7a87e11a341e8d60885475fa60a0bd140668` và chứa các chuỗi `PHONEME_TRACE_RESOURCE`, `PHONEME_TRACE_RESOURCE_MISS`, `PHONEME_TRACE_VM`, `PHONEME_TRACE_ARRAY_BOUNDS`, `PHONEME_TRACE_LIFECYCLE` và `PHONEME_TRACE_NETWORK_CALLERS`. Source tham chiếu `Core/src/vm/ClassNatives.cpp` cho thấy `PHONEME_TRACE_RESOURCE` ghi dạng `[resource-read] <path> (fresh)` khi lookup trả bytes, còn `PHONEME_TRACE_RESOURCE_MISS` ghi dạng `[resource-miss] class=<class> path=<path>` khi resource không tồn tại; cả hai dùng `std::fprintf(stderr, ...)`. Đây là bằng chứng về cơ chế trace và mẫu dòng, không phải bằng chứng rằng mọi dòng đã được app export trong phiên Danger Dash trước.

APK diagnostic duy nhất được dự kiến sẽ chỉ đặt hai biến môi trường trên trong process trước cả hai nhánh `nativeStartJar` và `nativeStartJarScoped`: `PHONEME_TRACE_RESOURCE=1` và `PHONEME_TRACE_RESOURCE_MISS=1`. Việc này là **universal, non-functional và không phụ thuộc game ID**; không bật `PHONEME_TRACE_VM` vì sẽ tạo nhiễu lớn. Block sẽ bắt hẹp `android.system.ErrnoException` để nếu setenv không khả dụng thì game vẫn khởi chạy như r64. APK có `minSdkVersion=23`, nên API `android.system.Os.setenv(String,String,boolean)` nằm trong phạm vi API mục tiêu; vẫn phải xác minh bằng assemble/DEX verifier.

Trace này chỉ nhằm phân biệt resource lookup miss với nhánh đã đọc được bytes. Nó không đo trực tiếp kết quả `g.a`, dữ liệu byte/int cache, số lần `drawPixels`, hay việc target framebuffer có bị mutate. Nếu không thấy dòng trace trong file log app, cần thu thêm logcat/stderr cùng phiên; không được coi sự vắng mặt của dòng là bằng chứng resource không được đọc. Nếu có `[resource-miss]`, hướng tiếp theo sẽ là kiểm tra lookup/continuation generic. Nếu resource-read xuất hiện đầy đủ nhưng canvas vẫn đen tĩnh, ưu tiên tiếp theo là native/render instrumentation hoặc khôi phục native build artifacts, không patch cache/alpha/clip/JAR theo phỏng đoán.

**Trạng thái phát hành:** phụ lục này chưa tuyên bố APK đã build hoặc đã device-test. r63 fallback và APK r64 Farm PASS vẫn bất biến. Chỉ sau khi assemble DEX, kiểm tra delta class, package/sign/verify và xác nhận `.so` byte-identical mới được tạo đúng một APK diagnostic cho người dùng.


## Kết quả build diagnostic r65 (2026-08-27)

Đã tạo đúng **một** APK diagnostic từ APK r64 Farm PASS: `PhoneME-CoreBridge-r65-dangerdash-trace.apk`. APK r63 fallback và APK r64 Farm PASS không bị ghi đè. APK trung gian unsigned/aligned đã được xóa sau khi ký.

| Hạng mục | Kết quả |
|---|---|
| APK diagnostic SHA-256 | `b998e975f9f775d76dcc63b782dafec9b8e75a2617f122d72fa91d293223004d` |
| DEX r64 trong APK base | `3687f6f16d498b1e26b3c079f604b7fa72136ad3aaff8f6a24b229f5a054e9fb` |
| DEX diagnostic | `f6d179fd39e6a8f72965f08916b18d92a6d69f8d1c5666a06d5e60d6c59d1aa9` |
| Native `lib/arm64-v8a/libphoneMECoreBridge.so` base/diagnostic | `5b525c654cd265cb1fdd6185dbdd7a87e11a341e8d60885475fa60a0bd140668` ở cả hai APK |
| Delta class sau baksmali diff | Chỉ `MainActivity$63.smali` |
| Chữ ký | v1, v2, v3 hợp lệ |
| APK alignment/ZIP | `zipalign -c` và `unzip -tq` đạt |

DEX được assemble bằng smali 2.5.2 với `--api 23`. Block thay đổi đặt `PHONEME_TRACE_RESOURCE=1` và `PHONEME_TRACE_RESOURCE_MISS=1` bằng `Os.setenv(..., true)` ở đầu `MainActivity$63.run()`, trước nhánh `nativeStartJar`/`nativeStartJarScoped`; mỗi lời gọi có handler riêng cho `android.system.ErrnoException`. Không bật `PHONEME_TRACE_VM`, không đổi JAR, `ResilientImageJar`, `GameSurfaceView`, TextBox, DirectGraphics semantics hoặc native binary.

Đây là artifact chẩn đoán, **chưa phải bản sửa Danger Dash**. Môi trường hiện tại không có Android device để chạy thử; chưa được phép tuyên bố trace đã xuất hiện hoặc Danger Dash đã hết màn hình đen. Báo cáo integrity nằm tại `r65_dangerdash_trace_integrity.txt`, kết quả ký tại `r65_dangerdash_trace_verify.txt`, và diff DEX tại `r64_dangerdash_trace_build/MainActivity_63.dex.diff`.


## Phụ lục runtime r65 — log phiên 18:17:19 (2026-08-27)

### Kết quả quan sát

Người dùng đã chạy APK diagnostic r65 và gửi `PhoneME-CoreBridge-20260827-181719.log.txt`. Trong toàn bộ file có 42.733 dòng, không xuất hiện dòng `[resource-read]` hoặc `[resource-miss]`. Đây là **kết quả không quan sát được qua kênh log export**, không phải bằng chứng Danger Dash không đọc resource và cũng không phải bằng chứng mọi resource lookup đều thành công.

Phiên native Danger Dash lúc `18:17:04–18:17:19` vẫn khởi chạy thành công với `GloftJDMP`, kích thước Canvas `360x640`, `phoneme_start_jar_scoped succeeded`, `nativeIsRunning=true` và `nativeLastExitCode=0`. Log ghi 399 paint callback và 398 paint commit; không có GameCanvas flush, phù hợp với việc game dùng `Canvas`. Frame native tiếp tục publish với `bytes=921600`, hash `907e47d95bfda383`, các mốc count 1, 60, 120, 180, 240, 300, 360 và 420 đều giữ cùng hash. Host copy cũng giữ cùng checksum. Do đó triệu chứng được xác nhận lại là **pipeline callback/copy vẫn chạy nhưng nội dung pixel không thay đổi**, không phải thiếu frame callback, crash startup hoặc stale-frame do chuyển game.

### Kiểm chứng trace trong binary

Disassembly native r63/r64 đã được kiểm tra thêm. Binary có import `getenv@plt` tại `0x9bd480` và `fprintf@plt` tại `0x9bc060`. Trong function native đã đăng ký cho nhóm `Class` tại vùng khoảng `0x575a58`, code gọi `Machine::cached_resource_byte_array(...)`, sau đó nạp literal `PHONEME_TRACE_RESOURCE` tại `0x575a5c–0x575a64`, gọi `getenv`, kiểm tra kết quả; nhánh thành công đi tới vùng `0x575c90`, nạp format `[resource-read] %s (fresh)` và gọi `fprintf`. Source tương ứng ghi rõ cả `resource-read` và `resource-miss` bằng `std::fprintf(stderr, ...)` trong `Class.getResourceAsStream`.

Bytecode Danger Dash cũng đã được đối chiếu: class `i` gọi `Class.getResourceAsStream` tại `i.txt` khoảng dòng 2069, sau đó tự xử lý stream để đọc các container `/I`, `/S`, `/T` và `/SP`. Vì vậy hook được bật r65 **đúng với API resource mà game có sử dụng**; việc log không có hai marker không còn phù hợp với giả thuyết đơn giản rằng chỉ do Danger Dash không gọi `Class.getResourceAsStream`.

### Diễn giải thận trọng

Kết quả mạnh nhất hiện tại là: binary có call-site trace hợp lệ, r65 có chủ ý đặt cờ môi trường trước native start, nhưng file log mà ứng dụng xuất không mang các dòng `fprintf(stderr, ...)` của hook này. Chưa thể tách tuyệt đối hai khả năng: Android process không nhận được biến môi trường do `Os.setenv` thất bại/bị giới hạn, hoặc `stderr` không được redirect vào file `corebridge-native.log`/log export. Các log trước đó cũng cho thấy app không redirect toàn bộ stdout/stderr, trong khi các dòng `[phoneMETrace][frame-publish]` đi qua sink trace riêng. Vì vậy r65 **không tạo ra discriminator resource có giá trị để chọn patch**.

Không có cơ sở mới để sửa `ResilientImageJar`, strip marker `/I`, đổi DirectGraphics, chỉnh alpha/clip, reset cache hoặc sửa dữ liệu `/S`. Những thay đổi đó vẫn có nguy cơ làm hỏng Farm Frenzy 2 hoặc các game đã PASS. Bằng chứng hiện tại tiếp tục ưu tiên nhánh **runtime proprietary decoder/cache → dữ liệu int[] → `DirectGraphics.drawPixels(..., 8888)`/target render**, nhưng chưa đo được giá trị pixel hoặc số lần gọi `drawPixels`.

### Quyết định bước tiếp theo

Không phát hành thêm APK hoặc patch chức năng từ log r65 này. Nếu cần phân biệt tiếp, cần một kênh trace chắc chắn được thu trên thiết bị: focused Brevent/logcat cùng process cho `stderr`/native, hoặc một native build có instrumentation riêng ghi vào sink `[phoneMETrace]` hiện đang được app export. Do chưa có source/build artifact native đầy đủ để rebuild an toàn, hướng DEX-only tiếp theo không nên giả vờ đo `drawPixels` hay decoder. r63 fallback và r64 Farm PASS tiếp tục bất biến.
