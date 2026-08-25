# Audit resource/cache và native `.so` của PhoneME/CoreBridge

**Tác giả:** Manus AI  
**Trạng thái:** patch Core đã pass host/Android ARM64 build; APK overlay r1 đã build và pass kiểm tra tĩnh sau khi bổ sung libc++_shared provider; chưa launch-test trên thiết bị Android  
**Checkpoint phân tích:** `PhoneME-CoreBridge-0.1.163-launch-recovery.apk` / `PhoneME-CoreBridge-0.1.163-no-tuner-recovery.apk`, hai file byte-identical; SHA-256 APK `08972eca88bf48c3057cb635c5627bf8da955d9be0bb5bc47570ef386d1a084d`; native `5b525c654cd265cb1fdd6185dbdd7a87e11a341e8d60885475fa60a0bd140668`.

## Kết luận điều hành

Hiện tượng người dùng mô tả — **map mới giật mạnh khi tài nguyên đang được nạp, sau khi nạp xong thì ổn định** — phù hợp với đường resource/image loading hơn là network socket. So sánh source stable với CoreBridge cho thấy stable có một lớp **cache ảnh native đã giải mã, persistent theo suite/resource**, được tạo trong quá trình cài suite. CoreBridge clean hiện không có lớp tương đương: nó chỉ có cache byte[] trong heap VM giới hạn 8 MiB, và cache này không được dùng bởi mọi đường tải ảnh.

Giả thuyết `.so` lớn cần tách thành nhiều file **không phải nguyên nhân trực tiếp đã được chứng minh**. File native CoreBridge trong APK khoảng 261 MiB, nhưng phần được mô tả bởi ELF LOAD chỉ khoảng 10.25 MiB; phần lớn dung lượng là `.debug_*`, `.symtab` và `.strtab` nằm ngoài LOAD. Những phần đó giải thích APK nặng và chi phí cài đặt/đọc file, nhưng không tự động làm vòng lặp game chậm sau khi thư viện đã được nạp.

## Đường tải ảnh của stable

Source stable `Image.createImage(String)` chuyển vào `ImageDataFactory.createResourceImageData(name)`. Factory khởi tạo `SuiteImageCache` và thử `loadCachedImage(...)` trước. Chỉ khi cache miss mới gọi `MIDPConfig.getMIDletResourceAsStream(name)`, đọc stream đến EOF rồi decode.

Trong installer stable, sau khi lưu suite, `createImageCache(suiteId, storageId, ...)` được gọi khi `ENABLE_IMAGE_CACHE` bật. `imageCache.c` duyệt toàn bộ JAR, lọc các entry `.png`, `.jpg`, `.jpeg`, đọc từng entry, giải mã bằng `img_decode_data2cache` thành native image representation rồi lưu qua `storeFileToCache` theo suite/resource. Khi runtime tạo immutable image, `loadImageFromCache` đọc representation native đã lưu và nạp thẳng vào `ImageData`, tránh mở/giải nén/decode lại ảnh.

| Thành phần stable | Hành vi đã xác nhận | Ý nghĩa đối với lag map |
|---|---|---|
| `Image.createImage(String)` | Gọi factory cache-aware | Cache được đặt đúng trên đường game thường dùng để tạo ảnh từ resource |
| `SuiteImageCacheImpl` | Key theo `suiteId` và resource name | Không lẫn giữa các game/suite |
| `createImageCache` | Chạy ở giai đoạn cài suite | Chi phí chuẩn bị được dời khỏi lúc vào map |
| `imageCache.c` | Lưu native image đã decode, không chỉ bytes JPEG/PNG | Lần map sau tránh decode lặp |
| `fileCache.c` | Lưu persistent theo suite/resource | Cache sống qua phiên chạy và không phụ thuộc network |
| Bộ lọc cache | PNG/JPG/JPEG; không thấy GIF trong filter | Không nên suy luận stable cache GIF từ cơ chế này |

## Đường tải resource/image của CoreBridge clean

