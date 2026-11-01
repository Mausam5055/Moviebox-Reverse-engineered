.class public Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/executor/IExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;
    }
.end annotation


# static fields
.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final MAJOR_CORE_POOL_SIZE:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final SLAVE_CORE_POOL_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DefaultExecutorService"

.field private static final TYPE_MAJOR_POOL:Ljava/lang/String; = "major_pool"

.field private static final TYPE_SLAVE_POOL:Ljava/lang/String; = "slave_pool"

.field private static final sMajorThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sSlaveThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLogPool:Ljava/util/concurrent/ExecutorService;

.field private mMajorExecutor:Ljava/util/concurrent/Executor;

.field private mScheduledThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mSlaveExecutor:Ljava/util/concurrent/Executor;

.field private mSyncExecutor:Ljava/util/concurrent/Executor;

.field private mUiExecutor:Ljava/util/concurrent/Executor;

.field private final sMajorPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final sSlavePoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->CPU_COUNT:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->MAJOR_CORE_POOL_SIZE:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->MAXIMUM_POOL_SIZE:I

    new-instance v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$3;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$3;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->sMajorThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$4;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$4;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->sSlaveThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mLogPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->sMajorPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->sSlavePoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$1;-><init>(Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mSyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$2;-><init>(Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mUiExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->lambda$printStats$1(Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->lambda$getExecutor$0(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic lambda$getExecutor$0(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;

    invoke-direct {v0, p3, p1}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;-><init>(Ljava/lang/Runnable;Lcom/cloud/tmc/kernel/executor/ExecutorType;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d2\u5165 task: type"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "TmcExecutorService"

    invoke-static {v1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-class p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    invoke-interface {p3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;->isDebug()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    if-eq p1, p3, :cond_1

    sget-object p3, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IDLE:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "major_pool"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "slave_pool"

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->printStats(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$printStats$1(Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=========================Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultExecutorService"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pool Size: {}, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active Threads: {}, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of Tasks Completed: {}, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of Tasks in Queue: {}, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "========================="

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private printStats(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 2

    instance-of v0, p2, Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mLogPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mLogPool:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mLogPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/b;

    invoke-direct {v1, p1, p2}, Lcom/cloud/tmc/kernel/coreimpl/b;-><init>(Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getExecutor(Lcom/cloud/tmc/kernel/executor/ExecutorType;)Ljava/util/concurrent/Executor;
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mUiExecutor:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :try_start_1
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->SYNC:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mSyncExecutor:Ljava/util/concurrent/Executor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IDLE:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mMajorExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_4

    sget v2, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->MAJOR_CORE_POOL_SIZE:I

    sget v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->MAXIMUM_POOL_SIZE:I

    if-ge v0, v2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->sMajorPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->sMajorThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mMajorExecutor:Ljava/util/concurrent/Executor;

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mMajorExecutor:Ljava/util/concurrent/Executor;

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mSlaveExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_7

    sget v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->MAXIMUM_POOL_SIZE:I

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ge v0, v2, :cond_6

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v0

    :goto_2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->sSlavePoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->sSlaveThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mSlaveExecutor:Ljava/util/concurrent/Executor;

    :cond_7
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mSlaveExecutor:Ljava/util/concurrent/Executor;

    :goto_3
    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/a;

    invoke-direct {v1, p0, p1, v0}, Lcom/cloud/tmc/kernel/coreimpl/a;-><init>(Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mScheduledThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mScheduledThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->mScheduledThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
