.class Lcom/phoneme/corebridge/MainActivity$7;
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$7;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$7;->val$entry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$7;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$7;->val$entry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    # invokes: Lcom/phoneme/corebridge/MainActivity;->launchInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
    invoke-static {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->access$1800(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    const/4 p1, 0x1

    return p1
.end method
