.class final Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phoneme/corebridge/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameLibraryEntry"
.end annotation


# instance fields
.field addedAt:J

.field canvasHeight:I

.field canvasPosition:I

.field canvasScale:I

.field canvasWidth:I

.field configured:Z

.field displayName:Ljava/lang/String;

.field fullscreen:Z

.field id:Ljava/lang/String;

.field imageFilter:Z

.field jarFileName:Ljava/lang/String;

.field keepAspect:Z

.field lastUsed:J

.field mainClass:Ljava/lang/String;

.field originalFileName:Ljava/lang/String;

.field scaleMode:I

.field size:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_8

    move-object p1, v0

    :cond_8
    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->id:Ljava/lang/String;

    if-nez p2, :cond_d

    move-object p2, v0

    :cond_d
    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    if-nez p3, :cond_12

    move-object p3, v0

    :cond_12
    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->originalFileName:Ljava/lang/String;

    if-nez p4, :cond_17

    move-object p4, v0

    :cond_17
    iput-object p4, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->jarFileName:Ljava/lang/String;

    if-nez p5, :cond_1c

    move-object p5, v0

    :cond_1c
    iput-object p5, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->mainClass:Ljava/lang/String;

    iput-wide p6, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->addedAt:J

    iput-wide p8, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->lastUsed:J

    iput-wide p10, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->size:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->configured:Z

    const/16 p2, 0x168

    iput p2, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasWidth:I

    const/16 p2, 0x280

    iput p2, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasHeight:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->keepAspect:Z

    const/16 p3, 0x64

    iput p3, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasScale:I

    iput p2, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasPosition:I

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->scaleMode:I

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->imageFilter:Z

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->fullscreen:Z

    return-void
.end method
