.class public final Lcom/phoneme/corebridge/CoreBridgeNative;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;
    }
.end annotation


# static fields
.field private static final MEDIA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEDIA_CONNECT_TIMEOUT_MS:I = 0x3a98

.field private static final MEDIA_LOCK:Ljava/lang/Object;

.field private static final MEDIA_MAX_DOWNLOAD_BYTES:I = 0x4000000

.field private static final MEDIA_READ_TIMEOUT_MS:I = 0x7530

.field private static final MEDIA_USER_AGENT:Ljava/lang/String; = "j2me/1.0 (MIDP-2.0; CLDC-1.1)"

.field private static final TAG:Ljava/lang/String; = "PhoneME-CoreBridge"

.field private static mediaContext:Landroid/content/Context;

.field private static mediaRoot:Ljava/io/File;

.field private static nextMediaHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "phoneMECoreBridge"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    const/4 v0, 0x1

    sput v0, Lcom/phoneme/corebridge/CoreBridgeNative;->nextMediaHandle:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(III)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/phoneme/corebridge/CoreBridgeNative;->playToneInternal(III)V

    return-void
.end method

.method private static applyVolume(Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->muted:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget v0, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->volume:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    :goto_c
    iget-object v1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->error:Z

    :goto_16
    return-void
.end method

.method private static attachListeners(Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/phoneme/corebridge/CoreBridgeNative$1;

    invoke-direct {v1, p0}, Lcom/phoneme/corebridge/CoreBridgeNative$1;-><init>(Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/phoneme/corebridge/CoreBridgeNative$2;

    invoke-direct {v1, p0}, Lcom/phoneme/corebridge/CoreBridgeNative$2;-><init>(Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method private static clamp(III)I
    .locals 0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static deleteQuietly(Ljava/io/File;)V
    .locals 0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_5
    return-void
.end method

.method private static downloadLocator(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaRoot:Ljava/io/File;

    if-eqz v0, :cond_10f

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaRoot:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/phoneme/corebridge/CoreBridgeNative;->suffixFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_27
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    instance-of p2, p0, Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_f3

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_36} :catch_100
    .catchall {:try_start_27 .. :try_end_36} :catchall_fb

    const/4 p1, 0x1

    :try_start_37
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 p1, 0x3a98

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 p1, 0x7530

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p1, "User-Agent"

    const-string p2, "j2me/1.0 (MIDP-2.0; CLDC-1.1)"

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept"

    const-string p2, "audio/mpeg,audio/*;q=0.8,*/*;q=0.1"

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_d8

    const/16 p2, 0x12c

    if-ge p1, p2, :cond_d8

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide p1
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_67} :catch_f1
    .catchall {:try_start_37 .. :try_end_67} :catchall_108

    const-wide/32 v1, 0x4000000

    cmp-long p1, p1, v1

    const-string p2, "media response exceeds download limit"

    if-gtz p1, :cond_d2

    :try_start_70
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const v2, 0x8000

    new-array v2, v2, [B
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_88} :catch_f1
    .catchall {:try_start_70 .. :try_end_88} :catchall_108

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_8b
    :try_start_8b
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_aa

    if-nez v7, :cond_95

    goto :goto_8b

    :cond_95
    const/high16 v8, 0x4000000

    sub-int/2addr v8, v7

    int-to-long v8, v8

    cmp-long v8, v5, v8

    if-gtz v8, :cond_a4

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v7, v7

    add-long/2addr v5, v7

    goto :goto_8b

    :cond_a4
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_aa
    .catchall {:try_start_8b .. :try_end_aa} :catchall_c6

    :cond_aa
    :try_start_aa
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_ae
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_f1
    .catchall {:try_start_aa .. :try_end_ad} :catchall_108

    goto :goto_af

    :catch_ae
    move-exception p2

    :goto_af
    :try_start_af
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b3
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_f1
    .catchall {:try_start_af .. :try_end_b2} :catchall_108

    goto :goto_b4

    :catch_b3
    move-exception p1

    :goto_b4
    cmp-long p1, v5, v3

    if-lez p1, :cond_be

    if-eqz p0, :cond_bd

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_bd
    return-object v0

    :cond_be
    :try_start_be
    new-instance p1, Ljava/io/IOException;

    const-string p2, "media response is empty"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c6} :catch_f1
    .catchall {:try_start_be .. :try_end_c6} :catchall_108

    :catchall_c6
    move-exception p2

    :try_start_c7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_cb
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_f1
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_108

    goto :goto_cc

    :catch_cb
    move-exception v1

    :goto_cc
    :try_start_cc
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_d0
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_f1
    .catchall {:try_start_cc .. :try_end_cf} :catchall_108

    goto :goto_d1

    :catch_d0
    move-exception p1

    :goto_d1
    :try_start_d1
    throw p2

    :cond_d2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d8
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media HTTP error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_f1} :catch_f1
    .catchall {:try_start_d1 .. :try_end_f1} :catchall_108

    :catch_f1
    move-exception p1

    goto :goto_104

    :cond_f3
    :try_start_f3
    new-instance p0, Ljava/io/IOException;

    const-string p2, "media locator is not HTTP(S)"

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_fb} :catch_100
    .catchall {:try_start_f3 .. :try_end_fb} :catchall_fb

    :catchall_fb
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_109

    :catch_100
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    :goto_104
    :try_start_104
    invoke-static {v0}, Lcom/phoneme/corebridge/CoreBridgeNative;->deleteQuietly(Ljava/io/File;)V

    throw p1
    :try_end_108
    .catchall {:try_start_104 .. :try_end_108} :catchall_108

    :catchall_108
    move-exception p1

    :goto_109
    if-eqz p0, :cond_10e

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10e
    throw p1

    :cond_10f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "media root is unavailable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initializeMedia(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-nez p0, :cond_7

    const/4 p0, 0x0

    goto :goto_b

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_b
    sput-object p0, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaContext:Landroid/content/Context;

    new-instance p0, Ljava/io/File;

    if-nez p1, :cond_13

    const-string p1, ""

    :cond_13
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaRoot:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_23

    sget-object p0, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaRoot:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public static mediaClose(I)V
    .locals 2

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    if-nez p0, :cond_13

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_28

    return-void

    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_19
    .catchall {:try_start_13 .. :try_end_18} :catchall_28

    goto :goto_1a

    :catch_19
    move-exception v1

    :goto_1a
    :try_start_1a
    iget-object v1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_20
    .catchall {:try_start_1a .. :try_end_1f} :catchall_28

    goto :goto_21

    :catch_20
    move-exception v1

    :goto_21
    :try_start_21
    iget-object p0, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->file:Ljava/io/File;

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->deleteQuietly(Ljava/io/File;)V

    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public static mediaCreateData([BLjava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_d7

    array-length v1, p0

    if-nez v1, :cond_8

    goto/16 :goto_d7

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMAPI java createData enter bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_23

    const-string v2, "null"

    goto :goto_24

    :cond_23
    move-object v2, p1

    :goto_24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V

    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_32
    sget-object v2, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaRoot:Ljava/io/File;

    if-nez v2, :cond_38

    monitor-exit v1

    return v0

    :cond_38
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaRoot:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "media_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/phoneme/corebridge/CoreBridgeNative;->nextMediaHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/phoneme/corebridge/CoreBridgeNative;->suffixFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_32 .. :try_end_5c} :catchall_d4

    :try_start_5c
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    sget v3, Lcom/phoneme/corebridge/CoreBridgeNative;->nextMediaHandle:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/phoneme/corebridge/CoreBridgeNative;->nextMediaHandle:I

    new-instance v4, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    invoke-direct {v4, v3, p1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;-><init>(ILandroid/media/MediaPlayer;Ljava/io/File;)V

    invoke-static {v4}, Lcom/phoneme/corebridge/CoreBridgeNative;->attachListeners(Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;)V

    sget-object p1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMAPI java createData prepared handle="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " bytes="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_ae} :catch_b0
    .catchall {:try_start_5c .. :try_end_ae} :catchall_d4

    :try_start_ae
    monitor-exit v1

    return v3

    :catch_b0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMAPI java createData failed type="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->deleteQuietly(Ljava/io/File;)V

    monitor-exit v1

    return v0

    :catchall_d4
    move-exception p0

    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_ae .. :try_end_d6} :catchall_d4

    throw p0

    :cond_d7
    :goto_d7
    return v0
.end method

.method public static mediaCreateLocator(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_258

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_258

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMAPI java createLocator enter host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " locatorLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_37

    const-string v2, "null"

    goto :goto_38

    :cond_37
    move-object v2, p1

    :goto_38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V

    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_46
    sget v2, Lcom/phoneme/corebridge/CoreBridgeNative;->nextMediaHandle:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/phoneme/corebridge/CoreBridgeNative;->nextMediaHandle:I
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_255

    const/4 v3, 0x0

    :try_start_4d
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_c5
    .catchall {:try_start_4d .. :try_end_52} :catchall_255

    :try_start_52
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "User-Agent"

    const-string v7, "j2me/1.0 (MIDP-2.0; CLDC-1.1)"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Accept"

    const-string v7, "audio/mpeg,audio/*;q=0.8,*/*;q=0.1"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaContext:Landroid/content/Context;

    if-eqz v6, :cond_71

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_74

    :cond_71
    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_74
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    const-string v5, "PhoneME-CoreBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMAPI locator prepared directly handle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " host="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMAPI java locator directPrepared handle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " host="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_c1} :catch_c3
    .catchall {:try_start_52 .. :try_end_c1} :catchall_255

    goto/16 :goto_19b

    :catch_c3
    move-exception v5

    goto :goto_c7

    :catch_c5
    move-exception v5

    move-object v4, v3

    :goto_c7
    :try_start_c7
    const-string v6, "PhoneME-CoreBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MMAPI locator direct prepare failed handle="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " host="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMAPI java locator directFailed handle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " host="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V
    :try_end_135
    .catchall {:try_start_c7 .. :try_end_135} :catchall_255

    if-eqz v4, :cond_13d

    :try_start_137
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13a} :catch_13b
    .catchall {:try_start_137 .. :try_end_13a} :catchall_255

    goto :goto_13c

    :catch_13b
    move-exception v4

    :goto_13c
    move-object v4, v3

    :cond_13d
    :try_start_13d
    invoke-static {p0, p1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->downloadLocator(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_146} :catch_1d7
    .catchall {:try_start_13d .. :try_end_146} :catchall_255

    :try_start_146
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    const-string v4, "PhoneME-CoreBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMAPI locator fallback file prepared handle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMAPI java locator fallbackPrepared handle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_19a} :catch_1d5
    .catchall {:try_start_146 .. :try_end_19a} :catchall_255

    move-object v4, p1

    :goto_19b
    :try_start_19b
    new-instance p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    invoke-direct {p0, v2, v4, v3}, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;-><init>(ILandroid/media/MediaPlayer;Ljava/io/File;)V

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->attachListeners(Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;)V

    sget-object p1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "MMAPI java createLocator result handle="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " fallback="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez v3, :cond_1c6

    const-string p1, "0"

    goto :goto_1c8

    :cond_1c6
    const-string p1, "1"

    :goto_1c8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V

    monitor-exit v1

    return v2

    :catch_1d5
    move-exception v4

    goto :goto_1db

    :catch_1d7
    move-exception p1

    move-object v9, v4

    move-object v4, p1

    move-object p1, v9

    :goto_1db
    const-string v5, "PhoneME-CoreBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMAPI locator fallback failed handle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " host="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMAPI java locator fallbackFailed handle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " host="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " error="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V
    :try_end_249
    .catchall {:try_start_19b .. :try_end_249} :catchall_255

    if-eqz p1, :cond_250

    :try_start_24b
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_24e} :catch_24f
    .catchall {:try_start_24b .. :try_end_24e} :catchall_255

    goto :goto_250

    :catch_24f
    move-exception p0

    :cond_250
    :goto_250
    :try_start_250
    invoke-static {v3}, Lcom/phoneme/corebridge/CoreBridgeNative;->deleteQuietly(Ljava/io/File;)V

    monitor-exit v1

    return v0

    :catchall_255
    move-exception p0

    monitor-exit v1
    :try_end_257
    .catchall {:try_start_250 .. :try_end_257} :catchall_255

    throw p0

    :cond_258
    :goto_258
    return v0
.end method

.method public static mediaGetDuration(I)J
    .locals 5

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    const-wide/16 v1, -0x1

    if-nez p0, :cond_15

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_27

    return-wide v1

    :cond_15
    :try_start_15
    iget-object v3, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1b} :catch_21
    .catchall {:try_start_15 .. :try_end_1b} :catchall_27

    int-to-long v1, p0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    :try_start_1f
    monitor-exit v0

    return-wide v1

    :catch_21
    move-exception v3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->error:Z

    monitor-exit v0

    return-wide v1

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_27

    throw p0
.end method

.method public static mediaGetTime(I)J
    .locals 5

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    const-wide/16 v1, -0x1

    if-nez p0, :cond_15

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_27

    return-wide v1

    :cond_15
    :try_start_15
    iget-object v3, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1b} :catch_21
    .catchall {:try_start_15 .. :try_end_1b} :catchall_27

    int-to-long v1, p0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    :try_start_1f
    monitor-exit v0

    return-wide v1

    :catch_21
    move-exception v3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->error:Z

    monitor-exit v0

    return-wide v1

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_27

    throw p0
