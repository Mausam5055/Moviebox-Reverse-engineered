.class public abstract Landroidx/navigation/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field private final b:Lkotlinx/coroutines/flow/y0;

.field private final c:Lkotlinx/coroutines/flow/y0;

.field private d:Z

.field private final e:Lkotlinx/coroutines/flow/i1;

.field private final f:Lkotlinx/coroutines/flow/i1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroidx/navigation/r;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/j1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/y0;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/r;->b:Lkotlinx/coroutines/flow/y0;

    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/j1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/y0;

    move-result-object v1

    iput-object v1, p0, Landroidx/navigation/r;->c:Lkotlinx/coroutines/flow/y0;

    invoke-static {v0}, Lkotlinx/coroutines/flow/d;->b(Lkotlinx/coroutines/flow/y0;)Lkotlinx/coroutines/flow/i1;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/r;->e:Lkotlinx/coroutines/flow/i1;

    invoke-static {v1}, Lkotlinx/coroutines/flow/d;->b(Lkotlinx/coroutines/flow/y0;)Lkotlinx/coroutines/flow/i1;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/r;->f:Lkotlinx/coroutines/flow/i1;

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;
.end method

.method public final b()Lkotlinx/coroutines/flow/i1;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/r;->e:Lkotlinx/coroutines/flow/i1;

    return-object v0
.end method

.method public final c()Lkotlinx/coroutines/flow/i1;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/r;->f:Lkotlinx/coroutines/flow/i1;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/navigation/r;->d:Z

    return v0
.end method

.method public e(Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/r;->c:Lkotlinx/coroutines/flow/y0;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/y0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, p1}, Lkotlin/collections/SetsKt;->k(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/y0;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Landroidx/navigation/NavBackStackEntry;)V
    .locals 3

    const-string v0, "backStackEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/r;->b:Lkotlinx/coroutines/flow/y0;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/y0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, p0, Landroidx/navigation/r;->b:Lkotlinx/coroutines/flow/y0;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/y0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->z0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/y0;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public g(Landroidx/navigation/NavBackStackEntry;Z)V
    .locals 5

    const-string p2, "popUpTo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/navigation/r;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroidx/navigation/r;->b:Lkotlinx/coroutines/flow/y0;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/y0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/y0;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public h(Landroidx/navigation/NavBackStackEntry;)V
    .locals 3

    const-string v0, "backStackEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/r;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/navigation/r;->b:Lkotlinx/coroutines/flow/y0;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/y0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/y0;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final i(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/navigation/r;->d:Z

    return-void
.end method
