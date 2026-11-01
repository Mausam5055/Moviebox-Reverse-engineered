.class public abstract Landroidx/compose/runtime/snapshots/SnapshotKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lkotlin/jvm/functions/Function1;

.field private static final b:Landroidx/compose/runtime/v2;

.field private static final c:Ljava/lang/Object;

.field private static d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

.field private static e:I

.field private static final f:Landroidx/compose/runtime/snapshots/l;

.field private static final g:Landroidx/compose/runtime/snapshots/v;

.field private static h:Ljava/util/List;

.field private static i:Ljava/util/List;

.field private static final j:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final k:Landroidx/compose/runtime/snapshots/j;

.field private static l:Landroidx/compose/runtime/AtomicInt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt$emptyLambda$1;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotKt$emptyLambda$1;

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->a:Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/compose/runtime/v2;

    invoke-direct {v0}, Landroidx/compose/runtime/v2;-><init>()V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->b:Landroidx/compose/runtime/v2;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e:Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;->a()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    const/4 v1, 0x2

    sput v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:I

    new-instance v1, Landroidx/compose/runtime/snapshots/l;

    invoke-direct {v1}, Landroidx/compose/runtime/snapshots/l;-><init>()V

    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->f:Landroidx/compose/runtime/snapshots/l;

    new-instance v1, Landroidx/compose/runtime/snapshots/v;

    invoke-direct {v1}, Landroidx/compose/runtime/snapshots/v;-><init>()V

    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->g:Landroidx/compose/runtime/snapshots/v;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->h:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->i:Ljava/util/List;

    new-instance v1, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    sget v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:I

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;->a()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/snapshots/GlobalSnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/j;

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->k:Landroidx/compose/runtime/snapshots/j;

    new-instance v0, Landroidx/compose/runtime/AtomicInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/AtomicInt;-><init>(I)V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->l:Landroidx/compose/runtime/AtomicInt;

    return-void
.end method

