.class Lcom/phoneme/corebridge/MainActivity$34;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->deferUnknownScreenShown(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$i:I

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$34;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput p2, p0, Lcom/phoneme/corebridge/MainActivity$34;->val$i:I

    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$34;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity$34;->val$i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$34;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;
    invoke-static {v1}, Lcom/phoneme/corebridge/MainActivity;->access$3600(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$34;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;
    invoke-static {v1}, Lcom/phoneme/corebridge/MainActivity;->access$3700(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_2a

    :cond_1f
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$34;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity$34;->val$i:I

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$34;->val$str:Ljava/lang/String;

    const-string v3, "LCDUI deferred SCREEN_SHOWN fallback kind=Form"

    invoke-virtual {v0, v1, v2, v3}, Lcom/phoneme/corebridge/MainActivity;->renderLegacyFormScreen(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void
.end method