.end method

.method public static mediaHasEnded(I)I
    .locals 2

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    if-eqz p0, :cond_17

    iget-boolean p0, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->ended:Z

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public static mediaHasError(I)I
    .locals 2

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    if-eqz p0, :cond_17

    iget-boolean p0, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->error:Z

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private static mediaHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    :cond_11
    const-string p0, "unknown"
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    return-object p0

    :catch_14
    move-exception p0

    const-string p0, "invalid"

    return-object p0
.end method

.method public static mediaIsPlaying(I)I
    .locals 3

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    const/4 v1, 0x0

    if-eqz p0, :cond_25

    iget-boolean v2, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->error:Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_27

    if-eqz v2, :cond_17

    goto :goto_25

    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_1f
    .catchall {:try_start_17 .. :try_end_1d} :catchall_27

    :try_start_1d
    monitor-exit v0

    return p0

    :catch_1f
    move-exception v2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->error:Z

    monitor-exit v0

    return v1

    :cond_25
    :goto_25
    monitor-exit v0

    return v1

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_27

    throw p0
.end method

.method public static mediaPlayTone(III)I
    .locals 2

    if-ltz p0, :cond_24

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_24

    if-lez p1, :cond_24

    const/16 v0, 0x2710

    if-gt p1, v0, :cond_24

    if-ltz p2, :cond_24

    const/16 v0, 0x64

    if-le p2, v0, :cond_13

    goto :goto_24

    :cond_13
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/phoneme/corebridge/CoreBridgeNative$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/phoneme/corebridge/CoreBridgeNative$3;-><init>(III)V

    const-string p0, "PhoneME-Tone"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0

    :cond_24
    :goto_24
    const/4 p0, 0x0

    return p0
