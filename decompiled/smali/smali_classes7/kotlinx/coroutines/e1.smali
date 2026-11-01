.class public abstract Lkotlinx/coroutines/e1;
.super Lkotlinx/coroutines/i0;


# instance fields
.field private shared:Z

.field private unconfinedQueue:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lkotlinx/coroutines/DispatchedTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private useCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/i0;-><init>()V

    return-void
.end method

.method private final d(Z)J
    .locals 2

    if-eqz p1, :cond_0

    const-wide v0, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method public static synthetic decrementUseCount$default(Lkotlinx/coroutines/e1;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/e1;->decrementUseCount(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic incrementUseCount$default(Lkotlinx/coroutines/e1;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/e1;->incrementUseCount(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final decrementUseCount(Z)V
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/e1;->useCount:J

    invoke-direct {p0, p1}, Lkotlinx/coroutines/e1;->d(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/e1;->useCount:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lkotlinx/coroutines/e1;->shared:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/e1;->shutdown()V

    :cond_1
    return-void
.end method

.method public final dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/DispatchedTask<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/e1;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/e1;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    :cond_0
    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method protected getNextTime()J
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/e1;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public final incrementUseCount(Z)V
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/e1;->useCount:J

    invoke-direct {p0, p1}, Lkotlinx/coroutines/e1;->d(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/e1;->useCount:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlinx/coroutines/e1;->shared:Z

    :cond_0
    return-void
.end method

.method public final isActive()Z
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/e1;->useCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUnconfinedLoopActive()Z
    .locals 5

    iget-wide v0, p0, Lkotlinx/coroutines/e1;->useCount:J

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lkotlinx/coroutines/e1;->d(Z)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final isUnconfinedQueueEmpty()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/e1;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/i0;
    .locals 0

    invoke-static {p1}, Lkotlinx/coroutines/internal/i;->a(I)V

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/i;->b(Lkotlinx/coroutines/i0;Ljava/lang/String;)Lkotlinx/coroutines/i0;

    move-result-object p1

    return-object p1
.end method

.method public processNextEvent()J
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/e1;->processUnconfinedEvent()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final processUnconfinedEvent()Z
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/e1;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/DispatchedTask;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public shouldBeProcessedFromContext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
