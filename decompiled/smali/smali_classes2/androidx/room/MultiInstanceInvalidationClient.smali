.class public final Landroidx/room/MultiInstanceInvalidationClient;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/room/InvalidationTracker;

.field private final c:Landroid/content/Context;

.field private final d:Lkotlinx/coroutines/n0;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:I

.field private g:Landroidx/room/j;

.field private final h:Lkotlinx/coroutines/flow/x0;

.field private final i:Landroidx/room/MultiInstanceInvalidationClient$a;

.field private final j:Landroidx/room/i;

.field private final k:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/InvalidationTracker;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidationTracker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/MultiInstanceInvalidationClient;->b:Landroidx/room/InvalidationTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroidx/room/InvalidationTracker;->o()Landroidx/room/RoomDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->x()Lkotlinx/coroutines/n0;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->d:Lkotlinx/coroutines/n0;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-static {p1, p1, p2}, Lkotlinx/coroutines/flow/d1;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/x0;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->h:Lkotlinx/coroutines/flow/x0;

    invoke-virtual {p3}, Landroidx/room/InvalidationTracker;->p()[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroidx/room/MultiInstanceInvalidationClient$a;

    invoke-direct {p2, p0, p1}, Landroidx/room/MultiInstanceInvalidationClient$a;-><init>(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->i:Landroidx/room/MultiInstanceInvalidationClient$a;

    new-instance p1, Landroidx/room/MultiInstanceInvalidationClient$invalidationCallback$1;

    invoke-direct {p1, p0}, Landroidx/room/MultiInstanceInvalidationClient$invalidationCallback$1;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->j:Landroidx/room/i;

    new-instance p1, Landroidx/room/MultiInstanceInvalidationClient$b;

    invoke-direct {p1, p0}, Landroidx/room/MultiInstanceInvalidationClient$b;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->k:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static final synthetic a(Landroidx/room/MultiInstanceInvalidationClient;)I
    .locals 0

    iget p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->f:I

    return p0
.end method

.method public static final synthetic b(Landroidx/room/MultiInstanceInvalidationClient;)Lkotlinx/coroutines/n0;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->d:Lkotlinx/coroutines/n0;

    return-object p0
.end method

.method public static final synthetic c(Landroidx/room/MultiInstanceInvalidationClient;)Lkotlinx/coroutines/flow/x0;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->h:Lkotlinx/coroutines/flow/x0;

    return-object p0
.end method

.method public static final synthetic d(Landroidx/room/MultiInstanceInvalidationClient;)Landroidx/room/j;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->g:Landroidx/room/j;

    return-object p0
.end method

.method public static final synthetic e(Landroidx/room/MultiInstanceInvalidationClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic f(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/MultiInstanceInvalidationClient;->j()V

    return-void
.end method

.method public static final synthetic g(Landroidx/room/MultiInstanceInvalidationClient;Landroidx/room/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->g:Landroidx/room/j;

    return-void
.end method

.method private final j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->g:Landroidx/room/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->j:Landroidx/room/i;

    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/room/j;->r0(Landroidx/room/i;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->f:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot register multi-instance invalidation callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final h([Ljava/lang/String;)Lkotlinx/coroutines/flow/b;
    .locals 2

    const-string v0, "resolvedTableNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->h:Lkotlinx/coroutines/flow/x0;

    new-instance v1, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1;

    invoke-direct {v1, v0, p1}, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/b;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final i()Landroidx/room/InvalidationTracker;
    .locals 1

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->b:Landroidx/room/InvalidationTracker;

    return-object v0
.end method

.method public final k(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "serviceIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->c:Landroid/content/Context;

    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->k:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->b:Landroidx/room/InvalidationTracker;

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->i:Landroidx/room/MultiInstanceInvalidationClient$a;

    invoke-virtual {p1, v0}, Landroidx/room/InvalidationTracker;->j(Landroidx/room/InvalidationTracker$b;)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->b:Landroidx/room/InvalidationTracker;

    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->i:Landroidx/room/MultiInstanceInvalidationClient$a;

    invoke-virtual {v0, v1}, Landroidx/room/InvalidationTracker;->z(Landroidx/room/InvalidationTracker$b;)V

    :try_start_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->g:Landroidx/room/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->j:Landroidx/room/i;

    iget v2, p0, Landroidx/room/MultiInstanceInvalidationClient;->f:I

    invoke-interface {v0, v1, v2}, Landroidx/room/j;->W0(Landroidx/room/i;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot unregister multi-instance invalidation callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->c:Landroid/content/Context;

    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->k:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method
