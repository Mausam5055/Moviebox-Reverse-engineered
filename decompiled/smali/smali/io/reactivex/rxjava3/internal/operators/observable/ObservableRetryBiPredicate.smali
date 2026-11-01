.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;
    }
.end annotation


# instance fields
.field final b:Llz/d;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/j;Llz/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate;->b:Llz/d;

    return-void
.end method


# virtual methods
.method public D(Lio/reactivex/rxjava3/core/o;)V
    .locals 4

    new-instance v0, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate;->b:Llz/d;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/m;

    invoke-direct {v1, p1, v2, v0, v3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;-><init>(Lio/reactivex/rxjava3/core/o;Llz/d;Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;Lio/reactivex/rxjava3/core/m;)V

    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->subscribeNext()V

    return-void
.end method
