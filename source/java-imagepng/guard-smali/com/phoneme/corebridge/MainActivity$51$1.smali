.class Lcom/phoneme/corebridge/MainActivity$51$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$51;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$51;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$51;)V
    .locals 0

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$3900(Lcom/phoneme/corebridge/MainActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget v1, v1, Lcom/phoneme/corebridge/MainActivity$51;->val$i2:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$51;->val$str:Ljava/lang/String;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/phoneme/corebridge/MainActivity;->access$4400(Lcom/phoneme/corebridge/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v3

    :goto_25
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-boolean v1, v1, Lcom/phoneme/corebridge/MainActivity$51;->val$zIsCancelCommand:Z

    const-string v4, "LCDUI TextBox command completed id="

    const-string v5, " stateKey="

    const-string v6, " caret="

    if-nez v1, :cond_fc

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-boolean v1, v1, Lcom/phoneme/corebridge/MainActivity$51;->val$z:Z

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v6, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v6, v6, Lcom/phoneme/corebridge/MainActivity$51;->val$str:Ljava/lang/String;

    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v7, v7, Lcom/phoneme/corebridge/MainActivity$51;->val$str3:Ljava/lang/String;

    iget-object v8, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget v8, v8, Lcom/phoneme/corebridge/MainActivity$51;->val$i3:I

    invoke-virtual {v1, v6, v7, v8}, Lcom/phoneme/corebridge/MainActivity;->rememberTextBoxValue(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LCDUI TextBox navigation command dispatched; draft preserved id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget v7, v7, Lcom/phoneme/corebridge/MainActivity$51;->val$i:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " label="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v7, v7, Lcom/phoneme/corebridge/MainActivity$51;->val$lcdUiCommandCommandForId:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    if-nez v7, :cond_70

    const-string v7, ""

    goto :goto_76

    :cond_70
    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v7, v7, Lcom/phoneme/corebridge/MainActivity$51;->val$lcdUiCommandCommandForId:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget-object v7, v7, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    :goto_76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_b1

    :cond_7b
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v7, v7, Lcom/phoneme/corebridge/MainActivity$51;->val$str:Ljava/lang/String;

    iget-object v8, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v8, v8, Lcom/phoneme/corebridge/MainActivity$51;->val$str3:Ljava/lang/String;

    iget-object v9, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget v9, v9, Lcom/phoneme/corebridge/MainActivity$51;->val$i3:I

    invoke-virtual {v1, v7, v8, v9}, Lcom/phoneme/corebridge/MainActivity;->rememberTextBoxValue(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LCDUI TextBox committed length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v8, v8, Lcom/phoneme/corebridge/MainActivity$51;->val$str3:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget v7, v7, Lcom/phoneme/corebridge/MainActivity$51;->val$i3:I

    :goto_b1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v6, v6, Lcom/phoneme/corebridge/MainActivity$51;->val$str:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget v5, v5, Lcom/phoneme/corebridge/MainActivity$51;->val$i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # setter for: Lcom/phoneme/corebridge/MainActivity;->textBoxActionPending:Z
    invoke-static {v1, v3}, Lcom/phoneme/corebridge/MainActivity;->access$4702(Lcom/phoneme/corebridge/MainActivity;Z)Z

    if-nez v0, :cond_f0

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$3300(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    :cond_f0
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$3300(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void

    :cond_fc
    if-eqz v0, :cond_114

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$51;->val$str2:Ljava/lang/String;

    # setter for: Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->access$4202(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget v1, v1, Lcom/phoneme/corebridge/MainActivity$51;->val$i4:I

    # setter for: Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I
    invoke-static {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->access$4302(Lcom/phoneme/corebridge/MainActivity;I)I

    :cond_114
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI TextBox cancel restored length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$51;->val$str2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget v2, v2, Lcom/phoneme/corebridge/MainActivity$51;->val$i4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$51;->val$str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget v2, v2, Lcom/phoneme/corebridge/MainActivity$51;->val$i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$51$1;->this$1:Lcom/phoneme/corebridge/MainActivity$51;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # setter for: Lcom/phoneme/corebridge/MainActivity;->textBoxActionPending:Z
    invoke-static {v0, v3}, Lcom/phoneme/corebridge/MainActivity;->access$4702(Lcom/phoneme/corebridge/MainActivity;Z)Z

    return-void
.end method
