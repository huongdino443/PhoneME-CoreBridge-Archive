.class final Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phoneme/corebridge/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextBoxResumeState"
.end annotation


# instance fields
.field caret:I

.field final commands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;",
            ">;"
        }
    .end annotation
.end field

.field componentId:I

.field constraints:I

.field fieldLabel:Ljava/lang/String;

.field itemIndex:I

.field maxSize:I

.field originalCaret:I

.field originalValue:Ljava/lang/String;

.field parentId:I

.field final programKey:Ljava/lang/String;

.field screenId:I

.field stateKey:Ljava/lang/String;

.field title:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->componentId:I

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->screenId:I

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->parentId:I

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->itemIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->fieldLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->stateKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->originalValue:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->commands:Ljava/util/ArrayList;

    if-nez p1, :cond_22

    move-object p1, v0

    :cond_22
    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->programKey:Ljava/lang/String;

    return-void
.end method
