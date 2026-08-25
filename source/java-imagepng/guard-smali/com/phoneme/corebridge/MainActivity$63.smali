.class Lcom/phoneme/corebridge/MainActivity$63;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->startSelectedGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$file2:Ljava/io/File;

.field final synthetic val$launchCanvasHeight:I

.field final synthetic val$launchCanvasWidth:I

.field final synthetic val$strReplace:Ljava/lang/String;

.field final synthetic val$strTrim2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$63;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$strTrim2:Ljava/lang/String;

    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$file2:Ljava/io/File;

    iput-object p4, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$strReplace:Ljava/lang/String;

    iput p5, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$launchCanvasWidth:I

    iput p6, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$launchCanvasHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$strTrim2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide v1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$file2:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$strReplace:Ljava/lang/String;

    iget v5, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$launchCanvasWidth:I

    iget v6, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$launchCanvasHeight:I

    invoke-static/range {v1 .. v6}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeStartJar(JLjava/lang/String;Ljava/lang/String;II)I

    move-result v0

    goto :goto_37

    :cond_1f
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$4000(Lcom/phoneme/corebridge/MainActivity;)J

    move-result-wide v1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$file2:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$strTrim2:Ljava/lang/String;

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$strReplace:Ljava/lang/String;

    iget v6, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$launchCanvasWidth:I

    iget v7, p0, Lcom/phoneme/corebridge/MainActivity$63;->val$launchCanvasHeight:I

    invoke-static/range {v1 .. v7}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeStartJarScoped(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    :goto_37
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$63;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$63$1;

    invoke-direct {v2, p0, v0}, Lcom/phoneme/corebridge/MainActivity$63$1;-><init>(Lcom/phoneme/corebridge/MainActivity$63;I)V

    invoke-virtual {v1, v2}, Lcom/phoneme/corebridge/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
