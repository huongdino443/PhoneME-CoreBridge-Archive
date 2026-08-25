.class Lcom/phoneme/corebridge/MainActivity$15;
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$15;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "360 \u00d7 640"

    const-string v0, "480 \u00d7 800"

    const-string v1, "176 \u00d7 208"

    const-string v2, "240 \u00d7 320"

    const-string v3, "320 \u00d7 240"

    filled-new-array {v1, v2, v3, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    new-array v0, v0, [[I

    const/16 v1, 0xb0

    const/16 v2, 0xd0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xf0

    const/16 v2, 0x140

    filled-new-array {v1, v2}, [I

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    filled-new-array {v2, v1}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x168

    const/16 v2, 0x280

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x1e0

    const/16 v2, 0x320

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$15;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$15$1;

    invoke-direct {v2, p0, v0}, Lcom/phoneme/corebridge/MainActivity$15$1;-><init>(Lcom/phoneme/corebridge/MainActivity$15;[[I)V

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
