.class Lcom/phoneme/corebridge/MainActivity$45;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$45;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$45;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$45;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # invokes: Lcom/phoneme/corebridge/MainActivity;->updateLcdUiSoftInputMode()V
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$5100(Lcom/phoneme/corebridge/MainActivity;)V

    if-eqz p2, :cond_28

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$45;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_14

    goto :goto_28

    :cond_14
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$45;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$45;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$4900(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$45$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/phoneme/corebridge/MainActivity$45$1;-><init>(Lcom/phoneme/corebridge/MainActivity$45;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_28
    :goto_28
    return-void
.end method