`ClassRepository::read_resource` giữ archive đã mở và index entry, nhưng mỗi lần gọi vẫn thực hiện `archive.read(entry)`. Với ZIP entry nén, thao tác đó tạo vector dữ liệu mới, inflate và kiểm tra CRC32 lại.

`Machine::cached_resource_byte_array` có cache byte[] FIFO với giới hạn payload `8 MiB`. Tuy nhiên đây không phải decoded-image cache và cũng không bao phủ toàn bộ đường gọi:

| API CoreBridge | Đường thực tế | Cache hiện tại |
|---|---|---|
| `Class.getResourceAsStream` | Gọi `cached_resource_byte_array(path)` rồi gắn stream vào byte[] đã cache | Có byte-cache, tối đa 8 MiB, FIFO |
| `ClassLoader.getResourceAsStream` | Gọi trực tiếp `classes().read_resource(path)` | Bypass byte-cache |
| `Image.createImage(String)` | Gọi trực tiếp `classes().read_resource(path)`, sau đó `decode_image_bytes` | Bypass byte-cache; không có image cache theo tên |
| `Image.createImage(InputStream)` | Đọc toàn bộ stream vào vector mới rồi decode | Không có cache |
| `Image.createImage(byte[],off,len)` | Cắt/copy byte[] rồi decode | Không có cache |
| `GraphicsStore` | Giữ các Image object đang sống và có lookup cache nhỏ theo object key | Không có key resource path; không thay thế image decode cache |

`ImageDecoder.cpp` giải mã PNG đồng bộ và tạo `Image`/pixel buffer mới. Bản non-Apple hiện không decode trực tiếp JPEG/GIF; đó là khác biệt tương thích định dạng, không phải lời giải cho chi phí cache. Với một ảnh được tạo lại nhiều lần, CoreBridge có thể lặp cả ZIP read/inflate và decode/pixel allocation.

## Đánh giá giả thuyết `.so` lớn

ELF CoreBridge là AArch64, `not stripped`, có debug info. Các LOAD segment chỉ khoảng `0x9c0aa0` cho vùng RX và khoảng `0x034548` cộng vùng RW; `.text` khoảng 8 MiB, `.rodata` khoảng 271 KiB, `.eh_frame` khoảng 768 KiB. Ngược lại, `.debug_info`, `.debug_str`, `.debug_line`, `.debug_loc`, `.debug_ranges`, `.symtab` và `.strtab` chiếm phần lớn file nhưng không nằm trong LOAD segment.

Stable cũ tách `libjniphoneme.so` nhỏ và `assets/foundation/bin/libcvm.so` riêng. Tuy nhiên stable là ARM32 và VM/ABI khác thế hệ; số lượng file không cho phép suy ra FPS. Tách một binary lớn thành `libjni` và `libvm` chỉ có thể có lợi nếu đi kèm build boundary và đường gọi phù hợp; nó không biến code decode đồng bộ thành bất đồng bộ, cũng không tạo image cache.

Quan trọng hơn, pipeline hiện tại của CoreBridge chỉ dựng APK bằng cách thay `classes.dex` vào một container APK đã có sẵn native `libphoneMECoreBridge.so`. Workspace bàn giao không có source Android JNI/build target đầy đủ để relink an toàn thành nhiều `.so`; source Core portable hiện có cũng được tổ chức để tạo static `phoneMECore`, không phải Android JNI split tương thích. Vì vậy **không được patch APK để tách `.so`** ở checkpoint này.

## Đánh giá debug logging

Call-site bytecode của CoreBridge cho thấy:

- `nativeDebugLog()` được gọi khi tạo native diagnostic snapshot để đưa vào nội dung log.
- `nativeFlushDebugLog()` được gọi ở các thao tác flush/destroy, gồm đường `onDestroy`.
- `nativeMediaTrace()` xuất hiện trong các call-site media; đó là tracing media, không phải bằng chứng logging mỗi frame/resource.
- Không tìm thấy call-site Java nào gọi `nativeDebugLog()` hoặc `nativeFlushDebugLog()` trong vòng lặp render hay trong `Image.createImage`.

