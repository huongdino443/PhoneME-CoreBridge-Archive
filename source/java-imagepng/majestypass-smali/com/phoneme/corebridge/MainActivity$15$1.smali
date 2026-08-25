.class Lcom/phoneme/corebridge/MainActivity$15$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$15;

.field final synthetic val$sizes:[[I


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$15;[[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$15$1;->this$1:Lcom/phoneme/corebridge/MainActivity$15;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$15$1;->val$sizes:[[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$15$1;->this$1:Lcom/phoneme/corebridge/MainActivity$15;

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$15;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->settingsWidthView:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$2500(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$15$1;->val$sizes:[[I

    aget-object v0, v0, p2

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$15$1;->this$1:Lcom/phoneme/corebridge/MainActivity$15;

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$15;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->settingsHeightView:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$2600(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$15$1;->val$sizes:[[I

    aget-object p2, v0, p2

    const/4 v0, 0x1

    aget p2, p2, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
