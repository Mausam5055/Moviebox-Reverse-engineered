.class Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$OnCompletedAction;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final action:Ljava/lang/Runnable;

.field final actionCompletable:Lio/reactivex/rxjava3/core/b;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/core/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$OnCompletedAction;->action:Ljava/lang/Runnable;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$OnCompletedAction;->actionCompletable:Lio/reactivex/rxjava3/core/b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$OnCompletedAction;->action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$OnCompletedAction;->actionCompletable:Lio/reactivex/rxjava3/core/b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/b;->onComplete()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$OnCompletedAction;->actionCompletable:Lio/reactivex/rxjava3/core/b;

    invoke-interface {v1}, Lio/reactivex/rxjava3/core/b;->onComplete()V

    throw v0
.end method
