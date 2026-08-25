.class Lcom/phoneme/corebridge/MainActivity$44$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$44;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$44;

.field final synthetic val$j:J

.field final synthetic val$length:I

.field final synthetic val$str2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$44;JLjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$44$1;->this$1:Lcom/phoneme/corebridge/MainActivity$44;

    iput-wide p2, p0, Lcom/phoneme/corebridge/MainActivity$44$1;->val$j:J

    iput-object p4, p0, Lcom/phoneme/corebridge/MainActivity$44$1;->val$str2:Ljava/lang/String;

    iput p5, p0, Lcom/phoneme/corebridge/MainActivity$44$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$44$1;->val$j:J

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$44$1;->this$1:Lcom/phoneme/corebridge/MainActivity$44;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$44;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget v2, v2, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    invoke-static {v0, v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiFocusItem(JI)V

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$44$1;->val$j:J

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$44$1;->this$1:Lcom/phoneme/corebridge/MainActivity$44;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$44;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget v2, v2, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$44$1;->val$str2:Ljava/lang/String;

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity$44$1;->val$length:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiSetText(JILjava/lang/String;I)V

    return-void
.end method
