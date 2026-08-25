.class Lcom/phoneme/corebridge/MainActivity$22$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$22;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$22;

.field final synthetic val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$22;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$22$1;->this$1:Lcom/phoneme/corebridge/MainActivity$22;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$22$1;->val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$22$1;->this$1:Lcom/phoneme/corebridge/MainActivity$22;

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$22;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$22$1;->val$lcdUiCommand:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    invoke-virtual {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->dispatchNativeScreenCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V

    const/4 p1, 0x1

    return p1
.end method
