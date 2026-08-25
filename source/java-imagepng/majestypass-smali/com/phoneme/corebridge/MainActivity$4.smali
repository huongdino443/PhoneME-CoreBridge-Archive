.class Lcom/phoneme/corebridge/MainActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->addFormChoicePopupSummary(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$item:Lcom/phoneme/corebridge/MainActivity$FormItemState;

.field final synthetic val$rows:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$4;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$4;->val$item:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$4;->val$rows:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$4;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$4;->val$item:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$4;->val$rows:Ljava/util/ArrayList;

    # invokes: Lcom/phoneme/corebridge/MainActivity;->showFormChoicePopup(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V
    invoke-static {p1, v0, v1}, Lcom/phoneme/corebridge/MainActivity;->access$1400(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V

    return-void
.end method
