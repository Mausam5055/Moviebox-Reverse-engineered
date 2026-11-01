.class final Lkotlinx/coroutines/g;
.super Lkotlinx/coroutines/a;


# instance fields
.field private final a:Ljava/lang/Thread;

.field private final b:Lkotlinx/coroutines/e1;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/e1;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    iput-object p2, p0, Lkotlinx/coroutines/g;->a:Ljava/lang/Thread;

    iput-object p3, p0, Lkotlinx/coroutines/g;->b:Lkotlinx/coroutines/e1;

    return-void
.end method


# virtual methods
.method public final X()Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/b;->c()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/g;->b:Lkotlinx/coroutines/e1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v3}, Lkotlinx/coroutines/e1;->incrementUseCount$default(Lkotlinx/coroutines/e1;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lkotlinx/coroutines/g;->b:Lkotlinx/coroutines/e1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkotlinx/coroutines/e1;->processNextEvent()J

    move-result-wide v4

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0, v4, v5}, Lkotlinx/coroutines/b;->b(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_3
    invoke-static {p0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lkotlinx/coroutines/g;->b:Lkotlinx/coroutines/e1;

    if-eqz v0, :cond_5

    invoke-static {v0, v2, v1, v3}, Lkotlinx/coroutines/e1;->decrementUseCount$default(Lkotlinx/coroutines/e1;ZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lkotlinx/coroutines/b;->g()V

    :cond_6
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/x1;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/b0;

    if-eqz v1, :cond_7

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/b0;

    :cond_7
    if-nez v3, :cond_8

    return-object v0

    :cond_8
    iget-object v0, v3, Lkotlinx/coroutines/b0;->a:Ljava/lang/Throwable;

    throw v0

    :cond_9
    :try_start_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->cancelCoroutine(Ljava/lang/Throwable;)Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    iget-object v4, p0, Lkotlinx/coroutines/g;->b:Lkotlinx/coroutines/e1;

    if-eqz v4, :cond_a

    invoke-static {v4, v2, v1, v3}, Lkotlinx/coroutines/e1;->decrementUseCount$default(Lkotlinx/coroutines/e1;ZILjava/lang/Object;)V

    :cond_a
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lkotlinx/coroutines/b;->g()V

    :cond_b
    throw v0
.end method

.method protected afterCompletion(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/g;->a:Ljava/lang/Thread;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lkotlinx/coroutines/g;->a:Ljava/lang/Thread;

    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/b;->f(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected isScopedCoroutine()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
