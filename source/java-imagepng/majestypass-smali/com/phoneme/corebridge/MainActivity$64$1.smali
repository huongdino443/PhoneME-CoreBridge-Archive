.class Lcom/phoneme/corebridge/MainActivity$64$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$64;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity$64;

.field final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$64;I)V
    .registers 3

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$64$1;->this$0:Lcom/phoneme/corebridge/MainActivity$64;

    iput p2, p0, Lcom/phoneme/corebridge/MainActivity$64$1;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$64$1;->this$0:Lcom/phoneme/corebridge/MainActivity$64;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$64;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity$64$1;->val$action:I

    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->handleFloatingMenuAction(I)V

    const/4 v0, 0x1

    return v0
.end method
