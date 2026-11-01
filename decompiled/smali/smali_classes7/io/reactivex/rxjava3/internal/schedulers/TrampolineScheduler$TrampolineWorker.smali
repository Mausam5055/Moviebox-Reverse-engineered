.class final Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;
.super Lio/reactivex/rxjava3/core/Scheduler$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrampolineWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker$AppendToQueueTask;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/PriorityBlockingQueue;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler$Worker;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Runnable;J)Lio/reactivex/rxjava3/disposables/c;
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->d:Z

    if-eqz v0, :cond_0

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;-><init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    :cond_1
    :goto_0
    iget-boolean p2, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->d:Z

    if-eqz p2, :cond_2

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_2
    iget-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;

    if-nez p2, :cond_3

    iget-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p1, p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_3
    iget-boolean p3, p2, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;->d:Z

    if-nez p3, :cond_1

    iget-object p2, p2, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;->a:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_4
    new-instance p1, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker$AppendToQueueTask;

    invoke-direct {p1, p0, v0}, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker$AppendToQueueTask;-><init>(Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/disposables/b;->b(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/c;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->d:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->d:Z

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/c;
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a(Ljava/lang/Runnable;J)Lio/reactivex/rxjava3/disposables/c;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    add-long/2addr v0, p2

    new-instance p2, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$SleepingRunnable;

    invoke-direct {p2, p1, p0, v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$SleepingRunnable;-><init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;J)V

    invoke-virtual {p0, p2, v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$TrampolineWorker;->a(Ljava/lang/Runnable;J)Lio/reactivex/rxjava3/disposables/c;

    move-result-object p1

    return-object p1
.end method
