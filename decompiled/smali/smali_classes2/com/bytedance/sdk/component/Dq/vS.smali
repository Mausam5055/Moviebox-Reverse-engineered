.class public Lcom/bytedance/sdk/component/Dq/vS;
.super Lcom/bytedance/sdk/component/Dq/HiB;


# static fields
.field private static volatile Dq:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static EjP:Z

.field private static volatile HiB:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile Jcg:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final Sj:I

.field private static volatile TEQ:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static TKC:I

.field private static volatile Ym:Ljava/util/concurrent/ScheduledExecutorService;

.field public static sP:Lcom/bytedance/sdk/component/Dq/TKC;

.field private static volatile uA:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile vS:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/component/Dq/vS;->Sj:I

    const/16 v0, 0x78

    sput v0, Lcom/bytedance/sdk/component/Dq/vS;->TKC:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/component/Dq/vS;->EjP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Dq/HiB;-><init>()V

    return-void
.end method

.method public static Dq()Ljava/util/concurrent/RejectedExecutionHandler;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/Dq/vS$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Dq/vS$1;-><init>()V

    return-object v0
.end method

.method public static EjP()Ljava/util/concurrent/ExecutorService;
    .locals 5

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->Dq:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/Dq/vS;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/Dq/vS;->Dq:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;-><init>()V

    const-string v2, "log"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->Dq()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/HiB;->Sj()Lcom/bytedance/sdk/component/Dq/TEQ;

    move-result-object v3

    const-string v4, "log"

    invoke-interface {v3, v2, v4}, Lcom/bytedance/sdk/component/Dq/TEQ;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/Dq/uA;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj()Lcom/bytedance/sdk/component/Dq/Sj;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/component/Dq/vS;->Dq:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->Dq:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static EjP(Lcom/bytedance/sdk/component/Dq/Dq;)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->TEQ:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->HiB()Ljava/util/concurrent/ExecutorService;

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->TEQ:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->TEQ:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static HiB()Ljava/util/concurrent/ExecutorService;
    .locals 5

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->TEQ:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/Dq/vS;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/Dq/vS;->TEQ:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;-><init>()V

    const-string v2, "aidl"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->Dq()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/HiB;->Sj()Lcom/bytedance/sdk/component/Dq/TEQ;

    move-result-object v3

    const-string v4, "aidl"

    invoke-interface {v3, v2, v4}, Lcom/bytedance/sdk/component/Dq/TEQ;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/Dq/uA;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj()Lcom/bytedance/sdk/component/Dq/Sj;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/component/Dq/vS;->TEQ:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->TEQ:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static HiB(Lcom/bytedance/sdk/component/Dq/Dq;)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->Jcg:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/bytedance/sdk/component/Dq/vS;->sP(I)Ljava/util/concurrent/ExecutorService;

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->Jcg:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->Jcg:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static Jcg()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/Dq/vS;->EjP:Z

    return v0
.end method

.method public static Sj(I)Ljava/util/concurrent/ExecutorService;
    .locals 4

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->vS:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/Dq/vS;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/Dq/vS;->vS:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;-><init>()V

    const-string v2, "io"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->Dq()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/HiB;->Sj()Lcom/bytedance/sdk/component/Dq/TEQ;

    move-result-object v2

    const-string v3, "io"

    invoke-interface {v2, p0, v3}, Lcom/bytedance/sdk/component/Dq/TEQ;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/Dq/uA;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj()Lcom/bytedance/sdk/component/Dq/Sj;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/component/Dq/vS;->vS:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/component/Dq/vS;->vS:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->HiB:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->sP()Ljava/util/concurrent/ExecutorService;

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->HiB:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->HiB:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Dq/Dq;I)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/component/Dq/vS;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Dq/Dq;II)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->vS:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/bytedance/sdk/component/Dq/vS;->Sj(I)Ljava/util/concurrent/ExecutorService;

    :cond_0
    if-eqz p0, :cond_1

    sget-object p2, Lcom/bytedance/sdk/component/Dq/vS;->vS:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;->setPriority(I)V

    sget-object p1, Lcom/bytedance/sdk/component/Dq/vS;->vS:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Dq/TKC;)V
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/component/Dq/vS;->sP:Lcom/bytedance/sdk/component/Dq/TKC;

    return-void
