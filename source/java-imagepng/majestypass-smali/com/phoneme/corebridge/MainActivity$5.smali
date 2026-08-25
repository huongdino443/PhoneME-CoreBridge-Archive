.class Lcom/phoneme/corebridge/MainActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->addFormChoiceRow(Lcom/phoneme/corebridge/MainActivity$FormItemState;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

.field final synthetic val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Lcom/phoneme/corebridge/MainActivity$FormItemState;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$5;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$5;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$5;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$5;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget p1, p1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_23

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$5;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$1500(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$5;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget v0, v0, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$5;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$5;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    # invokes: Lcom/phoneme/corebridge/MainActivity;->showFormChoicePopup(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, p1}, Lcom/phoneme/corebridge/MainActivity;->access$1400(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V

    return-void

    :cond_23
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$5;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget p1, p1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$5;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget-boolean p1, p1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->selected:Z

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$5;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$1500(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$5;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget v1, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$5;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$5;->val$formItemState:Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$5;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    # invokes: Lcom/phoneme/corebridge/MainActivity;->applyFormChoiceSelection(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Z)V
    invoke-static {v1, v2, p1, v3, v0}, Lcom/phoneme/corebridge/MainActivity;->access$1300(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Z)V

    return-void
.end method
