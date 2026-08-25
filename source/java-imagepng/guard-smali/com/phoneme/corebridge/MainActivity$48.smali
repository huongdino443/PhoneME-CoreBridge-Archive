.class Lcom/phoneme/corebridge/MainActivity$48;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->rebuildListOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$48;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$48;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$48;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$48;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    invoke-virtual {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->programKey(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$48;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$5200(Lcom/phoneme/corebridge/MainActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, ""

    goto :goto_19

    :cond_13
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$48;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$5200(Lcom/phoneme/corebridge/MainActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$48;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI Program List open focused key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$48;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$48;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    invoke-virtual {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->selectListRow(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V

    goto :goto_67

    :cond_3f
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$48;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # setter for: Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/phoneme/corebridge/MainActivity;->access$5202(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$48;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI Program List focus key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; second tap required to open"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$48;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {p1}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    :goto_67
    return-void
.end method
