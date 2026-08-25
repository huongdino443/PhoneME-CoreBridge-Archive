.class Lcom/phoneme/corebridge/MainActivity$58;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->selectFormCommand(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$i:I

.field final synthetic val$j:J


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;JI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$58;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-wide p2, p0, Lcom/phoneme/corebridge/MainActivity$58;->val$j:J

    iput p4, p0, Lcom/phoneme/corebridge/MainActivity$58;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$58;->val$j:J

    invoke-static {v0, v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeSchedulerSnapshot(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/phoneme/corebridge/MainActivity$58;->val$j:J

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity$58;->val$i:I

    invoke-static {v1, v2, v3}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiSelectCommand(JI)V

    iget-wide v1, p0, Lcom/phoneme/corebridge/MainActivity$58;->val$j:J

    invoke-static {v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeSchedulerSnapshot(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$58;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/phoneme/corebridge/MainActivity;->access$4500(Lcom/phoneme/corebridge/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/phoneme/corebridge/MainActivity$58$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/phoneme/corebridge/MainActivity$58$1;-><init>(Lcom/phoneme/corebridge/MainActivity$58;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_31

    :catch_22
    move-exception v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$58;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/phoneme/corebridge/MainActivity;->access$4500(Lcom/phoneme/corebridge/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$58$2;

    invoke-direct {v2, p0, v0}, Lcom/phoneme/corebridge/MainActivity$58$2;-><init>(Lcom/phoneme/corebridge/MainActivity$58;Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_31
    return-void
.end method
