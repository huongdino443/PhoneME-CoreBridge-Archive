.class Lcom/phoneme/corebridge/MainActivity$13;
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$13;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$13;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->appSettingsFirstLaunch:Z
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$2300(Lcom/phoneme/corebridge/MainActivity;)Z

    move-result p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$13;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # invokes: Lcom/phoneme/corebridge/MainActivity;->applyAppSettingsFromViews()V
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$2400(Lcom/phoneme/corebridge/MainActivity;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$13;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # invokes: Lcom/phoneme/corebridge/MainActivity;->hideAppSettings()V
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$2200(Lcom/phoneme/corebridge/MainActivity;)V

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$13;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {p1}, Lcom/phoneme/corebridge/MainActivity;->startSelectedGame()V

    :cond_17
    return-void
.end method
