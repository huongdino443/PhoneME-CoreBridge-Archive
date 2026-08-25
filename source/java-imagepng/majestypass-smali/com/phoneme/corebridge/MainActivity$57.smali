.class Lcom/phoneme/corebridge/MainActivity$57;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->handleLcdUiEvent([Ljava/lang/Object;)V
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$57;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$57;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$5300(Lcom/phoneme/corebridge/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$57;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$5400(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_38

    :cond_11
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$57;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {v0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$57;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI Program List rebuilt after destruction runningKeys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$57;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;
    invoke-static {v2}, Lcom/phoneme/corebridge/MainActivity;->access$5500(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_38
    :goto_38
    return-void
.end method
