.class Lcom/phoneme/corebridge/MainActivity$51;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->selectTextBoxCommand(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$i:I

.field final synthetic val$i2:I

.field final synthetic val$i3:I

.field final synthetic val$i4:I

.field final synthetic val$j:J

.field final synthetic val$lcdUiCommandCommandForId:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

.field final synthetic val$str:Ljava/lang/String;

.field final synthetic val$str2:Ljava/lang/String;

.field final synthetic val$str3:Ljava/lang/String;

.field final synthetic val$z:Z

.field final synthetic val$zIsCancelCommand:Z


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;ZZJILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$zIsCancelCommand:Z

    iput-boolean p3, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$z:Z

    iput-wide p4, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$j:J

    iput p6, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$i2:I

    iput-object p7, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$str2:Ljava/lang/String;

    iput-object p8, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$str3:Ljava/lang/String;

    iput p9, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$i4:I

    iput p10, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$i3:I

    iput p11, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$i:I

    iput-object p12, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$str:Ljava/lang/String;

    iput-object p13, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$lcdUiCommandCommandForId:Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$zIsCancelCommand:Z

    if-nez v0, :cond_8

    iget-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$z:Z

    if-nez v1, :cond_1d

    :cond_8
    iget-wide v1, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$j:J

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$i2:I

    if-eqz v0, :cond_11

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$str2:Ljava/lang/String;

    goto :goto_13

    :cond_11
    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$str3:Ljava/lang/String;

    :goto_13
    if-eqz v0, :cond_18

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$i4:I

    goto :goto_1a

    :cond_18
    iget v0, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$i3:I

    :goto_1a
    invoke-static {v1, v2, v3, v4, v0}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiSetText(JILjava/lang/String;I)V

    :cond_1d
    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$j:J

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity$51;->val$i:I

    invoke-static {v0, v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiSelectCommand(JI)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$4500(Lcom/phoneme/corebridge/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$51$1;

    invoke-direct {v1, p0}, Lcom/phoneme/corebridge/MainActivity$51$1;-><init>(Lcom/phoneme/corebridge/MainActivity$51;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_42

    :catch_33
    move-exception v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$51;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/phoneme/corebridge/MainActivity;->access$4500(Lcom/phoneme/corebridge/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$51$2;

    invoke-direct {v2, p0, v0}, Lcom/phoneme/corebridge/MainActivity$51$2;-><init>(Lcom/phoneme/corebridge/MainActivity$51;Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_42
    return-void
.end method
