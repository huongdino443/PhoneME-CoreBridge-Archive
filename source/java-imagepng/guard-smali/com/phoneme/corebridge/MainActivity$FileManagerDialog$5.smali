.class Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->addEntry(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$zIsDirectory:Z


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;ZLjava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iput-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->val$zIsDirectory:Z

    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->val$zIsDirectory:Z

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->val$file:Ljava/io/File;

    # setter for: Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->current:Ljava/io/File;
    invoke-static {v0, p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->access$502(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;Ljava/io/File;)Ljava/io/File;

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    invoke-virtual {p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->refresh()V

    return-void

    :cond_11
    iget-object p1, v0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->val$file:Ljava/io/File;

    invoke-virtual {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->resolveLaunchFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    if-nez p1, :cond_38

    iget-object p1, v0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kh\u00f4ng t\u00ecm th\u1ea5y JAR \u0111\u01b0\u1ee3c JAD tr\u1ecf t\u1edbi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->val$file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_38
    iget-object v0, v0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {v0, p1}, Lcom/phoneme/corebridge/MainActivity;->detectMainClass(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iget-object v1, v1, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->val$file:Ljava/io/File;

    invoke-virtual {v1, p1, v2, v0}, Lcom/phoneme/corebridge/MainActivity;->importGameToLibrary(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # invokes: Lcom/phoneme/corebridge/MainActivity;->renderInstalledApps()V
    invoke-static {v2}, Lcom/phoneme/corebridge/MainActivity;->access$700(Lcom/phoneme/corebridge/MainActivity;)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    if-nez v1, :cond_57

    move-object v3, p1

    goto :goto_66

    :cond_57
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iget-object v4, v4, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;
    invoke-static {v4}, Lcom/phoneme/corebridge/MainActivity;->access$900(Lcom/phoneme/corebridge/MainActivity;)Ljava/io/File;

    move-result-object v4

    iget-object v5, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->jarFileName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_66
    # setter for: Lcom/phoneme/corebridge/MainActivity;->selectedFile:Ljava/io/File;
    invoke-static {v2, v3}, Lcom/phoneme/corebridge/MainActivity;->access$802(Lcom/phoneme/corebridge/MainActivity;Ljava/io/File;)Ljava/io/File;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const-string v3, ""

    if-nez v1, :cond_73

    move-object v4, v3

    goto :goto_75

    :cond_73
    iget-object v4, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->id:Ljava/lang/String;

    :goto_75
    # setter for: Lcom/phoneme/corebridge/MainActivity;->selectedGameScope:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/phoneme/corebridge/MainActivity;->access$1002(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/phoneme/corebridge/MainActivity;->access$1100(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v0, :cond_83

    move-object v3, v0

    :cond_83
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    if-eqz v1, :cond_cf

    iget-object p1, v2, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->access$400(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0110\u00e3 l\u01b0u game: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0110\u00e3 ch\u1ecdn v\u00e0 l\u01b0u game: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iget-object v3, v3, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->selectedFile:Ljava/io/File;
    invoke-static {v3}, Lcom/phoneme/corebridge/MainActivity;->access$800(Lcom/phoneme/corebridge/MainActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    goto :goto_10d

    :cond_cf
    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    # getter for: Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/phoneme/corebridge/MainActivity;->access$400(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0110\u00e3 ch\u1ecdn file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iget-object v2, v2, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0110\u00e3 ch\u1ecdn file nh\u01b0ng ch\u01b0a l\u01b0u \u0111\u01b0\u1ee3c: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :goto_10d
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIDlet class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_120

    const-string v0, "ch\u01b0a nh\u1eadn di\u1ec7n"

    :cond_120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    # getter for: Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->dialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->access$600(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    if-eqz v1, :cond_142

    iget-boolean p1, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->configured:Z

    if-nez p1, :cond_142

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const/4 v0, 0x1

    # invokes: Lcom/phoneme/corebridge/MainActivity;->showAppSettings(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Z)V
    invoke-static {p1, v1, v0}, Lcom/phoneme/corebridge/MainActivity;->access$1200(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Z)V

    :cond_142
    return-void
.end method
