.class public final Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkerWrapper$a;,
        Landroidx/work/impl/WorkerWrapper$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/work/impl/model/j0;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Landroidx/work/WorkerParameters$a;

.field private final e:Landroidx/work/s;

.field private final f:Lj4/c;

.field private final g:Landroidx/work/b;

.field private final h:Landroidx/work/a;

.field private final i:Landroidx/work/impl/foreground/a;

.field private final j:Landroidx/work/impl/WorkDatabase;

.field private final k:Landroidx/work/impl/model/k0;

.field private final l:Landroidx/work/impl/model/b;

.field private final m:Ljava/util/List;

.field private final n:Ljava/lang/String;

.field private final o:Lkotlinx/coroutines/z;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkerWrapper$a;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$a;->h()Landroidx/work/impl/model/j0;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$a;->b()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->b:Landroid/content/Context;

    iget-object v0, v0, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$a;->e()Landroidx/work/WorkerParameters$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->d:Landroidx/work/WorkerParameters$a;

    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$a;->j()Landroidx/work/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->e:Landroidx/work/s;

    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$a;->i()Lj4/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->f:Lj4/c;

    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$a;->c()Landroidx/work/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/b;

    invoke-virtual {v0}, Landroidx/work/b;->a()Landroidx/work/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->h:Landroidx/work/a;

    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$a;->d()Landroidx/work/impl/foreground/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/foreground/a;

    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$a;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g0()Landroidx/work/impl/model/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->l:Landroidx/work/impl/model/b;

    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$a;->f()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->m:Ljava/util/List;

    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->l(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->n:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/v1;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->o:Lkotlinx/coroutines/z;

    return-void
.end method

.method private final B(Landroidx/work/s$a;)Z
    .locals 7

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    sget-object v1, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/k0;->s(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    const-string v0, "null cannot be cast to non-null type androidx.work.ListenableWorker.Result.Success"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/work/s$a$c;

    invoke-virtual {p1}, Landroidx/work/s$a$c;->d()Landroidx/work/f;

    move-result-object p1

    const-string v0, "getOutputData(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroidx/work/impl/model/k0;->t(Ljava/lang/String;Landroidx/work/f;)V

    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->h:Landroidx/work/a;

    invoke-interface {p1}, Landroidx/work/a;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->l:Landroidx/work/impl/model/b;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroidx/work/impl/model/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    invoke-interface {v3, v2}, Landroidx/work/impl/model/k0;->i(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v3

    sget-object v4, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->l:Landroidx/work/impl/model/b;

    invoke-interface {v3, v2}, Landroidx/work/impl/model/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting status to enqueued for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    sget-object v4, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-interface {v3, v4, v2}, Landroidx/work/impl/model/k0;->s(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    invoke-interface {v3, v2, v0, v1}, Landroidx/work/impl/model/k0;->u(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final C()Z
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/WorkDatabase;

    new-instance v1, Landroidx/work/impl/p1;

    invoke-direct {v1, p0}, Landroidx/work/impl/p1;-><init>(Landroidx/work/impl/WorkerWrapper;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->Y(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "runInTransaction(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final D(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/k0;->i(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/k0;->s(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/k0;->z(Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    const/16 v1, -0x100

    invoke-interface {v0, p0, v1}, Landroidx/work/impl/model/k0;->a(Ljava/lang/String;I)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Landroidx/work/s;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/work/impl/WorkerWrapper;->z(Landroidx/work/s;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Landroidx/work/impl/WorkerWrapper;->D(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Landroidx/work/impl/WorkerWrapper;->y(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Landroidx/work/impl/WorkerWrapper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic e(Landroidx/work/impl/WorkerWrapper;)Landroidx/work/impl/WorkDatabase;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/WorkDatabase;

    return-object p0
.end method

.method public static final synthetic f(Landroidx/work/impl/WorkerWrapper;)Lj4/c;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->f:Lj4/c;

    return-object p0
.end method

.method public static final synthetic g(Landroidx/work/impl/WorkerWrapper;)Lkotlinx/coroutines/z;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->o:Lkotlinx/coroutines/z;

    return-object p0
.end method

.method public static final synthetic h(Landroidx/work/impl/WorkerWrapper;Landroidx/work/s$a;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->s(Landroidx/work/s$a;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic i(Landroidx/work/impl/WorkerWrapper;Landroidx/work/s$a;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->t(Landroidx/work/s$a;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic j(Landroidx/work/impl/WorkerWrapper;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->w(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic k(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final l(Ljava/util/List;)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Work [ id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags={ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " } ]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final o(Landroidx/work/s$a;)Z
    .locals 4

    instance-of v0, p1, Landroidx/work/s$a$c;

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Worker result SUCCESS for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {v0}, Landroidx/work/impl/model/j0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->v()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->B(Landroidx/work/s$a;)Z

    move-result p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroidx/work/s$a$b;

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker result RETRY for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x100

    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->u(I)Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Worker result FAILURE for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {v0}, Landroidx/work/impl/model/j0;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->v()Z

    move-result p1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    new-instance p1, Landroidx/work/s$a$a;

    invoke-direct {p1}, Landroidx/work/s$a$a;-><init>()V

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkerWrapper;->A(Landroidx/work/s$a;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private final q(Ljava/lang/String;)V
    .locals 3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    invoke-interface {v1, v0}, Landroidx/work/impl/model/k0;->i(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v1

    sget-object v2, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    sget-object v2, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    invoke-interface {v1, v2, v0}, Landroidx/work/impl/model/k0;->s(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->l:Landroidx/work/impl/model/b;

    invoke-interface {v1, v0}, Landroidx/work/impl/model/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final s(Landroidx/work/s$a;)Z
    .locals 4

    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Worker result FAILURE for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {v0}, Landroidx/work/impl/model/j0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->v()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkerWrapper;->A(Landroidx/work/s$a;)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final t(Landroidx/work/s$a;)Z
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/k0;->i(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k0()Landroidx/work/impl/model/e0;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/model/e0;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->o(Landroidx/work/s$a;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, -0x200

    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->u(I)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method private final u(I)Z
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/k0;->s(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->h:Landroidx/work/a;

    invoke-interface {v2}, Landroidx/work/a;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/k0;->u(Ljava/lang/String;J)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {v2}, Landroidx/work/impl/model/j0;->i()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/k0;->B(Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/k0;->o(Ljava/lang/String;J)I

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroidx/work/impl/model/k0;->a(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private final v()Z
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->h:Landroidx/work/a;

    invoke-interface {v2}, Landroidx/work/a;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/k0;->u(Ljava/lang/String;J)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/k0;->s(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/k0;->x(Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {v2}, Landroidx/work/impl/model/j0;->i()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/k0;->B(Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/k0;->d(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/k0;->o(Ljava/lang/String;J)I

    const/4 v0, 0x0

    return v0
.end method

.method private final w(I)Z
    .locals 7

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {v0}, Landroidx/work/impl/model/j0;->f()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Worker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget-object v4, v4, Landroidx/work/impl/model/j0;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was interrupted. Backing off."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->u(I)Z

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroidx/work/impl/model/k0;->i(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    const-string v2, " is "

    const-string v3, "Status for "

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; not doing any work and rescheduling for later execution"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroidx/work/impl/model/k0;->s(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroidx/work/impl/model/k0;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v2, v3}, Landroidx/work/impl/model/k0;->o(Ljava/lang/String;J)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; not doing any work"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    iget v3, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    invoke-direct {v2, v1, v0}, Landroidx/work/impl/WorkerWrapper$runWorker$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/work/WorkerParameters;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/b;

    invoke-virtual {v0}, Landroidx/work/b;->n()Landroidx/work/f0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/f0;->isEnabled()Z

    move-result v0

    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {v4}, Landroidx/work/impl/model/j0;->l()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/b;

    invoke-virtual {v7}, Landroidx/work/b;->n()Landroidx/work/f0;

    move-result-object v7

    iget-object v8, v1, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {v8}, Landroidx/work/impl/model/j0;->hashCode()I

    move-result v8

    invoke-interface {v7, v4, v8}, Landroidx/work/f0;->c(Ljava/lang/String;I)V

    :cond_3
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/WorkDatabase;

    new-instance v8, Landroidx/work/impl/n1;

    invoke-direct {v8, v1}, Landroidx/work/impl/n1;-><init>(Landroidx/work/impl/WorkerWrapper;)V

    invoke-virtual {v7, v8}, Landroidx/room/RoomDatabase;->Y(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    new-instance v0, Landroidx/work/impl/WorkerWrapper$b$c;

    invoke-direct {v0, v8, v5, v6}, Landroidx/work/impl/WorkerWrapper$b$c;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_4
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {v7}, Landroidx/work/impl/model/j0;->o()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget-object v7, v7, Landroidx/work/impl/model/j0;->e:Landroidx/work/f;

    :goto_1
    move-object v11, v7

    goto :goto_2

    :cond_5
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/b;

    invoke-virtual {v7}, Landroidx/work/b;->f()Landroidx/work/l;

    move-result-object v7

    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget-object v9, v9, Landroidx/work/impl/model/j0;->d:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroidx/work/l;->b(Ljava/lang/String;)Landroidx/work/k;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create Input Merger "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget-object v4, v4, Landroidx/work/impl/model/j0;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroidx/work/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/impl/WorkerWrapper$b$a;

    invoke-direct {v0, v6, v5, v6}, Landroidx/work/impl/WorkerWrapper$b$a;-><init>(Landroidx/work/s$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_6
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget-object v9, v9, Landroidx/work/impl/model/j0;->e:Landroidx/work/f;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v1, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v11, v1, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v10, v11}, Landroidx/work/impl/model/k0;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->B0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/work/k;->a(Ljava/util/List;)Landroidx/work/f;

    move-result-object v7

    goto :goto_1

    :goto_2
    new-instance v7, Landroidx/work/WorkerParameters;

    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->m:Ljava/util/List;

    move-object v12, v9

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v1, Landroidx/work/impl/WorkerWrapper;->d:Landroidx/work/WorkerParameters$a;

    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget v14, v9, Landroidx/work/impl/model/j0;->k:I

    invoke-virtual {v9}, Landroidx/work/impl/model/j0;->g()I

    move-result v15

    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/b;

    invoke-virtual {v9}, Landroidx/work/b;->d()Ljava/util/concurrent/Executor;

    move-result-object v16

    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/b;

    invoke-virtual {v9}, Landroidx/work/b;->o()Lkotlin/coroutines/CoroutineContext;

    move-result-object v17

    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->f:Lj4/c;

    iget-object v8, v1, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/b;

    invoke-virtual {v8}, Landroidx/work/b;->q()Landroidx/work/m0;

    move-result-object v19

    new-instance v8, Landroidx/work/impl/utils/f0;

    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/WorkDatabase;

    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->f:Lj4/c;

    invoke-direct {v8, v5, v6}, Landroidx/work/impl/utils/f0;-><init>(Landroidx/work/impl/WorkDatabase;Lj4/c;)V

    new-instance v5, Landroidx/work/impl/utils/e0;

    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/WorkDatabase;

    move-object/from16 v18, v9

    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/foreground/a;

    move-object/from16 v22, v3

    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->f:Lj4/c;

    invoke-direct {v5, v6, v9, v3}, Landroidx/work/impl/utils/e0;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/a;Lj4/c;)V

    move-object/from16 v3, v18

    move-object v9, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v5

    invoke-direct/range {v9 .. v21}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/f;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;IILjava/util/concurrent/Executor;Lkotlin/coroutines/CoroutineContext;Lj4/c;Landroidx/work/m0;Landroidx/work/c0;Landroidx/work/j;)V

    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->e:Landroidx/work/s;

    if-nez v3, :cond_8

    :try_start_1
    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/b;

    invoke-virtual {v3}, Landroidx/work/b;->q()Landroidx/work/m0;

    move-result-object v3

    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->b:Landroid/content/Context;

    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget-object v6, v6, Landroidx/work/impl/model/j0;->c:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Landroidx/work/m0;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/s;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create Worker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget-object v5, v5, Landroidx/work/impl/model/j0;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroidx/work/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/b;

    invoke-virtual {v2}, Landroidx/work/b;->r()Landroidx/core/util/a;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Landroidx/work/l0;

    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget-object v4, v4, Landroidx/work/impl/model/j0;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v7, v0}, Landroidx/work/l0;-><init>(Ljava/lang/String;Landroidx/work/WorkerParameters;Ljava/lang/Throwable;)V

    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroidx/work/impl/utils/g0;->a(Landroidx/core/util/a;Landroidx/work/l0;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Landroidx/work/impl/WorkerWrapper$b$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v3}, Landroidx/work/impl/WorkerWrapper$b$a;-><init>(Landroidx/work/s$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_8
    :goto_3
    invoke-virtual {v3}, Landroidx/work/s;->k()V

    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/t1;->l1:Lkotlinx/coroutines/t1$b;

    invoke-interface {v5, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v5, Lkotlinx/coroutines/t1;

    new-instance v6, Landroidx/work/impl/o1;

    invoke-direct {v6, v3, v0, v4, v1}, Landroidx/work/impl/o1;-><init>(Landroidx/work/s;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;)V

    invoke-interface {v5, v6}, Lkotlinx/coroutines/t1;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/a1;

    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/WorkerWrapper;->C()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Landroidx/work/impl/WorkerWrapper$b$c;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct {v0, v8, v4, v6}, Landroidx/work/impl/WorkerWrapper$b$c;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_9
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v5}, Lkotlinx/coroutines/t1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroidx/work/impl/WorkerWrapper$b$c;

    invoke-direct {v0, v8, v4, v6}, Landroidx/work/impl/WorkerWrapper$b$c;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_a
    invoke-virtual {v7}, Landroidx/work/WorkerParameters;->b()Landroidx/work/j;

    move-result-object v0

    const-string v4, "getForegroundUpdater(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->f:Lj4/c;

    invoke-interface {v4}, Lj4/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    const-string v5, "getMainThreadExecutor(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlinx/coroutines/m1;->b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/i0;

    move-result-object v4

    :try_start_2
    new-instance v5, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v3, v0, v6}, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;-><init>(Landroidx/work/impl/WorkerWrapper;Landroidx/work/s;Landroidx/work/j;Lkotlin/coroutines/Continuation;)V

    iput-object v7, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    invoke-static {v4, v5, v2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v2, v22

    if-ne v0, v2, :cond_b

    return-object v2

    :cond_b
    move-object v2, v7

    :goto_4
    :try_start_3
    check-cast v0, Landroidx/work/s$a;

    new-instance v3, Landroidx/work/impl/WorkerWrapper$b$b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v3, v0}, Landroidx/work/impl/WorkerWrapper$b$b;-><init>(Landroidx/work/s$a;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v3

    :catchall_2
    move-exception v0

    move-object v2, v7

    :goto_5
    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->n:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed because it threw an exception/error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v0}, Landroidx/work/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/b;

    invoke-virtual {v3}, Landroidx/work/b;->p()Landroidx/core/util/a;

    move-result-object v3

    if-eqz v3, :cond_c

    new-instance v4, Landroidx/work/l0;

    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget-object v5, v5, Landroidx/work/impl/model/j0;->c:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v0}, Landroidx/work/l0;-><init>(Ljava/lang/String;Landroidx/work/WorkerParameters;Ljava/lang/Throwable;)V

    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroidx/work/impl/utils/g0;->a(Landroidx/core/util/a;Landroidx/work/l0;Ljava/lang/String;)V

    :cond_c
    new-instance v0, Landroidx/work/impl/WorkerWrapper$b$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v3}, Landroidx/work/impl/WorkerWrapper$b$a;-><init>(Landroidx/work/s$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :goto_6
    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was cancelled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Landroidx/work/t;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final y(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget-object v1, v0, Landroidx/work/impl/model/j0;->b:Landroidx/work/WorkInfo$State;

    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v1, v2, :cond_0

    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget-object p0, p0, Landroidx/work/impl/model/j0;->c:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not in ENQUEUED state. Nothing more to do"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroidx/work/impl/model/j0;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {v0}, Landroidx/work/impl/model/j0;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->h:Landroidx/work/a;

    invoke-interface {v0}, Landroidx/work/a;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {v2}, Landroidx/work/impl/model/j0;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    invoke-static {}, Landroidx/work/impl/r1;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying execution for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    iget-object p0, p0, Landroidx/work/impl/model/j0;->c:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " because it is being executed before schedule."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static final z(Landroidx/work/s;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    instance-of v0, p4, Landroidx/work/impl/WorkerStoppedException;

    if-eqz v0, :cond_0

    check-cast p4, Landroidx/work/impl/WorkerStoppedException;

    invoke-virtual {p4}, Landroidx/work/impl/WorkerStoppedException;->getReason()I

    move-result p4

    invoke-virtual {p0, p4}, Landroidx/work/s;->m(I)V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p3, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/b;

    invoke-virtual {p0}, Landroidx/work/b;->n()Landroidx/work/f0;

    move-result-object p0

    iget-object p1, p3, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {p1}, Landroidx/work/impl/model/j0;->hashCode()I

    move-result p1

    invoke-interface {p0, p2, p1}, Landroidx/work/f0;->b(Ljava/lang/String;I)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final A(Landroidx/work/s$a;)Z
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->q(Ljava/lang/String;)V

    check-cast p1, Landroidx/work/s$a$a;

    invoke-virtual {p1}, Landroidx/work/s$a$a;->d()Landroidx/work/f;

    move-result-object p1

    const-string v0, "getOutputData(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-virtual {v2}, Landroidx/work/impl/model/j0;->i()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/k0;->B(Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/k0;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroidx/work/impl/model/k0;->t(Ljava/lang/String;Landroidx/work/f;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final m()Landroidx/work/impl/model/x;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    invoke-static {v0}, Landroidx/work/impl/model/s1;->a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;

    move-result-object v0

    return-object v0
.end method

.method public final n()Landroidx/work/impl/model/j0;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/j0;

    return-object v0
.end method

.method public final p(I)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->o:Lkotlinx/coroutines/z;

    new-instance v1, Landroidx/work/impl/WorkerStoppedException;

    invoke-direct {v1, p1}, Landroidx/work/impl/WorkerStoppedException;-><init>(I)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/t1;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final r()Lcom/google/common/util/concurrent/r;
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->f:Lj4/c;

    invoke-interface {v0}, Lj4/c;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/v1;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/WorkerWrapper$launch$1;

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkerWrapper$launch$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v2}, Landroidx/work/ListenableFutureKt;->k(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/google/common/util/concurrent/r;

    move-result-object v0

    return-object v0
.end method
