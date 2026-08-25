.class Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;-><init>(Lcom/phoneme/corebridge/MainActivity;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

.field final synthetic val$this$0:Lcom/phoneme/corebridge/MainActivity;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;Lcom/phoneme/corebridge/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$3;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$3;->val$this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_33

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_b

    goto :goto_33

    :cond_b
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$3;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    # getter for: Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->current:Ljava/io/File;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->access$500(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-nez p3, :cond_1e

    goto :goto_29

    :cond_1e
    iget-object p3, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$3;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    # setter for: Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->current:Ljava/io/File;
    invoke-static {p3, p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->access$502(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;Ljava/io/File;)Ljava/io/File;

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$3;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    invoke-virtual {p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->refresh()V

    goto :goto_32

    :cond_29
    :goto_29
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$3;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    # getter for: Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->dialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->access$600(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :goto_32
    return p2

    :cond_33
    :goto_33
    const/4 p1, 0x0

    return p1
.end method
