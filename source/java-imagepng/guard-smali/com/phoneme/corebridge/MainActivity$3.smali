.class Lcom/phoneme/corebridge/MainActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->showFormChoicePopup(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$item:Lcom/phoneme/corebridge/MainActivity$FormItemState;

.field final synthetic val$options:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Ljava/util/ArrayList;Lcom/phoneme/corebridge/MainActivity$FormItemState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$3;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$3;->val$options:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$3;->val$item:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-ltz p2, :cond_1f

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$3;->val$options:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1f

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$3;->val$options:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$3;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$3;->val$item:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$3;->val$options:Ljava/util/ArrayList;

    const/4 v3, 0x1

    # invokes: Lcom/phoneme/corebridge/MainActivity;->applyFormChoiceSelection(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Z)V
    invoke-static {v0, v1, v2, p2, v3}, Lcom/phoneme/corebridge/MainActivity;->access$1300(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1f
    return-void
.end method
