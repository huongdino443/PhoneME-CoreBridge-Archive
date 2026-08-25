.class Lcom/phoneme/corebridge/MainActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->sendFormChoiceSelection(Lcom/phoneme/corebridge/MainActivity$FormItemState;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$componentId:I

.field final synthetic val$rowIndex:I

.field final synthetic val$runtime:J

.field final synthetic val$selected:Z


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;JIIZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$2;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-wide p2, p0, Lcom/phoneme/corebridge/MainActivity$2;->val$runtime:J

    iput p4, p0, Lcom/phoneme/corebridge/MainActivity$2;->val$componentId:I

    iput p5, p0, Lcom/phoneme/corebridge/MainActivity$2;->val$rowIndex:I

    iput-boolean p6, p0, Lcom/phoneme/corebridge/MainActivity$2;->val$selected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$2;->val$runtime:J

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity$2;->val$componentId:I

    invoke-static {v0, v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiFocusItem(JI)V

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$2;->val$runtime:J

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity$2;->val$componentId:I

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity$2;->val$rowIndex:I

    iget-boolean v4, p0, Lcom/phoneme/corebridge/MainActivity$2;->val$selected:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiSetChoice(JIII)V

    return-void
.end method
