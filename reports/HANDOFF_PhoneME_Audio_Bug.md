# Bàn giao: Lỗi âm thanh trong PhoneME-MOD (Android J2ME emulator)

## 1. Bối cảnh dự án

App: **PhoneME-MOD** — bản mod của phoneME Feature (J2ME/CLDC emulator) trên Android, package
`be.preuveneers.phoneme.fpmidp`. Người dùng là dev cá nhân, làm việc **chỉ trên điện thoại Android**,
dùng **APK Editor Pro** để decompile/edit/rebuild smali (đã xác nhận công cụ này decompile→smali→
recompile hoạt động tốt, giữ nguyên logic qua vòng round-trip).

Kiến trúc app:
- `classes.dex` — lớp vỏ Android (Activity, các "Proxy" bridge class dùng JNI để CVM gọi xuống Android
  API cho phần mà CVM không tự làm được: âm thanh, GL rendering, input...).
- `assets/foundation/bin/` — **CVM (CLDC VM) gốc, biên dịch native ARM**, tách thành **7 phần** (do giới
  hạn nào đó khi đóng gói), tên dạng `libcvm.so.part1` v.v. Đây là nơi thực thi toàn bộ logic J2ME thật
  sự, bao gồm **JSR-135 (MMAPI — Mobile Media API)**, tức là toàn bộ `javax.microedition.media.Player`
  cho âm thanh.
- `lib/armeabi/libjniphoneme.so` — 1 lib JNI nhỏ (~26KB), **chỉ** phụ trách cầu nối framebuffer đồ hoạ
  (`renderFrame`), **không liên quan gì tới âm thanh**.

Không có công cụ disassemble native (Ghidra/IDA/Cutter) sẵn sàng ở phía người yêu cầu — đây chính là
điểm nghẽn hiện tại.

## 2. Triệu chứng gốc (do người dùng báo cáo)

Khi test nhiều game J2ME khác nhau trên app:
1. Một số game **mất âm thanh hoàn toàn** — nghi do **định dạng file âm thanh game đó dùng không được
   app hỗ trợ**. Người dùng đã **chủ động gác lại vấn đề này**, không phải trọng tâm bàn giao.
2. Một số game **âm thanh "không đủ"** — thiếu tiếng khi có nhiều sự kiện âm thanh dồn dập.
3. **Trọng tâm chính**: các âm thanh có tính chất **lặp lại theo hành động** (tiếng va chạm vũ khí,
   tiếng máy móc...) — **chỉ phát được đúng 1 lần đầu tiên**, những lần kích hoạt sau đó **hoàn toàn im
   lặng**, dù hành động trong game vẫn diễn ra bình thường (vũ khí vẫn chém, máy móc vẫn chạy).

Giả thuyết của người dùng (dựa trên quan sát gameplay thực tế — ví dụ: lính chém quái vật, quái chết đi
thì "phiên" âm thanh chém đó lẽ ra phải kết thúc, nhưng những lần chém tiếp theo không có tiếng — như thể
app vẫn coi phiên âm thanh cũ **chưa kết thúc**): **app xử lý âm thanh lặp theo kiểu "gọi lần 1 rồi treo
vĩnh viễn"**, tức phiên phát âm thanh không bao giờ được đóng lại đúng cách, nên lần kích hoạt tiếp theo
của cùng 1 âm thanh bị chặn/bỏ qua.

## 3. Điều tra đã thực hiện (phía Java/Android — đã xong)

Đã decompile `classes.dex` (qua APK Editor Pro), soát kỹ class
**`be.preuveneers.phoneme.fpmidp.MediaPlayerProxy`** — đây là bridge Android nhận lệnh từ native CVM
qua tham số `String[]` (kiểu command dispatch: `create`, `prepare`, `start`, `pause`, `reset`, `stop`,
`release` — chỉ đúng 7 lệnh này, không có lệnh nào kiểu "query state"/"isPlaying"/"poll").

Cơ chế: mỗi file âm thanh (`.wav`/`.midi`, giải nén sẵn ra `/tmp` khi load game) được gán 1 **key số
nguyên cố định** (ổn định theo path, không đổi trong suốt phiên chơi). `MediaPlayer` instance được cache
trong 1 `HashMap<key, MediaPlayer>` để tái sử dụng thay vì tạo mới mỗi lần.

### Bug #1 — ĐÃ FIX (nhánh "reuse" thiếu `seekTo(0)`)
Khi cache-hit (tìm thấy player cũ trong map), code gọi thẳng `mediaPlayer.start()` mà **không
`seekTo(0)` trước** — nếu player đang ở trạng thái `PlaybackCompleted`, `start()` không tự tua về đầu,
nên coi như không phát được gì. **Đã vá**: thêm `const/4 v9, 0x0` + `invoke-virtual {v6, v9},
Landroid/media/MediaPlayer;->seekTo(I)V` trước dòng `start()` (file đính kèm:
`MediaPlayerProxy.smali`, dòng ~1130). Đã build, cài, nhưng **người dùng xác nhận lỗi #3 (âm thanh lặp
chỉ phát lần đầu) vẫn còn nguyên**.

