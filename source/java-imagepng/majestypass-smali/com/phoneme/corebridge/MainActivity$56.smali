.class Lcom/phoneme/corebridge/MainActivity$56;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->dispatchNativeScreenCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$56;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$56;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$5300(Lcom/phoneme/corebridge/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$56;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$5400(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$56;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$5400(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$56;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {v0}, Lcom/phoneme/corebridge/MainActivity;->returnToLauncher()V

    :cond_21
    return-void
.end method
