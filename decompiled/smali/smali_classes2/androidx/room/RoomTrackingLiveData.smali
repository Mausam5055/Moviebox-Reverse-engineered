.class public abstract Landroidx/room/RoomTrackingLiveData;
.super Landroidx/lifecycle/LiveData;


# instance fields
.field private final l:Landroidx/room/RoomDatabase;

.field private final m:Landroidx/room/k;

.field private final n:Z

.field private final o:Landroidx/room/InvalidationTracker$b;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final s:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method private constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/k;Z[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->l:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->m:Landroidx/room/k;

    iput-boolean p3, p0, Landroidx/room/RoomTrackingLiveData;->n:Z

    new-instance p2, Landroidx/room/RoomTrackingLiveData$a;

    invoke-direct {p2, p4, p0}, Landroidx/room/RoomTrackingLiveData$a;-><init>([Ljava/lang/String;Landroidx/room/RoomTrackingLiveData;)V

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->o:Landroidx/room/InvalidationTracker$b;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x1

    invoke-direct {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->K()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->H()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->A()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :goto_0
    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->s:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/k;Z[Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/room/RoomTrackingLiveData;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/k;Z[Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic r(Landroidx/room/RoomTrackingLiveData;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomTrackingLiveData;->w()V

    return-void
.end method

.method public static final synthetic s(Landroidx/room/RoomTrackingLiveData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/RoomTrackingLiveData;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final w()V
    .locals 7

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->h()Z

    move-result v0

    iget-object v1, p0, Landroidx/room/RoomTrackingLiveData;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->l:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->x()Lkotlinx/coroutines/n0;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/RoomTrackingLiveData;->s:Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Landroidx/room/RoomTrackingLiveData$invalidated$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/room/RoomTrackingLiveData$invalidated$1;-><init>(Landroidx/room/RoomTrackingLiveData;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method private final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Landroidx/room/RoomTrackingLiveData$refresh$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/room/RoomTrackingLiveData$refresh$1;

    iget v1, v0, Landroidx/room/RoomTrackingLiveData$refresh$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/RoomTrackingLiveData$refresh$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/RoomTrackingLiveData$refresh$1;

    invoke-direct {v0, p0, p1}, Landroidx/room/RoomTrackingLiveData$refresh$1;-><init>(Landroidx/room/RoomTrackingLiveData;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/room/RoomTrackingLiveData$refresh$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/room/RoomTrackingLiveData$refresh$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget v2, v0, Landroidx/room/RoomTrackingLiveData$refresh$1;->I$0:I

    iget-object v5, v0, Landroidx/room/RoomTrackingLiveData$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/room/RoomTrackingLiveData;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v2

    move-object v2, p1

    move p1, v7

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/RoomTrackingLiveData;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/room/RoomTrackingLiveData;->l:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->y()Landroidx/room/InvalidationTracker;

    move-result-object p1

    iget-object v2, p0, Landroidx/room/RoomTrackingLiveData;->o:Landroidx/room/InvalidationTracker$b;

    invoke-virtual {p1, v2}, Landroidx/room/InvalidationTracker;->k(Landroidx/room/InvalidationTracker$b;)V

    :cond_3
    move-object p1, p0

    :goto_1
    iget-object v2, p1, Landroidx/room/RoomTrackingLiveData;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move-object v5, p1

    move p1, v3

    :goto_2
    :try_start_1
    iget-object v6, v5, Landroidx/room/RoomTrackingLiveData;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    :try_start_2
    iput-object v5, v0, Landroidx/room/RoomTrackingLiveData$refresh$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/room/RoomTrackingLiveData$refresh$1;->I$0:I

    iput v4, v0, Landroidx/room/RoomTrackingLiveData$refresh$1;->label:I

    invoke-virtual {v5, v0}, Landroidx/room/RoomTrackingLiveData;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p1

    move p1, v4

    goto :goto_2

    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception while computing database live data."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v5, v2}, Landroidx/lifecycle/LiveData;->n(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    iget-object v2, v5, Landroidx/room/RoomTrackingLiveData;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_5

    :goto_4
    iget-object v0, v5, Landroidx/room/RoomTrackingLiveData;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p1

    :cond_7
    move-object v5, p1

    move p1, v3

    :goto_5
    if-eqz p1, :cond_9

    iget-object p1, v5, Landroidx/room/RoomTrackingLiveData;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    move-object p1, v5

    goto :goto_1

    :cond_9
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method protected l()V
    .locals 7

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->l()V

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->m:Landroidx/room/k;

    invoke-virtual {v0, p0}, Landroidx/room/k;->b(Landroidx/lifecycle/LiveData;)V

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->l:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->x()Lkotlinx/coroutines/n0;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/RoomTrackingLiveData;->s:Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Landroidx/room/RoomTrackingLiveData$onActive$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/room/RoomTrackingLiveData$onActive$1;-><init>(Landroidx/room/RoomTrackingLiveData;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method protected m()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->m()V

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->m:Landroidx/room/k;

    invoke-virtual {v0, p0}, Landroidx/room/k;->c(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public abstract t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method protected final u()Landroidx/room/RoomDatabase;
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->l:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method protected final v()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/room/RoomTrackingLiveData;->n:Z

    return v0
.end method