### Phân tích logcat (`phoneme_logcat.txt`, ~9000 dòng)
Log cho thấy **mọi lệnh `'start'` được ghi nhận đều thành công** (`Audio start: OK (new)`), **không có
dòng `OK (reuse)` nào xuất hiện trong toàn bộ log** — nghĩa là trong phiên log này, nhánh "reuse" hầu
như không bao giờ được kích hoạt (vì `onCompletion` tự động `remove()` + `release()` player khỏi map
*ngay khi phát xong*, nên lần gọi tiếp theo luôn rơi vào nhánh "tạo mới", không phải "tái sử dụng").
Không có `onError`, không có exception nào liên quan âm thanh trong toàn bộ log.

**Quan trọng — người dùng xác nhận**: đã thử nhiều lần bắt log **đúng lúc** xảy ra hiện tượng "âm thanh
lặp không phát" nhưng **log không hề ghi nhận được bất kỳ lệnh `create`/`start` nào** cho những lần kích
hoạt bị mất tiếng đó. Tức là **request chưa bao giờ chạm tới tầng Android/Java (`MediaPlayerProxy`) cho
những lần bị lỗi** — nó bị chặn lại ở đâu đó **phía trên**, trong chính CVM native.

### Phát hiện cốt lõi — khoảng trống kiến trúc (chưa fix được, cần native)
Soát toàn bộ `MediaPlayerProxy.smali` + 2 inner class (`$1` = `OnErrorListener`, `$2` =
`OnCompletionListener`): **không có bất kỳ method nào khai báo `native`, không có lời gọi callback/JNI
nào ngược trở lại CVM native.** Cụ thể, `onCompletion()` (khi `MediaPlayer` phát xong) **chỉ dọn dẹp nội
bộ phía Android** (`HashMap.remove()` + `MediaPlayer.release()`) — nó **không hề báo lại cho CVM native
biết rằng âm thanh đã phát xong**.

Theo chuẩn **JSR-135 (MMAPI)**: gọi `Player.start()` khi Player đang ở trạng thái `STARTED` là **no-op
theo spec** (không làm gì cả). Nếu state machine `Player` native trong CVM không có cách nào biết
"playback đã hoàn tất" để tự chuyển state về lại trạng thái có thể start lại — nó sẽ **mãi mãi nghĩ
Player đang STARTED**, nên **những lần trigger tiếp theo của game bị chính CVM native chặn lại ở tầng
J2ME API, không bao giờ gửi lệnh xuống Android bridge nữa.** → khớp chính xác với việc logcat "trắng
tinh" ở những lần bị lỗi, và khớp giả thuyết ban đầu của người dùng.

**Kết luận: bug gốc rất có khả năng nằm ở phía CVM native (`libcvm.so`), không phải ở
`classes.dex`/smali.** Cần tìm trong native code: hàm nào quản lý `Player` state cho MMAPI, nó dựa vào
cơ chế gì để biết playback đã hoàn tất (callback từ Android? polling? timer nội bộ dựa theo duration?),
và JNI signature nào (nếu có) mà Android bridge lẽ ra phải gọi ngược lại nhưng hiện đang thiếu.

### Bug phụ — ĐỘC LẬP, fix được ngay phía Java (chưa fix)
`MediaPlayer.setLooping()` **chưa từng được gọi ở bất kỳ đâu** trong bridge này. Với các âm thanh dạng
loop liên tục thật sự (native gửi `setLoopCount` kiểu MMAPI cho 1 clip lặp vô hạn, ví dụ tiếng máy móc
ambient), Android side sẽ **chỉ phát đúng 1 lần rồi dừng hẳn**, vì không có cơ chế loop nào được wire
lên. Đây có thể là 1 phần nguyên nhân của triệu chứng #2 ("không đủ âm thanh") hoặc 1 phần của #3, tách
biệt khỏi bug gốc ở trên. **Có thể fix ngay bằng smali** một khi biết chính xác lệnh nào trong 7 lệnh
hiện có (`create`/`prepare`/...) mang theo thông tin loop-count từ native — cần xác nhận thêm bằng cách
đối chiếu với thứ tự lệnh mà CVM gửi cho 1 game có âm thanh loop thật (log lại đúng lúc nghe machinery
sound) hoặc lần theo native để biết loop-count được truyền qua đâu.

## 4. Hướng đi đề xuất cho bước tiếp theo

1. **Cần công cụ disassemble native ARM** (Ghidra khuyến nghị — miễn phí, hỗ trợ ARM/Android tốt; IDA
   hoặc Cutter cũng được). Ghép lại `libcvm.so` từ 7 phần trong `assets/foundation/bin` (người dùng đã
   có quy trình ghép này từ trước, đã làm thành công 1 lần cho việc trích glyph tiếng Việt — có thể hỏi
   lại quy trình cụ thể nếu cần).