Do đó, việc giữ nguyên `cbDebug`, `fprintf`, trace và log file là tương thích với yêu cầu bảo toàn. Chưa có bằng chứng rằng phần **debug information** của ELF đang được xử lý trên mỗi frame; không được tắt logging để “đoán” hiệu năng.

## Phân biệt với async rendering

Stable có `FrameBufferView.repaintView()` dùng cờ `renderPending`, coalesce yêu cầu và `post(Runnable)` lên UI thread; callback gọi `doRepaint()` rồi giải phóng cờ. Đây là cơ chế giảm backlog vẽ và giữ input responsive. `SuiteImageCache` lại xử lý chi phí đọc/giải mã ảnh. Hai cơ chế độc lập; không nên dùng async rendering hoặc network patch để chữa thiếu cache resource.

## Hướng sửa an toàn đã triển khai ở Core host

Hướng có bằng chứng mạnh nhất là bổ sung **decoded-image cache theo suite/resource** cho đường `Image.createImage(String)`, với các ràng buộc sau:

1. Cache key phải bao gồm suite/game identity và resource path đã normalize, tránh dùng chung ảnh giữa các game.
2. Cache nên lưu representation pixel/native đã decode hoặc một dạng dữ liệu nội bộ tương thích `GraphicsStore`, không chỉ lưu bytes nén.
3. Cache phải có giới hạn bộ nhớ, chính sách eviction và invalidation khi suite/game bị cập nhật, gỡ hoặc thay thế JAR.
4. Các overload `InputStream` và `byte[]` không nên cache mù theo nội dung nếu chưa có identity ổn định; ưu tiên trước đường resource-name vì đó là đường stable đã chứng minh.
5. Cần giữ nguyên logging, socket/network, lifecycle guard và checkpoint clean; chỉ một thay đổi resource/cache hẹp trong một artifact thử nghiệm duy nhất sau khi có source/build boundary phù hợp.
6. Do JNI source Android không có trong workspace, APK Android dùng overlay có kiểm soát và phải được xem là experimental cho đến khi launch-test trên thiết bị; checkpoint clean vẫn được giữ bất biến.

## Artifact bị loại khỏi hướng đi

Các artifact network direct-available và network read-latency được đánh dấu **deprecated**, không dùng làm baseline và không gửi lại. Bản `v2-safe-performance-research-r1` cũng không phải checkpoint clean vì chứa thay đổi 4 byte pace native. APK overlay r1 hiện là artifact thử nghiệm duy nhất của hướng decoded-image cache; không dùng các APK network/deprecated làm baseline.

## Tài liệu tham chiếu

[1]: https://github.com/magicus/phoneME "phoneME source repository"
[2]: https://github.com/magicus/phoneME/blob/master/midp/src/lowlevelui/image_cache/reference/classes/javax/microedition/lcdui/SuiteImageCacheImpl.java "SuiteImageCacheImpl.java"
[3]: https://github.com/magicus/phoneME/blob/master/midp/src/lowlevelui/image_cache/reference/native/imgch_suiteimagecache_kni.c "imgch_suiteimagecache_kni.c"
[4]: https://github.com/magicus/phoneME/blob/master/midp/src/ams/ams_base/reference/native/imageCache.c "imageCache.c"
[5]: https://github.com/magicus/phoneME/blob/master/midp/src/ams/ams_base/reference/native/fileCache.c "fileCache.c"
[6]: https://github.com/magicus/phoneME/blob/master/midp/src/lowlevelui/image_cache/reference/lib.gmk "image-cache build wiring"

## Bản triển khai source-only hiện tại

Đã tạo workspace cô lập `/home/ubuntu/work/phoneME-resource-cache-work`, không sửa APK checkpoint và không đụng các artifact network. Patch hiện tại gồm:

