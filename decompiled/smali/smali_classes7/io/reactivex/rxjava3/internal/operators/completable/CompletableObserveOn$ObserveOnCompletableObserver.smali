.class final Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lio/reactivex/rxjava3/core/b;
.implements Lio/reactivex/rxjava3/disposables/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/c;",
        ">;",
        "Lio/reactivex/rxjava3/core/b;",
        "Lio/reactivex/rxjava3/disposables/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x76f356c87ebda749L


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/b;

.field error:Ljava/lang/Throwable;

.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/b;Lio/reactivex/rxjava3/core/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;->downstream:Lio/reactivex/rxjava3/core/b;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

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

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Scheduler;->d(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/c;

    move-result-object v0

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;->error:Ljava/lang/Throwable;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/core/Scheduler;->d(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/c;

    move-result-object p1

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/c;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;->downstream:Lio/reactivex/rxjava3/core/b;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/b;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;->error:Ljava/lang/Throwable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;->downstream:Lio/reactivex/rxjava3/core/b;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;->downstream:Lio/reactivex/rxjava3/core/b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/b;->onComplete()V

    :goto_0
    return-void
.end method