.end method

.method public static mediaSetLoopCount(II)V
    .locals 4

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    if-nez p0, :cond_13

    monitor-exit v0

    return-void

    :cond_13
    iput p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->loopCount:I

    iput p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->remainingLoops:I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_29

    const/4 v1, 0x1

    :try_start_18
    iget-object v2, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1f

    move p1, v1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_24
    .catchall {:try_start_18 .. :try_end_23} :catchall_29

    goto :goto_27

    :catch_24
    move-exception p1

    :try_start_25
    iput-boolean v1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->error:Z

    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public static mediaSetMute(II)V
    .locals 2

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    if-nez p0, :cond_13

    monitor-exit v0

    return-void

    :cond_13
    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput-boolean p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->muted:Z

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->applyVolume(Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;)V

    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public static mediaSetTime(IJ)J
    .locals 7

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    const-wide/16 v1, -0x1

    if-nez p0, :cond_15

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3e

    return-wide v1

    :cond_15
    const-wide/16 v3, 0x3e8

    :try_start_17
    div-long/2addr p1, v3

    const-wide/32 v5, 0x7fffffff

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iget-object p2, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->ended:Z

    iget-object p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_34} :catch_38
    .catchall {:try_start_17 .. :try_end_34} :catchall_3e

    int-to-long p0, p0

    mul-long/2addr p0, v3

    :try_start_36
    monitor-exit v0

    return-wide p0

    :catch_38
    move-exception p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->error:Z

    monitor-exit v0

    return-wide v1

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public static mediaSetVolume(II)V
    .locals 3

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    if-nez p0, :cond_13

    monitor-exit v0

    return-void

    :cond_13
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {p1, v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->volume:I

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->applyVolume(Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;)V

    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public static mediaStart(I)I
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMAPI java start enter handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_19
    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMAPI java start missing handle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_19 .. :try_end_3f} :catchall_a8

    return v2

    :cond_40
    const/4 v3, 0x1

    :try_start_41
    iget-boolean v4, v1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->ended:Z

    if-eqz v4, :cond_4c

    iget-object v4, v1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    iput-boolean v2, v1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->ended:Z

    :cond_4c
    iget-object v4, v1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    iput-boolean v3, v1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->started:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMAPI java start ok handle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " playing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_79} :catch_7b
    .catchall {:try_start_41 .. :try_end_79} :catchall_a8

    :try_start_79
    monitor-exit v0

    return v3

    :catch_7b
    move-exception v4

    iput-boolean v3, v1, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->error:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMAPI java start failed handle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " error="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->mediaTrace(Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :catchall_a8
    move-exception p0

    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_79 .. :try_end_aa} :catchall_a8

    throw p0
