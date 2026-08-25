.class Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$1;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$1;->val$this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$1;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    # getter for: Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->current:Ljava/io/File;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->access$500(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1d

    :cond_13
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$1;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    # setter for: Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->current:Ljava/io/File;
    invoke-static {v0, p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->access$502(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;Ljava/io/File;)Ljava/io/File;

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$1;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    invoke-virtual {p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->refresh()V

    :cond_1d
    :goto_1d
    return-void
.end method
