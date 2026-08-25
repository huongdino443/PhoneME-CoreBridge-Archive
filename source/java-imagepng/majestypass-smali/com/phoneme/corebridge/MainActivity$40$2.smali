.class Lcom/phoneme/corebridge/MainActivity$40$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$40;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$40;

.field final synthetic val$e:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$40;Ljava/lang/RuntimeException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$40$2;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$40$2;->val$e:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$40$2;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$40;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L\u1ed7i LCDUI synthetic TextBox command id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$40$2;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    iget v2, v2, Lcom/phoneme/corebridge/MainActivity$40;->val$i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$40$2;->val$e:Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$40$2;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$40;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const/4 v1, 0x0

    # setter for: Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxCommandPending:Z
    invoke-static {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->access$4602(Lcom/phoneme/corebridge/MainActivity;Z)Z

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$40$2;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$40;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # setter for: Lcom/phoneme/corebridge/MainActivity;->textBoxActionPending:Z
    invoke-static {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->access$4702(Lcom/phoneme/corebridge/MainActivity;Z)Z

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$40$2;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$40;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$3300(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$40$2;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$40;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$3300(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_53
    return-void
.end method
