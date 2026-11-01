.class public final Lio/reactivex/rxjava3/internal/operators/observable/k;
.super Lio/reactivex/rxjava3/core/j;

# interfaces
.implements Lio/reactivex/rxjava3/operators/e;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/j;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/k;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/k;->a:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;-><init>(Lio/reactivex/rxjava3/core/o;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->run()V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/k;->a:Ljava/lang/Object;

    return-object v0
.end method
