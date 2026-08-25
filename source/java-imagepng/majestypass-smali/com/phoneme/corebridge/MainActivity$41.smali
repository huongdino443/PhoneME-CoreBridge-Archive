.class Lcom/phoneme/corebridge/MainActivity$41;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phoneme/corebridge/MainActivity;->installCrashHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phoneme/corebridge/MainActivity;

.field final synthetic val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity$41;->this$0:Lcom/phoneme/corebridge/MainActivity;

    iput-object p2, p0, Lcom/phoneme/corebridge/MainActivity$41;->val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$41;->this$0:Lcom/phoneme/corebridge/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/phoneme/corebridge/MainActivity;->writeCrashDiagnostics(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity$41;->val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method
