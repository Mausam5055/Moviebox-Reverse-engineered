.class public abstract Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;

# interfaces
.implements Lio/reactivex/rxjava3/core/f;
.implements Lu10/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/rxjava3/core/f;",
        "Lu10/d;"
    }
.end annotation


# static fields
.field static final COMPLETE_MASK:J = -0x8000000000000000L

.field static final REQUEST_MASK:J = 0x7fffffffffffffffL

.field private static final serialVersionUID:J = 0x6de1ba4ffe60ebe0L


# instance fields
.field protected final downstream:Lu10/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu10/c;"
        }
    .end annotation
.end field

.field protected produced:J

.field protected upstream:Lu10/d;

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu10/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu10/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lu10/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->upstream:Lu10/d;

    invoke-interface {v0}, Lu10/d;->cancel()V

    return-void
.end method

.method protected final complete(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->produced:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p0, v0, v1}, Lio/reactivex/rxjava3/internal/util/a;->d(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, v0, v4

    cmp-long v6, v6, v2

    if-eqz v6, :cond_1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->onDrop(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lu10/c;

    invoke-interface {v0, p1}, Lu10/c;->onNext(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lu10/c;

    invoke-interface {p1}, Lu10/c;->onComplete()V

    return-void

    :cond_2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public abstract synthetic onComplete()V
.end method

.method protected onDrop(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract synthetic onError(Ljava/lang/Throwable;)V
.end method

.method public abstract synthetic onNext(Ljava/lang/Object;)V
.end method

.method public onSubscribe(Lu10/d;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->upstream:Lu10/d;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lu10/d;Lu10/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->upstream:Lu10/d;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lu10/c;

    invoke-interface {p1, p0}, Lu10/c;->onSubscribe(Lu10/d;)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 8

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v2, v3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lu10/c;

    iget-object p2, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->value:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lu10/c;->onNext(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lu10/c;

    invoke-interface {p1}, Lu10/c;->onComplete()V

    goto :goto_0

    :cond_1
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/a;->b(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->upstream:Lu10/d;

    invoke-interface {v0, p1, p2}, Lu10/d;->request(J)V

    :cond_2
    :goto_0
    return-void
.end method
