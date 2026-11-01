.class public final Landroidx/room/support/AutoCloser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/support/AutoCloser$a;,
        Landroidx/room/support/AutoCloser$b;
    }
.end annotation


# static fields
.field public static final l:Landroidx/room/support/AutoCloser$a;


# instance fields
.field private final a:Landroidx/room/support/AutoCloser$b;

.field private b:La4/e;

.field private c:Lkotlinx/coroutines/n0;

.field private d:Lkotlin/jvm/functions/Function0;

.field private final e:Ljava/lang/Object;

.field private final f:J

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:Ljava/util/concurrent/atomic/AtomicLong;

.field private i:La4/d;

.field private j:Z

.field private k:Lkotlinx/coroutines/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/support/AutoCloser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/support/AutoCloser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/support/AutoCloser;->l:Landroidx/room/support/AutoCloser$a;

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Landroidx/room/support/AutoCloser$b;)V
    .locals 1

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroidx/room/support/AutoCloser;->a:Landroidx/room/support/AutoCloser$b;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/room/support/AutoCloser;->e:Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/room/support/AutoCloser;->f:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroidx/room/support/AutoCloser;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p4}, Landroidx/room/support/AutoCloser$b;->a()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Landroidx/room/support/AutoCloser;->h:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/util/concurrent/TimeUnit;Landroidx/room/support/AutoCloser$b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    new-instance p4, Landroidx/room/support/a;

    invoke-direct {p4}, Landroidx/room/support/a;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/room/support/AutoCloser;-><init>(JLjava/util/concurrent/TimeUnit;Landroidx/room/support/AutoCloser$b;)V

    return-void
.end method

.method public static synthetic a()J
    .locals 2

    invoke-static {}, Landroidx/room/support/AutoCloser;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic c(Landroidx/room/support/AutoCloser;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/support/AutoCloser;->e()V

    return-void
.end method

.method public static final synthetic d(Landroidx/room/support/AutoCloser;)J
    .locals 2

    iget-wide v0, p0, Landroidx/room/support/AutoCloser;->f:J

    return-wide v0
.end method

.method private final e()V
    .locals 5

    iget-object v0, p0, Landroidx/room/support/AutoCloser;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/room/support/AutoCloser;->a:Landroidx/room/support/AutoCloser$b;

    invoke-interface {v1}, Landroidx/room/support/AutoCloser$b;->a()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/room/support/AutoCloser;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Landroidx/room/support/AutoCloser;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/room/support/AutoCloser;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Landroidx/room/support/AutoCloser;->d:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v1, p0, Landroidx/room/support/AutoCloser;->i:La4/d;

    if-eqz v1, :cond_2

    invoke-interface {v1}, La4/d;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/room/support/AutoCloser;->i:La4/d;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onAutoCloseCallback is null but it should  have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final f()V
    .locals 4

    iget-object v0, p0, Landroidx/room/support/AutoCloser;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/room/support/AutoCloser;->j:Z

    iget-object v2, p0, Landroidx/room/support/AutoCloser;->k:Lkotlinx/coroutines/t1;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2, v3, v1, v3}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v3, p0, Landroidx/room/support/AutoCloser;->k:Lkotlinx/coroutines/t1;

    iget-object v1, p0, Landroidx/room/support/AutoCloser;->i:La4/d;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_1
    iput-object v3, p0, Landroidx/room/support/AutoCloser;->i:La4/d;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final g()V
    .locals 8

    iget-object v0, p0, Landroidx/room/support/AutoCloser;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Landroidx/room/support/AutoCloser;->h:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Landroidx/room/support/AutoCloser;->a:Landroidx/room/support/AutoCloser$b;

    invoke-interface {v2}, Landroidx/room/support/AutoCloser$b;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/support/AutoCloser;->c:Lkotlinx/coroutines/n0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "coroutineScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    new-instance v5, Landroidx/room/support/AutoCloser$decrementCountAndScheduleClose$2;

    invoke-direct {v5, p0, v1}, Landroidx/room/support/AutoCloser$decrementCountAndScheduleClose$2;-><init>(Landroidx/room/support/AutoCloser;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/support/AutoCloser;->k:Lkotlinx/coroutines/t1;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced reference count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/room/support/AutoCloser;->j()La4/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/room/support/AutoCloser;->g()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/room/support/AutoCloser;->g()V

    throw p1
.end method

.method public final i()La4/d;
    .locals 1

    iget-object v0, p0, Landroidx/room/support/AutoCloser;->i:La4/d;

    return-object v0
.end method

.method public final j()La4/d;
    .locals 4

    iget-object v0, p0, Landroidx/room/support/AutoCloser;->k:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Landroidx/room/support/AutoCloser;->k:Lkotlinx/coroutines/t1;

    iget-object v0, p0, Landroidx/room/support/AutoCloser;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-boolean v0, p0, Landroidx/room/support/AutoCloser;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/room/support/AutoCloser;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/room/support/AutoCloser;->i:La4/d;

    if-eqz v2, :cond_1

    invoke-interface {v2}, La4/d;->isOpen()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroidx/room/support/AutoCloser;->b:La4/e;

    if-nez v2, :cond_2

    const-string v2, "delegateOpenHelper"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-interface {v1}, La4/e;->getWritableDatabase()La4/d;

    move-result-object v1

    iput-object v1, p0, Landroidx/room/support/AutoCloser;->i:La4/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1

    :cond_3
    const-string v0, "Attempting to open already closed database."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final k(Lkotlinx/coroutines/n0;)V
    .locals 1

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/support/AutoCloser;->c:Lkotlinx/coroutines/n0;

    return-void
.end method

.method public final l(La4/e;)V
    .locals 1

    const-string v0, "delegateOpenHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/room/support/AutoClosingRoomOpenHelper;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/room/support/AutoCloser;->b:La4/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/room/support/AutoCloser;->j:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final n(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "onAutoClose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/support/AutoCloser;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method
