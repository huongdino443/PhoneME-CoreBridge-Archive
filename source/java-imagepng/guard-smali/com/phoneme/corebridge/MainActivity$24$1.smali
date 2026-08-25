.class Lcom/phoneme/corebridge/MainActivity$24$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$24;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$24;

.field final synthetic val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$24;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$24$1;->this$1:Lcom/phoneme/corebridge/MainActivity$24;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$24$1;->val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$24$1;->this$1:Lcom/phoneme/corebridge/MainActivity$24;

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$24;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$24$1;->val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v0, v0, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->selectTextBoxCommand(I)V

    const/4 p1, 0x1

    return p1
.end method
