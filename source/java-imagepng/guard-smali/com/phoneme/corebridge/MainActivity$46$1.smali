.class Lcom/phoneme/corebridge/MainActivity$46$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$46;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$46;

.field final synthetic val$runtime:J


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$46;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$46$1;->this$1:Lcom/phoneme/corebridge/MainActivity$46;

    iput-wide p2, p0, Lcom/phoneme/corebridge/MainActivity$46$1;->val$runtime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$46$1;->val$runtime:J

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$46$1;->this$1:Lcom/phoneme/corebridge/MainActivity$46;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$46;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget v2, v2, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    invoke-static {v0, v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiFocusItem(JI)V

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$46$1;->val$runtime:J

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$46$1;->this$1:Lcom/phoneme/corebridge/MainActivity$46;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$46;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget v2, v2, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    invoke-static {v0, v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiActivateItem(JI)V

    return-void
.end method
