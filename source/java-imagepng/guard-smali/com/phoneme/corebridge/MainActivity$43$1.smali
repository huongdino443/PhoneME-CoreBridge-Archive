.class Lcom/phoneme/corebridge/MainActivity$43$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$43;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$43;

.field final synthetic val$i6:I

.field final synthetic val$j:J


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$43;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$43$1;->this$1:Lcom/phoneme/corebridge/MainActivity$43;

    iput-wide p2, p0, Lcom/phoneme/corebridge/MainActivity$43$1;->val$j:J

    iput p4, p0, Lcom/phoneme/corebridge/MainActivity$43$1;->val$i6:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$43$1;->val$j:J

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity$43$1;->val$i6:I

    invoke-static {v0, v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiFocusItem(JI)V

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$43$1;->val$j:J

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity$43$1;->val$i6:I

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$43$1;->this$1:Lcom/phoneme/corebridge/MainActivity$43;

    iget-object v3, v3, Lcom/phoneme/corebridge/MainActivity$43;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget v3, v3, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeValue:I

    invoke-static {v0, v1, v2, v3}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiSetGauge(JII)V

    return-void
.end method
