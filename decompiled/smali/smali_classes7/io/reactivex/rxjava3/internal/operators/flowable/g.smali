.class final Lio/reactivex/rxjava3/internal/operators/flowable/g;
.super Lio/reactivex/rxjava3/core/e;


# instance fields
.field final b:Lio/reactivex/rxjava3/processors/a;

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/processors/a;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/e;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g;->b:Lio/reactivex/rxjava3/processors/a;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected g(Lu10/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g;->b:Lio/reactivex/rxjava3/processors/a;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/e;->subscribe(Lu10/c;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method h()Z
    .locals 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method
