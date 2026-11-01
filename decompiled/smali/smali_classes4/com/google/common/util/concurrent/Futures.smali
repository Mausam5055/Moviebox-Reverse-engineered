.class public abstract Lcom/google/common/util/concurrent/Futures;
.super Lcom/google/common/util/concurrent/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;,
        Lcom/google/common/util/concurrent/Futures$CallbackListener;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/common/util/concurrent/r;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/m;)V

    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/r;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static b(Lcom/google/common/util/concurrent/r;Ljava/lang/Class;Lcom/google/common/base/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/r;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->create(Lcom/google/common/util/concurrent/r;Ljava/lang/Class;Lcom/google/common/base/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/r;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/common/util/concurrent/r;Ljava/lang/Class;Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/r;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->createAsync(Lcom/google/common/util/concurrent/r;Ljava/lang/Class;Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/r;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/m;->x(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/z;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/r;
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/p;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/p;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static f(Lcom/google/common/util/concurrent/r;Lcom/google/common/base/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->create(Lcom/google/common/util/concurrent/r;Lcom/google/common/base/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/r;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/google/common/util/concurrent/r;Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->createAsync(Lcom/google/common/util/concurrent/r;Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/r;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/google/common/util/concurrent/r;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/r;
    .locals 1

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/TimeoutFuture;->v(Lcom/google/common/util/concurrent/r;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/r;

    move-result-object p0

    return-object p0
.end method
