.class Lcom/phoneme/corebridge/MainActivity$21;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->addGameLibraryEntry(Landroid/widget/LinearLayout;Landroid/app/AlertDialog;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$gameLibraryEntry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$21;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$21;->val$gameLibraryEntry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$21;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$21;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$900(Lcom/phoneme/corebridge/MainActivity;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$21;->val$gameLibraryEntry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->jarFileName:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$21;->this$0:Lcom/phoneme/corebridge/MainActivity;

    if-nez v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Game trong th\u01b0 vi\u1ec7n kh\u00f4ng c\u00f2n t\u1ed3n t\u1ea1i: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$21;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {p1}, Lcom/phoneme/corebridge/MainActivity;->loadGameLibrary()V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$21;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :cond_38
    # setter for: Lcom/phoneme/corebridge/MainActivity;->selectedFile:Ljava/io/File;
    invoke-static {v1, p1}, Lcom/phoneme/corebridge/MainActivity;->access$802(Lcom/phoneme/corebridge/MainActivity;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$21;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$21;->val$gameLibraryEntry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->id:Ljava/lang/String;

    # setter for: Lcom/phoneme/corebridge/MainActivity;->selectedGameScope:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->access$1002(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$21;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$1100(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$21;->val$gameLibraryEntry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->mainClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$21;->val$gameLibraryEntry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->lastUsed:J

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$21;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {v0}, Lcom/phoneme/corebridge/MainActivity;->saveGameLibrary()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$21;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->access$400(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0110\u00e3 ch\u1ecdn game l\u01b0u: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$21;->val$gameLibraryEntry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$21;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "M\u1edf game t\u1eeb th\u01b0 vi\u1ec7n: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$21;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$21;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {p1}, Lcom/phoneme/corebridge/MainActivity;->startSelectedGame()V

    return-void
.end method
