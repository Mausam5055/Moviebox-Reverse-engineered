.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/core/Scheduler;

.field final c:Z

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/Scheduler;ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;->b:Lio/reactivex/rxjava3/core/Scheduler;

    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;->c:Z

    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;->d:I

    return-void
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;->b:Lio/reactivex/rxjava3/core/Scheduler;

    instance-of v1, v0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/m;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Scheduler;->c()Lio/reactivex/rxjava3/core/Scheduler$Worker;

    move-result-object v0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/m;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;->c:Z

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;->d:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;-><init>(Lio/reactivex/rxjava3/core/o;Lio/reactivex/rxjava3/core/Scheduler$Worker;ZI)V

    invoke-interface {v1, v2}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    :goto_0
    return-void
.end method
