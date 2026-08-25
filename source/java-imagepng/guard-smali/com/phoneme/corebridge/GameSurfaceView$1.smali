.class Lcom/phoneme/corebridge/GameSurfaceView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/GameSurfaceView;->showTextInputKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/GameSurfaceView;

.field final synthetic val$manager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/GameSurfaceView;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView$1;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    iput-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView$1;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$1;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$000(Lcom/phoneme/corebridge/GameSurfaceView;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$1;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->hostKeyboardActive:Z
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1700(Lcom/phoneme/corebridge/GameSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_19

    :cond_11
    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$1;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputEditable:Z
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$100(Lcom/phoneme/corebridge/GameSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_19
    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$1;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView$1;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_21
    return-void
.end method
