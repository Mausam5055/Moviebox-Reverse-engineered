.class public Lcom/transsion/api/gateway/utils/ThreadManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/api/gateway/utils/ThreadManager$GatewayThreadFactory;,
        Lcom/transsion/api/gateway/utils/ThreadManager$EventHandlerThreadHolder;,
        Lcom/transsion/api/gateway/utils/ThreadManager$TimerHandlerThreadHolder;,
        Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;,
        Lcom/transsion/api/gateway/utils/ThreadManager$ScheduledExecutorHolder;,
        Lcom/transsion/api/gateway/utils/ThreadManager$SingleExecutorHolder;,
        Lcom/transsion/api/gateway/utils/ThreadManager$ExecutorHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ThreadManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$400()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final execute(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executeInBackground(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/transsion/api/gateway/utils/ThreadManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public static executeInDbWriteThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/api/gateway/utils/ThreadManager;->executeInSingle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executeInSingle(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getSingleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getEventThreadHandler()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager$EventHandlerThreadHolder;->access$600()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private static getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager$ExecutorHolder;->access$000()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager$ScheduledExecutorHolder;->access$200()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static getSingleExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager$SingleExecutorHolder;->access$100()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static getTimerThreadHandler()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager$TimerHandlerThreadHolder;->access$500()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static newSerialExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    new-instance v0, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/api/gateway/utils/ThreadManager$SerialExecutor;-><init>(Lcom/transsion/api/gateway/utils/ThreadManager$1;)V

    return-object v0
.end method

.method public static postAtTime(Ljava/lang/Runnable;J)V
    .locals 1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static postDelayedAndRemoveBefore(Ljava/lang/Runnable;J)V
    .locals 1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static runInEventThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getEventThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static final schedule(Ljava/util/concurrent/Callable;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static final scheduleAtFixedRate(Ljava/lang/Runnable;JJ)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static scheduleWithFixedDelay(Ljava/lang/Runnable;JJ)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
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

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static final submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static final submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submitInSingle(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
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

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getSingleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submitInSingle(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getSingleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submitInSingle(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/api/gateway/utils/ThreadManager;->getSingleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
