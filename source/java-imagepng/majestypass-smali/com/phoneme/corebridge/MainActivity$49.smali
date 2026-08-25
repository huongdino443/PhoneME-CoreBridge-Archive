.class Lcom/phoneme/corebridge/MainActivity$49;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->requestStoragePermissionIfNeeded()V
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$49;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$49;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {p1}, Lcom/phoneme/corebridge/MainActivity;->requestStoragePermission()V

    return-void
.end method
