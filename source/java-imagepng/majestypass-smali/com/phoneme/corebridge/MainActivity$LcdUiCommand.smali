.class final Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phoneme/corebridge/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LcdUiCommand"
.end annotation


# instance fields
.field final id:I

.field final label:Ljava/lang/String;

.field final longLabel:Ljava/lang/String;

.field final owner:I

.field final priority:I

.field final type:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    if-nez p2, :cond_9

    const-string p2, ""

    :cond_9
    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    iput p4, p0, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    iput p5, p0, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->priority:I

    iput p6, p0, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->owner:I

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_19
    move-object p3, p2

    :cond_1a
    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    return-void
.end method
