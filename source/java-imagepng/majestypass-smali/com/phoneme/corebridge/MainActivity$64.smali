.class Lcom/phoneme/corebridge/MainActivity$64;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->buildUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$64;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$64;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v2, "Tho\u00e1t"

    invoke-interface {v1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$64$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/phoneme/corebridge/MainActivity$64$1;-><init>(Lcom/phoneme/corebridge/MainActivity$64;I)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v2, "L\u01b0u log"

    invoke-interface {v1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$64$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/phoneme/corebridge/MainActivity$64$1;-><init>(Lcom/phoneme/corebridge/MainActivity$64;I)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v2, "B\u00e0n ph\u00edm \u1ea3o"

    invoke-interface {v1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$64$1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/phoneme/corebridge/MainActivity$64$1;-><init>(Lcom/phoneme/corebridge/MainActivity$64;I)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