.end method

.method public static Sj(Z)V
    .locals 0

    sput-boolean p0, Lcom/bytedance/sdk/component/Dq/vS;->EjP:Z

    return-void
.end method

.method public static TEQ()Ljava/util/concurrent/ExecutorService;
    .locals 5

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->uA:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/Dq/vS;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/Dq/vS;->uA:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;-><init>()V

    const-string v2, "computation"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->Dq()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/HiB;->Sj()Lcom/bytedance/sdk/component/Dq/TEQ;

    move-result-object v3

    const-string v4, "computation"

    invoke-interface {v3, v2, v4}, Lcom/bytedance/sdk/component/Dq/TEQ;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/Dq/uA;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj()Lcom/bytedance/sdk/component/Dq/Sj;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/component/Dq/vS;->uA:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->uA:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static TKC()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/bytedance/sdk/component/Dq/vS;->Sj(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static TKC(I)V
    .locals 0

    sput p0, Lcom/bytedance/sdk/component/Dq/vS;->TKC:I

    return-void
.end method

.method public static TKC(Lcom/bytedance/sdk/component/Dq/Dq;)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->Dq:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->EjP()Ljava/util/concurrent/ExecutorService;

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->Dq:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->Dq:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;->setPriority(I)V

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/Dq/vS;->EjP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method public static sP()Ljava/util/concurrent/ExecutorService;
    .locals 5

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->HiB:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/Dq/vS;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/Dq/vS;->HiB:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;-><init>()V

    const-string v2, "init"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const-wide/16 v3, 0x5

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    new-instance v3, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v3}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->Dq()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/HiB;->Sj()Lcom/bytedance/sdk/component/Dq/TEQ;

    move-result-object v3

    const-string v4, "init"

    invoke-interface {v3, v2, v4}, Lcom/bytedance/sdk/component/Dq/TEQ;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/Dq/uA;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj()Lcom/bytedance/sdk/component/Dq/Sj;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/component/Dq/vS;->HiB:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->HiB:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static sP(I)Ljava/util/concurrent/ExecutorService;
    .locals 4

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->Jcg:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/Dq/vS;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/Dq/vS;->Jcg:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;-><init>()V

    const-string v2, "ad"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->Dq()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/HiB;->Sj()Lcom/bytedance/sdk/component/Dq/TEQ;

    move-result-object v2

    const-string v3, "ad"

    invoke-interface {v2, p0, v3}, Lcom/bytedance/sdk/component/Dq/TEQ;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/Dq/uA;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj()Lcom/bytedance/sdk/component/Dq/Sj;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/component/Dq/vS;->Jcg:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/component/Dq/vS;->Jcg:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public static sP(Lcom/bytedance/sdk/component/Dq/Dq;)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->vS:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->TKC()Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->vS:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->vS:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static sP(Lcom/bytedance/sdk/component/Dq/Dq;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;->setPriority(I)V

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/Dq/vS;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method public static uA()Lcom/bytedance/sdk/component/Dq/TKC;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->sP:Lcom/bytedance/sdk/component/Dq/TKC;

    return-object v0
.end method

.method public static vS()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->Ym:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/Dq/vS;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/Dq/vS;->Ym:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/HiB;->Sj()Lcom/bytedance/sdk/component/Dq/TEQ;

    move-result-object v1

    const-string v2, "scheduled"

    const/4 v3, 0x5

    invoke-interface {v1, v3, v2}, Lcom/bytedance/sdk/component/Dq/TEQ;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/Dq/uA;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/component/Dq/vS;->Ym:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/Dq/vS;->Ym:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
