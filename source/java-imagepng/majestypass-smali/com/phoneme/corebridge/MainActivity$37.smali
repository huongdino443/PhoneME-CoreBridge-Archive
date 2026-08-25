.class Lcom/phoneme/corebridge/MainActivity$37;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->ensureTextBoxOverlay()V
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # invokes: Lcom/phoneme/corebridge/MainActivity;->updateTextBoxCharacterCount()V
    invoke-static {p2}, Lcom/phoneme/corebridge/MainActivity;->access$3800(Lcom/phoneme/corebridge/MainActivity;)V

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z
    invoke-static {p2}, Lcom/phoneme/corebridge/MainActivity;->access$3400(Lcom/phoneme/corebridge/MainActivity;)Z

    move-result p2

    if-nez p2, :cond_91

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I
    invoke-static {p2}, Lcom/phoneme/corebridge/MainActivity;->access$3900(Lcom/phoneme/corebridge/MainActivity;)I

    move-result p2

    if-ltz p2, :cond_91

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {p2}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_22

    goto :goto_91

    :cond_22
    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const/4 p3, 0x1

    # setter for: Lcom/phoneme/corebridge/MainActivity;->textBoxEditorDirty:Z
    invoke-static {p2, p3}, Lcom/phoneme/corebridge/MainActivity;->access$4102(Lcom/phoneme/corebridge/MainActivity;Z)Z

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;
    invoke-static {p2}, Lcom/phoneme/corebridge/MainActivity;->access$3300(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    if-gez p2, :cond_38

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_38
    iget-object p3, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    # setter for: Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;
    invoke-static {p3, p4}, Lcom/phoneme/corebridge/MainActivity;->access$4202(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p3, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # setter for: Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I
    invoke-static {p3, p2}, Lcom/phoneme/corebridge/MainActivity;->access$4302(Lcom/phoneme/corebridge/MainActivity;I)I

    iget-object p3, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {p3}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide p3

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$3900(Lcom/phoneme/corebridge/MainActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/phoneme/corebridge/MainActivity;->access$4200(Lcom/phoneme/corebridge/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p4, v0, v1, p2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiSetText(JILjava/lang/String;I)V

    iget-object p3, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LCDUI TextBox draft changed length="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " caret="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " stateKey="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$37;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;
    invoke-static {p2}, Lcom/phoneme/corebridge/MainActivity;->access$4400(Lcom/phoneme/corebridge/MainActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_91
    :goto_91
    return-void
.end method
