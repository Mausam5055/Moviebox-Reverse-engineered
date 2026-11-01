.class final Lio/reactivex/rxjava3/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lio/reactivex/rxjava3/core/q;
.implements Lio/reactivex/rxjava3/disposables/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/c;",
        ">;",
        "Lio/reactivex/rxjava3/core/q;",
        "Lio/reactivex/rxjava3/disposables/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d321dfc37be109aL


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/q;"
        }
    .end annotation
.end field

.field ds:Lio/reactivex/rxjava3/disposables/c;

.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/q;Lio/reactivex/rxjava3/core/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/q;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver;->downstream:Lio/reactivex/rxjava3/core/q;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/disposables/c;

    if-eq v1, v0, :cond_0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver;->ds:Lio/reactivex/rxjava3/disposables/c;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Scheduler;->d(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/c;

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/c;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/rxjava3/disposables/c;)Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver;->downstream:Lio/reactivex/rxjava3/core/q;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/q;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver;->downstream:Lio/reactivex/rxjava3/core/q;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/q;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver;->downstream:Lio/reactivex/rxjava3/core/q;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/q;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver;->ds:Lio/reactivex/rxjava3/disposables/c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    return-void
.end method
