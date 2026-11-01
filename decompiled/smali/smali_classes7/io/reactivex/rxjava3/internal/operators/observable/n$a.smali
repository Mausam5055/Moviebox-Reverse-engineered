.class final Lio/reactivex/rxjava3/internal/operators/observable/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/core/o;
.implements Lio/reactivex/rxjava3/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/h;

.field b:Lio/reactivex/rxjava3/disposables/c;

.field c:Ljava/lang/Object;

.field d:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->a:Lio/reactivex/rxjava3/core/h;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->b:Lio/reactivex/rxjava3/disposables/c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->b:Lio/reactivex/rxjava3/disposables/c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->d:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->a:Lio/reactivex/rxjava3/core/h;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/h;->onComplete()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->a:Lio/reactivex/rxjava3/core/h;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/h;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lpz/a;->r(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->d:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->a:Lio/reactivex/rxjava3/core/h;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/h;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->d:Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->b:Lio/reactivex/rxjava3/disposables/c;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->a:Lio/reactivex/rxjava3/core/h;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains more than one element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/h;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->c:Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->b:Lio/reactivex/rxjava3/disposables/c;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->b:Lio/reactivex/rxjava3/disposables/c;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n$a;->a:Lio/reactivex/rxjava3/core/h;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/h;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    :cond_0
    return-void
.end method
