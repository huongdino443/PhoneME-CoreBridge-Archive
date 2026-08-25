.class final Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phoneme/corebridge/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FileManagerDialog"
.end annotation


# instance fields
.field private current:Ljava/io/File;

.field private final dialog:Landroid/app/AlertDialog;

.field private final list:Landroid/widget/LinearLayout;

.field private final pathLabel:Landroid/widget/TextView;

.field private final search:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Ljava/io/File;)V
    .registers 13

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->current:Ljava/io/File;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {p1, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v1, 0x16

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v2, "\u21b0"

    invoke-virtual {p1, v2}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x2c

    invoke-virtual {p1, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    invoke-direct {v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->current:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    const v7, -0x333334

    invoke-virtual {p1, v3, v5, v7}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->pathLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v8, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v7, 0x6

    invoke-virtual {p1, v7}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->search:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTextColor(I)V

    const/16 v0, 0x34

    const/16 v3, 0xff

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    const-string v0, "T\u00ecm ki\u1ebfm"

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {p1, v0}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v0

    invoke-virtual {v1, v3, v8, v0, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Ch\u1ecdn m\u1ed9t file JAR/JAD"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->dialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$1;-><init>(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$2;-><init>(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$3;-><init>(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$4;

    invoke-direct {v0, p0, p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$4;-><init>(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->current:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$502(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;Ljava/io/File;)Ljava/io/File;
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->current:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$600(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;)Landroid/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private addEntry(Ljava/io/File;)V
    .registers 8

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const-string v1, ""

    const/16 v2, 0xe

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {v4, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u25a3  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4f

    :cond_4b
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_4f
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_5a

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_89

    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    const-string v4, "JAD  "

    goto :goto_76

    :cond_74
    const-string v4, "JAR  "

    :goto_76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_89
    new-instance v2, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;

    invoke-direct {v2, p0, v1, p1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$5;-><init>(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;ZLjava/io/File;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->list:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public refresh()V
    .registers 10

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    :cond_d
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->pathLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->current:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->current:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->list:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const-string v3, "Kh\u00f4ng th\u1ec3 \u0111\u1ecdc th\u01b0 m\u1ee5c n\u00e0y."

    const v4, -0x333334

    invoke-virtual {v2, v3, v1, v4}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_38
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->search:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v0

    const/4 v5, 0x0

    :goto_53
    if-ge v5, v4, :cond_89

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_77

    const-string v8, ".jar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_77

    const-string v8, ".jad"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_86

    :cond_77
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_83

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_86

    :cond_83
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    :cond_89
    new-instance v0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$6;

    invoke-direct {v0, p0}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog$6;-><init>(Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->addEntry(Ljava/io/File;)V

    goto :goto_95

    :cond_a5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->list:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->this$0:Lcom/phoneme/corebridge/MainActivity;

    const-string v3, "Kh\u00f4ng t\u00ecm th\u1ea5y JAR/JAD ho\u1eb7c th\u01b0 m\u1ee5c."

    const v4, -0x777778

    invoke-virtual {v2, v3, v1, v4}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_bb
    return-void
.end method

.method show()V
    .registers 2

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
