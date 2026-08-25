.class Lcom/phoneme/corebridge/MainActivity$44;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->rebuildFormItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

.field final synthetic val$zArr:[Z


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;[ZLcom/phoneme/corebridge/MainActivity$FormItemState;Landroid/widget/EditText;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$44;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$44;->val$zArr:[Z

    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$44;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iput-object p4, p0, Lcom/phoneme/corebridge/MainActivity$44;->val$editText:Landroid/widget/EditText;

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
    .registers 11

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$44;->val$zArr:[Z

    const/4 p3, 0x0

    aget-boolean p2, p2, p3

    if-nez p2, :cond_59

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$44;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->applyingFormText:Z
    invoke-static {p2}, Lcom/phoneme/corebridge/MainActivity;->access$5000(Lcom/phoneme/corebridge/MainActivity;)Z

    move-result p2

    if-nez p2, :cond_59

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$44;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {p2}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_1c

    goto :goto_59

    :cond_1c
    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$44;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    if-nez p1, :cond_23

    const-string p1, ""

    goto :goto_27

    :cond_23
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_27
    iput-object p1, p2, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$44;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget-object v4, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$44;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    if-gez p1, :cond_3a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_42

    :cond_3a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_42
    move v5, p1

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$44;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$44;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$4900(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/phoneme/corebridge/MainActivity$44$1;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/phoneme/corebridge/MainActivity$44$1;-><init>(Lcom/phoneme/corebridge/MainActivity$44;JLjava/lang/String;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_59
    :goto_59
    return-void
.end method
