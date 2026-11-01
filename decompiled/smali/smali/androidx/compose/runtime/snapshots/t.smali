.class public final Landroidx/compose/runtime/snapshots/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/snapshots/c0;
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMutableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/t$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/compose/runtime/snapshots/e0;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;

.field private final d:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lt/a;->a()Lt/g;

    move-result-object v0

    new-instance v1, Landroidx/compose/runtime/snapshots/t$a;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/snapshots/t$a;-><init>(Lt/g;)V

    sget-object v2, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/j$a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/compose/runtime/snapshots/t$a;

    invoke-direct {v2, v0}, Landroidx/compose/runtime/snapshots/t$a;-><init>(Lt/g;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/snapshots/e0;->h(I)V

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/e0;->g(Landroidx/compose/runtime/snapshots/e0;)V

    :cond_0
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/t;->a:Landroidx/compose/runtime/snapshots/e0;

    new-instance v0, Landroidx/compose/runtime/snapshots/n;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/n;-><init>(Landroidx/compose/runtime/snapshots/t;)V

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/t;->b:Ljava/util/Set;

    new-instance v0, Landroidx/compose/runtime/snapshots/o;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/o;-><init>(Landroidx/compose/runtime/snapshots/t;)V

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/t;->c:Ljava/util/Set;

    new-instance v0, Landroidx/compose/runtime/snapshots/q;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/q;-><init>(Landroidx/compose/runtime/snapshots/t;)V

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/t;->d:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/t;->b:Ljava/util/Set;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/t;->c:Ljava/util/Set;

    return-object v0
.end method

.method public clear()V
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->F(Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/t$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    invoke-static {}, Lt/a;->a()Lt/g;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J()Landroidx/compose/runtime/snapshots/j;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/j$a;->c()Landroidx/compose/runtime/snapshots/j;

    move-result-object v3

    invoke-static {v0, p0, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->h0(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->a()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/t$a;->k(Lt/g;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/t$a;->l(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    invoke-static {v3, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Q(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/c0;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v2

    throw v0

    :cond_0
    :goto_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->f()Landroidx/compose/runtime/snapshots/t$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->f()Landroidx/compose/runtime/snapshots/t$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->f()Landroidx/compose/runtime/snapshots/t$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v0

    return v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroidx/compose/runtime/snapshots/t$a;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->X(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/t$a;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->f()Landroidx/compose/runtime/snapshots/t$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/t;->a:Landroidx/compose/runtime/snapshots/e0;

    return-object v0
.end method

.method public h()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->f()Landroidx/compose/runtime/snapshots/t$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/t;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->f()Landroidx/compose/runtime/snapshots/t$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final j(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/t;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->f()Landroidx/compose/runtime/snapshots/t$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mergeRecords(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/snapshots/b0;->a(Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object p1

    return-object p1
.end method

.method public prependStateRecord(Landroidx/compose/runtime/snapshots/e0;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/snapshots/t$a;

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/t;->a:Landroidx/compose/runtime/snapshots/e0;

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->F(Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/snapshots/t$a;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v1

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Lt/g;->builder()Lt/g$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lt/g$a;->build()Lt/g;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J()Landroidx/compose/runtime/snapshots/j;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    sget-object v5, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/j$a;->c()Landroidx/compose/runtime/snapshots/j;

    move-result-object v5

    invoke-static {v2, p0, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->h0(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->a()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v7

    if-ne v7, v1, :cond_1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/snapshots/t$a;->k(Lt/g;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/snapshots/t$a;->l(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v4

    invoke-static {v5, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Q(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/c0;)V

    if-eqz v1, :cond_0

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit v6

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit v4

    throw p1

    :cond_2
    :goto_3
    return-object v3

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 7

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->F(Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/snapshots/t$a;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v1

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Lt/g;->builder()Lt/g$a;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0}, Lt/g$a;->build()Lt/g;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J()Landroidx/compose/runtime/snapshots/j;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    sget-object v4, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/j$a;->c()Landroidx/compose/runtime/snapshots/j;

    move-result-object v4

    invoke-static {v2, p0, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->h0(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->a()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v6

    if-ne v6, v1, :cond_1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/snapshots/t$a;->k(Lt/g;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/snapshots/t$a;->l(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v3

    invoke-static {v4, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Q(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/c0;)V

    if-eqz v1, :cond_0

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit v5

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit v3

    throw p1

    :cond_2
    :goto_3
    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->F(Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/snapshots/t$a;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v1

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Lt/g;->builder()Lt/g$a;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lt/g$a;->build()Lt/g;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J()Landroidx/compose/runtime/snapshots/j;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    sget-object v5, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/j$a;->c()Landroidx/compose/runtime/snapshots/j;

    move-result-object v5

    invoke-static {v2, p0, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->h0(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->a()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v7

    if-ne v7, v1, :cond_1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/snapshots/t$a;->k(Lt/g;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/snapshots/t$a;->l(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v4

    invoke-static {v5, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Q(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/c0;)V

    if-eqz v1, :cond_0

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit v6

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit v4

    throw p1

    :cond_2
    :goto_3
    return-object v3

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final bridge size()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->h()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->F(Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/t$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapshotStateMap(value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/t;->i()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