| Phạm vi | Thay đổi |
|---|---|
| `ClassRepository` | Liệt kê resource ảnh theo archive đã index, lọc PNG/JPG/JPEG/GIF và deduplicate tên logical |
| `Machine` | Cache decoded image theo lifetime VM, giới hạn 32 MiB pixel payload, FIFO eviction, cleanup khi shutdown |
| `ImageNatives` | Cache hit trước `read_resource` chỉ cho `Image.createImage(String)`; stream/byte[] giữ nguyên |
| `Runtime` | Cache file theo suite ID và SHA-256 JAR; cache hợp lệ được load trước, cache lạnh/hỏng được dựng lại best-effort |

Format cache có magic/version/identity, giới hạn số entry và kích thước tên; dữ liệu hỏng, cũ, thiếu quyền ghi hoặc ảnh không hỗ trợ đều bị bỏ qua. Cache không được coi là nguồn dữ liệu tin cậy, nên không thay thế JAR và không thay đổi semantics lỗi của resource lookup.

### Kiểm thử đã chạy

Core portable biên dịch thành công với `cmake --build build --target phoneMECore -j2`; chỉ còn các cảnh báo copy structured-binding có sẵn ở `CalendarNatives.hpp`. `git diff --check` không báo lỗi. Smoke test với PNG 3x2 đã kiểm tra: lần đầu decode và ghi cache 97 bytes; lần thứ hai dùng JAR cùng tên resource nhưng payload ảnh hỏng, vẫn đọc được ảnh 3x2 từ cache persistent. Đây là bằng chứng host-level cho cache hit, không phải bằng chứng hiệu quả trên thiết bị Android.

`ctest` của build không có test đăng ký (`No tests were found`), vì vậy smoke test là kiểm thử end-to-end duy nhất hiện có cho patch này.

### Giới hạn đóng gói Android

Native Android JNI source không có trong workspace, nên APK r1 dùng overlay thử nghiệm: Core cache mới export C API, bridge JNI/logging gốc được đổi SONAME thành dependency legacy, và libc++_shared.so được đóng gói để cung cấp C++ exception ABI. Host ELF probe pass nhưng Android loader/JNI discovery vẫn chưa được device-test; vì vậy artifact này chỉ là bản thử nghiệm, không phải production checkpoint.

## Đánh giá phân luồng đa nhân

Đề xuất giữ vòng lặp emulation/VM trên một luồng là đúng. Không nên tách bytecode execution, class/resource lookup, scheduler hay event queue sang nhiều luồng vì Java ME game phụ thuộc thứ tự và nhiều native object chưa chứng minh thread-safe. Sau cache resource, các hướng ít rủi ro hơn là tách **audio service** nếu API đã có queue độc lập, và giữ render bất đồng bộ ở Android UI layer như stable; `sched_setaffinity` không nên áp dụng trước khi đo trên thiết bị vì có thể khóa nhầm luồng vào một core chậm hoặc làm giảm khả năng điều phối của Android. JIT cũng chưa nên tách thành worker nếu chưa có cơ chế publish code và đồng bộ cache đã được chứng minh.

[7]: https://github.com/magicus/phoneME "phoneME source repository"
[8]: https://github.com/magicus/phoneME/blob/master/midp/src/lowlevelui/image_cache/reference/classes/javax/microedition/lcdui/SuiteImageCacheImpl.java "SuiteImageCacheImpl.java"
[9]: https://github.com/magicus/phoneME/blob/master/midp/src/ams/ams_base/reference/native/imageCache.c "imageCache.c"
[10]: https://github.com/magicus/phoneME/blob/master/midp/src/ams/ams_base/reference/native/fileCache.c "fileCache.c"
[11]: https://github.com/magicus/phoneME/blob/master/midp/src/lowlevelui/image_cache/reference/lib.gmk "image-cache build wiring"


## Bổ sung: prewarm song song có giới hạn

