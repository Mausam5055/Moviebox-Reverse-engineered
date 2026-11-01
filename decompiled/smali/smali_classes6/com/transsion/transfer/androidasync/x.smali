.class Lcom/transsion/transfer/androidasync/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Ljava/nio/channels/Selector;

.field public b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field c:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Ljava/nio/channels/Selector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/x;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/x;->c:Ljava/util/concurrent/Semaphore;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/x;->a:Ljava/nio/channels/Selector;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/x;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    return-void
.end method

.method public d()Ljava/nio/channels/Selector;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/x;->a:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method public h()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/x;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/x;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/transfer/androidasync/x;->l(J)V

    return-void
.end method

.method public l(J)V
    .locals 2

    const v0, 0x7fffffff

    :try_start_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/x;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/x;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/x;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/Semaphore;->release(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/x;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/Semaphore;->release(I)V

    throw p1
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/x;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    return v0
.end method

.method public n()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/x;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/x;->c:Ljava/util/concurrent/Semaphore;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/x;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/x;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/x;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/x;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/x;->o()Z

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/x;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/x;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/x;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
