.class public final Lcom/transsion/core/pool/TranssionPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;,
        Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;,
        Lcom/transsion/core/pool/TranssionPoolExecutor$ComparableFutureTask;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;ZZ)V
    .locals 8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;

    invoke-direct {v7, p2, p3, p4}, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;-><init>(Ljava/lang/String;Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;Z)V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-boolean p5, p0, Lcom/transsion/core/pool/TranssionPoolExecutor;->a:Z

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "size is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "cpu[0-9]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    new-instance v4, Lcom/transsion/core/pool/TranssionPoolExecutor$a;

    invoke-direct {v4, v3}, Lcom/transsion/core/pool/TranssionPoolExecutor$a;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Failed to calculate accurate cpu count"

    aput-object v4, v3, v1

    aput-object v2, v3, v0

    const-string v2, "ZeroPoolExecutor"

    invoke-static {v2, v3}, Lcom/transsion/core/log/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    array-length v1, v2

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private b(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/core/pool/TranssionPoolExecutor;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_1
    return-object p1
.end method

.method public static c()Lcom/transsion/core/pool/TranssionPoolExecutor;
    .locals 3

    invoke-static {}, Lcom/transsion/core/pool/TranssionPoolExecutor;->a()I

    move-result v0

    const-string v1, "source"

    sget-object v2, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    invoke-static {v0, v1, v2}, Lcom/transsion/core/pool/TranssionPoolExecutor;->d(ILjava/lang/String;Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;)Lcom/transsion/core/pool/TranssionPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static d(ILjava/lang/String;Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;)Lcom/transsion/core/pool/TranssionPoolExecutor;
    .locals 7

    new-instance v6, Lcom/transsion/core/pool/TranssionPoolExecutor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/core/pool/TranssionPoolExecutor;-><init>(ILjava/lang/String;Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;ZZ)V

    return-object v6
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/core/pool/TranssionPoolExecutor;->a:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1

    new-instance v0, Lcom/transsion/core/pool/TranssionPoolExecutor$ComparableFutureTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/core/pool/TranssionPoolExecutor$ComparableFutureTask;-><init>(Lcom/transsion/core/pool/TranssionPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1

    new-instance v0, Lcom/transsion/core/pool/TranssionPoolExecutor$ComparableFutureTask;

    invoke-direct {v0, p0, p1}, Lcom/transsion/core/pool/TranssionPoolExecutor$ComparableFutureTask;-><init>(Lcom/transsion/core/pool/TranssionPoolExecutor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/core/pool/TranssionPoolExecutor;->b(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/core/pool/TranssionPoolExecutor;->b(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/core/pool/TranssionPoolExecutor;->b(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
