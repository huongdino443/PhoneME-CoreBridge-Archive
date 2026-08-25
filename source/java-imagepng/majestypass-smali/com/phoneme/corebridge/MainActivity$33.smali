.class Lcom/phoneme/corebridge/MainActivity$33;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->completeSyntheticTextBoxCommand(ZLjava/lang/String;Ljava/lang/String;I)V
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$33;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$33;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const/4 v1, 0x0

    # setter for: Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z
    invoke-static {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->access$3502(Lcom/phoneme/corebridge/MainActivity;Z)Z

    return-void
.end method