.method private static final A(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 17

    const/4 v0, 0x1

    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->k:Landroidx/compose/runtime/snapshots/j;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.GlobalSnapshot"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/b;->E()Landroidx/collection/MutableScatterSet;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->l:Landroidx/compose/runtime/AtomicInt;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/AtomicInt;->add(I)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    :goto_0
    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/snapshots/j;

    move-object/from16 v5, p0

    invoke-static {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->a0(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    const/4 v5, -0x1

    :try_start_1
    sget-object v6, Landroidx/compose/runtime/snapshots/SnapshotKt;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v3}, Landroidx/compose/runtime/collection/d;->a(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v8, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->l:Landroidx/compose/runtime/AtomicInt;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/AtomicInt;->add(I)I

    goto :goto_3

    :goto_2
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->l:Landroidx/compose/runtime/AtomicInt;

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/AtomicInt;->add(I)I

    throw v0

    :cond_2
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()V

    if-eqz v3, :cond_7

    iget-object v5, v3, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v3, v3, Landroidx/collection/ScatterSet;->a:[J

    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_6

    move v7, v1

    :goto_4
    aget-wide v8, v3, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v1

    :goto_5
    if-ge v12, v10, :cond_4

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_3

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v13, v5, v13

    check-cast v13, Landroidx/compose/runtime/snapshots/c0;

    invoke-static {v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->U(Landroidx/compose/runtime/snapshots/c0;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_3
    :goto_6
    shr-long/2addr v8, v11

    add-int/2addr v12, v0

    goto :goto_5

    :cond_4
    if-ne v10, v11, :cond_6

    :cond_5
    if-eq v7, v6, :cond_6

    add-int/2addr v7, v0

    goto :goto_4

    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_7
    monitor-exit v2

    return-object v4

    :goto_7
    monitor-exit v2

    throw v0

    :goto_8
    monitor-exit v1

    throw v0
.end method

.method private static final B()V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt$advanceGlobalSnapshot$3;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotKt$advanceGlobalSnapshot$3;

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->A(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method private static final C()V
    .locals 7

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->g:Landroidx/compose/runtime/snapshots/v;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/v;->e()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v3, v1, :cond_3

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/v;->f()[Landroidx/compose/runtime/h3;

    move-result-object v6

    aget-object v6, v6, v3

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_2

    check-cast v5, Landroidx/compose/runtime/snapshots/c0;

    invoke-static {v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->T(Landroidx/compose/runtime/snapshots/c0;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v4, v3, :cond_1

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/v;->f()[Landroidx/compose/runtime/h3;

    move-result-object v5

    aput-object v6, v5, v4

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/v;->d()[I

    move-result-object v5

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/v;->d()[I

    move-result-object v6

    aget v6, v6, v3

    aput v6, v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/v;->f()[Landroidx/compose/runtime/h3;

    move-result-object v6

    aput-object v5, v6, v3

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/v;->d()[I

    move-result-object v6

    aput v2, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v4, v1, :cond_5

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/snapshots/v;->g(I)V

    :cond_5
    return-void
.end method

.method private static final D(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/j;
    .locals 8

    instance-of v0, p0, Landroidx/compose/runtime/snapshots/b;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/runtime/snapshots/h0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/compose/runtime/snapshots/h0;-><init>(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;ZZ)V

    goto :goto_3

    :cond_1
    :goto_0
    new-instance v1, Landroidx/compose/runtime/snapshots/g0;

    if-eqz v0, :cond_2

    check-cast p0, Landroidx/compose/runtime/snapshots/b;

    :goto_1
    move-object v3, p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/snapshots/g0;-><init>(Landroidx/compose/runtime/snapshots/b;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V

    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method static synthetic E(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Landroidx/compose/runtime/snapshots/j;
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->D(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/j;

    move-result-object p0

    return-object p0
.end method

.method public static final F(Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;
    .locals 3

    sget-object v0, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j$a;->c()Landroidx/compose/runtime/snapshots/j;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    invoke-static {p0, v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->W(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j$a;->c()Landroidx/compose/runtime/snapshots/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-static {p0, v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->W(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz p0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->V()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static final G(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->W(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->V()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final H()Landroidx/compose/runtime/snapshots/j;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->b:Landroidx/compose/runtime/v2;

    invoke-virtual {v0}, Landroidx/compose/runtime/v2;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/j;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/j;

    :cond_0
    return-object v0
.end method

.method public static final I()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public static final J()Landroidx/compose/runtime/snapshots/j;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->k:Landroidx/compose/runtime/snapshots/j;

    return-object v0
.end method

.method private static final K(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eq p0, p1, :cond_1

    new-instance p2, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;

    invoke-direct {p2, p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object p0, p2

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    move-object p0, p1

    :cond_2
    :goto_1
    return-object p0
.end method

.method static synthetic L(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->K(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method private static final M(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eq p0, p1, :cond_0

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedWriteObserver$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedWriteObserver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final N(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;)Landroidx/compose/runtime/snapshots/e0;
    .locals 2

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->d0(Landroidx/compose/runtime/snapshots/c0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/e0;->h(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/e0;->d()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/e0;->h(I)V

    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/c0;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/e0;->g(Landroidx/compose/runtime/snapshots/e0;)V

    const-string p0, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.newOverwritableRecordLocked$lambda$16"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/snapshots/c0;->prependStateRecord(Landroidx/compose/runtime/snapshots/e0;)V

    const-string p0, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.newOverwritableRecordLocked"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static final O(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;
    .locals 1

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->P(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final P(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->N(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/e0;->c(Landroidx/compose/runtime/snapshots/e0;)V

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/e0;->h(I)V

    return-object p1
.end method

.method public static final Q(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/c0;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->j()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/j;->w(I)V

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->k()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final R(Landroidx/compose/runtime/snapshots/b;Landroidx/compose/runtime/snapshots/b;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/b;->E()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/b;->F()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->o(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v3

    iget-object v4, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_b

    move-object v8, v2

    const/4 v7, 0x0

    :goto_0
    aget-wide v9, v0, v7

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_9

    sub-int v11, v7, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_8

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_7

    shl-int/lit8 v14, v7, 0x3

    add-int/2addr v14, v13

    aget-object v14, v4, v14

    check-cast v14, Landroidx/compose/runtime/snapshots/c0;

    invoke-interface {v14}, Landroidx/compose/runtime/snapshots/c0;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v15

    move-object/from16 v6, p2

    invoke-static {v15, v1, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->W(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v12

    if-nez v12, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v15, v1, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->W(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    move-object/from16 v18, v0

    move/from16 v19, v1

    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v0

    move/from16 v19, v1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    invoke-static {v15, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->W(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v14, v2, v12, v0}, Landroidx/compose/runtime/snapshots/c0;->mergeRecords(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez v8, :cond_4

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    :cond_4
    move-object v1, v8

    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->V()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :goto_4
    const/16 v1, 0x8

    goto :goto_5

    :cond_7
    move-object/from16 v6, p2

    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object v0, v2

    move v1, v12

    :goto_5
    shr-long/2addr v9, v1

    add-int/lit8 v13, v13, 0x1

    move-object v2, v0

    move v12, v1

    move-object/from16 v0, v18

    move/from16 v1, v19

    goto :goto_1

    :cond_8
    move-object/from16 v6, p2

    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object v0, v2

    move v1, v12

    if-ne v11, v1, :cond_c

    goto :goto_6

    :cond_9
    move-object/from16 v6, p2

    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object v0, v2

    :goto_6
    if-eq v7, v5, :cond_a

    add-int/lit8 v7, v7, 0x1

    move-object v2, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    goto/16 :goto_0

    :cond_a
    move-object v2, v8

    goto :goto_7

    :cond_b
    move-object v0, v2

    :goto_7
    move-object v8, v2

    :cond_c
    return-object v8
.end method

.method public static final S(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;
    .locals 2

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/j;->p(Landroidx/compose/runtime/snapshots/c0;)V

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v0

    invoke-virtual {p3}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v1

    if-ne v1, v0, :cond_1

    return-object p3

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->N(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/e0;->h(I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/j;->p(Landroidx/compose/runtime/snapshots/c0;)V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method private static final T(Landroidx/compose/runtime/snapshots/c0;)Z
    .locals 10

    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/c0;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->f:Landroidx/compose/runtime/snapshots/l;

    sget v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:I

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/l;->e(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    :goto_0
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v6

    if-eqz v6, :cond_7

    if-ge v6, v1, :cond_6

    if-nez v2, :cond_0

    add-int/lit8 v5, v5, 0x1

    move-object v2, v0

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v6

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v7

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    if-nez v4, :cond_5

    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/c0;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v4

    move-object v7, v4

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v8

    if-lt v8, v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v8

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v9

    if-ge v8, v9, :cond_3

    move-object v7, v4

    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/e0;->e()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v7

    :cond_5
    :goto_3
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/e0;->h(I)V

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/e0;->c(Landroidx/compose/runtime/snapshots/e0;)V

    move-object v2, v6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    :cond_7
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/e0;->e()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    goto :goto_0

    :cond_8
    const/4 p0, 0x1

    if-le v5, p0, :cond_9

    move v3, p0

    :cond_9
    return v3
.end method

.method private static final U(Landroidx/compose/runtime/snapshots/c0;)V
    .locals 1

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->T(Landroidx/compose/runtime/snapshots/c0;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->g:Landroidx/compose/runtime/snapshots/v;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/v;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static final V()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final W(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;
    .locals 4

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->f0(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v3

    if-ge v2, v3, :cond_1

    :goto_1
    move-object v1, p0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/e0;->e()Landroidx/compose/runtime/snapshots/e0;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static final X(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;)Landroidx/compose/runtime/snapshots/e0;
    .locals 3

    sget-object v0, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j$a;->c()Landroidx/compose/runtime/snapshots/j;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/j;->h()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    invoke-static {p0, v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->W(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j$a;->c()Landroidx/compose/runtime/snapshots/j;

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/c0;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.readable$lambda$9"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->W(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    move-object p0, p1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->V()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final Y(I)V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->f:Landroidx/compose/runtime/snapshots/l;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/l;->f(I)V

    return-void
.end method

.method private static final Z()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify a state object in a read-only snapshot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->A(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final a0(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:I

    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    sput-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-direct {v3, v1, v4}, Landroidx/compose/runtime/snapshots/GlobalSnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->d()V

    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final synthetic b()V
    .locals 0

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->B()V

    return-void
.end method

.method private static final b0(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/j;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotKt$takeNewSnapshot$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt$takeNewSnapshot$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->A(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/snapshots/j;

    return-object p0
.end method

.method public static final synthetic c()V
    .locals 0

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()V

    return-void
.end method

.method public static final c0(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)I
    .locals 1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->n(I)I

    move-result p0

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->f:Landroidx/compose/runtime/snapshots/l;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/l;->a(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public static final synthetic d(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/j;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->D(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/j;

    move-result-object p0

    return-object p0
.end method

.method private static final d0(Landroidx/compose/runtime/snapshots/c0;)Landroidx/compose/runtime/snapshots/e0;
    .locals 5

    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/c0;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object p0

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->f:Landroidx/compose/runtime/snapshots/l;

    sget v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/l;->e(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e:Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;->a()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v4

    if-nez v4, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->f0(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_1

    move-object v3, p0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v0

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v1

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v3

    :goto_1
    return-object p0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/e0;->e()Landroidx/compose/runtime/snapshots/e0;

    move-result-object p0

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static final synthetic e()Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->h:Ljava/util/List;

    return-object v0
.end method

.method private static final e0(IILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-gt p1, p0, :cond_0

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic f()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private static final f0(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result p0

    invoke-static {p1, p0, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->e0(IILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic g()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->a:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private static final g0(Landroidx/compose/runtime/snapshots/j;)V
    .locals 3

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snapshot is not open: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disposed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", applied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p0, Landroidx/compose/runtime/snapshots/b;

    if-eqz v1, :cond_0

    check-cast p0, Landroidx/compose/runtime/snapshots/b;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/b;->D()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "read-only"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", lowestPin="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->f:Landroidx/compose/runtime/snapshots/l;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/l;->e(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    return-void
.end method

.method public static final synthetic h()Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->i:Ljava/util/List;

    return-object v0
.end method

.method public static final h0(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;
    .locals 4

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/j;->p(Landroidx/compose/runtime/snapshots/c0;)V

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->W(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v2

    if-ne v1, v2, :cond_1

    return-object p0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/c0;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->W(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v3

    if-ne v3, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->P(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    const-string v0, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.writableRecord"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/j;->p(Landroidx/compose/runtime/snapshots/c0;)V

    :cond_3
    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->V()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v1

    throw p0

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->V()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final synthetic i()I
    .locals 1

    sget v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:I

    return v0
.end method

.method public static final synthetic j()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-object v0
.end method

.method public static final synthetic k()Landroidx/compose/runtime/v2;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->b:Landroidx/compose/runtime/v2;

    return-object v0
.end method

.method public static final synthetic l(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->K(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->M(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Landroidx/compose/runtime/snapshots/b;Landroidx/compose/runtime/snapshots/b;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->R(Landroidx/compose/runtime/snapshots/b;Landroidx/compose/runtime/snapshots/b;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Landroidx/compose/runtime/snapshots/c0;)V
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->U(Landroidx/compose/runtime/snapshots/c0;)V

    return-void
.end method

.method public static final synthetic p()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->V()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic q(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->W(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic r()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Z()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic s(Ljava/util/List;)V
    .locals 0

    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->h:Ljava/util/List;

    return-void
.end method

.method public static final synthetic t(Ljava/util/List;)V
    .locals 0

    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->i:Ljava/util/List;

    return-void
.end method

.method public static final synthetic u(I)V
    .locals 0

    sput p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:I

    return-void
.end method

.method public static final synthetic v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 0

    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-void
.end method

.method public static final synthetic w(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->a0(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic x(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/j;
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->b0(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/j;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic y(Landroidx/compose/runtime/snapshots/j;)V
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->g0(Landroidx/compose/runtime/snapshots/j;)V

    return-void
.end method

.method public static final z(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 0

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
