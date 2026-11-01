.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;,
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/Scheduler;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn;->b:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method


# virtual methods
.method public D(Lio/reactivex/rxjava3/core/o;)V
    .locals 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;-><init>(Lio/reactivex/rxjava3/core/o;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn;->b:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;

    invoke-direct {v1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn;Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Scheduler;->d(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->setDisposable(Lio/reactivex/rxjava3/disposables/c;)V

    return-void
.end method
