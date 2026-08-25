.class Lcom/phoneme/corebridge/GameSurfaceView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/GameSurfaceView;->queueTelemetry(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/GameSurfaceView;

.field final synthetic val$logTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/GameSurfaceView;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView$2;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    iput-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView$2;->val$logTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :goto_0
    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$2;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->telemetryLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$200(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView$2;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->pendingTelemetryMessage:Ljava/lang/String;
    invoke-static {v1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$300(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView$2;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    const/4 v3, 0x0

    # setter for: Lcom/phoneme/corebridge/GameSurfaceView;->pendingTelemetryMessage:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/phoneme/corebridge/GameSurfaceView;->access$302(Lcom/phoneme/corebridge/GameSurfaceView;Ljava/lang/String;)Ljava/lang/String;

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView$2;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    const/4 v2, 0x0

    # setter for: Lcom/phoneme/corebridge/GameSurfaceView;->telemetryDrainPosted:Z
    invoke-static {v1, v2}, Lcom/phoneme/corebridge/GameSurfaceView;->access$402(Lcom/phoneme/corebridge/GameSurfaceView;Z)Z

    monitor-exit v0

    return-void

    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_48

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$2;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->frameLogListener:Lcom/phoneme/corebridge/GameSurfaceView$FrameLogListener;
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$500(Lcom/phoneme/corebridge/GameSurfaceView;)Lcom/phoneme/corebridge/GameSurfaceView$FrameLogListener;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0, v1}, Lcom/phoneme/corebridge/GameSurfaceView$FrameLogListener;->onFrameLog(Ljava/lang/String;)V

    :cond_29
    const-string v0, "PhoneME-CoreBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/phoneme/corebridge/GameSurfaceView$2;->val$logTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method
