.class Lcom/phoneme/corebridge/MainActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->showInstalledAppMenu(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$entry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$8;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$8;->val$entry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$8;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$8;->val$entry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    # invokes: Lcom/phoneme/corebridge/MainActivity;->selectInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)Z
    invoke-static {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->access$1900(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$8;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$8;->val$entry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    const/4 v1, 0x0

    # invokes: Lcom/phoneme/corebridge/MainActivity;->showAppSettings(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Z)V
    invoke-static {p1, v0, v1}, Lcom/phoneme/corebridge/MainActivity;->access$1200(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Z)V

    :cond_12
    const/4 p1, 0x1

    return p1
.end method
