.class public abstract Landroidx/room/RoomDatabase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomDatabase$a;,
        Landroidx/room/RoomDatabase$b;,
        Landroidx/room/RoomDatabase$c;,
        Landroidx/room/RoomDatabase$JournalMode;,
        Landroidx/room/RoomDatabase$d;,
        Landroidx/room/RoomDatabase$e;
    }
.end annotation


# static fields
.field public static final o:Landroidx/room/RoomDatabase$c;


# instance fields
.field protected volatile a:La4/d;

.field private b:Lkotlinx/coroutines/n0;

.field private c:Lkotlin/coroutines/CoroutineContext;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Landroidx/room/s;

.field private g:Landroidx/room/InvalidationTracker;

.field private final h:Lx3/a;

.field private i:Z

.field protected j:Ljava/util/List;

.field private k:Landroidx/room/support/AutoCloser;

.field private final l:Ljava/lang/ThreadLocal;

.field private final m:Ljava/util/Map;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/RoomDatabase$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/RoomDatabase$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/RoomDatabase;->o:Landroidx/room/RoomDatabase$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx3/a;

    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    invoke-direct {v1, p0}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lx3/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->h:Lx3/a;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->l:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->m:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase;->n:Z

    return-void
.end method

.method private final N()V
    .locals 2

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->i()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->z()La4/e;

    move-result-object v0

    invoke-interface {v0}, La4/e;->getWritableDatabase()La4/d;

    move-result-object v0

    invoke-interface {v0}, La4/d;->s0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->y()Landroidx/room/InvalidationTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/InvalidationTracker;->E()V

    :cond_0
    invoke-interface {v0}, La4/d;->w0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, La4/d;->K()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, La4/d;->A()V

    :goto_0
    return-void
.end method

.method private final O()V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->z()La4/e;

    move-result-object v0

    invoke-interface {v0}, La4/e;->getWritableDatabase()La4/d;

    move-result-object v0

    invoke-interface {v0}, La4/d;->L()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->L()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->y()Landroidx/room/InvalidationTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/InvalidationTracker;->y()V

    :cond_0
    return-void
.end method

.method private final U()V
    .locals 3

    iget-object v0, p0, Landroidx/room/RoomDatabase;->b:Lkotlinx/coroutines/n0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "coroutineScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->y()Landroidx/room/InvalidationTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/InvalidationTracker;->C()V

    iget-object v0, p0, Landroidx/room/RoomDatabase;->f:Landroidx/room/s;

    if-nez v0, :cond_1

    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/room/s;->F()V

    return-void
.end method

