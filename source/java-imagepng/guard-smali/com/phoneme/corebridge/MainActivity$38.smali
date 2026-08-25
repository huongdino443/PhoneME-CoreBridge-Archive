.class Lcom/phoneme/corebridge/MainActivity$38;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->ensureTextBoxOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$38;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_13

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$38;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {p1}, Lcom/phoneme/corebridge/MainActivity;->findEditorActionCommand()I

    move-result p1

    if-gez p1, :cond_c

    goto :goto_13

    :cond_c
    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity$38;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {p2, p1}, Lcom/phoneme/corebridge/MainActivity;->selectTextBoxCommand(I)V

    const/4 p1, 0x1

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return p1
.end method