2. Trong `libcvm.so` đã ghép, tìm module/hàm liên quan tới **JSR-135 / MMAPI Player**:
   - Hàm nào build lệnh `String[]` rồi gọi JNI xuống `MediaPlayerProxy.process()` phía Java (tìm theo
     tên lớp `MediaPlayerProxy` hoặc chuỗi `"create"`/`"start"`/`"stop"` xuất hiện trong native).
   - Hàm quản lý state machine của `Player` (`UNREALIZED`/`REALIZED`/`PREFETCHED`/`STARTED`/`CLOSED`) —
     tìm xem state có được set về lại sau `STARTED` bằng cách nào: polling theo thời gian? có JNI
     callback nào từ Android gọi lên mà hiện KHÔNG được implement phía Java? hay có buffer/flag nào set
     1 lần rồi không bao giờ reset?
3. Xác định chính xác: CVM có **chờ** 1 tín hiệu "hoàn tất" nào từ Android không, hay nó tự tính bằng
   **duration** (nếu vậy, lệch thời lượng thực tế giữa file gốc và cách Android decode/phát cũng có thể
   là nguyên nhân, đáng kiểm tra).
4. Nếu xác nhận đúng là thiếu callback: cần thêm 1 JNI native method mới (khai báo trong
   `MediaPlayerProxy.smali`, implement trong `libjniphoneme.so` hoặc lib native tương ứng) để
   `onCompletion()` phía Java gọi ngược lại đúng hàm native mà CVM đang chờ.
5. Nếu việc sửa native quá rủi ro/phức tạp trong giai đoạn đầu: cân nhắc phương án tạm — nhưng lưu ý bất
   kỳ workaround nào chỉ ở phía Java **không giải quyết được gốc rễ** nếu đúng là native tự chặn request
   trước khi nó kịp rời khỏi CVM (Java không thể "đoán" được khi nào game *muốn* trigger lại một âm
   thanh nếu chính native không gửi lệnh xuống).

## 5. Các yếu tố khác cần cân nhắc / loại trừ song song

- **Giới hạn kênh audio phần cứng (AudioFlinger)**: Android giới hạn số `MediaPlayer`/`AudioTrack` đồng
  thời (tuỳ thiết bị/OS, thường 8–32). Nếu 1 số cảnh có rất nhiều âm thanh ngắn dồn dập, có thể 1 số bị
  từ chối cấp kênh phần cứng một cách âm thầm — đáng kiểm tra riêng, độc lập với bug state-machine ở
  trên (có thể là nguyên nhân của triệu chứng #2 "không đủ âm thanh" thay vì #3).
- **`"Audio prepare: deferred (lazy)"`**: lệnh `prepare` hiện tại không thực hiện ngay mà trì hoãn tới
  lúc `start` mới gọi `setDataSource()` + `prepare()` (đồng bộ, blocking) — nếu điều này chạy trên cùng
  thread xử lý lệnh từ CVM, có thể gây nghẽn nhẹ khi nhiều âm thanh trigger cùng lúc, dù chưa có bằng
  chứng trực tiếp trong log hiện tại.
- **Định dạng file không hỗ trợ** (triệu chứng #1) — người dùng đã yêu cầu gác lại, nhưng nếu trong lúc
  điều tra native mà phát hiện liên quan (ví dụ cùng 1 hàm xử lý), nên ghi nhận lại.
- Cần xác nhận: CVM có 1 cơ chế **pool giới hạn số Player đồng thời phía CHÍNH NÓ** (native tự quản lý,
  độc lập với Android's HashMap) hay không — nếu có, đây có thể là nơi thực sự "khoá" state, cần tìm
  đúng cấu trúc dữ liệu đó trong native.

## 6. File nên đính kèm khi bàn giao

| File | Vai trò |
|---|---|
| `_workspace_PhoneME-R39.apk` | APK gốc hiện tại (bản đang gặp lỗi âm thanh) — để AI tiếp theo tự giải nén, đối chiếu, hoặc apply patch tiếp |
| `MediaPlayerProxy.smali`, `MediaPlayerProxy_1.smali`, `MediaPlayerProxy_2.smali` | Bridge Java-side đã điều tra kỹ + đã có patch `seekTo(0)` — để AI tiếp không phải decompile lại từ đầu |
| `phoneme_logcat.txt` | Bằng chứng logcat — cho thấy request không hề tới được tầng Java ở những lần lỗi |
| **7 phần `libcvm.so.*` trong `assets/foundation/bin/`** (giải nén từ APK) | **Mục tiêu chính** cần disassemble — đây là nơi chứa logic JSR-135/MMAPI thật sự |
| File hướng dẫn/ghi chú quy trình ghép lại `libcvm.so` từ 7 phần (nếu người dùng còn giữ từ lần làm trước) | Giúp AI tiếp theo không phải tự mò lại cách ghép |

**Không cần** đính kèm: `libjniphoneme.so` (chỉ phục vụ GL rendering, không liên quan âm thanh),
`GLRenderer`/`GLFramebufferView`/`FrameBufferView` smali (thuộc vấn đề đồ hoạ đã xử lý xong trước đó,
không liên quan).
