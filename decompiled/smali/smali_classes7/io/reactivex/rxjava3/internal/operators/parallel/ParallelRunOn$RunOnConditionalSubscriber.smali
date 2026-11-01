.class final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;
.super Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeeb976b788f368aL


# instance fields
.field final downstream:Lio/reactivex/rxjava3/operators/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/a;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/operators/a;ILio/reactivex/rxjava3/operators/SpscArrayQueue;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/operators/a;",
            "I",
            "Lio/reactivex/rxjava3/operators/SpscArrayQueue<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;-><init>(ILio/reactivex/rxjava3/operators/SpscArrayQueue;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    return-void
.end method


# virtual methods
.method public onSubscribe(Lu10/d;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->upstream:Lu10/d;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lu10/d;Lu10/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->upstream:Lu10/d;

    const/4 p1, 0x0

    throw p1
.end method

.method public run()V
    .locals 10

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->consumed:I

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v6, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->cancelled:Z

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    return-void

    :cond_1
    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    if-eqz v8, :cond_3

    iget-object v9, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->error:Ljava/lang/Throwable;

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    throw v5

    :cond_3
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    move v9, v2

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    if-eqz v8, :cond_6

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    throw v5

    :cond_6
    :goto_2
    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    throw v5

    :cond_8
    :goto_3
    if-nez v4, :cond_c

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->cancelled:Z

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    return-void

    :cond_9
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->error:Ljava/lang/Throwable;

    if-nez v4, :cond_b

    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    throw v5

    :cond_b
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    throw v5

    :cond_c
    :goto_4
    cmp-long v4, v6, v6

    if-eqz v4, :cond_d

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4, v6, v7}, Lio/reactivex/rxjava3/internal/util/a;->d(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_d
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->consumed:I

    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void
.end method
