.class final Landroidx/compose/runtime/snapshots/q;
.super Landroidx/compose/runtime/snapshots/p;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/t;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/p;-><init>(Landroidx/compose/runtime/snapshots/t;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/q;->e(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/q;->f(Ljava/util/Collection;)Ljava/lang/Void;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/p;->a()Landroidx/compose/runtime/snapshots/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/t;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/p;->a()Landroidx/compose/runtime/snapshots/t;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/snapshots/t;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->b()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public f(Ljava/util/Collection;)Ljava/lang/Void;
    .locals 0

    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->b()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public h()Landroidx/compose/runtime/snapshots/a0;
    .locals 3

    new-instance v0, Landroidx/compose/runtime/snapshots/a0;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/p;->a()Landroidx/compose/runtime/snapshots/t;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/p;->a()Landroidx/compose/runtime/snapshots/t;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/t;->f()Landroidx/compose/runtime/snapshots/t$a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Lt/e;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/snapshots/a0;-><init>(Landroidx/compose/runtime/snapshots/t;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/q;->h()Landroidx/compose/runtime/snapshots/a0;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/p;->a()Landroidx/compose/runtime/snapshots/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/t;->j(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 11

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/p;->a()Landroidx/compose/runtime/snapshots/t;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->a()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->F(Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/snapshots/t$a;

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v4

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v5}, Lt/g;->builder()Lt/g$a;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v8

    goto :goto_0

    :cond_2
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v3}, Lt/g$a;->build()Lt/g;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J()Landroidx/compose/runtime/snapshots/j;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    sget-object v7, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/j$a;->c()Landroidx/compose/runtime/snapshots/j;

    move-result-object v7

    invoke-static {v5, v0, v7}, Landroidx/compose/runtime/snapshots/SnapshotKt;->h0(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->a()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v10

    if-ne v10, v4, :cond_3

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/snapshots/t$a;->k(Lt/g;)V

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/snapshots/t$a;->l(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_1
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v6

    invoke-static {v7, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Q(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/c0;)V

    if-eqz v8, :cond_0

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit v9

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v6

    throw p1

    :cond_4
    :goto_4
    return v2

    :catchall_2
    move-exception p1

    monitor-exit v3

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 11

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/p;->a()Landroidx/compose/runtime/snapshots/t;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->a()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->F(Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/snapshots/t$a;

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/t$a;->i()Lt/g;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v4

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v5}, Lt/g;->builder()Lt/g$a;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v8

    goto :goto_0

    :cond_2
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v3}, Lt/g$a;->build()Lt/g;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/t;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J()Landroidx/compose/runtime/snapshots/j;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    sget-object v7, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/j$a;->c()Landroidx/compose/runtime/snapshots/j;

    move-result-object v7

    invoke-static {v5, v0, v7}, Landroidx/compose/runtime/snapshots/SnapshotKt;->h0(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->a()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v10

    if-ne v10, v4, :cond_3

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/snapshots/t$a;->k(Lt/g;)V

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/t$a;->j()I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/snapshots/t$a;->l(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_1
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v6

    invoke-static {v7, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Q(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/c0;)V

    if-eqz v8, :cond_0

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit v9

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v6

    throw p1

    :cond_4
    :goto_4
    return v2

    :catchall_2
    move-exception p1

    monitor-exit v3

    throw p1
.end method
