.class final Lio/reactivex/rxjava3/internal/operators/observable/m$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/o;

.field final b:Llz/h;

.field final c:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/o;Llz/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a:Lio/reactivex/rxjava3/core/o;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->b:Llz/h;

    new-instance p1, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->c:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->e:Z

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->d:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/o;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->d:Z

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lpz/a;->r(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->d:Z

    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->b:Llz/h;

    invoke-interface {v1, p1}, Llz/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/core/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Observable is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-interface {v1, p0}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a:Lio/reactivex/rxjava3/core/o;

    new-instance v3, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->c:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/c;)Z

    return-void
.end method
