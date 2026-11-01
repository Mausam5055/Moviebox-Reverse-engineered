.class public abstract Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkConstraintsTracker"

    invoke-static {v0}, Landroidx/work/t;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Landroidx/work/impl/constraints/NetworkRequestConstraintController;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Landroid/net/ConnectivityManager;

    new-instance p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/constraints/NetworkRequestConstraintController;-><init>(Landroid/net/ConnectivityManager;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public static final synthetic b(Li4/n;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->d(Li4/n;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static final d(Li4/n;)Ljava/util/List;
    .locals 9

    new-instance v0, Landroidx/work/impl/constraints/controllers/b;

    invoke-virtual {p0}, Li4/n;->a()Li4/g;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/work/impl/constraints/controllers/b;-><init>(Li4/g;)V

    new-instance v1, Landroidx/work/impl/constraints/controllers/c;

    invoke-virtual {p0}, Li4/n;->b()Li4/c;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/c;-><init>(Li4/c;)V

    new-instance v2, Landroidx/work/impl/constraints/controllers/i;

    invoke-virtual {p0}, Li4/n;->e()Li4/g;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/work/impl/constraints/controllers/i;-><init>(Li4/g;)V

    const/4 v3, 0x3

    new-array v4, v3, [Landroidx/work/impl/constraints/controllers/d;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v4, v6, :cond_0

    invoke-virtual {p0}, Li4/n;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a(Landroid/content/Context;)Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Landroidx/work/impl/constraints/controllers/e;

    invoke-virtual {p0}, Li4/n;->d()Li4/g;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v4, v6}, Landroidx/work/impl/constraints/controllers/e;-><init>(Li4/g;)V

    new-instance v6, Landroidx/work/impl/constraints/controllers/h;

    invoke-virtual {p0}, Li4/n;->d()Li4/g;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/work/impl/constraints/controllers/h;-><init>(Li4/g;)V

    new-instance v7, Landroidx/work/impl/constraints/controllers/g;

    invoke-virtual {p0}, Li4/n;->d()Li4/g;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/work/impl/constraints/controllers/g;-><init>(Li4/g;)V

    new-instance v8, Landroidx/work/impl/constraints/controllers/f;

    invoke-virtual {p0}, Li4/n;->d()Li4/g;

    move-result-object p0

    invoke-direct {v8, p0}, Landroidx/work/impl/constraints/controllers/f;-><init>(Li4/g;)V

    const/4 p0, 0x4

    new-array p0, p0, [Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    aput-object v4, p0, v5

    aput-object v6, p0, v0

    aput-object v7, p0, v1

    aput-object v8, p0, v3

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v2
.end method

.method public static final e(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/j0;Lkotlinx/coroutines/i0;Landroidx/work/impl/constraints/h;)Lkotlinx/coroutines/t1;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt$listen$1;

    const/4 p2, 0x0

    invoke-direct {v4, p0, p1, p3, p2}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt$listen$1;-><init>(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/j0;Landroidx/work/impl/constraints/h;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p0

    return-object p0
.end method
