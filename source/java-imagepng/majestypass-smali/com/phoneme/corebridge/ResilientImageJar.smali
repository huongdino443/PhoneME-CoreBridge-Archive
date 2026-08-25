.class public final Lcom/phoneme/corebridge/ResilientImageJar;
.super Ljava/lang/Object;
.source "ResilientImageJar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phoneme/corebridge/ResilientImageJar$Payload;
    }
.end annotation


# static fields
.field private static final NORMALIZED_MARKER:Ljava/lang/String; = ".corebridge-image-normalized.jar"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 144
    :try_start_5
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_28

    .line 146
    const/16 p1, 0x2000

    :try_start_c
    new-array p1, p1, [B

    .line 148
    :goto_e
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_23

    goto :goto_e

    .line 150
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    .line 151
    nop

    .line 153
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 154
    nop

    .line 155
    return-void

    .line 150
    :catchall_23
    move-exception p1

    :try_start_24
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 151
    throw p1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    .line 153
    :catchall_28
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 154
    throw p0
.end method

.method private static decodePng([B)[B
    .registers 5

    .line 118
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    array-length v2, p0

    invoke-static {p0, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    if-nez v0, :cond_a

    return-object v1

    .line 120
    :cond_a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length p0, p0

    invoke-direct {v2, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 121
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, p0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    if-eqz p0, :cond_21

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    :cond_21
    return-object v1

    .line 124
    :catchall_22
    move-exception p0

    .line 125
    return-object v1
.end method

.method private static isGif([B)Z
    .registers 5

    .line 165
    const/4 v0, 0x0

    if-eqz p0, :cond_37

    array-length v1, p0

    const/4 v2, 0x6

    if-ge v1, v2, :cond_8

    goto :goto_37

    .line 166
    :cond_8
    aget-byte v1, p0, v0

    const/16 v2, 0x47

    const/4 v3, 0x1

    if-ne v1, v2, :cond_36

    aget-byte v1, p0, v3

    const/16 v2, 0x49

    if-ne v1, v2, :cond_36

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x46

    if-ne v1, v2, :cond_36

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_36

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    const/16 v2, 0x37

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x39

    if-ne v1, v2, :cond_36

    :cond_2e
    const/4 v1, 0x5

    aget-byte p0, p0, v1

    const/16 v1, 0x61

    if-ne p0, v1, :cond_36

    const/4 v0, 0x1

    :cond_36
    return v0

    .line 165
    :cond_37
    :goto_37
    return v0
.end method

.method private static isJpeg([B)Z
    .registers 6

    .line 158
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    array-length v2, p0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1d

    aget-byte v2, p0, v1

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1d

    aget-byte v2, p0, v0

    and-int/2addr v2, v3

    const/16 v4, 0xd8

    if-ne v2, v4, :cond_1d

    const/4 v2, 0x2

    aget-byte p0, p0, v2

    and-int/2addr p0, v3

    if-ne p0, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method private static isSignatureFile(Ljava/lang/String;)Z
    .registers 2

    .line 172
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 173
    const-string v0, "META-INF/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 174
    const-string v0, ".SF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, ".RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 175
    const-string v0, ".DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, ".EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    :cond_2e
    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    .line 173
    :goto_31
    return p0
.end method

.method public static normalize(Ljava/io/File;)Ljava/io/File;
    .registers 12

    .line 34
    const-string v0, "."

    if-eqz p0, :cond_163

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_163

    .line 35
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".corebridge-image-normalized.jar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    return-object p0

    .line 37
    :cond_19
    nop

    .line 39
    const/4 v1, 0x0

    :try_start_1b
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_159

    .line 40
    :try_start_20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 43
    :goto_2a
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 44
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 45
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_45

    .line 46
    new-instance v8, Lcom/phoneme/corebridge/ResilientImageJar$Payload;

    invoke-direct {v8, v7, v1}, Lcom/phoneme/corebridge/ResilientImageJar$Payload;-><init>(Ljava/util/zip/ZipEntry;[B)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_2a

    .line 49
    :cond_45
    invoke-virtual {v3, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/phoneme/corebridge/ResilientImageJar;->readAll(Ljava/io/InputStream;)[B

    move-result-object v8

    .line 50
    nop

    .line 51
    invoke-static {v8}, Lcom/phoneme/corebridge/ResilientImageJar;->isJpeg([B)Z

    move-result v9

    if-nez v9, :cond_5a

    invoke-static {v8}, Lcom/phoneme/corebridge/ResilientImageJar;->isGif([B)Z

    move-result v9

    if-eqz v9, :cond_66

    .line 52
    :cond_5a
    invoke-static {v8}, Lcom/phoneme/corebridge/ResilientImageJar;->decodePng([B)[B

    move-result-object v9

    .line 53
    if-eqz v9, :cond_66

    array-length v10, v9

    if-lez v10, :cond_66

    .line 54
    nop

    .line 55
    const/4 v5, 0x1

    move-object v8, v9

    .line 58
    :cond_66
    new-instance v9, Lcom/phoneme/corebridge/ResilientImageJar$Payload;

    invoke-direct {v9, v7, v8}, Lcom/phoneme/corebridge/ResilientImageJar$Payload;-><init>(Ljava/util/zip/ZipEntry;[B)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catchall {:try_start_20 .. :try_end_6e} :catchall_156

    .line 59
    goto :goto_2a

    .line 60
    :cond_6f
    if-nez v5, :cond_78

    .line 97
    nop

    .line 99
    :try_start_72
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 101
    goto :goto_77

    .line 100
    :catch_76
    move-exception v0

    .line 60
    :goto_77
    return-object p0

    .line 62
    :cond_78
    :try_start_78
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_14f

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_86

    goto/16 :goto_14f

    .line 64
    :cond_86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_c6
    .catchall {:try_start_78 .. :try_end_c6} :catchall_156

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_d3

    .line 97
    nop

    .line 99
    :try_start_cd
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    .line 101
    goto :goto_d2

    .line 100
    :catch_d1
    move-exception p0

    .line 67
    :goto_d2
    return-object v2

    .line 69
    :cond_d3
    :try_start_d3
    const-string v0, "corebridge-images-"

    const-string v5, ".jar"

    invoke-static {v0, v5, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_db
    .catchall {:try_start_d3 .. :try_end_db} :catchall_156

    .line 71
    :try_start_db
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e5
    .catchall {:try_start_db .. :try_end_e5} :catchall_143

    .line 73
    :try_start_e5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_120

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/phoneme/corebridge/ResilientImageJar$Payload;

    .line 74
    iget-object v6, v5, Lcom/phoneme/corebridge/ResilientImageJar$Payload;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-static {v6}, Lcom/phoneme/corebridge/ResilientImageJar;->isSignatureFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_102

    goto :goto_e9

    .line 76
    :cond_102
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-direct {v7, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v6, v5, Lcom/phoneme/corebridge/ResilientImageJar$Payload;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 78
    invoke-virtual {v1, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 79
    iget-object v6, v5, Lcom/phoneme/corebridge/ResilientImageJar$Payload;->bytes:[B

    if-eqz v6, :cond_11c

    iget-object v5, v5, Lcom/phoneme/corebridge/ResilientImageJar$Payload;->bytes:[B

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 80
    :cond_11c
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_11f
    .catchall {:try_start_e5 .. :try_end_11f} :catchall_13e

    .line 81
    goto :goto_e9

    .line 83
    :cond_120
    :try_start_120
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 84
    nop

    .line 85
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_130

    .line 86
    invoke-static {v0, v2}, Lcom/phoneme/corebridge/ResilientImageJar;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    :cond_130
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0
    :try_end_134
    .catchall {:try_start_120 .. :try_end_134} :catchall_143

    if-eqz v0, :cond_137

    move-object p0, v2

    .line 97
    :cond_137
    nop

    .line 99
    :try_start_138
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_13c

    .line 101
    goto :goto_13d

    .line 100
    :catch_13c
    move-exception v0

    .line 89
    :goto_13d
    return-object p0

    .line 83
    :catchall_13e
    move-exception v2

    :try_start_13f
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 84
    throw v2
    :try_end_143
    .catchall {:try_start_13f .. :try_end_143} :catchall_143

    .line 90
    :catchall_143
    move-exception v1

    .line 91
    :try_start_144
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_147
    .catchall {:try_start_144 .. :try_end_147} :catchall_156

    .line 92
    nop

    .line 97
    nop

    .line 99
    :try_start_149
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14c} :catch_14d

    .line 101
    goto :goto_14e

    .line 100
    :catch_14d
    move-exception v0

    .line 92
    :goto_14e
    return-object p0

    .line 97
    :cond_14f
    :goto_14f
    nop

    .line 99
    :try_start_150
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_154

    .line 101
    goto :goto_155

    .line 100
    :catch_154
    move-exception v0

    .line 63
    :goto_155
    return-object p0

    .line 94
    :catchall_156
    move-exception v0

    move-object v1, v3

    goto :goto_15a

    :catchall_159
    move-exception v0

    .line 95
    :goto_15a
    nop

    .line 97
    if-eqz v1, :cond_162

    .line 99
    :try_start_15d
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_160} :catch_161

    .line 101
    goto :goto_162

    .line 100
    :catch_161
    move-exception v0

    .line 95
    :cond_162
    :goto_162
    return-object p0

    .line 34
    :cond_163
    :goto_163
    return-object p0
.end method

.method private static readAll(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 134
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 135
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1d

    .line 137
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 135
    return-object v0

    .line 137
    :catchall_1d
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 138
    throw v0
.end method
