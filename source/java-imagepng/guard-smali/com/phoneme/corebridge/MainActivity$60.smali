.class Lcom/phoneme/corebridge/MainActivity$60;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->selectListRow(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

.field final synthetic val$j:J


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;JLcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$60;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-wide p2, p0, Lcom/phoneme/corebridge/MainActivity$60;->val$j:J

    iput-object p4, p0, Lcom/phoneme/corebridge/MainActivity$60;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$60;->val$j:J

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$60;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget v2, v2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->componentId:I

    invoke-static {v0, v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiFocusItem(JI)V

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$60;->val$j:J

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$60;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget v2, v2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->componentId:I

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$60;->val$choiceRowState:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget v3, v3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiSetChoice(JIII)V

    return-void
.end method
