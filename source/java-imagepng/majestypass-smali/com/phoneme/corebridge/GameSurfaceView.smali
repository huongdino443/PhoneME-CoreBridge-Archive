.class public final Lcom/phoneme/corebridge/GameSurfaceView;
.super Landroid/view/View;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phoneme/corebridge/GameSurfaceView$TextInputActionListener;,
        Lcom/phoneme/corebridge/GameSurfaceView$TextInputChangeListener;,
        Lcom/phoneme/corebridge/GameSurfaceView$FrameLogListener;,
        Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;
    }
.end annotation


# static fields
.field private static final POINTER_DRAGGED:I = 0x3

.field private static final POINTER_PRESSED:I = 0x1

.field private static final POINTER_RELEASED:I = 0x2


# instance fields
.field private volatile awaitingFreshFrame:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapUpdateCount:J

.field private volatile canvasPosition:I

.field private volatile canvasScaleMode:I

.field private volatile canvasScalePercent:I

.field private composingLength:I

.field private composingStart:I

.field private copyCount:J

.field private drawCount:J

.field private frameAttempts:J

.field private volatile frameDeliverySuspended:Z

.field private volatile frameEpoch:J

.field private final frameLock:Ljava/lang/Object;

.field private frameLogListener:Lcom/phoneme/corebridge/GameSurfaceView$FrameLogListener;

.field private volatile freshFrameReady:Z

.field private volatile generation:J

.field private volatile hostKeyboardActive:Z

.field private final inputConnection:Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;

.field private final inputHandler:Landroid/os/Handler;

.field private final inputLock:Ljava/lang/Object;

.field private volatile keepAspect:Z

.field private lastContentChangedAtNs:J

.field private lastContentChangedGeneration:J

.field private lastCopiedChecksum:J

.field private lastCopiedGeneration:J

.field private lastDrawLoggedGeneration:J

.field private lastLoggedGeneration:J

.field private volatile logicalHeight:I

.field private volatile logicalWidth:I

