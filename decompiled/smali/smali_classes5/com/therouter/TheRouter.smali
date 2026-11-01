.class public final Lcom/therouter/TheRouter;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/therouter/TheRouter;

.field private static b:Z

.field private static final c:Ljava/util/LinkedList;

.field private static final d:Lcom/therouter/inject/RouterInject;

.field private static e:Lkotlin/jvm/functions/Function2;

.field private static final f:Lyf/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/therouter/TheRouter;

    invoke-direct {v0}, Lcom/therouter/TheRouter;-><init>()V

    sput-object v0, Lcom/therouter/TheRouter;->a:Lcom/therouter/TheRouter;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/therouter/TheRouter;->c:Ljava/util/LinkedList;

    new-instance v0, Lcom/therouter/inject/RouterInject;

    invoke-direct {v0}, Lcom/therouter/inject/RouterInject;-><init>()V

    sput-object v0, Lcom/therouter/TheRouter;->d:Lcom/therouter/inject/RouterInject;

    sget-object v0, Lcom/therouter/TheRouter$logCat$1;->INSTANCE:Lcom/therouter/TheRouter$logCat$1;

    sput-object v0, Lcom/therouter/TheRouter;->e:Lkotlin/jvm/functions/Function2;

    new-instance v0, Lyf/b;

    invoke-direct {v0}, Lyf/b;-><init>()V

    sput-object v0, Lcom/therouter/TheRouter;->f:Lyf/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/therouter/TheRouter;->k(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/therouter/TheRouter;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static final c(Ljava/lang/String;)Lcom/therouter/router/Navigator;
    .locals 1

    new-instance v0, Lcom/therouter/router/Navigator;

    invoke-direct {v0, p0}, Lcom/therouter/router/Navigator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final varargs d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/therouter/TheRouter;->d:Lcom/therouter/inject/RouterInject;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/therouter/inject/RouterInject;->e(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final f()Lkotlin/jvm/functions/Function2;
    .locals 1

    sget-object v0, Lcom/therouter/TheRouter;->e:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final g()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/therouter/TheRouter;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static final h()Lcom/therouter/inject/RouterInject;
    .locals 1

    sget-object v0, Lcom/therouter/TheRouter;->d:Lcom/therouter/inject/RouterInject;

    return-object v0
.end method

.method public static final i(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/therouter/TheRouter;->j(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final j(Landroid/content/Context;Z)V
    .locals 4

    invoke-static {}, Lcom/therouter/TheRouterKt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TheRouter init start!"

    const-string v1, "init"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v0, v2, v3, v2}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    sget-object v0, Lcom/therouter/TheRouter;->f:Lyf/b;

    invoke-virtual {v0, p0}, Lyf/b;->c(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/therouter/TheRouter;->d:Lcom/therouter/inject/RouterInject;

    invoke-virtual {p1, p0}, Lcom/therouter/inject/RouterInject;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/therouter/TheRouter;->d:Lcom/therouter/inject/RouterInject;

    invoke-virtual {p1, p0}, Lcom/therouter/inject/RouterInject;->g(Landroid/content/Context;)V

    :goto_0
    invoke-static {p0}, Lcom/therouter/router/RouteMapKt;->f(Landroid/content/Context;)V

    new-instance p1, Lcom/therouter/d;

    invoke-direct {p1, p0}, Lcom/therouter/d;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/therouter/TheRouterThreadPool;->f(Ljava/lang/Runnable;)V

    const-string p0, "TheRouter init finish!"

    invoke-static {v1, p0, v2, v3, v2}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/therouter/TheRouterKt;->b(Z)V

    :cond_1
    return-void
.end method

.method private static final k(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Application;

    sget-object v0, Lcom/therouter/f;->a:Lcom/therouter/f;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    sget-object p0, Lcom/therouter/TheRouter;->c:Ljava/util/LinkedList;

    new-instance v0, Lag/b;

    invoke-direct {v0}, Lag/b;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    new-instance v0, Lag/c;

    invoke-direct {v0}, Lag/c;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    new-instance v0, Lag/d;

    invoke-direct {v0}, Lag/d;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    new-instance v0, Lag/a;

    invoke-direct {v0}, Lag/a;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public static final l(Ljava/lang/Object;)V
    .locals 5

    invoke-static {p0}, La/TheRouterServiceProvideInjecter;->b(Ljava/lang/Object;)V

    sget-boolean v0, La/TheRouterServiceProvideInjecter;->asm:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/therouter/inject/DebugOnlyKt;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final m()Z
    .locals 1

    sget-boolean v0, Lcom/therouter/TheRouter;->b:Z

    return v0
.end method

.method public static final n(Ljava/lang/String;)V
    .locals 2

    const-string v0, "taskName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/therouter/TheRouter;->f:Lyf/b;

    invoke-virtual {v0}, Lyf/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lyf/b;->i(Ljava/lang/String;)Lyf/e;

    move-result-object p0

    invoke-virtual {p0}, Lyf/e;->g()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/therouter/e;

    invoke-direct {v1, p0}, Lcom/therouter/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lyf/b;->b(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private static final o(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$taskName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/therouter/TheRouter;->f:Lyf/b;

    invoke-virtual {v0, p0}, Lyf/b;->i(Ljava/lang/String;)Lyf/e;

    move-result-object p0

    invoke-virtual {p0}, Lyf/e;->g()V

    return-void
.end method

.method public static final p(Z)V
    .locals 0

    sput-boolean p0, Lcom/therouter/TheRouter;->b:Z

    return-void
.end method


# virtual methods
.method public final e()Lyf/b;
    .locals 1

    sget-object v0, Lcom/therouter/TheRouter;->f:Lyf/b;

    return-object v0
.end method
