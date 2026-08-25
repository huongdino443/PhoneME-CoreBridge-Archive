.class Lcom/phoneme/corebridge/CoreBridgeNative$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/CoreBridgeNative;->mediaPlayTone(III)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$durationMilliseconds:I

.field final synthetic val$note:I

.field final synthetic val$volume:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$3;->val$note:I

    iput p2, p0, Lcom/phoneme/corebridge/CoreBridgeNative$3;->val$durationMilliseconds:I

    iput p3, p0, Lcom/phoneme/corebridge/CoreBridgeNative$3;->val$volume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/phoneme/corebridge/CoreBridgeNative$3;->val$note:I

    iget v1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$3;->val$durationMilliseconds:I

    iget v2, p0, Lcom/phoneme/corebridge/CoreBridgeNative$3;->val$volume:I

    # invokes: Lcom/phoneme/corebridge/CoreBridgeNative;->playToneInternal(III)V
    invoke-static {v0, v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->access$200(III)V

    return-void
.end method
