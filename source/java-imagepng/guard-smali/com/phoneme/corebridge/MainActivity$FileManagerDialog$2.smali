.class Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$2;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$2;->val$this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$2;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    invoke-virtual {p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->refresh()V

    return-void
.end method
