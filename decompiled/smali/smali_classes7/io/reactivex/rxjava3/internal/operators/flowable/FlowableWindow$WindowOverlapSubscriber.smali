.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;

# interfaces
.implements Lio/reactivex/rxjava3/core/f;
.implements Lu10/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/f;",
        "Lu10/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21b3dc811227de88L


# instance fields
.field final bufferSize:I

.field volatile cancelled:Z

.field volatile done:Z

.field final downstream:Lu10/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu10/c;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field final firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field index:J

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field produced:J

.field final queue:Lio/reactivex/rxjava3/operators/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/h;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final size:J

.field final skip:J

.field upstream:Lu10/d;

.field final windows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/reactivex/rxjava3/processors/UnicastProcessor;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lu10/c;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu10/c;",
            "JJI)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->downstream:Lu10/c;

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->size:J

    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    new-instance p1, Lio/reactivex/rxjava3/operators/h;

    invoke-direct {p1, p6}, Lio/reactivex/rxjava3/operators/h;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->queue:Lio/reactivex/rxjava3/operators/h;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->bufferSize:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->run()V

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    return-void
.end method

.method checkTerminated(ZZLu10/c;Lio/reactivex/rxjava3/operators/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lu10/c;",
            "Lio/reactivex/rxjava3/operators/h;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->error:Ljava/lang/Throwable;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Lio/reactivex/rxjava3/operators/h;->clear()V

    invoke-interface {p3, p1}, Lu10/c;->onError(Ljava/lang/Throwable;)V

    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p3}, Lu10/c;->onComplete()V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method drain()V
    .locals 15

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->downstream:Lu10/c;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->queue:Lio/reactivex/rxjava3/operators/h;

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/h;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/rxjava3/processors/UnicastProcessor;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onComplete()V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_2
    cmp-long v10, v8, v4

    if-eqz v10, :cond_8

    iget-boolean v11, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/h;->poll()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/reactivex/rxjava3/processors/UnicastProcessor;

    if-nez v12, :cond_3

    move v13, v2

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    iget-boolean v14, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    if-eqz v14, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v11, v13, v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->checkTerminated(ZZLu10/c;Lio/reactivex/rxjava3/operators/h;)Z

    move-result v11

    if-eqz v11, :cond_5

    return-void

    :cond_5
    if-eqz v13, :cond_6

    goto :goto_4

    :cond_6
    new-instance v10, Lio/reactivex/rxjava3/internal/operators/flowable/g;

    invoke-direct {v10, v12}, Lio/reactivex/rxjava3/internal/operators/flowable/g;-><init>(Lio/reactivex/rxjava3/processors/a;)V

    invoke-interface {v0, v10}, Lu10/c;->onNext(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lio/reactivex/rxjava3/internal/operators/flowable/g;->h()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v12}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onComplete()V

    :cond_7
    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_2

    :cond_8
    :goto_4
    if-nez v10, :cond_a

    iget-boolean v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    if-eqz v10, :cond_9

    goto :goto_0

    :cond_9
    iget-boolean v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/h;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->checkTerminated(ZZLu10/c;Lio/reactivex/rxjava3/operators/h;)Z

    move-result v10

    if-eqz v10, :cond_a

    return-void

    :cond_a
    cmp-long v6, v8, v6

    if-eqz v6, :cond_b

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_b
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu10/a;

    invoke-interface {v1}, Lu10/c;->onComplete()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu10/a;

    invoke-interface {v1, p1}, Lu10/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->index:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->bufferSize:I

    invoke-static {v4, p0}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->i(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/UnicastProcessor;

    move-result-object v4

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lu10/a;

    invoke-interface {v8, p1}, Lu10/c;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->queue:Lio/reactivex/rxjava3/operators/h;

    invoke-virtual {p1, v4}, Lio/reactivex/rxjava3/operators/h;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    :cond_2
    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->produced:J

    add-long/2addr v7, v5

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->size:J

    cmp-long p1, v7, v4

    if-nez p1, :cond_3

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    sub-long/2addr v7, v4

    iput-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->produced:J

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu10/a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lu10/c;->onComplete()V

    goto :goto_2

    :cond_3
    iput-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->produced:J

    :cond_4
    :goto_2
    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    cmp-long p1, v0, v4

    if-nez p1, :cond_5

    iput-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->index:J

    goto :goto_3

    :cond_5
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->index:J

    :goto_3
    return-void
.end method

.method public onSubscribe(Lu10/d;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lu10/d;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lu10/d;Lu10/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lu10/d;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->downstream:Lu10/c;

    invoke-interface {p1, p0}, Lu10/c;->onSubscribe(Lu10/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 4

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/a;->c(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->size:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/a;->b(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lu10/d;

    invoke-interface {v0, p1, p2}, Lu10/d;->request(J)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/a;->c(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lu10/d;

    invoke-interface {v0, p1, p2}, Lu10/d;->request(J)V

    :goto_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lu10/d;

    invoke-interface {v0}, Lu10/d;->cancel()V

    :cond_0
    return-void
.end method
