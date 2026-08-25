.class Lcom/phoneme/corebridge/MainActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->addFormCommandButton(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$6;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$6;->val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$6;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI Form command click id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$6;->val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v1, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$6;->val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$6;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I
    invoke-static {v1}, Lcom/phoneme/corebridge/MainActivity;->access$1600(Lcom/phoneme/corebridge/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$6;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I
    invoke-static {v1}, Lcom/phoneme/corebridge/MainActivity;->access$1700(Lcom/phoneme/corebridge/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$6;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$6;->val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    invoke-virtual {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->dispatchNativeScreenCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V

    return-void
.end method
