.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/core/o;
.implements Lio/reactivex/rxjava3/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/o;

.field final b:I

.field final c:Llz/k;

.field d:Ljava/util/Collection;

.field e:I

.field f:Lio/reactivex/rxjava3/disposables/c;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/o;ILlz/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->a:Lio/reactivex/rxjava3/core/o;

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->b:I

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->c:Llz/k;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->c:Llz/k;

    invoke-interface {v0}, Llz/k;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Empty buffer supplied"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->d:Ljava/util/Collection;

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->d:Ljava/util/Collection;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->f:Lio/reactivex/rxjava3/disposables/c;

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/o;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->f:Lio/reactivex/rxjava3/disposables/c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->f:Lio/reactivex/rxjava3/disposables/c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->d:Ljava/util/Collection;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/o;->onComplete()V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->d:Ljava/util/Collection;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->d:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->e:I

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->b:I

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->e:I

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->a()Z

    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->f:Lio/reactivex/rxjava3/disposables/c;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->f:Lio/reactivex/rxjava3/disposables/c;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->a:Lio/reactivex/rxjava3/core/o;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    :cond_0
    return-void
.end method
