.class public final Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\'\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u0002J\u0006\u0010\u0014\u001a\u00020\u0010J\u0008\u0010\u0015\u001a\u00020\u0010H\u0016J\u0008\u0010\u0016\u001a\u00020\u0010H\u0002J\u0006\u0010\u0017\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;",
        "Ljava/lang/Runnable;",
        "dispatcher",
        "Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;",
        "parallelism",
        "",
        "mTask",
        "Ljava/util/concurrent/BlockingQueue;",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;ILjava/util/concurrent/BlockingQueue;)V",
        "inFlightTasks",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "isRunning",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "waitCountLimit",
        "log",
        "",
        "",
        "printStack",
        "",
        "quit",
        "run",
        "sleep",
        "startQueue",
        "Companion",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$Companion;

.field private static final MAX_WAIT_COUNT_LIMIT:I = 0x3

.field private static final MAX_WAIT_TIMEOUT:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: TaskExecutor"


# instance fields
.field private final dispatcher:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

.field private final inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTask:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            ">;"
        }
    .end annotation
.end field

.field private final parallelism:I

.field private final waitCountLimit:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->Companion:Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;ILjava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;",
            "I",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mTask"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->dispatcher:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    iput p2, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->parallelism:I

    iput-object p3, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->mTask:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->waitCountLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;ILjava/util/concurrent/BlockingQueue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;-><init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;ILjava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public static final synthetic access$getInFlightTasks$p(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private final log(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/Throwable;

    const-string v0, "Just Print"

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TmcOfflineDownload: TaskExecutor"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private final sleep()V
    .locals 3

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TmcOfflineDownload: TaskExecutor"

    const-string v2, "InterruptedException while sleeping."

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final quit()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "quit"

    invoke-static {p0, v3, v1, v0, v2}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "TmcOfflineDownload: TaskExecutor"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Start Waiting..."

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->mTask:Ljava/util/concurrent/BlockingQueue;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2710

    invoke-interface {v0, v5, v6, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/offline/download/task/base/ITask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting for task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->waitCountLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incrementAndGet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    const-string v0, "When the maximum number of acquisition timeouts is reached, exit the current thread"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->quit()V

    return-void

    :cond_1
    move-object v0, v3

    :cond_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->waitCountLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_3
    iget-object v4, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inFlight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    iget v5, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->parallelism:I

    if-gt v4, v5, :cond_5

    if-eqz v0, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Run task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->dispatcher:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    new-instance v2, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$run$2$1;

    invoke-direct {v2, p0, v0}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor$run$2$1;-><init>(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->dispatch(Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->sleep()V

    if-eqz v0, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reached the maximum parallelism, re-throw into the queue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1, v2, v3}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->mTask:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/16 :goto_0

    :catch_0
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->quit()V

    :cond_7
    return-void
.end method

.method public final startQueue()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "startQueue"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->log$default(Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->inFlightTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->waitCountLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/queue/TaskExecutor;->dispatcher:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
