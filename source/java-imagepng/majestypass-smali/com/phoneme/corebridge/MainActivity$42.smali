.class Lcom/phoneme/corebridge/MainActivity$42;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->presentCanvasScreenFromNativeEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$i:I

.field final synthetic val$i3:I


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$42;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput p2, p0, Lcom/phoneme/corebridge/MainActivity$42;->val$i3:I

    iput p3, p0, Lcom/phoneme/corebridge/MainActivity$42;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$42;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$4800(Lcom/phoneme/corebridge/MainActivity;)Lcom/phoneme/corebridge/GameSurfaceView;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$42;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI Canvas handoff #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity$42;->val$i3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " +120ms id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity$42;->val$i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$42;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;
    invoke-static {v2}, Lcom/phoneme/corebridge/MainActivity;->access$4800(Lcom/phoneme/corebridge/MainActivity;)Lcom/phoneme/corebridge/GameSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliveryState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method
