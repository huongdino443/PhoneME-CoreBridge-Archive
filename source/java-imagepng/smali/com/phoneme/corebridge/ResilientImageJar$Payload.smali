.class final Lcom/phoneme/corebridge/ResilientImageJar$Payload;
.super Ljava/lang/Object;
.source "ResilientImageJar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phoneme/corebridge/ResilientImageJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Payload"
.end annotation


# instance fields
.field final bytes:[B

.field final entry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipEntry;[B)V
    .registers 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/phoneme/corebridge/ResilientImageJar$Payload;->entry:Ljava/util/zip/ZipEntry;

    .line 112
    iput-object p2, p0, Lcom/phoneme/corebridge/ResilientImageJar$Payload;->bytes:[B

    .line 113
    return-void
.end method
