.class Lcom/phoneme/corebridge/GameSurfaceView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/GameSurfaceView;->publishInputState(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/GameSurfaceView;

.field final synthetic val$caret:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/GameSurfaceView;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView$3;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    iput-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView$3;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/phoneme/corebridge/GameSurfaceView$3;->val$caret:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView$3;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputChangeListener:Lcom/phoneme/corebridge/GameSurfaceView$TextInputChangeListener;
    invoke-static {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->access$600(Lcom/phoneme/corebridge/GameSurfaceView;)Lcom/phoneme/corebridge/GameSurfaceView$TextInputChangeListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView$3;->this$0:Lcom/phoneme/corebridge/GameSurfaceView;

    # getter for: Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z
    invoke-static {v1}, Lcom/phoneme/corebridge/GameSurfaceView;->access$000(Lcom/phoneme/corebridge/GameSurfaceView;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView$3;->val$text:Ljava/lang/String;

    iget v2, p0, Lcom/phoneme/corebridge/GameSurfaceView$3;->val$caret:I

    invoke-interface {v0, v1, v2}, Lcom/phoneme/corebridge/GameSurfaceView$TextInputChangeListener;->onTextInputChanged(Ljava/lang/String;I)V

    :cond_17
    return-void
.end method
