.class public final Lio/reactivex/rxjava3/internal/operators/observable/m;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/m$a;
    }
.end annotation


# instance fields
.field final b:Llz/h;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Llz/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/m;->b:Llz/h;

    return-void
.end method


# virtual methods
.method public D(Lio/reactivex/rxjava3/core/o;)V
    .locals 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m;->b:Llz/h;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/m$a;-><init>(Lio/reactivex/rxjava3/core/o;Llz/h;)V

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->c:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/m;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method
