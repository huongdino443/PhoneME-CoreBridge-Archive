.class Lcom/phoneme/corebridge/MainActivity$46;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->rebuildFormItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$FormItemState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$46;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$46;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$46;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_d

    return-void

    :cond_d
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$46;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$46;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LCDUI Form interactive item activate id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$46;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget v3, v3, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$46;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget v3, v3, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$46;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget v3, v3, Lcom/phoneme/corebridge/MainActivity$FormItemState;->itemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$46;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$4900(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$46$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/phoneme/corebridge/MainActivity$46$1;-><init>(Lcom/phoneme/corebridge/MainActivity$46;J)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