Đã thử nghiệm trong workspace source riêng một biến thể chỉ song song hóa bước giải mã ảnh của `prewarm_image_cache()`. Việc đọc resource từ ZIP/JAR vẫn tuần tự; mỗi batch tối đa 32 entry hoặc 8 MiB dữ liệu, sau đó các decoder độc lập được chạy qua `ParallelExecutor` hiện có với `WorkClass::background`. Kết quả ảnh chỉ được nhập vào cache sau khi worker hoàn thành, nên worker không chạm Java heap, VM event, lifecycle, render state, network hoặc logging. `WorkCoordinator` cho background tối đa một helper và tự từ chối khi frame/thermal pressure không phù hợp; nếu không được phép, decode quay về tuần tự.

Smoke test sau biến thể này vẫn pass: fixture `assets/fixture.png` giải mã đúng `3x2`, cache persistent tạo file 97 bytes, lần chạy lại đọc được cache, và cache bị cắt còn 11 bytes tự bỏ qua rồi dựng lại đúng 97 bytes. Build Core host pass; binary smoke được rebuild từ static library mới.

Đối chiếu threading cho thấy Core portable đã có compute pool dùng chung nhưng đây là executor đồng bộ, caller VM vẫn tham gia và không phải background queue. `MediaService` cùng `PlatformMediaAdapter` hiện giữ lifecycle player dưới mutex và gọi adapter trực tiếp, không có worker audio riêng; chuyển audio sang thread mới lúc này sẽ cần thiết kế lại thứ tự start/stop/event và không phải patch an toàn. Android `GameSurfaceView` của checkpoint đã có thread `PhoneME-Render`, main-looper input và thread chẩn đoán riêng. Vì vậy chưa thêm thread mới, chưa dùng `sched_setaffinity`, và chưa pin VM vào một core; các thay đổi đó chưa có bằng chứng chữa resource I/O và có thể làm xấu latency trên Android.

Trạng thái đóng gói: patch hiện chỉ được build/test ở Core host. Chưa tạo APK vì workspace vẫn thiếu Android JNI/MIDP source boundary đầy đủ để relink `.so` tương thích checkpoint clean. Không thay đổi APK stable, APK checkpoint clean, artifact network deprecated hoặc logging.

## Kiểm tra APK overlay Android r1

Đã tạo duy nhất một APK thử nghiệm từ `/home/ubuntu/upload/PhoneME-CoreBridge-0.1.163-launch-recovery.apk`: `PhoneME-CoreBridge-0.1.163-resource-cache-overlay-r1.apk`. `classes.dex`, `AndroidManifest.xml`, `resources.arsc`, `assets/NOTICE_PHONE_ME.txt` và toàn bộ entry không phải native giữ nguyên hash so với checkpoint clean. ZIP integrity pass; v1/v2/v3 APK signature verify pass.

Native APK có hai entry ARM64: `libphoneMECoreBridge.so` là Core cache overlay, phụ thuộc `libphoneMECoreBridgeLegacy.so`; file legacy giữ 29 JNI wrapper và logging cũ. Static inspection xác nhận overlay có SONAME/dependency đúng, legacy có 29 JNI wrapper, và không có `JNI_OnLoad` đặc biệt ở cả hai. Chưa có `adb`/thiết bị Android trong sandbox nên chưa kết luận launch hoặc hiệu quả trên thiết bị.

Cần lưu ý overlay hiện giữ nguyên legacy `.so` như dependency nên APK thử nghiệm lớn hơn do chứa hai native image; đây là phương án kiểm chứng boundary, chưa phải phương án tối ưu kích thước production. Không được đánh đồng việc APK ký/ZIP hợp lệ với việc JNI runtime đã được thiết bị xác nhận.

SHA-256 APK overlay: `fd4af7ff91a963a1191d48e31b51138ae1e57dcdc6968a35eab0947cdc35cc98`.

## Validation APK overlay r1 cuối cùng

Artifact duy nhất được giữ cho kiểm thử thiết bị là `PhoneME-CoreBridge-0.1.163-resource-cache-overlay-r1.apk`. APK đã pass kiểm tra ZIP integrity (`unzip -t`), `zipalign -c -p -v 4`, và chữ ký v1/v2/v3 bằng `apksigner`. Chữ ký v3.1, v4 và SourceStamp không có trong checkpoint debug này và không được coi là lỗi của bản build.

