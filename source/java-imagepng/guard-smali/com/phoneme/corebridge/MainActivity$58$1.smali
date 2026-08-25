.class Lcom/phoneme/corebridge/MainActivity$58$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$58;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$58;

.field final synthetic val$strNativeSchedulerSnapshot:Ljava/lang/String;

.field final synthetic val$strNativeSchedulerSnapshot2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$58;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$58$1;->this$1:Lcom/phoneme/corebridge/MainActivity$58;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$58$1;->val$strNativeSchedulerSnapshot:Ljava/lang/String;

    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$58$1;->val$strNativeSchedulerSnapshot2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$58$1;->this$1:Lcom/phoneme/corebridge/MainActivity$58;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$58;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI command scheduler before id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$58$1;->this$1:Lcom/phoneme/corebridge/MainActivity$58;

    iget v2, v2, Lcom/phoneme/corebridge/MainActivity$58;->val$i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$58$1;->this$1:Lcom/phoneme/corebridge/MainActivity$58;

    iget-object v3, v3, Lcom/phoneme/corebridge/MainActivity$58;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity$58$1;->val$strNativeSchedulerSnapshot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/phoneme/corebridge/MainActivity;->compactSchedulerSnapshot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$58$1;->this$1:Lcom/phoneme/corebridge/MainActivity$58;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$58;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LCDUI command scheduler after id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$58$1;->this$1:Lcom/phoneme/corebridge/MainActivity$58;

    iget v3, v3, Lcom/phoneme/corebridge/MainActivity$58;->val$i:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$58$1;->this$1:Lcom/phoneme/corebridge/MainActivity$58;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$58;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$58$1;->val$strNativeSchedulerSnapshot2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/phoneme/corebridge/MainActivity;->compactSchedulerSnapshot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method
