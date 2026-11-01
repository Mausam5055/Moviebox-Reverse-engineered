.class public abstract Landroidx/work/a0;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(Ljava/util/concurrent/Executor;Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/b0;Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/work/a0;->d(Ljava/util/concurrent/Executor;Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/b0;Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/b0;Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/work/a0;->e(Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/b0;Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)V

    return-void
.end method

.method public static final c(Landroidx/work/f0;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/w;
    .locals 8

    const-string v0, "tracer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/b0;

    sget-object v1, Landroidx/work/w;->b:Landroidx/work/w$b$b;

    invoke-direct {v0, v1}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    new-instance v7, Landroidx/work/y;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroidx/work/y;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/b0;)V

    invoke-static {v7}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$b;)Lcom/google/common/util/concurrent/r;

    move-result-object p0

    const-string p1, "getFuture(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/work/x;

    invoke-direct {p1, v0, p0}, Landroidx/work/x;-><init>(Landroidx/lifecycle/LiveData;Lcom/google/common/util/concurrent/r;)V

    return-object p1
.end method

.method private static final d(Ljava/util/concurrent/Executor;Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/b0;Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)Lkotlin/Unit;
    .locals 7

    const-string v0, "completer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/z;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/work/z;-><init>(Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/b0;Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final e(Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/b0;Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)V
    .locals 1

    invoke-interface {p0}, Landroidx/work/f0;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Landroidx/work/f0;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Landroidx/work/w;->a:Landroidx/work/w$b$c;

    invoke-virtual {p3, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-virtual {p4, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$a;->c(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_2
    new-instance p2, Landroidx/work/w$b$a;

    invoke-direct {p2, p1}, Landroidx/work/w$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p3, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-virtual {p4, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$a;->f(Ljava/lang/Throwable;)Z

    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroidx/work/f0;->d()V

    :cond_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {p0}, Landroidx/work/f0;->d()V

    :cond_2
    throw p1
.end method
