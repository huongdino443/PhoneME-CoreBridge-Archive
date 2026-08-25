.class Lcom/phoneme/corebridge/MainActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phoneme/corebridge/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$1;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$1;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->frameStatusLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$000(Lcom/phoneme/corebridge/MainActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$1;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->pendingFrameStatus:Ljava/lang/String;
    invoke-static {v1}, Lcom/phoneme/corebridge/MainActivity;->access$100(Lcom/phoneme/corebridge/MainActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$1;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const/4 v3, 0x0

    # setter for: Lcom/phoneme/corebridge/MainActivity;->pendingFrameStatus:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/phoneme/corebridge/MainActivity;->access$102(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$1;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    # setter for: Lcom/phoneme/corebridge/MainActivity;->lastFrameStatusUiMillis:J
    invoke-static {v2, v3, v4}, Lcom/phoneme/corebridge/MainActivity;->access$202(Lcom/phoneme/corebridge/MainActivity;J)J

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$1;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const/4 v3, 0x0

    # setter for: Lcom/phoneme/corebridge/MainActivity;->frameStatusUpdatePosted:Z
    invoke-static {v2, v3}, Lcom/phoneme/corebridge/MainActivity;->access$302(Lcom/phoneme/corebridge/MainActivity;Z)Z

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_38

    if-eqz v1, :cond_37

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$1;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$400(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_2e

    goto :goto_37

    :cond_2e
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$1;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$400(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_37
    :goto_37
    return-void

    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method
