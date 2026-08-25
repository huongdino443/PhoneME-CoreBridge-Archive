.class Lcom/phoneme/corebridge/MainActivity$53;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->updateListChoiceRow(IIZILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$53;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)I
    .locals 0

    iget p1, p1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    iget p2, p2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    check-cast p2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    invoke-virtual {p0, p1, p2}, Lcom/phoneme/corebridge/MainActivity$53;->compare(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)I

    move-result p1

    return p1
.end method
