.class public Lcom/transsion/transfer/androidasync/c;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/c;->a:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ThreadQueue;->getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/transsion/transfer/androidasync/ThreadQueue;

    move-result-object v0

    iget-object v1, v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    iput-object p0, v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    iget-object v2, v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    :try_start_0
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    iput-object v1, v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    return-void

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ThreadQueue;->remove()Ljava/lang/Runnable;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    iput-object v1, v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v1, v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    throw v2
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-static {p0}, Lcom/transsion/transfer/androidasync/ThreadQueue;->release(Lcom/transsion/transfer/androidasync/c;)V

    return-void
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/transfer/androidasync/ThreadQueue;->getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/transsion/transfer/androidasync/ThreadQueue;

    move-result-object p3

    iget-object v0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    iput-object p0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    iget-object v1, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    :try_start_0
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-object v0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    return v3

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/transsion/transfer/androidasync/ThreadQueue;->remove()Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p1, p2, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    if-nez v2, :cond_2

    iput-object v0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    return v6

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    iput-object v0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    return v3

    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v7, v4

    cmp-long v2, v7, p1

    if-ltz v2, :cond_1

    iput-object v0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    return v6

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v0, p3, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    throw p1
.end method
