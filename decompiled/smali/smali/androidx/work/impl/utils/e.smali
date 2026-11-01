.class public abstract Landroidx/work/impl/utils/e;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;Landroidx/work/impl/f1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/utils/e;->i(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;Landroidx/work/impl/f1;)V

    return-void
.end method

.method public static synthetic b(Landroidx/work/impl/f1;Ljava/util/UUID;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/utils/e;->f(Landroidx/work/impl/f1;Ljava/util/UUID;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/work/impl/f1;Ljava/util/UUID;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/utils/e;->g(Landroidx/work/impl/f1;Ljava/util/UUID;)V

    return-void
.end method

.method private static final d(Landroidx/work/impl/f1;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/work/impl/f1;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    const-string v1, "getWorkDatabase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroidx/work/impl/utils/e;->j(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/work/impl/f1;->q()Landroidx/work/impl/s;

    move-result-object v0

    const-string v1, "getProcessor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/work/impl/s;->s(Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/work/impl/f1;->r()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/u;

    invoke-interface {v0, p1}, Landroidx/work/impl/u;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final e(Ljava/util/UUID;Landroidx/work/impl/f1;)Landroidx/work/w;
    .locals 3

    const-string v0, "id"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/work/impl/f1;->m()Landroidx/work/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/b;->n()Landroidx/work/f0;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/impl/f1;->u()Lj4/c;

    move-result-object v1

    invoke-interface {v1}, Lj4/c;->c()Lj4/a;

    move-result-object v1

    const-string v2, "getSerialTaskExecutor(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/work/impl/utils/b;

    invoke-direct {v2, p1, p0}, Landroidx/work/impl/utils/b;-><init>(Landroidx/work/impl/f1;Ljava/util/UUID;)V

    const-string p0, "CancelWorkById"

    invoke-static {v0, p0, v1, v2}, Landroidx/work/a0;->c(Landroidx/work/f0;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/w;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Landroidx/work/impl/f1;Ljava/util/UUID;)Lkotlin/Unit;
    .locals 2

    invoke-virtual {p0}, Landroidx/work/impl/f1;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    const-string v1, "getWorkDatabase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/work/impl/utils/d;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/utils/d;-><init>(Landroidx/work/impl/f1;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->a0(Ljava/lang/Runnable;)V

    invoke-static {p0}, Landroidx/work/impl/utils/e;->k(Landroidx/work/impl/f1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final g(Landroidx/work/impl/f1;Ljava/util/UUID;)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/work/impl/utils/e;->d(Landroidx/work/impl/f1;Ljava/lang/String;)V

    return-void
.end method

.method public static final h(Ljava/lang/String;Landroidx/work/impl/f1;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/work/impl/f1;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    const-string v1, "getWorkDatabase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/work/impl/utils/c;

    invoke-direct {v1, v0, p0, p1}, Landroidx/work/impl/utils/c;-><init>(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;Landroidx/work/impl/f1;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->a0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final i(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;Landroidx/work/impl/f1;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/work/impl/model/k0;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Landroidx/work/impl/utils/e;->d(Landroidx/work/impl/f1;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final j(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->g0()Landroidx/work/impl/model/b;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/k0;->i(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v2

    sget-object v3, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-eq v2, v3, :cond_0

    invoke-interface {v0, v1}, Landroidx/work/impl/model/k0;->k(Ljava/lang/String;)I

    :cond_0
    invoke-interface {p0, v1}, Landroidx/work/impl/model/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final k(Landroidx/work/impl/f1;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/work/impl/f1;->m()Landroidx/work/b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/impl/f1;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/impl/f1;->r()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroidx/work/impl/x;->h(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method
