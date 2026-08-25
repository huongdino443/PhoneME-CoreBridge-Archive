.class final Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phoneme/corebridge/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChoiceRowState"
.end annotation


# instance fields
.field choiceType:I

.field componentId:I

.field imageKey:I

.field rowIndex:I

.field selected:Z

.field text:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->componentId:I

    iput p2, p0, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    if-nez p3, :cond_b

    const-string p3, ""

    :cond_b
    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->text:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->selected:Z

    iput p5, p0, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->imageKey:I

    iput p6, p0, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    return-void
.end method
