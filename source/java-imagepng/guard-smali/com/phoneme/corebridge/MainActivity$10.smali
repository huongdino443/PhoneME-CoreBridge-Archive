.class Lcom/phoneme/corebridge/MainActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->confirmUninstallInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$10;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$10;->val$entry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$10;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$10;->val$entry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    # invokes: Lcom/phoneme/corebridge/MainActivity;->uninstallInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
    invoke-static {p1, p2}, Lcom/phoneme/corebridge/MainActivity;->access$2100(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    return-void
.end method
