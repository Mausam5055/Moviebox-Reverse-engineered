.class public abstract Landroidx/work/c;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Lkotlin/coroutines/CoroutineContext;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-static {p0}, Landroidx/work/c;->d(Lkotlin/coroutines/CoroutineContext;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Z)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-static {p0}, Landroidx/work/c;->e(Z)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Landroidx/work/f0;
    .locals 1

    invoke-static {}, Landroidx/work/c;->f()Landroidx/work/f0;

    move-result-object v0

    return-object v0
.end method

.method private static final d(Lkotlin/coroutines/CoroutineContext;)Ljava/util/concurrent/Executor;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lkotlin/coroutines/ContinuationInterceptor;->j1:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/ContinuationInterceptor;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lkotlinx/coroutines/i0;

    if-eqz v1, :cond_1

    check-cast p0, Lkotlinx/coroutines/i0;

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlinx/coroutines/m1;->a(Lkotlinx/coroutines/i0;)Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static final e(Z)Ljava/util/concurrent/Executor;
    .locals 2

    new-instance v0, Landroidx/work/c$a;

    invoke-direct {v0, p0}, Landroidx/work/c$a;-><init>(Z)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x4

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "newFixedThreadPool(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final f()Landroidx/work/f0;
    .locals 1

    new-instance v0, Landroidx/work/c$b;

    invoke-direct {v0}, Landroidx/work/c$b;-><init>()V

    return-object v0
.end method
