.class Lcom/phoneme/corebridge/MainActivity$40;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->handleSyntheticTextBoxCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$i:I

.field final synthetic val$i2:I

.field final synthetic val$iMax:I

.field final synthetic val$j:J

.field final synthetic val$str2:Ljava/lang/String;

.field final synthetic val$str3:Ljava/lang/String;

.field final synthetic val$zIsCancelCommand:Z


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;JILjava/lang/String;IIZLjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$40;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-wide p2, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$j:J

    iput p4, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$i2:I

    iput-object p5, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$str3:Ljava/lang/String;

    iput p6, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$iMax:I

    iput p7, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$i:I

    iput-boolean p8, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$zIsCancelCommand:Z

    iput-object p9, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$str2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$j:J

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$i2:I

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$str3:Ljava/lang/String;

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$iMax:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiSetText(JILjava/lang/String;I)V

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$j:J

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity$40;->val$i:I

    invoke-static {v0, v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiSelectCommand(JI)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$40;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$4500(Lcom/phoneme/corebridge/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$40$1;

    invoke-direct {v1, p0}, Lcom/phoneme/corebridge/MainActivity$40$1;-><init>(Lcom/phoneme/corebridge/MainActivity$40;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_30

    :catch_21
    move-exception v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$40;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/phoneme/corebridge/MainActivity;->access$4500(Lcom/phoneme/corebridge/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$40$2;

    invoke-direct {v2, p0, v0}, Lcom/phoneme/corebridge/MainActivity$40$2;-><init>(Lcom/phoneme/corebridge/MainActivity$40;Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_30
    return-void
.end method
