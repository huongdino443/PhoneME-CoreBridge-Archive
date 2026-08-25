.class Lcom/phoneme/corebridge/MainActivity$43;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$43;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$43;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6

    if-eqz p3, :cond_2b

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$43;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iput p2, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeValue:I

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$43;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_13

    return-void

    :cond_13
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$43;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/phoneme/corebridge/MainActivity$43;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget p3, p3, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$43;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$4900(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$43$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/phoneme/corebridge/MainActivity$43$1;-><init>(Lcom/phoneme/corebridge/MainActivity$43;JI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2b
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
