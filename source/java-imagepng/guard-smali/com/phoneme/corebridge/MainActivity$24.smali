.class Lcom/phoneme/corebridge/MainActivity$24;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->addTextBoxOptionsCommandButton(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$arrayList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$24;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$24;->val$arrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$24;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$24;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$24;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {v2, v1}, Lcom/phoneme/corebridge/MainActivity;->commandDisplayLabel(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_27
    const-string v2, "Ch\u1ecdn"

    :cond_29
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/phoneme/corebridge/MainActivity$24$1;

    invoke-direct {v3, p0, v1}, Lcom/phoneme/corebridge/MainActivity$24$1;-><init>(Lcom/phoneme/corebridge/MainActivity$24;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_d

    :cond_3a
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
