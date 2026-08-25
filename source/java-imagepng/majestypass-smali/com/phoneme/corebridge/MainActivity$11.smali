.class Lcom/phoneme/corebridge/MainActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->showSettingsChoices(Landroid/widget/Button;[Ljava/lang/String;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$keys:[I

.field final synthetic val$target:Landroid/widget/Button;

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Landroid/widget/Button;[Ljava/lang/String;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$11;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$11;->val$target:Landroid/widget/Button;

    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$11;->val$values:[Ljava/lang/String;

    iput-object p4, p0, Lcom/phoneme/corebridge/MainActivity$11;->val$keys:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$11;->val$target:Landroid/widget/Button;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$11;->val$values:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$11;->val$target:Landroid/widget/Button;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$11;->val$keys:[I

    aget p2, v1, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
