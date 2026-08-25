.class final Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phoneme/corebridge/GameSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoreInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/GameSurfaceView;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/GameSurfaceView;)V
    .locals 1

    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 0

    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->resetState()V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    iget-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->hostKeyboardActive:Z
    invoke-static {p2}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1700(Lcom/phoneme/corebridge/GameSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->sendHostText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 v0, 0x0

    # invokes: Lcom/phoneme/corebridge/GameSurfaceView;->replaceInputRange(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    invoke-static {p2, p1, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$700(Lcom/phoneme/corebridge/GameSurfaceView;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->hostKeyboardActive:Z
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1700(Lcom/phoneme/corebridge/GameSurfaceView;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->sendHostBackspace()V

    const/4 p1, 0x1

    return p1

    :cond_d
    # invokes: Lcom/phoneme/corebridge/GameSurfaceView;->deleteInputRange(II)V
    invoke-static {v0, p1, p2}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1200(Lcom/phoneme/corebridge/GameSurfaceView;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public finishComposingText()Z
    .locals 3

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->inputLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$800(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    const/4 v2, 0x0

    # setter for: Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I
    invoke-static {v1, v2}, Lcom/phoneme/corebridge/GameSurfaceView;->access$902(Lcom/phoneme/corebridge/GameSurfaceView;I)I

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I
    invoke-static {v1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1100(Lcom/phoneme/corebridge/GameSurfaceView;)I

    move-result v2

    # setter for: Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I
    invoke-static {v1, v2}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1002(Lcom/phoneme/corebridge/GameSurfaceView;I)I

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public performEditorAction(I)Z
    .locals 0

    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputActionListener:Lcom/phoneme/corebridge/GameSurfaceView$TextInputActionListener;
    invoke-static {p1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1500(Lcom/phoneme/corebridge/GameSurfaceView;)Lcom/phoneme/corebridge/GameSurfaceView$TextInputActionListener;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/phoneme/corebridge/GameSurfaceView$TextInputActionListener;->onTextInputEditorAction()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method resetState()V
    .locals 3

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->inputLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$800(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    const/4 v2, 0x0

    # setter for: Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I
    invoke-static {v1, v2}, Lcom/phoneme/corebridge/GameSurfaceView;->access$902(Lcom/phoneme/corebridge/GameSurfaceView;I)I

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I
    invoke-static {v1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1100(Lcom/phoneme/corebridge/GameSurfaceView;)I

    move-result v2

    # setter for: Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I
    invoke-static {v1, v2}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1002(Lcom/phoneme/corebridge/GameSurfaceView;I)I

    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->hostKeyboardActive:Z
    invoke-static {v1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1700(Lcom/phoneme/corebridge/GameSurfaceView;)Z

    move-result v2

    if-eqz v2, :cond_1e

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eqz v2, :cond_19

    invoke-virtual {v1, v3, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v0

    :cond_19
    invoke-virtual {v1, v3, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return v0

    :cond_1d
    return v0

    :cond_1e
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_4c

    :cond_27
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x43

    const/4 v3, 0x0

    if-ne v1, v2, :cond_36

    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # invokes: Lcom/phoneme/corebridge/GameSurfaceView;->deleteInputRange(II)V
    invoke-static {p1, v0, v3}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1200(Lcom/phoneme/corebridge/GameSurfaceView;II)V

    return v0

    :cond_36
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    if-eqz v1, :cond_47

    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/phoneme/corebridge/GameSurfaceView;->replaceInputRange(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    invoke-static {p1, v1, v3}, Lcom/phoneme/corebridge/GameSurfaceView;->access$700(Lcom/phoneme/corebridge/GameSurfaceView;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    return v0

    :cond_47
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_4c
    :goto_4c
    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 3

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->inputLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$800(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;
    invoke-static {v1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1300(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    # setter for: Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I
    invoke-static {v1, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1002(Lcom/phoneme/corebridge/GameSurfaceView;I)I

    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I
    invoke-static {p1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1000(Lcom/phoneme/corebridge/GameSurfaceView;)I

    move-result p1

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;
    invoke-static {v1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1300(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I
    invoke-static {p2}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1000(Lcom/phoneme/corebridge/GameSurfaceView;)I

    move-result v1

    sub-int/2addr p1, v1

    # setter for: Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I
    invoke-static {p2, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$902(Lcom/phoneme/corebridge/GameSurfaceView;I)I

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    iget-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->hostKeyboardActive:Z
    invoke-static {p2}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1700(Lcom/phoneme/corebridge/GameSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->sendHostText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 v0, 0x1

    # invokes: Lcom/phoneme/corebridge/GameSurfaceView;->replaceInputRange(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    invoke-static {p2, p1, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$700(Lcom/phoneme/corebridge/GameSurfaceView;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    return v0
.end method

.method public setSelection(II)Z
    .locals 2

    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->inputLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$800(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1300(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    # setter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I
    invoke-static {v0, p2}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1102(Lcom/phoneme/corebridge/GameSurfaceView;I)I

    iget-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I
    invoke-static {p2}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1100(Lcom/phoneme/corebridge/GameSurfaceView;)I

    move-result v0

    # setter for: Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I
    invoke-static {p2, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1002(Lcom/phoneme/corebridge/GameSurfaceView;I)I

    iget-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # setter for: Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I
    invoke-static {p2, v1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$902(Lcom/phoneme/corebridge/GameSurfaceView;I)I

    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_3d

    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;
    invoke-static {p1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1300(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1100(Lcom/phoneme/corebridge/GameSurfaceView;)I

    move-result v0

    # invokes: Lcom/phoneme/corebridge/GameSurfaceView;->publishInputState(Ljava/lang/String;I)V
    invoke-static {p1, p2, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1400(Lcom/phoneme/corebridge/GameSurfaceView;Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :catchall_3d
    move-exception p2

    :try_start_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p2
.end method
