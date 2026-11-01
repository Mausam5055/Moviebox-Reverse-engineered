.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$InnerObserver;,
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;
    }
.end annotation


# instance fields
.field final b:Llz/h;

.field final c:Z

.field final d:I

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Llz/h;ZII)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;->b:Llz/h;

    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;->c:Z

    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;->d:I

    iput p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;->e:I

    return-void
.end method


# virtual methods
.method public D(Lio/reactivex/rxjava3/core/o;)V
    .locals 8

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/m;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;->b:Llz/h;

    invoke-static {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap;->b(Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/o;Llz/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/m;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;->b:Llz/h;

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;->c:Z

    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;->d:I

    iget v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;->e:I

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap$MergeObserver;-><init>(Lio/reactivex/rxjava3/core/o;Llz/h;ZII)V

    invoke-interface {v0, v7}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method
