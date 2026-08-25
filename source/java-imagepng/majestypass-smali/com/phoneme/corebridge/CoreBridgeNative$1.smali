.class Lcom/phoneme/corebridge/CoreBridgeNative$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/CoreBridgeNative;->attachListeners(Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$entry:Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$1;->val$entry:Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 7

    const-string v0, "MMAPI java completion"

    # invokes: Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/phoneme/corebridge/CoreBridgeNative;->access$000(Ljava/lang/String;)V

    # getter for: Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/phoneme/corebridge/CoreBridgeNative;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$1;->val$entry:Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    iget v1, v1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->loopCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    monitor-exit v0

    return-void

    :cond_13
    iget-object v1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$1;->val$entry:Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    iget v1, v1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->remainingLoops:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_2f

    iget-object v1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$1;->val$entry:Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    iget v4, v1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->remainingLoops:I

    sub-int/2addr v4, v3

    iput v4, v1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->remainingLoops:I
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_39

    :try_start_22
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_29
    .catchall {:try_start_22 .. :try_end_28} :catchall_39

    goto :goto_37

    :catch_29
    move-exception p1

    :try_start_2a
    iget-object p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$1;->val$entry:Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    iput-boolean v3, p1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->error:Z

    goto :goto_37

    :cond_2f
    iget-object p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$1;->val$entry:Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    iput-boolean v3, p1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->ended:Z

    iget-object p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$1;->val$entry:Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    iput-boolean v2, p1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->started:Z

    :goto_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_39

    throw p1
.end method
