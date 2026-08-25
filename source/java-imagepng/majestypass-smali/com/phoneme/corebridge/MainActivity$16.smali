.class Lcom/phoneme/corebridge/MainActivity$16;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$16;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$16;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # invokes: Lcom/phoneme/corebridge/MainActivity;->updateSettingsScaleLabel()V
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$2700(Lcom/phoneme/corebridge/MainActivity;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
