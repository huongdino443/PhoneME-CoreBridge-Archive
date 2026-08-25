.class Lcom/phoneme/corebridge/CoreBridgeNative$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$2;->val$entry:Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MMAPI java error what="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " extra="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/phoneme/corebridge/CoreBridgeNative;->access$000(Ljava/lang/String;)V

    # getter for: Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/phoneme/corebridge/CoreBridgeNative;->access$100()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_25
    iget-object p2, p0, Lcom/phoneme/corebridge/CoreBridgeNative$2;->val$entry:Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->error:Z

    iget-object p2, p0, Lcom/phoneme/corebridge/CoreBridgeNative$2;->val$entry:Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->started:Z

    monitor-exit p1

    return p3

    :catchall_31
    move-exception p2

    monitor-exit p1
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_31

    throw p2
.end method
