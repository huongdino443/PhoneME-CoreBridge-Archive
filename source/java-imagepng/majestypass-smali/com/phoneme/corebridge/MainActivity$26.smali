.class Lcom/phoneme/corebridge/MainActivity$26;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phoneme/corebridge/GameSurfaceView$TextInputActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->buildUi()V
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

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$26;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextInputEditorAction()Z
    .registers 2

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$26;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {v0}, Lcom/phoneme/corebridge/MainActivity;->selectTextBoxEditorCommand()Z

    move-result v0

    return v0
.end method
