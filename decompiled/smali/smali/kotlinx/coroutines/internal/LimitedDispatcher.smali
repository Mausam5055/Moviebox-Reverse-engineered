.class public final Lkotlinx/coroutines/internal/LimitedDispatcher;
.super Lkotlinx/coroutines/i0;

# interfaces
.implements Lkotlinx/coroutines/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;
    }
.end annotation


# static fields
.field private static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final synthetic a:Lkotlinx/coroutines/t0;

.field private final b:Lkotlinx/coroutines/i0;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lkotlinx/coroutines/internal/l;

.field private final f:Ljava/lang/Object;

.field private volatile synthetic runningWorkers$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    const-string v1, "runningWorkers$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/i0;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/i0;-><init>()V

    instance-of v0, p1, Lkotlinx/coroutines/t0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/t0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/q0;->a()Lkotlinx/coroutines/t0;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->a:Lkotlinx/coroutines/t0;

    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/i0;

    iput p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:I

    iput-object p3, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->d:Ljava/lang/String;

    new-instance p1, Lkotlinx/coroutines/internal/l;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/l;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->e:Lkotlinx/coroutines/internal/l;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->f:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic d(Lkotlinx/coroutines/internal/LimitedDispatcher;)Lkotlinx/coroutines/i0;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/i0;

    return-object p0
.end method

.method public static final synthetic p(Lkotlinx/coroutines/internal/LimitedDispatcher;)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->s()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic q()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final s()Ljava/lang/Runnable;
    .locals 2

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->e:Lkotlinx/coroutines/internal/l;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->q()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->e:Lkotlinx/coroutines/internal/l;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/l;->c()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->q()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    return-object v0
.end method

.method private final t()Z
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->q()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->q()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->e:Lkotlinx/coroutines/internal/l;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/l;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->q()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:I

    if-ge p1, p2, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->s()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;

    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;-><init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/i0;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/i0;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->e:Lkotlinx/coroutines/internal/l;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/l;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->q()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:I

    if-ge p1, p2, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->s()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;

    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;-><init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/i0;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/i0;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/a1;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->a:Lkotlinx/coroutines/t0;

    invoke-interface {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/t0;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/a1;

    move-result-object p1

    return-object p1
.end method

.method public limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/i0;
    .locals 1

    invoke-static {p1}, Lkotlinx/coroutines/internal/i;->a(I)V

    iget v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:I

    if-lt p1, v0, :cond_0

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/i;->b(Lkotlinx/coroutines/i0;Ljava/lang/String;)Lkotlinx/coroutines/i0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/i0;->limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/i0;

    move-result-object p1

    return-object p1
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/n;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->a:Lkotlinx/coroutines/t0;

    invoke-interface {v0, p1, p2, p3}, Lkotlinx/coroutines/t0;->scheduleResumeAfterDelay(JLkotlinx/coroutines/n;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/i0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".limitedParallelism("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
