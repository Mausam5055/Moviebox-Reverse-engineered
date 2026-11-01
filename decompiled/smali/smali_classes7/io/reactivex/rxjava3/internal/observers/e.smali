.class public abstract Lio/reactivex/rxjava3/internal/observers/e;
.super Lio/reactivex/rxjava3/internal/observers/g;

# interfaces
.implements Lio/reactivex/rxjava3/core/o;
.implements Lio/reactivex/rxjava3/internal/util/e;


# instance fields
.field protected volatile cancelled:Z

.field protected volatile done:Z

.field protected final downstream:Lio/reactivex/rxjava3/core/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/o;"
        }
    .end annotation
.end field

.field protected error:Ljava/lang/Throwable;

.field protected final queue:Lio/reactivex/rxjava3/operators/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/f;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/o;Lio/reactivex/rxjava3/operators/f;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/observers/g;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/e;->downstream:Lio/reactivex/rxjava3/core/o;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/observers/e;->queue:Lio/reactivex/rxjava3/operators/f;

    return-void
.end method


# virtual methods
.method public abstract accept(Lio/reactivex/rxjava3/core/o;Ljava/lang/Object;)V
.end method

.method public final cancelled()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/e;->cancelled:Z

    return v0
.end method

.method public final done()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/e;->done:Z

    return v0
.end method

.method public final enter()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/h;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final error()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/e;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method protected final fastPathEmit(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Lio/reactivex/rxjava3/disposables/c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/e;->downstream:Lio/reactivex/rxjava3/core/o;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/e;->queue:Lio/reactivex/rxjava3/operators/f;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/observers/h;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/observers/h;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/internal/observers/e;->accept(Lio/reactivex/rxjava3/core/o;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/e;->leave(I)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_0
    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/e;->enter()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/rxjava3/internal/util/i;->d(Lio/reactivex/rxjava3/operators/f;Lio/reactivex/rxjava3/core/o;ZLio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/e;)V

    return-void
.end method

.method protected final fastPathOrderedEmit(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Lio/reactivex/rxjava3/disposables/c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/e;->downstream:Lio/reactivex/rxjava3/core/o;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/e;->queue:Lio/reactivex/rxjava3/operators/f;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/observers/h;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/observers/h;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lio/reactivex/rxjava3/operators/g;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/internal/observers/e;->accept(Lio/reactivex/rxjava3/core/o;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/e;->leave(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_0
    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/e;->enter()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/rxjava3/internal/util/i;->d(Lio/reactivex/rxjava3/operators/f;Lio/reactivex/rxjava3/core/o;ZLio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/e;)V

    return-void
.end method

.method public final leave(I)I
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/h;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method
