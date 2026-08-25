.class Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$6;->this$1:Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eq v0, v1, :cond_14

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, -0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x1

    :goto_13
    return p1

    :cond_14
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$6;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