.end method

.method public static mediaStop(I)I
    .locals 4

    sget-object v0, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/phoneme/corebridge/CoreBridgeNative;->MEDIA:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;

    const/4 v1, 0x0

    if-nez p0, :cond_14

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2b

    return v1

    :cond_14
    const/4 v2, 0x1

    :try_start_15
    iget-object v3, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    :cond_22
    iput-boolean v1, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->started:Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_26
    .catchall {:try_start_15 .. :try_end_24} :catchall_2b

    :try_start_24
    monitor-exit v0

    return v2

    :catch_26
    move-exception v3

    iput-boolean v2, p0, Lcom/phoneme/corebridge/CoreBridgeNative$MediaEntry;->error:Z

    monitor-exit v0

    return v1

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method private static mediaTrace(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeMediaTrace(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    :goto_5
    return-void
.end method

.method public static native nativeApiVersion()I
.end method

.method public static native nativeConfigure(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeCopyFrameSince(JJ[B[I)I
.end method

.method public static native nativeCopyLcduiImageRgba(JI[B[I)I
.end method

.method public static native nativeCreate()J
.end method

.method public static native nativeDebugLog()Ljava/lang/String;
.end method

.method public static native nativeDestroy(J)V
.end method

.method public static native nativeFlushDebugLog()V
.end method

.method public static native nativeIsRunning(J)Z
.end method

.method public static native nativeLastError(J)Ljava/lang/String;
.end method

.method public static native nativeLastExitCode(J)I
.end method

.method public static native nativeLcdUiActivateItem(JI)V
.end method

.method public static native nativeLcdUiFocusItem(JI)V
.end method

.method public static native nativeLcdUiSelectCommand(JI)V
.end method

.method public static native nativeLcdUiSelectListItemCommand(JIII)V
.end method

.method public static native nativeLcdUiSetChoice(JIII)V
.end method

.method public static native nativeLcdUiSetGauge(JII)V
.end method

.method public static native nativeLcdUiSetText(JILjava/lang/String;I)V
.end method

.method public static native nativeLogFilePath()Ljava/lang/String;
.end method

.method private static native nativeMediaTrace(Ljava/lang/String;)V
.end method

.method public static native nativeMidletError(JI)Ljava/lang/String;
.end method

.method public static native nativePollLcdUiEvent(J)[Ljava/lang/Object;
.end method

.method public static native nativePump(J)V
.end method

.method public static native nativeSchedulerSnapshot(J)Ljava/lang/String;
.end method

.method public static native nativeSendKey(JII)V
.end method

.method public static native nativeSendPointer(JIII)V
.end method

.method public static native nativeStartJar(JLjava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native nativeStartJarScoped(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native nativeStop(J)V
.end method

.method private static playToneInternal(III)V
    .locals 12

    const v0, 0xac44

    mul-int v1, p1, v0

    div-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v2, v1, [S

    add-int/lit8 p0, p0, -0x45

    int-to-double v3, p0

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide v5, 0x407b800000000000L    # 440.0

    mul-double/2addr v3, v5

    int-to-double v5, p2

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    const-wide v7, 0x40dfffc000000000L    # 32767.0

    mul-double/2addr v5, v7

    const/4 p0, 0x0

    move p2, p0

    :goto_2c
    if-ge p2, v1, :cond_44

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v7, v3

    int-to-double v9, p2

    mul-double/2addr v7, v9

    int-to-double v9, v0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int v7, v7

    int-to-short v7, v7

    aput-short v7, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2c

    :cond_44
    mul-int/lit8 p2, v1, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v3, 0x0

    :try_start_4d
    new-instance v11, Landroid/media/AudioTrack;

    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v10, 0x0

    const v6, 0xac44

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIII)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5e} :catch_83
    .catchall {:try_start_4d .. :try_end_5e} :catchall_77

    :try_start_5e
    invoke-virtual {v11, v2, p0, v1}, Landroid/media/AudioTrack;->write([SII)I

    invoke-virtual {v11}, Landroid/media/AudioTrack;->play()V

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_68} :catch_74
    .catchall {:try_start_5e .. :try_end_68} :catchall_71

    :try_start_68
    invoke-virtual {v11}, Landroid/media/AudioTrack;->stop()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_6d

    :catch_6c
    move-exception p0

    :goto_6d
    invoke-virtual {v11}, Landroid/media/AudioTrack;->release()V

    goto :goto_8e

    :catchall_71
    move-exception p0

    move-object v3, v11

    goto :goto_78

    :catch_74
    move-exception p0

    move-object v3, v11

    goto :goto_84

    :catchall_77
    move-exception p0

    :goto_78
    if-eqz v3, :cond_82

    :try_start_7a
    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_7f

    :catch_7e
    move-exception p1

    :goto_7f
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    :cond_82
    throw p0

    :catch_83
    move-exception p0

    :goto_84
    if-eqz v3, :cond_8e

    :try_start_86
    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8b

    :catch_8a
    move-exception p0

    :goto_8b
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    :cond_8e
    :goto_8e
    return-void
.end method

.method private static suffixFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".bin"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "wav"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_52

    const-string v1, "wave"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1c

    goto :goto_52

    :cond_1c
    const-string v1, "mpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4f

    const-string v1, "mp3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2d

    goto :goto_4f

    :cond_2d
    const-string v1, "ogg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_38

    const-string p0, ".ogg"

    return-object p0

    :cond_38
    const-string v1, "amr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_43

    const-string p0, ".amr"

    return-object p0

    :cond_43
    const-string v1, "mid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_4e

    const-string p0, ".mid"

    return-object p0

    :cond_4e
    return-object v0

    :cond_4f
    :goto_4f
    const-string p0, ".mp3"

    return-object p0

    :cond_52
    :goto_52
    const-string p0, ".wav"

    return-object p0
.end method