So với checkpoint clean `PhoneME-CoreBridge-0.1.163-launch-recovery.apk`, toàn bộ entry ngoài `lib/arm64-v8a/` và `META-INF/` giữ nguyên: 4/4 entry non-native có cùng hash, không thiếu, không thêm và không thay đổi. `classes.dex` giữ SHA-256 `ade329798640ca1b244fdc5c7036ba103f34121962a7a282bb5394524586ffce`; `AndroidManifest.xml` giữ SHA-256 `cf42cdd4a420e8bb3588c2513ff1841ac4dc68f7875ce51ce042d89c7d01a26c`.

Native payload cuối gồm ba thư viện AArch64: `libphoneMECoreBridge.so` là overlay Core cache, `libphoneMECoreBridgeLegacy.so` là bridge JNI/logging gốc đã đổi SONAME, và `libc++_shared.so` là C++ exception/ABI provider cần thiết cho Android loader. Primary có SONAME `libphoneMECoreBridge.so`, DT_NEEDED tới `libc++_shared.so`, legacy bridge và các thư viện Android hệ thống; legacy có SONAME `libphoneMECoreBridgeLegacy.so` và giữ dependency hệ thống cũ. Kiểm tra symbol closure cho primary cho kết quả `unresolved_cpp_after_provider=0`; hai symbol `__cxa_atexit@LIBC` và `__cxa_finalize@LIBC` được cung cấp bởi bionic libc. Legacy vẫn export đủ 29 symbol `Java_com_phoneme_corebridge_CoreBridgeNative_*`, danh sách export trùng checkpoint clean; các relocation `R_AARCH64_JUMP_SLOT` cho `phoneme_create`, `phoneme_configure`, `phoneme_start_jar`, `phoneme_stop`, `phoneme_pump_events`, frame và LCDUI vẫn đi qua PLT để overlay cung cấp C API.

Một blocker tĩnh đã được phát hiện và sửa trước khi đóng gói: bản overlay đầu tiên không khai báo `libc++_shared.so` dù còn các symbol `std::__ndk1`/C++ exception chưa được cung cấp. Bản r1 cuối đã thêm đúng provider vào DT_NEEDED và APK. Vì vậy bản đầu không còn là artifact cần sử dụng; chỉ dùng APK r1 cuối cùng có hash `03ef2ef4397d105d2c38ce98544eda3a457fb49d6a6e03bd0cb5c12a8a61eb2a`.

Các kiểm tra trên là kiểm tra tĩnh và host-level. Chưa có thiết bị Android/ADB trong sandbox để xác nhận `System.loadLibrary`, khả năng nạp dependency qua APK, JNI method discovery, launch app, load map hoặc lợi ích tải resource. Do đó chưa được kết luận rằng APK cải thiện hiệu năng; kết luận đó chỉ được đưa ra sau khi người dùng test thực tế và cung cấp kết quả/log.


## Kết quả kiểm thử thiết bị và thu hồi overlay r1 — 2026-08-25

Người dùng đã kiểm thử artifact `PhoneME-CoreBridge-0.1.163-resource-cache-overlay-r1.apk` bằng `haitac_x2` và cung cấp video cùng log. Video cho thấy app đi được tới Program List, hiển thị `Hải tặc 1`/`Hải tặc 2`; sau khi chọn `Hải tặc 1` và nhấn `Chạy`, màn hình chỉ còn loading indicator và không chuyển sang Canvas. Không quan sát thấy Android crash dialog hoặc quay về launcher trong video.

Log watchdog xác nhận đây là treo runtime/UI nghiêm trọng, không phải chỉ chậm tải ảnh: sau hơn 12 giây `lastGeneration=1`, `canvasEntries=1`, `gameCanvasRegistered=0`, `gameGraphicsAttached=0`, `paintCallbacks=0`, `paintCommits=0`, `uiQueue=0`, trong khi `nativeIsRunning=true` và VM vẫn tồn tại. Vì vậy APK không đạt điều kiện tối thiểu để tiếp tục test decoded-image cache.

