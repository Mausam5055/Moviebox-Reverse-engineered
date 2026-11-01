.class public final Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0013\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J5\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2%\u0008\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000bJ\u0006\u0010\u000e\u001a\u00020\u0007J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0012\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0006\u0010\u0012\u001a\u00020\u0013R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;",
        "",
        "executor",
        "Ljava/util/concurrent/ExecutorService;",
        "(Ljava/util/concurrent/ExecutorService;)V",
        "mExecutor",
        "dispatch",
        "",
        "task",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "onCompleted",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "dispatcherEnd",
        "execute",
        "submit",
        "Ljava/util/concurrent/Future;",
        "runnable",
        "Ljava/lang/Runnable;",
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
.field public static final Companion:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$Companion;

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: DownLoadDispatcher"


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->Companion:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;-><init>(Ljava/util/concurrent/ExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;

    const-string v2, "DownLoadThreadFactory"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->dispatch$lambda$1$lambda$0(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$execute(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->dispatch$lambda$1(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->dispatch$lambda$2(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic dispatch$default(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->dispatch(Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final dispatch$lambda$1(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lkotlin/jvm/functions/Function1;)Z
    .locals 2

    const-string v0, "$task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute idleHandler task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcOfflineDownload: DownLoadDispatcher"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cloud/tmc/offline/download/thread/c;

    invoke-direct {v1, p1, p0, p2}, Lcom/cloud/tmc/offline/download/thread/c;-><init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static final dispatch$lambda$1$lambda$0(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final dispatch$lambda$2(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final execute(Lcom/cloud/tmc/offline/download/task/base/ITask;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcOfflineDownload: DownLoadDispatcher"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;

    invoke-direct {v0, p1, p0, p1}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher$execute$1$1;-><init>(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/offline/download/task/base/ITask;->run(Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "execute task run failed!"

    invoke-static {v1, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final dispatch(Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/task/base/ITask;->isIdleRunTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/offline/download/thread/a;

    invoke-direct {v1, p1, p0, p2}, Lcom/cloud/tmc/offline/download/thread/a;-><init>(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cloud/tmc/offline/download/thread/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/tmc/offline/download/thread/b;-><init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final dispatcherEnd()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->isAppDebugAble()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TmcOfflineDownload: DownLoadDispatcher"

    const-string v1, "auto shutdown default executor"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-string v0, "mExecutor.submit(runnable)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