.field private metadata:[I

.field private onDrawCount:J

.field private onDrawStartedAtNs:J

.field private final paint:Landroid/graphics/Paint;

.field private pendingTelemetryMessage:Ljava/lang/String;

.field private pixelProbeCount:I

.field private pixels:[I

.field private volatile renderRequested:Z

.field private renderThread:Ljava/lang/Thread;

.field private rgba:[B

.field private volatile runtime:J

.field private volatile schedulerProbeRequested:Z

.field private schedulerProbeThread:Ljava/lang/Thread;

.field private final stateLock:Ljava/lang/Object;

.field private telemetryDrainPosted:Z

.field private final telemetryExecutor:Ljava/util/concurrent/ExecutorService;

.field private final telemetryLock:Ljava/lang/Object;

.field private textInputActionListener:Lcom/phoneme/corebridge/GameSurfaceView$TextInputActionListener;

.field private volatile textInputActive:Z

.field private textInputCaret:I

.field private textInputChangeListener:Lcom/phoneme/corebridge/GameSurfaceView$TextInputChangeListener;

.field private volatile textInputComponentId:I

.field private volatile textInputConstraints:I

.field private volatile textInputEditable:Z

.field private volatile textInputMaxSize:I

.field private textInputText:Ljava/lang/String;

.field private final uiFrameLock:Ljava/lang/Object;

.field private uiFramePostedAtNs:J

.field private uiFrameRequestPosted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->paint:Landroid/graphics/Paint;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->stateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameLock:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->rgba:[B

    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->metadata:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->pixels:[I

    const/16 v1, 0x168

    iput v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->logicalWidth:I

    const/16 v1, 0x280

    iput v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->logicalHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->keepAspect:Z

    const/16 v2, 0x64

    iput v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->canvasScalePercent:I

    iput v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->canvasPosition:I

    iput v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->canvasScaleMode:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->telemetryExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->telemetryLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->uiFrameLock:Ljava/lang/Object;

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->lastLoggedGeneration:J

    iput-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->lastCopiedChecksum:J

    iput-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->lastCopiedGeneration:J

    iput-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->lastDrawLoggedGeneration:J

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputLock:Ljava/lang/Object;

    new-instance v2, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;

    invoke-direct {v2, p0}, Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;-><init>(Lcom/phoneme/corebridge/GameSurfaceView;)V

    iput-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputConnection:Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;

    const/4 v2, -0x1

    iput v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputComponentId:I

    const-string v2, ""

    iput-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/GameSurfaceView;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/GameSurfaceView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/phoneme/corebridge/GameSurfaceView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z

    return p0
.end method

.method static synthetic access$100(Lcom/phoneme/corebridge/GameSurfaceView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputEditable:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/phoneme/corebridge/GameSurfaceView;)I
    .registers 1

    iget p0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I

    return p0
.end method

.method static synthetic access$1002(Lcom/phoneme/corebridge/GameSurfaceView;I)I
    .registers 2

    iput p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I

    return p1
.end method

.method static synthetic access$1100(Lcom/phoneme/corebridge/GameSurfaceView;)I
    .registers 1

    iget p0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I

    return p0
.end method

.method static synthetic access$1102(Lcom/phoneme/corebridge/GameSurfaceView;I)I
    .registers 2

    iput p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I

    return p1
.end method

.method static synthetic access$1200(Lcom/phoneme/corebridge/GameSurfaceView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/phoneme/corebridge/GameSurfaceView;->deleteInputRange(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/phoneme/corebridge/GameSurfaceView;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/phoneme/corebridge/GameSurfaceView;->publishInputState(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/phoneme/corebridge/GameSurfaceView;)Lcom/phoneme/corebridge/GameSurfaceView$TextInputActionListener;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActionListener:Lcom/phoneme/corebridge/GameSurfaceView$TextInputActionListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/phoneme/corebridge/GameSurfaceView;)V
    .registers 1

    invoke-direct {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->runSchedulerProbe()V

    return-void
.end method

.method static synthetic access$1700(Lcom/phoneme/corebridge/GameSurfaceView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->hostKeyboardActive:Z

    return p0
.end method

.method static synthetic access$200(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->telemetryLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->pendingTelemetryMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/phoneme/corebridge/GameSurfaceView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->pendingTelemetryMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/phoneme/corebridge/GameSurfaceView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->telemetryDrainPosted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/phoneme/corebridge/GameSurfaceView;)Lcom/phoneme/corebridge/GameSurfaceView$FrameLogListener;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameLogListener:Lcom/phoneme/corebridge/GameSurfaceView$FrameLogListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/phoneme/corebridge/GameSurfaceView;)Lcom/phoneme/corebridge/GameSurfaceView$TextInputChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputChangeListener:Lcom/phoneme/corebridge/GameSurfaceView$TextInputChangeListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/phoneme/corebridge/GameSurfaceView;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/phoneme/corebridge/GameSurfaceView;->replaceInputRange(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/phoneme/corebridge/GameSurfaceView;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/phoneme/corebridge/GameSurfaceView;I)I
    .registers 2

    iput p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I

    return p1
.end method

.method private checksumRgba([BI)J
    .registers 10

    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    :goto_b
    if-ge v2, p2, :cond_1d

    aget-byte v3, p1, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    return-wide v0
.end method

.method private computePresentationRect(IIII[I)V
    .registers 14

    if-eqz p5, :cond_a1

    array-length v0, p5

    const/4 v1, 0x4

    if-ge v0, v1, :cond_8

    goto/16 :goto_a1

    :cond_8
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lez p1, :cond_91

    if-lez p2, :cond_91

    if-lez p3, :cond_91

    if-gtz p4, :cond_16

    goto/16 :goto_91

    :cond_16
    iget-boolean v4, p0, Lcom/phoneme/corebridge/GameSurfaceView;->keepAspect:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_1d

    goto :goto_4f

    :cond_1d
    iget v4, p0, Lcom/phoneme/corebridge/GameSurfaceView;->canvasScaleMode:I

    if-ne v4, v2, :cond_2c

    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    int-to-float v5, p2

    int-to-float v6, p4

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_4f

    :cond_2c
    iget v4, p0, Lcom/phoneme/corebridge/GameSurfaceView;->canvasScaleMode:I

    if-ne v4, v1, :cond_45

    int-to-float v4, p1

    int-to-float v6, p3

    div-float/2addr v4, v6

    int-to-float v6, p2

    int-to-float v7, p4

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_4f

    :cond_45
    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    int-to-float v5, p2

    int-to-float v6, p4

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_4f
    iget v4, p0, Lcom/phoneme/corebridge/GameSurfaceView;->canvasScalePercent:I

    int-to-float v4, v4

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v4, v6

    iget-boolean v6, p0, Lcom/phoneme/corebridge/GameSurfaceView;->keepAspect:Z

    if-eqz v6, :cond_5c

    int-to-float p3, p3

    mul-float/2addr p3, v5

    goto :goto_5d

    :cond_5c
    int-to-float p3, p1

    :goto_5d
    mul-float/2addr p3, v4

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-boolean v6, p0, Lcom/phoneme/corebridge/GameSurfaceView;->keepAspect:Z

    if-eqz v6, :cond_6d

    int-to-float p4, p4

    mul-float/2addr p4, v5

    goto :goto_6e

    :cond_6d
    int-to-float p4, p2

    :goto_6e
    mul-float/2addr p4, v4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    sub-int/2addr p1, p3

    div-int/2addr p1, v2

    iget v4, p0, Lcom/phoneme/corebridge/GameSurfaceView;->canvasPosition:I

    if-nez v4, :cond_7f

    move p2, v3

    goto :goto_86

    :cond_7f
    iget v4, p0, Lcom/phoneme/corebridge/GameSurfaceView;->canvasPosition:I

    sub-int/2addr p2, p4

    if-ne v4, v2, :cond_85

    goto :goto_86

    :cond_85
    div-int/2addr p2, v2

    :goto_86
    aput p1, p5, v3

    aput p2, p5, v1

    add-int/2addr p1, p3

    aput p1, p5, v2

    add-int/2addr p2, p4

    aput p2, p5, v0

    return-void

    :cond_91
    :goto_91
    aput v3, p5, v3

    aput v3, p5, v1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aput p1, p5, v2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    aput p1, p5, v0

    :cond_a1
    :goto_a1
    return-void
.end method

.method private deleteInputRange(II)V
    .registers 8

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr v3, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I

    if-lez v1, :cond_41

    iget v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I

    iget v4, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {v3, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    iput p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I

    iput p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I

    iput v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_6b

    invoke-direct {p0, p2, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->publishInputState(Ljava/lang/String;I)V

    return-void

    :catchall_6b
    move-exception p1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p1
.end method

.method private emitCanvasHandshakeLog(J)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canvas handshake slow durationNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->generation:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDrawCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->onDrawCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    return-void
.end method

.method private emitFrameLog(Ljava/lang/String;)V
    .registers 3

    const-string v0, "FRAME"

    invoke-direct {p0, p1, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->queueTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private emitInputLog(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "INPUT"

    invoke-direct {p0, p1, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->queueTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private emitUiFrameLatencyLog(J)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uiFrame callback latencyNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->generation:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDrawCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->onDrawCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    return-void
.end method

.method private inputTypeForConstraints(I)I
    .registers 5

    const v0, 0xffff

    and-int/2addr v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    goto :goto_21

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    goto :goto_21

    :cond_c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const/16 v1, 0x21

    goto :goto_21

    :cond_12
    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    const/16 v1, 0x11

    goto :goto_21

    :cond_18
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1e

    const/16 v1, 0x2002

    goto :goto_21

    :cond_1e
    const v1, 0x20001

    :goto_21
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_29

    const/16 v1, 0x81

    goto :goto_35

    :cond_29
    const/high16 v0, 0x80000

    and-int v2, p1, v0

    if-nez v2, :cond_34

    const/high16 v2, 0x40000

    and-int/2addr v2, p1

    if-eqz v2, :cond_35

    :cond_34
    or-int/2addr v1, v0

    :cond_35
    :goto_35
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3d

    or-int/lit16 v1, v1, 0x2000

    goto :goto_44

    :cond_3d
    const/high16 v0, 0x100000

    and-int/2addr p1, v0

    if-eqz p1, :cond_44

    or-int/lit16 v1, v1, 0x4000

    :cond_44
    :goto_44
    return v1
.end method

.method private static mapKeyCode(ILandroid/view/KeyEvent;)I
    .registers 2

    sparse-switch p0, :sswitch_data_1e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p0

    if-nez p0, :cond_1c

    const/high16 p0, -0x80000000

    goto :goto_1c

    :sswitch_c
    const/4 p0, -0x5

    return p0

    :sswitch_e
    const/4 p0, -0x4

    return p0

    :sswitch_10
    const/4 p0, -0x3

    return p0

    :sswitch_12
    const/4 p0, -0x2

    return p0

    :sswitch_14
    const/4 p0, -0x1

    return p0

    :sswitch_16
    const/4 p0, -0x7

    return p0

    :sswitch_18
    const/4 p0, -0x6

    return p0

    :sswitch_1a
    const/high16 p0, -0x80000000

    :cond_1c
    :goto_1c
    return p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_18
        0x2 -> :sswitch_16
        0x4 -> :sswitch_1a
        0x13 -> :sswitch_14
        0x14 -> :sswitch_12
        0x15 -> :sswitch_10
        0x16 -> :sswitch_e
        0x17 -> :sswitch_c
        0x42 -> :sswitch_c
        0x52 -> :sswitch_18
    .end sparse-switch
.end method

.method private pixelProbe(III)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/16 v2, 0x100

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int v4, v1, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v6, 0xff

    const-wide/16 v7, 0x0

    move v12, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_1e
    if-ge v9, v1, :cond_4f

    iget-object v14, v0, Lcom/phoneme/corebridge/GameSurfaceView;->pixels:[I

    aget v14, v14, v9

    ushr-int/lit8 v15, v14, 0x18

    and-int/2addr v15, v6

    ushr-int/lit8 v5, v14, 0x10

    and-int/2addr v5, v6

    ushr-int/lit8 v3, v14, 0x8

    and-int/2addr v3, v6

    and-int/lit16 v6, v14, 0xff

    or-int/2addr v3, v5

    or-int/2addr v3, v6

    if-eqz v3, :cond_35

    add-int/lit8 v10, v10, 0x1

    :cond_35
    if-eqz v15, :cond_39

    add-int/lit8 v11, v11, 0x1

    :cond_39
    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v5, v14

    const-wide v14, 0xffffffffL

    and-long/2addr v5, v14

    add-long/2addr v7, v5

    and-long/2addr v7, v14

    add-int/2addr v9, v4

    const/4 v3, 0x1

    const/16 v6, 0xff

    goto :goto_1e

    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/phoneme/corebridge/GameSurfaceView;->rgba:[B

    array-length v3, v3

    const/16 v4, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_5e
    if-ge v4, v3, :cond_87

    if-lez v4, :cond_67

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_67
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v14, v0, Lcom/phoneme/corebridge/GameSurfaceView;->rgba:[B

    aget-byte v14, v14, v4

    const/16 v15, 0xff

    and-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v9, v16

    const-string v14, "%02X"

    invoke-static {v5, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :cond_87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pixel probe size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " samples="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nonBlack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nonZeroAlpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " checksum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " firstRGBA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private publishInputState(Ljava/lang/String;I)V
    .registers 8

    iget-wide v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->runtime:J

    iget v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputComponentId:I

    iget-boolean v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z

    if-eqz v3, :cond_70

    iget-boolean v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputEditable:Z

    if-eqz v3, :cond_70

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_70

    if-gez v2, :cond_15

    goto :goto_70

    :cond_15
    :try_start_15
    invoke-static {v0, v1, v2, p1, p2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiSetText(JILjava/lang/String;I)V

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputChangeListener:Lcom/phoneme/corebridge/GameSurfaceView$TextInputChangeListener;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputHandler:Landroid/os/Handler;

    new-instance v1, Lcom/phoneme/corebridge/GameSurfaceView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/phoneme/corebridge/GameSurfaceView$3;-><init>(Lcom/phoneme/corebridge/GameSurfaceView;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setText item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " caret="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->emitInputLog(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_54} :catch_55

    goto :goto_70

    :catch_55
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setText failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->emitInputLog(Ljava/lang/String;)V

    :cond_70
    :goto_70
    return-void
.end method

.method private queueTelemetry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->telemetryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->pendingTelemetryMessage:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->telemetryDrainPosted:Z

    if-eqz p1, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->telemetryDrainPosted:Z

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1a

    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->telemetryExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/phoneme/corebridge/GameSurfaceView$2;

    invoke-direct {v0, p0, p2}, Lcom/phoneme/corebridge/GameSurfaceView$2;-><init>(Lcom/phoneme/corebridge/GameSurfaceView;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private replaceInputRange(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I

    if-lez v1, :cond_a

    iget v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I

    goto :goto_c

    :cond_a
    iget v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I

    :goto_c
    if-lez v1, :cond_1e

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I

    iget v4, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_20

    :cond_1e
    iget v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I

    :goto_20
    if-nez p1, :cond_25

    const-string p1, ""

    goto :goto_29

    :cond_25
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_29
    iget v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputMaxSize:I

    const/4 v4, 0x0

    if-lez v3, :cond_48

    iget v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputMaxSize:I

    iget-object v5, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v6, v1, v2

    sub-int/2addr v5, v6

    sub-int/2addr v3, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_48

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I

    if-eqz p2, :cond_75

    goto :goto_76

    :cond_75
    move v2, v1

    :goto_76
    iput v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingStart:I

    if-eqz p2, :cond_7e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_7e
    iput v4, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I

    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_87

    invoke-direct {p0, p1, v1}, Lcom/phoneme/corebridge/GameSurfaceView;->publishInputState(Ljava/lang/String;I)V

    return-object p1

    :catchall_87
    move-exception p1

    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p1
.end method

.method private requestUiFrame()V
    .registers 5

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->uiFrameLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->uiFrameRequestPosted:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->uiFrameRequestPosted:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->uiFramePostedAtNs:J

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->postInvalidateOnAnimation()V

    return-void

    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private runSchedulerProbe()V
    .registers 5

    :goto_0
    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->schedulerProbeRequested:Z

    if-eqz v0, :cond_73

    iget-wide v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->runtime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_65

    :try_start_c
    invoke-static {v0, v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeSchedulerSnapshot(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    goto :goto_4b

    :cond_19
    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x708

    if-le v1, v2, :cond_34

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduler snapshot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_47
    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    goto :goto_65

    :cond_4b
    :goto_4b
    const-string v0, "scheduler snapshot empty"
    :try_end_4d
    .catchall {:try_start_c .. :try_end_4d} :catchall_4e

    goto :goto_47

    :catchall_4e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduler snapshot failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    :cond_65
    :goto_65
    const-wide/16 v0, 0x3e8

    :try_start_67
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_0

    :catch_6b
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_73
    return-void
.end method

.method private updateFrame(J)Z
    .registers 25

    move-object/from16 v1, p0

    iget-wide v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->frameAttempts:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->frameAttempts:J

    iget-wide v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->frameEpoch:J

    iget-wide v8, v1, Lcom/phoneme/corebridge/GameSurfaceView;->generation:J

    iget-object v10, v1, Lcom/phoneme/corebridge/GameSurfaceView;->rgba:[B

    iget-object v11, v1, Lcom/phoneme/corebridge/GameSurfaceView;->metadata:[I

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v11}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeCopyFrameSince(JJ[B[I)I

    move-result v0

    const-wide/16 v6, 0x3c

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-gtz v0, :cond_c4

    move v14, v0

    iget-wide v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->frameAttempts:J

    const-wide/16 v4, 0x5

    cmp-long v0, v2, v4

    if-lez v0, :cond_2e

    rem-long/2addr v2, v6

    cmp-long v0, v2, v8

    if-nez v0, :cond_c3

    :cond_2e
    invoke-static/range {p1 .. p2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeIsRunning(J)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no new frame attempt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/phoneme/corebridge/GameSurfaceView;->frameAttempts:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " running="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " metadata="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->metadata:[I

    aget v2, v2, v12

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->metadata:[I

    aget v2, v2, v11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->metadata:[I

    aget v2, v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " copyResult="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " metaGenLo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->metadata:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " metaGenHi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->metadata:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " contentAgeNs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->lastContentChangedAtNs:J

    sub-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " contentGeneration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->lastContentChangedGeneration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    :cond_c3
    return v12

    :cond_c4
    iget-object v13, v1, Lcom/phoneme/corebridge/GameSurfaceView;->rgba:[B

    array-length v13, v13

    if-le v0, v13, :cond_10d

    new-array v0, v0, [B

    iput-object v0, v1, Lcom/phoneme/corebridge/GameSurfaceView;->rgba:[B

    iget-wide v13, v1, Lcom/phoneme/corebridge/GameSurfaceView;->generation:J

    iget-object v0, v1, Lcom/phoneme/corebridge/GameSurfaceView;->rgba:[B

    iget-object v15, v1, Lcom/phoneme/corebridge/GameSurfaceView;->metadata:[I

    move-wide/from16 v16, v13

    move-wide/from16 v13, p1

    move-object/from16 v18, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v0

    invoke-static/range {v13 .. v18}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeCopyFrameSince(JJ[B[I)I

    move-result v0

    if-gtz v0, :cond_10d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "second frame copy returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " after allocating "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->rgba:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    return v12

    :cond_10d
    iget-object v13, v1, Lcom/phoneme/corebridge/GameSurfaceView;->metadata:[I

    aget v15, v13, v12

    if-lez v15, :cond_33d

    aget v14, v13, v11

    if-gtz v14, :cond_119

    goto/16 :goto_33d

    :cond_119
    const/16 v16, 0x2

    aget v10, v13, v16

    int-to-long v11, v10

    const-wide v16, 0xffffffffL

    and-long v10, v11, v16

    const/4 v12, 0x3

    aget v13, v13, v12

    int-to-long v12, v13

    and-long v12, v12, v16

    const/16 v16, 0x20

    shl-long v12, v12, v16

    or-long/2addr v10, v12

    int-to-long v12, v15

    int-to-long v6, v14

    mul-long/2addr v12, v6

    const-wide/16 v6, 0x4

    mul-long/2addr v12, v6

    cmp-long v6, v12, v8

    if-lez v6, :cond_30f

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v12, v6

    if-lez v6, :cond_143

    goto/16 :goto_30f

    :cond_143
    long-to-int v6, v12

    if-lt v0, v6, :cond_2be

    iget-object v7, v1, Lcom/phoneme/corebridge/GameSurfaceView;->rgba:[B

    array-length v12, v7

    if-ge v12, v6, :cond_14d

    goto/16 :goto_2be

    :cond_14d
    invoke-direct {v1, v7, v6}, Lcom/phoneme/corebridge/GameSurfaceView;->checksumRgba([BI)J

    move-result-wide v6

    iget-wide v12, v1, Lcom/phoneme/corebridge/GameSurfaceView;->lastCopiedChecksum:J

    cmp-long v12, v6, v12

    if-eqz v12, :cond_161

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/phoneme/corebridge/GameSurfaceView;->lastContentChangedAtNs:J

    iput-wide v10, v1, Lcom/phoneme/corebridge/GameSurfaceView;->lastContentChangedGeneration:J

    const/4 v12, 0x1

    goto :goto_162

    :cond_161
    const/4 v12, 0x0

    :goto_162
    iget-wide v8, v1, Lcom/phoneme/corebridge/GameSurfaceView;->lastCopiedGeneration:J

    cmp-long v8, v10, v8

    move-wide/from16 v20, v2

    if-eqz v8, :cond_16c

    const/4 v8, 0x1

    goto :goto_16d

    :cond_16c
    const/4 v8, 0x0

    :goto_16d
    iget-wide v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->copyCount:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->copyCount:J

    if-nez v12, :cond_17f

    if-nez v8, :cond_17f

    const-wide/16 v8, 0x3c

    rem-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-nez v2, :cond_1bd

    :cond_17f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copied generation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " checksum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " changed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " copyCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, v1, Lcom/phoneme/corebridge/GameSurfaceView;->copyCount:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    iput-wide v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->lastCopiedChecksum:J

    iput-wide v10, v1, Lcom/phoneme/corebridge/GameSurfaceView;->lastCopiedGeneration:J

    :cond_1bd
    mul-int v2, v15, v14

    iget-wide v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->frameEpoch:J

    cmp-long v3, v20, v6

    if-nez v3, :cond_2bc

    iget-boolean v3, v1, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliverySuspended:Z

    if-eqz v3, :cond_1cb

    goto/16 :goto_2bc

    :cond_1cb
    iget-object v3, v1, Lcom/phoneme/corebridge/GameSurfaceView;->frameLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1ce
    iget-wide v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->frameEpoch:J

    cmp-long v6, v20, v6

    if-nez v6, :cond_2b6

    iget-boolean v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliverySuspended:Z

    if-eqz v6, :cond_1da

    goto/16 :goto_2b6

    :cond_1da
    iget-object v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1ec

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v15, :cond_1ec

    iget-object v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v14, :cond_1fb

    :cond_1ec
    iget-object v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1f3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1f3
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v14, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    :cond_1fb
    iget-object v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->pixels:[I

    array-length v6, v6

    if-eq v6, v2, :cond_204

    new-array v6, v2, [I

    iput-object v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->pixels:[I

    :cond_204
    const/4 v6, 0x0

    :goto_205
    if-ge v6, v2, :cond_231

    mul-int/lit8 v7, v6, 0x4

    iget-object v8, v1, Lcom/phoneme/corebridge/GameSurfaceView;->rgba:[B

    aget-byte v9, v8, v7

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v12, v7, 0x1

    aget-byte v12, v8, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v7, 0x2

    aget-byte v13, v8, v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    iget-object v8, v1, Lcom/phoneme/corebridge/GameSurfaceView;->pixels:[I

    shl-int/lit8 v7, v7, 0x18

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    shl-int/lit8 v9, v12, 0x8

    or-int/2addr v7, v9

    or-int/2addr v7, v13

    aput v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_205

    :cond_231
    iget-object v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v7, v1, Lcom/phoneme/corebridge/GameSurfaceView;->pixels:[I

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v8, v14

    move-object v14, v6

    move v9, v15

    move-object v15, v7

    move/from16 v17, v9

    move/from16 v20, v9

    move/from16 v21, v8

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-wide v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->bitmapUpdateCount:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/phoneme/corebridge/GameSurfaceView;->bitmapUpdateCount:J

    iput-wide v10, v1, Lcom/phoneme/corebridge/GameSurfaceView;->generation:J

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/phoneme/corebridge/GameSurfaceView;->freshFrameReady:Z

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/phoneme/corebridge/GameSurfaceView;->awaitingFreshFrame:Z

    iget v5, v1, Lcom/phoneme/corebridge/GameSurfaceView;->pixelProbeCount:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_264

    add-int/2addr v5, v4

    iput v5, v1, Lcom/phoneme/corebridge/GameSurfaceView;->pixelProbeCount:I

    invoke-direct {v1, v9, v8, v2}, Lcom/phoneme/corebridge/GameSurfaceView;->pixelProbe(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    :cond_264
    monitor-exit v3
    :try_end_265
    .catchall {:try_start_1ce .. :try_end_265} :catchall_2b9

    iput v9, v1, Lcom/phoneme/corebridge/GameSurfaceView;->logicalWidth:I

    iput v8, v1, Lcom/phoneme/corebridge/GameSurfaceView;->logicalHeight:I

    iget-wide v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->lastLoggedGeneration:J

    cmp-long v2, v10, v2

    if-eqz v2, :cond_2b4

    iput-wide v10, v1, Lcom/phoneme/corebridge/GameSurfaceView;->lastLoggedGeneration:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame available bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " generation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->metadata:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    :cond_2b4
    const/4 v0, 0x1

    return v0

    :cond_2b6
    :goto_2b6
    :try_start_2b6
    monitor-exit v3

    const/4 v0, 0x0

    return v0

    :catchall_2b9
    move-exception v0

    monitor-exit v3
    :try_end_2bb
    .catchall {:try_start_2b6 .. :try_end_2bb} :catchall_2b9

    throw v0

    :cond_2bc
    :goto_2bc
    const/4 v0, 0x0

    return v0

    :cond_2be
    :goto_2be
    move v8, v14

    move v9, v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame rejected incomplete required="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " capacity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->rgba:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " expected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " metadata="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " attempt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v1, Lcom/phoneme/corebridge/GameSurfaceView;->frameAttempts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_30f
    :goto_30f
    move v8, v14

    move v9, v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame has unsupported byte size required="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " metadata="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_33d
    :goto_33d
    move v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame has invalid size required="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " metadata="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/phoneme/corebridge/GameSurfaceView;->metadata:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/phoneme/corebridge/GameSurfaceView;->metadata:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public beginTextInput(ILjava/lang/String;III)V
    .registers 10

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z

    iput p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputComponentId:I

    const/4 v2, 0x0

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputMaxSize:I

    iput p4, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputConstraints:I

    const/high16 v3, 0x20000

    and-int/2addr v3, p4

    if-nez v3, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    iput-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputEditable:Z

    if-nez p2, :cond_1e

    const-string p2, ""

    :cond_1e
    iput-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    iget p2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputMaxSize:I

    if-lez p2, :cond_38

    iget-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputMaxSize:I

    if-le p2, v1, :cond_38

    iget-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    iget v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputMaxSize:I

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    :cond_38
    iget-object p2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I

    iput v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_84

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "input connection active item="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " max="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " constraints=0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " caret="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->emitInputLog(Ljava/lang/String;)V

    return-void

    :catchall_84
    move-exception p1

    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw p1
.end method

.method public endTextInput()V
    .registers 5

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z

    iget-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_23
    iget-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, -0x1

    :try_start_27
    iput v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputComponentId:I

    iput v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputMaxSize:I

    iput v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputConstraints:I

    iput-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputEditable:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    iput v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I

    iput v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_40

    if-eqz v0, :cond_3f

    const-string v0, "input connection inactive"

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitInputLog(Ljava/lang/String;)V

    :cond_3f
    return-void

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public frameDeliveryState()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliverySuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " awaitingFresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->awaitingFreshFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " freshReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->freshFrameReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " epoch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameEpoch:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->generation:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFrameDeliverySuspended()Z
    .registers 2

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliverySuspended:Z

    return v0
.end method

.method public isTextInputActive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->hostKeyboardActive:Z

    :cond_6
    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->hostKeyboardActive:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return-object p1

    :cond_b
    :goto_b
    iget v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputConstraints:I

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->inputTypeForConstraints(I)I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x10000006

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateInputConnection item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->emitInputLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputConnection:Lcom/phoneme/corebridge/GameSurfaceView$CoreInputConnection;

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->onDrawStartedAtNs:J

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->uiFrameLock:Ljava/lang/Object;

    monitor-enter v0

    iget-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->uiFramePostedAtNs:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_20

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0x5f5e100

    cmp-long v6, v4, v6

    if-lez v6, :cond_20

    invoke-direct {p0, v4, v5}, Lcom/phoneme/corebridge/GameSurfaceView;->emitUiFrameLatencyLog(J)V

    :cond_20
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->uiFramePostedAtNs:J

    const/4 v1, 0x0

    :try_start_25
    iput-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->uiFrameRequestPosted:Z

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_100

    iget-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->onDrawCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->onDrawCount:J

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliverySuspended:Z

    if-nez v0, :cond_ff

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->freshFrameReady:Z

    if-nez v0, :cond_41

    goto/16 :goto_ff

    :cond_41
    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_44
    iget-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_e9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_50

    goto/16 :goto_e9

    :cond_50
    const/4 v3, 0x4

    new-array v3, v3, [I

    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->getHeight()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object v6, p0

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/phoneme/corebridge/GameSurfaceView;->computePresentationRect(IIII[I)V

    new-instance v6, Landroid/graphics/Rect;

    aget v1, v3, v1

    const/4 v7, 0x1

    aget v7, v3, v7

    const/4 v8, 0x2

    aget v8, v3, v8

    const/4 v9, 0x3

    aget v3, v3, v9

    invoke-direct {v6, v1, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->drawCount:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->drawCount:J

    iget-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->generation:J

    iget-wide v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->lastDrawLoggedGeneration:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_96

    iget-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->onDrawCount:J

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_d6

    :cond_96
    iget-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->generation:J

    iput-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->lastDrawLoggedGeneration:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDraw generation="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->generation:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " onDrawCount="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->onDrawCount:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " drawCount="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->drawCount:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bitmapUpdates="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->bitmapUpdateCount:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    :cond_d6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iget-wide v8, p0, Lcom/phoneme/corebridge/GameSurfaceView;->onDrawStartedAtNs:J

    sub-long/2addr v10, v8

    const-wide/32 v8, 0x5f5e100

    cmp-long v8, v10, v8

    if-lez v8, :cond_e7

    invoke-direct {p0, v10, v11}, Lcom/phoneme/corebridge/GameSurfaceView;->emitCanvasHandshakeLog(J)V

    :cond_e7
    monitor-exit v0

    return-void

    :cond_e9
    :goto_e9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iget-wide v8, p0, Lcom/phoneme/corebridge/GameSurfaceView;->onDrawStartedAtNs:J

    sub-long/2addr v10, v8

    const-wide/32 v8, 0x5f5e100

    cmp-long v8, v10, v8

    if-lez v8, :cond_fa

    invoke-direct {p0, v10, v11}, Lcom/phoneme/corebridge/GameSurfaceView;->emitCanvasHandshakeLog(J)V

    :cond_fa
    monitor-exit v0

    return-void

    :catchall_fc
    move-exception p1

    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_44 .. :try_end_fe} :catchall_fc

    throw p1

    :cond_ff
    :goto_ff
    return-void

    :catchall_100
    move-exception p1

    :try_start_101
    monitor-exit v0
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    throw p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    iget-wide v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->runtime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_d
    invoke-static {p1, p2}, Lcom/phoneme/corebridge/GameSurfaceView;->mapKeyCode(ILandroid/view/KeyEvent;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1c

    iget-wide p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->runtime:J

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeSendKey(JII)V

    return v1

    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7

    iget-wide v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->runtime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_d
    invoke-static {p1, p2}, Lcom/phoneme/corebridge/GameSurfaceView;->mapKeyCode(ILandroid/view/KeyEvent;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1d

    iget-wide p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->runtime:J

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeSendKey(JII)V

    const/4 p1, 0x1

    return p1

    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    iget-wide v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->runtime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_88

    return v1

    :pswitch_14
    move v0, v2

    goto :goto_19

    :pswitch_16
    move v0, v3

    goto :goto_19

    :pswitch_18
    move v0, v1

    :goto_19
    const/4 v4, 0x4

    new-array v4, v4, [I

    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->getHeight()I

    move-result v7

    iget v5, p0, Lcom/phoneme/corebridge/GameSurfaceView;->logicalWidth:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v5, p0, Lcom/phoneme/corebridge/GameSurfaceView;->logicalHeight:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object v5, p0

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/phoneme/corebridge/GameSurfaceView;->computePresentationRect(IIII[I)V

    aget v3, v4, v3

    const/4 v5, 0x0

    aget v6, v4, v5

    sub-int/2addr v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    aget v2, v4, v2

    aget v6, v4, v1

    sub-int/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    aget v7, v4, v5

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/phoneme/corebridge/GameSurfaceView;->logicalWidth:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aget v4, v4, v1

    int-to-float v4, v4

    sub-float/2addr p1, v4

    iget v4, p0, Lcom/phoneme/corebridge/GameSurfaceView;->logicalHeight:I

    int-to-float v4, v4

    mul-float/2addr p1, v4

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->logicalWidth:I

    sub-int/2addr v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->logicalHeight:I

    sub-int/2addr v3, v1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-wide v3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->runtime:J

    invoke-static {v3, v4, v2, p1, v0}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeSendPointer(JIII)V

    return v1

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method

.method public prepareForCanvasSwitch()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliverySuspended:Z

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->awaitingFreshFrame:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->freshFrameReady:Z

    iget-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameEpoch:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameEpoch:J

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->generation:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameAttempts:J

    iput v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->pixelProbeCount:I

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1c
    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_30

    const-string v0, "canvas switch prepared; old framebuffer dropped"

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->requestUiFrame()V

    return-void

    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public requestCurrentFrame()V
    .registers 5

    iget-wide v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameEpoch:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameEpoch:J

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->generation:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameAttempts:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->pixelProbeCount:I

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->freshFrameReady:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->awaitingFreshFrame:Z

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1a
    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_29

    invoke-direct {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->requestUiFrame()V

    return-void

    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public resumeFrameDeliveryForFreshFrame()V
    .registers 6

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliverySuspended:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->awaitingFreshFrame:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->requestUiFrame()V

    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliverySuspended:Z

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->awaitingFreshFrame:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->freshFrameReady:Z

    iget-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameEpoch:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameEpoch:J

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->generation:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameAttempts:J

    iput v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->pixelProbeCount:I

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_28
    iget-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_3e

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliverySuspended:Z

    const-string v0, "frame delivery resumed; waiting for fresh framebuffer"

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->requestUiFrame()V

    return-void

    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public run()V
    .registers 7

    :goto_0
    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->renderRequested:Z

    if-eqz v0, :cond_a1

    iget-wide v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->runtime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_92

    :try_start_c
    iget-boolean v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliverySuspended:Z

    if-eqz v2, :cond_3a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v0, v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativePump(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x5f5e100

    cmp-long v2, v4, v2

    if-lez v2, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativePump slow durationNs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    :cond_39
    goto :goto_92

    :cond_3a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v1}, Lcom/phoneme/corebridge/GameSurfaceView;->updateFrame(J)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x5f5e100

    cmp-long v2, v4, v2

    if-lez v2, :cond_6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFrame slow durationNs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    :cond_6e
    if-eqz v0, :cond_92

    invoke-direct {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->requestUiFrame()V
    :try_end_73
    .catchall {:try_start_c .. :try_end_73} :catchall_74

    goto :goto_92

    :catchall_74
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "render loop failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    const-string v1, "PhoneME-CoreBridge"

    const-string v2, "render loop failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_92
    :goto_92
    const-wide/16 v0, 0x10

    :try_start_94
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_97
    .catch Ljava/lang/InterruptedException; {:try_start_94 .. :try_end_97} :catch_99

    goto/16 :goto_0

    :catch_99
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_a1
    return-void
.end method

.method public sendHostBackspace()V
    .registers 5

    const/4 v1, 0x0

    const/16 v2, 0x43

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method public sendHostText(Ljava/lang/CharSequence;)V
    .registers 8

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_3f

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v5, 0x1

    new-array v3, v5, [C

    const/4 v5, 0x0

    aput-char v2, v3, v5

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    if-eqz v3, :cond_3c

    const/4 v4, 0x0

    :goto_1f
    array-length v5, v3

    if-ge v4, v5, :cond_3c

    aget-object v2, v3, v4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5, v2}, Lcom/phoneme/corebridge/GameSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_39

    :cond_32
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5, v2}, Lcom/phoneme/corebridge/GameSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3f
    return-void
.end method

.method public setFrameLogListener(Lcom/phoneme/corebridge/GameSurfaceView$FrameLogListener;)V
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameLogListener:Lcom/phoneme/corebridge/GameSurfaceView$FrameLogListener;

    return-void
.end method

.method public setLogicalSize(II)V
    .registers 3

    if-lez p1, :cond_8

    if-lez p2, :cond_8

    iput p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->logicalWidth:I

    iput p2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->logicalHeight:I

    :cond_8
    return-void
.end method

.method public setPresentationOptions(IIZIIIZ)V
    .registers 8

    invoke-virtual {p0, p1, p2}, Lcom/phoneme/corebridge/GameSurfaceView;->setLogicalSize(II)V

    iput-boolean p3, p0, Lcom/phoneme/corebridge/GameSurfaceView;->keepAspect:Z

    const/16 p1, 0xc8

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 p2, 0x19

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->canvasScalePercent:I

    const/4 p1, 0x2

    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->canvasPosition:I

    invoke-static {p1, p6}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->canvasScaleMode:I

    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->requestUiFrame()V

    return-void
.end method

.method public setRuntime(J)V
    .registers 6

    iput-wide p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->runtime:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->hostKeyboardActive:Z

    return-void
.end method

.method public setTextInputActionListener(Lcom/phoneme/corebridge/GameSurfaceView$TextInputActionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActionListener:Lcom/phoneme/corebridge/GameSurfaceView$TextInputActionListener;

    return-void
.end method

.method public setTextInputChangeListener(Lcom/phoneme/corebridge/GameSurfaceView$TextInputChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputChangeListener:Lcom/phoneme/corebridge/GameSurfaceView$TextInputChangeListener;

    return-void
.end method

.method public showHostKeyboard()V
    .registers 6

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->showTextInputKeyboard()V

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->hostKeyboardActive:Z

    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->requestFocus()Z

    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_22

    const-string v0, "host keyboard request failed: InputMethodManager unavailable"

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitInputLog(Ljava/lang/String;)V

    return-void

    :cond_22
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const-string v1, "keyboard requested by host menu"

    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/GameSurfaceView;->emitInputLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputHandler:Landroid/os/Handler;

    new-instance v2, Lcom/phoneme/corebridge/GameSurfaceView$1;

    invoke-direct {v2, p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView$1;-><init>(Lcom/phoneme/corebridge/GameSurfaceView;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showTextInputKeyboard()V
    .registers 6

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputEditable:Z

    if-nez v0, :cond_9

    goto :goto_48

    :cond_9
    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->requestFocus()Z

    invoke-virtual {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_20

    const-string v0, "keyboard request failed: InputMethodManager unavailable"

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitInputLog(Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyboard requested by TextBox touch item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputComponentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/GameSurfaceView;->emitInputLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputHandler:Landroid/os/Handler;

    new-instance v2, Lcom/phoneme/corebridge/GameSurfaceView$1;

    invoke-direct {v2, p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView$1;-><init>(Lcom/phoneme/corebridge/GameSurfaceView;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_48
    :goto_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyboard request ignored active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " editable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputEditable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitInputLog(Ljava/lang/String;)V

    return-void
.end method

.method public startRendering()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->renderRequested:Z

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->schedulerProbeRequested:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->freshFrameReady:Z

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->awaitingFreshFrame:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameAttempts:J

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->lastLoggedGeneration:J

    iput v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->pixelProbeCount:I

    const-string v0, "render loop started"

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1c
    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->renderThread:Ljava/lang/Thread;

    if-nez v1, :cond_2c

    new-instance v1, Ljava/lang/Thread;

    const-string v2, "PhoneME-Render"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->renderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2c
    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->schedulerProbeThread:Ljava/lang/Thread;

    if-nez v1, :cond_41

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/phoneme/corebridge/GameSurfaceView$4;

    invoke-direct {v2, p0}, Lcom/phoneme/corebridge/GameSurfaceView$4;-><init>(Lcom/phoneme/corebridge/GameSurfaceView;)V

    const-string v3, "PhoneME-SchedulerDiag"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->schedulerProbeThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_43

    throw v1
.end method

.method public stopRendering()V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->renderRequested:Z

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->schedulerProbeRequested:Z

    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->renderThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->renderThread:Ljava/lang/Thread;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_54

    const-wide/16 v3, 0x5dc

    if-eqz v1, :cond_24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v1, v0, :cond_24

    :try_start_18
    invoke-virtual {v1, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_27
    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->schedulerProbeThread:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->schedulerProbeThread:Ljava/lang/Thread;

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_51

    if-eqz v0, :cond_40

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_40

    :try_start_34
    invoke-virtual {v0, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_40

    :catch_38
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_43
    iget-object v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->bitmap:Landroid/graphics/Bitmap;

    :cond_4c
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_4e

    throw v1

    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0

    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public suspendFrameDelivery()V
    .registers 2

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliverySuspended:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliverySuspended:Z

    const-string v0, "frame delivery suspended; VM pump retained"

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->emitFrameLog(Ljava/lang/String;)V

    :cond_c
    invoke-direct {p0}, Lcom/phoneme/corebridge/GameSurfaceView;->requestUiFrame()V

    return-void
.end method

.method public updateTextInputState(Ljava/lang/String;I)V
    .registers 6

    iget-boolean v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputActive:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/phoneme/corebridge/GameSurfaceView;->inputLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_f

    :try_start_a
    const-string p1, ""

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_3e

    :cond_f
    :goto_f
    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    iget p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputMaxSize:I

    const/4 v1, 0x0

    if-lez p1, :cond_2a

    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputMaxSize:I

    if-le p1, v2, :cond_2a

    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    iget v2, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputMaxSize:I

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    :cond_2a
    iget-object p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->textInputCaret:I

    iput v1, p0, Lcom/phoneme/corebridge/GameSurfaceView;->composingLength:I

    monitor-exit v0

    return-void

    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_d

    throw p1
.end method