Phân tích call chain cho thấy sau lần mở Program List, Java host chỉ gọi `nativeLcdUiFocusItem` rồi `nativeLcdUiSetChoice`; Core overlay xử lý action 104 đồng bộ và kỳ vọng implicit `List` tự dispatch `SELECT_COMMAND`, gọi `commandAction`, rồi phát screen event Canvas. Trên thiết bị không xuất hiện screen/canvas event sau action này. Nguyên nhân có xác suất cao nhất là **kiến trúc overlay đã thay toàn bộ implementation `phoneme_*` bằng portable Core mới nhưng giữ JNI wrapper/lifecycle binary cũ**. Static ELF preemption/PLT chứng minh khả năng liên kết symbol, nhưng không chứng minh compatibility của state machine, UI event contract và lifecycle giữa hai implementation. Đây là lỗi boundary tích hợp, không có bằng chứng cho thấy decoded-image cache tự làm hỏng resource.

Quyết định: artifact overlay r1 được đánh dấu **FAILED / WITHDRAWN**. Không dùng nó làm baseline, không tạo biến thể APK khác từ artifact này và không vá ad-hoc vào clone routing. File APK vẫn được giữ nguyên để provenance; SHA-256 là `03ef2ef4397d105d2c38ce98544eda3a457fb49d6a6e03bd0cb5c12a8a61eb2a`. Checkpoint clean `PhoneME-CoreBridge-0.1.163-launch-recovery.apk` / `PhoneME-CoreBridge-0.1.163-no-tuner-recovery.apk` không bị sửa. Hướng cache chỉ được tiếp tục khi khôi phục được Android JNI/Core boundary tương thích hoặc tìm được điểm tích hợp trong source bridge gốc; không được đánh đổi lifecycle/UI đã pass để lấy cache.


## 2026-08-25 — Artifact guard + dọn rác + image-to-png r1

Sau khi người dùng cung cấp `PhoneME-CoreBridge-0.1majestypass.apk`, đã phục hồi nguyên bản lớp Java `com.phoneme.corebridge.ResilientImageJar` và `ResilientImageJar$Payload`, cùng hook gọi `normalize(File)` trong `MainActivity.startSelectedGame()` ngay trước khi tạo launch thread. Đây là implementation từng giúp Majesty pass; không dùng lại native overlay decoded-image cache đã bị thu hồi vì treo Program List.

Artifact mới: `PhoneME-CoreBridge-0.1.163-guard-cleanup-imagepng-r1.apk`. Nền là guard + cleanup; native `libphoneMECoreBridge.so` giữ đúng clean checkpoint SHA-256 `5b525c654cd265cb1fdd6185dbdd7a87e11a341e8d60885475fa60a0bd140668`. APK chỉ có một native entry, không có `libphoneMECoreBridgeLegacy.so`, `libc++_shared.so` bổ sung, native overlay hoặc resource-cache overlay.

`ResilientImageJar` nhận diện JPEG/GIF theo chữ ký nội dung, giải mã bằng Android `BitmapFactory`, nén thành PNG với chất lượng 100, giữ nguyên tên entry resource trong JAR, bỏ qua các entry META-INF chữ ký, tạo file dẫn xuất có marker `.corebridge-image-normalized.jar`, và fallback về JAR gốc khi có lỗi. Game JAR gốc không bị sửa.

Validation tĩnh pass: ZIP integrity, zipalign, chữ ký Android v1/v2/v3, native hash khớp clean checkpoint và DEX chứa marker normalizer/hook. SHA-256 APK là `80683f6567eddd68278388692a4f1d3d2a32256b0715ac8639c56d4b6309faee`. Chưa có kiểm thử thiết bị trong sandbox; chưa khẳng định launch, Majesty map loading hoặc hiệu năng. Đây là artifact thử nghiệm duy nhất cần dùng cho vòng test tiếp theo.