.method public static synthetic X(Landroidx/room/RoomDatabase;La4/g;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomDatabase;->W(La4/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: query"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final Z(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->t()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->t()V

    throw p1

    :cond_0
    new-instance v0, Landroidx/room/y;

    invoke-direct {v0, p1}, Landroidx/room/y;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;Lz3/b;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/RoomDatabase;->d0(Lkotlin/jvm/functions/Function0;Lz3/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/room/RoomDatabase;->c0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final b0(Ljava/lang/Runnable;)Lkotlin/Unit;
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic c(Landroidx/room/RoomDatabase;La4/d;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/RoomDatabase;->l(Landroidx/room/RoomDatabase;La4/d;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final c0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Runnable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/room/RoomDatabase;->b0(Ljava/lang/Runnable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d0(Lkotlin/jvm/functions/Function0;Lz3/b;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/room/RoomDatabase;La4/d;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/RoomDatabase;->u(Landroidx/room/RoomDatabase;La4/d;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/room/RoomDatabase;Landroidx/room/c;)La4/e;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/RoomDatabase;->o(Landroidx/room/RoomDatabase;Landroidx/room/c;)La4/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;->U()V

    return-void
.end method

.method private static final l(Landroidx/room/RoomDatabase;La4/d;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/room/RoomDatabase;->N()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final o(Landroidx/room/RoomDatabase;Landroidx/room/c;)La4/e;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->s(Landroidx/room/c;)La4/e;

    move-result-object p0

    return-object p0
.end method

.method private static final u(Landroidx/room/RoomDatabase;La4/d;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/room/RoomDatabase;->O()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final A()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->b:Lkotlinx/coroutines/n0;

    if-nez v0, :cond_0

    const-string v0, "coroutineScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/n0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/util/Set;
    .locals 3

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->C()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->c(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected D()Ljava/util/Map;
    .locals 7

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->F()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->e(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->c(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-static {v6}, Lkotlin/jvm/JvmClassMappingKt;->c(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public final E()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->D()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected F()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final G()Ljava/lang/ThreadLocal;
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->l:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public final H()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->c:Lkotlin/coroutines/CoroutineContext;

    if-nez v0, :cond_0

    const-string v0, "transactionContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public I()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->e:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const-string v0, "internalTransactionExecutor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final J()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/room/RoomDatabase;->n:Z

    return v0
.end method

.method public final K()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->f:Landroidx/room/s;

    if-nez v0, :cond_0

    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/room/s;->G()La4/e;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->z()La4/e;

    move-result-object v0

    invoke-interface {v0}, La4/e;->getWritableDatabase()La4/d;

    move-result-object v0

    invoke-interface {v0}, La4/d;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public M(Landroidx/room/c;)V
    .locals 7

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/room/c;->d()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/room/RoomDatabase;->n:Z

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->p(Landroidx/room/c;)Landroidx/room/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->f:Landroidx/room/s;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->q()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->g:Landroidx/room/InvalidationTracker;

    invoke-static {p0, p1}, Landroidx/room/z;->a(Landroidx/room/RoomDatabase;Landroidx/room/c;)V

    invoke-static {p0, p1}, Landroidx/room/z;->c(Landroidx/room/RoomDatabase;Landroidx/room/c;)V

    iget-object v0, p1, Landroidx/room/c;->v:Lkotlin/coroutines/CoroutineContext;

    const/4 v1, 0x1

    const-string v2, "internalQueryExecutor"

    const-string v3, "coroutineScope"

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    sget-object v5, Lkotlin/coroutines/ContinuationInterceptor;->j1:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {v0, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/i0;

    invoke-static {v0}, Lkotlinx/coroutines/m1;->a(Lkotlinx/coroutines/i0;)Ljava/util/concurrent/Executor;

    move-result-object v5

    iput-object v5, p0, Landroidx/room/RoomDatabase;->d:Ljava/util/concurrent/Executor;

    new-instance v6, Landroidx/room/m0;

    if-nez v5, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v5, v4

    :cond_0
    invoke-direct {v6, v5}, Landroidx/room/m0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v6, p0, Landroidx/room/RoomDatabase;->e:Ljava/util/concurrent/Executor;

    iget-object v2, p1, Landroidx/room/c;->v:Lkotlin/coroutines/CoroutineContext;

    sget-object v5, Lkotlinx/coroutines/t1;->l1:Lkotlinx/coroutines/t1$b;

    invoke-interface {v2, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/t1;

    iget-object v5, p1, Landroidx/room/c;->v:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/l2;->a(Lkotlinx/coroutines/t1;)Lkotlinx/coroutines/z;

    move-result-object v2

    invoke-interface {v5, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    iput-object v2, p0, Landroidx/room/RoomDatabase;->b:Lkotlinx/coroutines/n0;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->K()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/room/RoomDatabase;->b:Lkotlinx/coroutines/n0;

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    invoke-interface {v2}, Lkotlinx/coroutines/n0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/i0;->limitedParallelism(I)Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/room/RoomDatabase;->b:Lkotlinx/coroutines/n0;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v4

    :cond_3
    invoke-interface {v0}, Lkotlinx/coroutines/n0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/room/RoomDatabase;->c:Lkotlin/coroutines/CoroutineContext;

    goto :goto_1

    :cond_4
    iget-object v0, p1, Landroidx/room/c;->h:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/RoomDatabase;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/room/m0;

    iget-object v5, p1, Landroidx/room/c;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v5}, Landroidx/room/m0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->e:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroidx/room/RoomDatabase;->d:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v4

    :cond_5
    invoke-static {v0}, Lkotlinx/coroutines/m1;->b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v4, v1, v4}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->b:Lkotlinx/coroutines/n0;

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v4

    :cond_6
    invoke-interface {v0}, Lkotlinx/coroutines/n0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/RoomDatabase;->e:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_7

    const-string v1, "internalTransactionExecutor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v4

    :cond_7
    invoke-static {v1}, Lkotlinx/coroutines/m1;->b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->c:Lkotlin/coroutines/CoroutineContext;

    :goto_1
    iget-boolean v0, p1, Landroidx/room/c;->f:Z

    iput-boolean v0, p0, Landroidx/room/RoomDatabase;->i:Z

    iget-object v0, p0, Landroidx/room/RoomDatabase;->f:Landroidx/room/s;

    const-string v1, "connectionManager"

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v4

    :cond_8
    invoke-virtual {v0}, Landroidx/room/s;->G()La4/e;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    move-object v0, v4

    goto :goto_3

    :cond_a
    :goto_2
    instance-of v2, v0, Landroidx/room/support/m;

    if-eqz v2, :cond_b

    goto :goto_3

    :cond_b
    instance-of v2, v0, Landroidx/room/d;

    if-eqz v2, :cond_9

    check-cast v0, Landroidx/room/d;

    invoke-interface {v0}, Landroidx/room/d;->getDelegate()La4/e;

    move-result-object v0

    goto :goto_2

    :goto_3
    check-cast v0, Landroidx/room/support/m;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroidx/room/support/m;->i(Landroidx/room/c;)V

    :cond_c
    iget-object v0, p0, Landroidx/room/RoomDatabase;->f:Landroidx/room/s;

    if-nez v0, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v4

    :cond_d
    invoke-virtual {v0}, Landroidx/room/s;->G()La4/e;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    move-object v0, v4

    goto :goto_5

    :cond_f
    :goto_4
    instance-of v1, v0, Landroidx/room/support/AutoClosingRoomOpenHelper;

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    instance-of v1, v0, Landroidx/room/d;

    if-eqz v1, :cond_e

    check-cast v0, Landroidx/room/d;

    invoke-interface {v0}, Landroidx/room/d;->getDelegate()La4/e;

    move-result-object v0

    goto :goto_4

    :goto_5
    check-cast v0, Landroidx/room/support/AutoClosingRoomOpenHelper;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper;->d()Landroidx/room/support/AutoCloser;

    move-result-object v1

    iput-object v1, p0, Landroidx/room/RoomDatabase;->k:Landroidx/room/support/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper;->d()Landroidx/room/support/AutoCloser;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/RoomDatabase;->b:Lkotlinx/coroutines/n0;

    if-nez v2, :cond_11

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    move-object v4, v2

    :goto_6
    invoke-virtual {v1, v4}, Landroidx/room/support/AutoCloser;->k(Lkotlinx/coroutines/n0;)V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->y()Landroidx/room/InvalidationTracker;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper;->d()Landroidx/room/support/AutoCloser;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/room/InvalidationTracker;->B(Landroidx/room/support/AutoCloser;)V

    :cond_12
    iget-object v0, p1, Landroidx/room/c;->j:Landroid/content/Intent;

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroidx/room/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->y()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iget-object v1, p1, Landroidx/room/c;->a:Landroid/content/Context;

    iget-object v2, p1, Landroidx/room/c;->b:Ljava/lang/String;

    iget-object p1, p1, Landroidx/room/c;->j:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/room/InvalidationTracker;->q(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_7

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_7
    return-void
.end method

.method protected P(La4/d;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/room/driver/a;

    invoke-direct {v0, p1}, Landroidx/room/driver/a;-><init>(La4/d;)V

    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->Q(Lz3/b;)V

    return-void
.end method

.method protected final Q(Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->y()Landroidx/room/InvalidationTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker;->r(Lz3/b;)V

    return-void
.end method

.method public final R()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public S()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->k:Landroidx/room/support/AutoCloser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/room/support/AutoCloser;->m()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase;->f:Landroidx/room/s;

    if-nez v0, :cond_1

    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Landroidx/room/s;->J()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final T()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->f:Landroidx/room/s;

    if-nez v0, :cond_0

    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/room/s;->J()Z

    move-result v0

    return v0
.end method

.method public final V(La4/g;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/room/RoomDatabase;->X(Landroidx/room/RoomDatabase;La4/g;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public W(La4/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->i()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->j()V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->z()La4/e;

    move-result-object v0

    invoke-interface {v0}, La4/e;->getWritableDatabase()La4/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, La4/d;->e0(La4/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->z()La4/e;

    move-result-object p2

    invoke-interface {p2}, La4/e;->getWritableDatabase()La4/d;

    move-result-object p2

    invoke-interface {p2, p1}, La4/d;->b0(La4/g;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public Y(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/room/w;

    invoke-direct {v0, p1}, Landroidx/room/w;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0}, Landroidx/room/RoomDatabase;->Z(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a0(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/room/x;

    invoke-direct {v0, p1}, Landroidx/room/x;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Landroidx/room/RoomDatabase;->Z(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public e0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->z()La4/e;

    move-result-object v0

    invoke-interface {v0}, La4/e;->getWritableDatabase()La4/d;

    move-result-object v0

    invoke-interface {v0}, La4/d;->I()V

    return-void
.end method

.method public final f0(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->f:Landroidx/room/s;

    if-nez v0, :cond_0

    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/room/s;->K(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lkotlin/reflect/KClass;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "kclass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/RoomDatabase;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i()V
    .locals 2

    iget-boolean v0, p0, Landroidx/room/RoomDatabase;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->R()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 2

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->L()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public k()V
    .locals 2

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->i()V

    iget-object v0, p0, Landroidx/room/RoomDatabase;->k:Landroidx/room/support/AutoCloser;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;->N()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/room/v;

    invoke-direct {v1, p0}, Landroidx/room/v;-><init>(Landroidx/room/RoomDatabase;)V

    invoke-virtual {v0, v1}, Landroidx/room/support/AutoCloser;->h(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public m(Ljava/lang/String;)La4/h;
    .locals 1

    const-string v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->i()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->j()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->z()La4/e;

    move-result-object v0

    invoke-interface {v0}, La4/e;->getWritableDatabase()La4/d;

    move-result-object v0

    invoke-interface {v0, p1}, La4/d;->W(Ljava/lang/String;)La4/h;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/util/Map;)Ljava/util/List;
    .locals 3

    const-string v0, "autoMigrationSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->e(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KClass;

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->v(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final p(Landroidx/room/c;)Landroidx/room/s;
    .locals 2

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->r()Landroidx/room/e0;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.room.RoomOpenDelegate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/room/d0;
    :try_end_0
    .catch Lkotlin/NotImplementedError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Landroidx/room/s;

    new-instance v1, Landroidx/room/u;

    invoke-direct {v1, p0}, Landroidx/room/u;-><init>(Landroidx/room/RoomDatabase;)V

    invoke-direct {v0, p1, v1}, Landroidx/room/s;-><init>(Landroidx/room/c;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_0
    new-instance v1, Landroidx/room/s;

    invoke-direct {v1, p1, v0}, Landroidx/room/s;-><init>(Landroidx/room/c;Landroidx/room/d0;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method protected abstract q()Landroidx/room/InvalidationTracker;
.end method

.method protected r()Landroidx/room/e0;
    .locals 3

    new-instance v0, Lkotlin/NotImplementedError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method protected s(Landroidx/room/c;)La4/e;
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlin/NotImplementedError;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Landroidx/room/RoomDatabase;->k:Landroidx/room/support/AutoCloser;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;->O()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/room/t;

    invoke-direct {v1, p0}, Landroidx/room/t;-><init>(Landroidx/room/RoomDatabase;)V

    invoke-virtual {v0, v1}, Landroidx/room/support/AutoCloser;->h(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public v(Ljava/util/Map;)Ljava/util/List;
    .locals 1

    const-string v0, "autoMigrationSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final w()Lx3/a;
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->h:Lx3/a;

    return-object v0
.end method

.method public final x()Lkotlinx/coroutines/n0;
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->b:Lkotlinx/coroutines/n0;

    if-nez v0, :cond_0

    const-string v0, "coroutineScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public y()Landroidx/room/InvalidationTracker;
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->g:Landroidx/room/InvalidationTracker;

    if-nez v0, :cond_0

    const-string v0, "internalTracker"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public z()La4/e;
    .locals 2

    iget-object v0, p0, Landroidx/room/RoomDatabase;->f:Landroidx/room/s;

    if-nez v0, :cond_0

    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/room/s;->G()La4/e;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
