.class Lcom/phoneme/corebridge/MainActivity$55;
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

.field final synthetic val$str2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$55;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$55;->val$str2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$55;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$55;->val$str2:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, "Program List D\u1eebng native launcher command"

    invoke-virtual {v0, v1, v2, v3}, Lcom/phoneme/corebridge/MainActivity;->terminalizeCloneHostState(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
