.class Lcom/phoneme/corebridge/MainActivity$62;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->startLcdUiPolling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$62;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$62;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->lcdUiPolling:Z
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$5600(Lcom/phoneme/corebridge/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$62;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    goto :goto_39

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2e

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$62;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {v1}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativePollLcdUiEvent(J)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$62;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {v2, v1}, Lcom/phoneme/corebridge/MainActivity;->handleLcdUiEvent([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2e
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$62;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$4500(Lcom/phoneme/corebridge/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_39
    :goto_39
    return-void
.end method
