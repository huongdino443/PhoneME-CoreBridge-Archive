.class Lcom/phoneme/corebridge/MainActivity$50;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->requestStoragePermissionIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$alertDialogCreate:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Landroid/app/AlertDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$50;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$50;->val$alertDialogCreate:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$50;->val$alertDialogCreate:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_c
    return-void
.end method
