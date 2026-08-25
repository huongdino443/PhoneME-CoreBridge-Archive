.class Lcom/phoneme/corebridge/GameSurfaceView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/GameSurfaceView;->startRendering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/GameSurfaceView;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/GameSurfaceView;)V
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView$4;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$4;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # invokes: Lcom/phoneme/corebridge/GameSurfaceView;->runSchedulerProbe()V
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$1600(Lcom/phoneme/corebridge/GameSurfaceView;)V

    return-void
.end method
