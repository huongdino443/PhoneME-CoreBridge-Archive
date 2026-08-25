.class final Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phoneme/corebridge/CoreBridgeNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaEntry"
.end annotation


# instance fields
.field ended:Z

.field error:Z

.field final file:Ljava/io/File;

.field final handle:I

.field loopCount:I

.field muted:Z

.field final player:Landroid/media/MediaPlayer;

.field remainingLoops:I

.field started:Z

.field volume:I


# direct methods
.method constructor <init>(ILandroid/media/MediaPlayer;Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->volume:I

    iput p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->handle:I

    iput-object p2, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->file:Ljava/io/File;

    return-void
.end method
