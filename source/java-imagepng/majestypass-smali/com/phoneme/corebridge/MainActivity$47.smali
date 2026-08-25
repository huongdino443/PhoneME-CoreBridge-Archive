.class Lcom/phoneme/corebridge/MainActivity$47;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->rebuildListOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

.field final synthetic val$iFindListItemCommandId:I


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$47;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$47;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iput p3, p0, Lcom/phoneme/corebridge/MainActivity$47;->val$iFindListItemCommandId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$47;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$47;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity$47;->val$iFindListItemCommandId:I

    invoke-virtual {p1, v0, v1}, Lcom/phoneme/corebridge/MainActivity;->selectListItemCommand(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;I)V

    return-void
.end method
