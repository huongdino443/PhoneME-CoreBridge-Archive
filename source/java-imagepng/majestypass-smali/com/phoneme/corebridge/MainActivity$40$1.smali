.class Lcom/phoneme/corebridge/MainActivity$40$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$40;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$40;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$40;)V
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$40$1;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$40$1;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$40;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$40$1;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    iget-boolean v1, v1, Lcom/phoneme/corebridge/MainActivity$40;->val$zIsCancelCommand:Z

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$40$1;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$40;->val$str2:Ljava/lang/String;

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$40$1;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    iget-object v3, v3, Lcom/phoneme/corebridge/MainActivity$40;->val$str3:Ljava/lang/String;

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity$40$1;->this$1:Lcom/phoneme/corebridge/MainActivity$40;

    iget v4, v4, Lcom/phoneme/corebridge/MainActivity$40;->val$iMax:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phoneme/corebridge/MainActivity;->completeSyntheticTextBoxCommand(ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
