.class Lcom/phoneme/corebridge/MainActivity$54;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->dispatchNativeScreenCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$choiceRowStateFindFocusedRow:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

.field final synthetic val$j:J

.field final synthetic val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;JLcom/phoneme/corebridge/MainActivity$ChoiceRowState;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$54;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-wide p2, p0, Lcom/phoneme/corebridge/MainActivity$54;->val$j:J

    iput-object p4, p0, Lcom/phoneme/corebridge/MainActivity$54;->val$choiceRowStateFindFocusedRow:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iput-object p5, p0, Lcom/phoneme/corebridge/MainActivity$54;->val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$54;->val$j:J

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$54;->val$choiceRowStateFindFocusedRow:Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget v2, v2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->componentId:I

    invoke-static {v0, v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiFocusItem(JI)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$54;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$54;->val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v1, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->selectFormCommand(I)V

    return-void
.end method
