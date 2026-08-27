# Danger Dash — plain Canvas → GameCanvas patch

## Trạng thái

Đây là **một JAR thử nghiệm duy nhất**, được tạo từ bản sao read-only của JAR Danger Dash gốc. APK r64 và các checkpoint r63/r64/r65 không bị sửa đổi. Không có APK mới vì core native không thay đổi.

## Căn cứ

Class `i` trong JAR gốc có direct superclass `javax.microedition.lcdui.Canvas`, gọi `Canvas.<init>()`, và tự override `paint(Graphics)`, `keyPressed(int)`, `keyReleased(int)`, cùng các phương thức pointer. Log CoreBridge Danger Dash trước đó cho thấy paint callback/commit vẫn tăng nhưng `gameCanvasRegistered=0`, `gameGraphicsAttached=0` và framebuffer cuối là opaque black. Theo chẩn đoán của Superninja, native framebuffer path của r64 chỉ được bật khi displayable được nhận diện là GameCanvas.

## Thay đổi chính xác

Chỉ entry `i.class` được thay đổi:

```text
i extends javax.microedition.lcdui/game/GameCanvas

constructor:
    invokespecial Canvas.<init>()
    → iconst_0
      invokespecial GameCanvas.<init>(Z)
```

Giá trị `false` giữ đường nhận key event thông thường, phù hợp với việc class `i` có `keyPressed/keyReleased` riêng. Không thay đổi `/S`, `/T`, `/SP`, `/I`, PNG slices, manifest logic hay các class renderer khác.

## Kiểm tra đã thực hiện

Verifier ASM xác nhận:

```text
PASS: entry-set unchanged; only i.class changed
PASS: i.class extends javax/microedition/lcdui/game/GameCanvas
PASS: constructor invokes GameCanvas.<init>(false)
```

Các SHA-256 của mọi entry khác `i.class` khớp JAR input. JAR output:

```text
DangerDash-plain-canvas-gamecanvas-patched.jar
SHA-256: 3de21c85c41dd3a15dff074667b45b757bf1da9d929473f04ccc1f6896f2e898
```

## Phạm vi và rủi ro

Đây là patch bytecode có căn cứ nhưng chưa được device-test. Nó thay đổi loại Canvas của riêng Danger Dash để kích hoạt nhánh GameCanvas; nếu runtime GameCanvas của CoreBridge có khác biệt constructor hoặc input semantics, game có thể crash hoặc input thay đổi. Không coi patch này là baseline cho CoreBridge.

## Rollback

Không cần gỡ hoặc cài lại APK r64. Chỉ cần ngừng chọn JAR patch này và dùng lại bản JAR gốc mà người dùng đã tự lưu. Không chạy đồng thời với các JAR thử nghiệm Danger Dash khác.
