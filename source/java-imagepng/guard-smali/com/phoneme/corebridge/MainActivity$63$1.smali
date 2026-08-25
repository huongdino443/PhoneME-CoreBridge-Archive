.class Lcom/phoneme/corebridge/MainActivity$63$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$63;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$63;

.field final synthetic val$iNativeStartJar:I


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$63;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->this$1:Lcom/phoneme/corebridge/MainActivity$63;

    iput p2, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->val$iNativeStartJar:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->this$1:Lcom/phoneme/corebridge/MainActivity$63;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$63;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->this$1:Lcom/phoneme/corebridge/MainActivity$63;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$63;->val$strTrim2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "nativeStartJar="

    goto :goto_33

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeStartJarScoped scope="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->this$1:Lcom/phoneme/corebridge/MainActivity$63;

    iget-object v3, v3, Lcom/phoneme/corebridge/MainActivity$63;->val$strTrim2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->val$iNativeStartJar:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->val$iNativeStartJar:I

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->this$1:Lcom/phoneme/corebridge/MainActivity$63;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$63;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {v0}, Lcom/phoneme/corebridge/MainActivity;->appendNativeError()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->this$1:Lcom/phoneme/corebridge/MainActivity$63;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$63;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const/4 v1, 0x0

    # invokes: Lcom/phoneme/corebridge/MainActivity;->setGameSessionPresented(Z)V
    invoke-static {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->access$5700(Lcom/phoneme/corebridge/MainActivity;Z)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->this$1:Lcom/phoneme/corebridge/MainActivity$63;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$63;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$400(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Kh\u1edfi ch\u1ea1y th\u1ea5t b\u1ea1i; h\u00e3y sao ch\u00e9p log."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a5

    :cond_65
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->this$1:Lcom/phoneme/corebridge/MainActivity$63;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$63;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const/4 v1, 0x1

    # invokes: Lcom/phoneme/corebridge/MainActivity;->setGameSessionPresented(Z)V
    invoke-static {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->access$5700(Lcom/phoneme/corebridge/MainActivity;Z)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->this$1:Lcom/phoneme/corebridge/MainActivity$63;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$63;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$400(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0110ang ch\u1ea1y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->this$1:Lcom/phoneme/corebridge/MainActivity$63;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$63;->val$file2:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->this$1:Lcom/phoneme/corebridge/MainActivity$63;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$63;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$4800(Lcom/phoneme/corebridge/MainActivity;)Lcom/phoneme/corebridge/GameSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->startRendering()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63$1;->this$1:Lcom/phoneme/corebridge/MainActivity$63;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$63;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {v0}, Lcom/phoneme/corebridge/MainActivity;->startLcdUiPolling()V

    :goto_a5
    return-void
.end method
