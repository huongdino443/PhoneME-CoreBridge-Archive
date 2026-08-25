.class final Lcom/phoneme/corebridge/MainActivity$FormItemState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phoneme/corebridge/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FormItemState"
.end annotation


# instance fields
.field componentId:I

.field componentType:I

.field constraints:I

.field gaugeInteractive:Z

.field gaugeMax:I

.field gaugeValue:I

.field itemIndex:I

.field label:Ljava/lang/String;

.field maxSize:I

.field parentId:I

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(IIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    iput p2, p0, Lcom/phoneme/corebridge/MainActivity$FormItemState;->parentId:I

    iput p3, p0, Lcom/phoneme/corebridge/MainActivity$FormItemState;->itemIndex:I

    iput p4, p0, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    const-string p1, ""

    if-nez p5, :cond_10

    move-object p5, p1

    :cond_10
    iput-object p5, p0, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    if-nez p6, :cond_15

    move-object p6, p1

    :cond_15
    iput-object p6, p0, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    iput p7, p0, Lcom/phoneme/corebridge/MainActivity$FormItemState;->maxSize:I

    iput p8, p0, Lcom/phoneme/corebridge/MainActivity$FormItemState;->constraints:I

    const/4 p1, 0x6

    const/4 p2, 0x7

    const/4 p3, 0x0

    if-eq p4, p1, :cond_25

    if-ne p4, p2, :cond_23

    goto :goto_25

    :cond_23
    move p5, p3

    goto :goto_29

    :cond_25
    :goto_25
    invoke-static {p3, p7}, Ljava/lang/Math;->max(II)I

    move-result p5

    :goto_29
    iput p5, p0, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeValue:I

    const/4 p5, 0x1

    if-eq p4, p1, :cond_33

    if-ne p4, p2, :cond_31

    goto :goto_33

    :cond_31
    move p1, p3

    goto :goto_37

    :cond_33
    :goto_33
    invoke-static {p5, p8}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_37
    iput p1, p0, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeMax:I

    if-ne p4, p2, :cond_3c

    move p3, p5

    :cond_3c
    iput-boolean p3, p0, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeInteractive:Z

    return-void
.end method
