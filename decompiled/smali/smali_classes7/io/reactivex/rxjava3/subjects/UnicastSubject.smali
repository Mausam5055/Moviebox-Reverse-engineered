.class public final Lio/reactivex/rxjava3/subjects/UnicastSubject;
.super Lio/reactivex/rxjava3/subjects/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/operators/h;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;

.field final c:Ljava/util/concurrent/atomic/AtomicReference;

.field final d:Z

.field volatile e:Z

.field volatile f:Z

.field g:Ljava/lang/Throwable;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

.field j:Z


# direct methods
.method constructor <init>(ILjava/lang/Runnable;Z)V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/rxjava3/subjects/a;-><init>()V

    new-instance v0, Lio/reactivex/rxjava3/operators/h;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/operators/h;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->a:Lio/reactivex/rxjava3/operators/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->d:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/subjects/UnicastSubject$UnicastQueueDisposable;-><init>(Lio/reactivex/rxjava3/subjects/UnicastSubject;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    return-void
.end method

.method public static J(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/subjects/UnicastSubject;
    .locals 2

    const-string v0, "capacityHint"

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/functions/a;->a(ILjava/lang/String;)I

    const-string v0, "onTerminate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/rxjava3/subjects/UnicastSubject;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/subjects/UnicastSubject;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->L()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a single observer allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/o;)V

    :goto_0
    return-void
.end method

.method K()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroidx/compose/animation/core/j0;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method L()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/core/o;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->j:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->M(Lio/reactivex/rxjava3/core/o;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->N(Lio/reactivex/rxjava3/core/o;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/core/o;

    goto :goto_0
.end method

.method M(Lio/reactivex/rxjava3/core/o;)V
    .locals 6

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->a:Lio/reactivex/rxjava3/operators/h;

    iget-boolean v1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->d:Z

    const/4 v2, 0x1

    :cond_0
    iget-boolean v3, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->e:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean v3, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->f:Z

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->P(Lio/reactivex/rxjava3/operators/g;Lio/reactivex/rxjava3/core/o;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    invoke-interface {p1, v4}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->O(Lio/reactivex/rxjava3/core/o;)V

    return-void

    :cond_3
    iget-object v3, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    neg-int v2, v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method N(Lio/reactivex/rxjava3/core/o;)V
    .locals 9

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->a:Lio/reactivex/rxjava3/operators/h;

    iget-boolean v1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->d:Z

    const/4 v2, 0x1

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->e:Z

    if-eqz v5, :cond_1

    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/g;->clear()V

    return-void

    :cond_1
    iget-boolean v5, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->f:Z

    iget-object v6, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->a:Lio/reactivex/rxjava3/operators/h;

    invoke-virtual {v6}, Lio/reactivex/rxjava3/operators/h;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    move v8, v2

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    if-eqz v5, :cond_5

    if-nez v1, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->P(Lio/reactivex/rxjava3/operators/g;Lio/reactivex/rxjava3/core/o;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    move v3, v7

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->O(Lio/reactivex/rxjava3/core/o;)V

    return-void

    :cond_5
    if-eqz v8, :cond_6

    iget-object v5, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    neg-int v4, v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_6
    invoke-interface {p1, v6}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method O(Lio/reactivex/rxjava3/core/o;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/o;->onComplete()V

    :goto_0
    return-void
.end method

.method P(Lio/reactivex/rxjava3/operators/g;Lio/reactivex/rxjava3/core/o;)Z
    .locals 3

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/reactivex/rxjava3/operators/g;->clear()V

    invoke-interface {p2, v0}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->f:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->K()V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->L()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "onError called with a null Throwable."

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->g:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->f:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->K()V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->L()V

    return-void

    :cond_1
    :goto_0
    invoke-static {p1}, Lpz/a;->r(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "onNext called with a null value."

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->a:Lio/reactivex/rxjava3/operators/h;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/operators/h;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/UnicastSubject;->L()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/UnicastSubject;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_1
    return-void
.end method
