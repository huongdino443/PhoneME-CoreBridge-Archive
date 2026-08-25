.class Lcom/phoneme/corebridge/MainActivity$25;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phoneme/corebridge/GameSurfaceView$FrameLogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->buildUi()V
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$25;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameLog(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$25;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {v0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendFrameTelemetry(Ljava/lang/String;)V

    return-void
.end method
