.class public final Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;
.super Lio/reactivex/rxjava3/core/Scheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;,
        Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$EventLoopWorker;,
        Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;
    }
.end annotation


# static fields
.field static final e:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

.field static final f:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

.field private static final g:J

.field private static final h:Ljava/util/concurrent/TimeUnit;

.field static final i:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;

.field static j:Z

.field static final k:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;


# instance fields
.field final c:Ljava/util/concurrent/ThreadFactory;

.field final d:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->h:Ljava/util/concurrent/TimeUnit;

    const-string v0, "rx3.io-keep-alive-time"

    const-wide/16 v1, 0x3c

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->g:J

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;

    new-instance v1, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->i:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/e;->dispose()V

    const-string v0, "rx3.io-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->e:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    new-instance v2, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v3, "RxCachedWorkerPoolEvictor"

    invoke-direct {v2, v3, v0}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->f:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v0, "rx3.io-scheduled-release"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->j:Z

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->k:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->e:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->c:Ljava/util/concurrent/ThreadFactory;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->k:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->g()V

    return-void
.end method


# virtual methods
.method public c()Lio/reactivex/rxjava3/core/Scheduler$Worker;
    .locals 2

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$EventLoopWorker;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$EventLoopWorker;-><init>(Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;)V

    return-object v0
.end method

.method public g()V
    .locals 5

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;

    sget-wide v1, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->g:J

    sget-object v3, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->h:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->k:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-static {v1, v2, v0}, Landroidx/compose/animation/core/j0;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    :cond_0
    return-void
.end method
