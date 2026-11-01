.class final Lio/reactivex/rxjava3/internal/operators/flowable/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/core/o;
.implements Lu10/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lu10/c;

.field b:Lio/reactivex/rxjava3/disposables/c;


# direct methods
.method constructor <init>(Lu10/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c$a;->a:Lu10/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c$a;->b:Lio/reactivex/rxjava3/disposables/c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c$a;->a:Lu10/c;

    invoke-interface {v0}, Lu10/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c$a;->a:Lu10/c;

    invoke-interface {v0, p1}, Lu10/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c$a;->a:Lu10/c;

    invoke-interface {v0, p1}, Lu10/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c$a;->b:Lio/reactivex/rxjava3/disposables/c;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c$a;->a:Lu10/c;

    invoke-interface {p1, p0}, Lu10/c;->onSubscribe(Lu10/d;)V

    return-void
.end method

.method public request(J)V
    .locals 0

    return-void
.end method
