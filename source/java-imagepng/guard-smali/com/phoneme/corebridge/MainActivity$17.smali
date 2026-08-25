.class Lcom/phoneme/corebridge/MainActivity$17;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->showAppSettings(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$17;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$17;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->settingsPositionView:Landroid/widget/Button;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$2800(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Gi\u1eefa"

    const-string v2, "D\u01b0\u1edbi"

    const-string v3, "Tr\u00ean"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$17;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->settingsPositionView:Landroid/widget/Button;
    invoke-static {v3}, Lcom/phoneme/corebridge/MainActivity;->access$2800(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Lcom/phoneme/corebridge/MainActivity;->showSettingsChoices(Landroid/widget/Button;[Ljava/lang/String;[II)V
    invoke-static {p1, v0, v1, v2, v3}, Lcom/phoneme/corebridge/MainActivity;->access$2900(Lcom/phoneme/corebridge/MainActivity;Landroid/widget/Button;[Ljava/lang/String;[II)V

    return-void
.end method
