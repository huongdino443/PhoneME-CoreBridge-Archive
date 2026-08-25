.class Lcom/phoneme/corebridge/MainActivity$27;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phoneme/corebridge/GameSurfaceView$TextInputChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->buildUi()V
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$27;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextInputChanged(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$27;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$3200(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$27;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$3200(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_50

    :cond_14
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$27;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$3300(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$27;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const/4 v1, 0x1

    # setter for: Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z
    invoke-static {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->access$3402(Lcom/phoneme/corebridge/MainActivity;Z)Z

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$27;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$3300(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-nez p1, :cond_2c

    const-string p1, ""

    :cond_2c
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$27;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$3300(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$27;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$3300(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$27;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # setter for: Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z
    invoke-static {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->access$3402(Lcom/phoneme/corebridge/MainActivity;Z)Z

    :cond_50
    return-void
.end method
