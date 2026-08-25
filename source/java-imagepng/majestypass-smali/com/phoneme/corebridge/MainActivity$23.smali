.class Lcom/phoneme/corebridge/MainActivity$23;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->addTextBoxCommandButton(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;Z)V
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$23;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$23;->val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$23;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$23;->val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v0, v0, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->selectTextBoxCommand(I)V

    return-void
.end method
