.class public abstract Lqm/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Ljava/lang/Object;

.field private volatile c:Landroidx/lifecycle/b0;

.field private volatile d:Lio/reactivex/rxjava3/disposables/c;

.field private volatile e:Lkotlinx/coroutines/t1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqm/b;->a:Ljava/lang/String;

    return-void
.end method

.method private final e(Landroidx/lifecycle/b0;)Z
    .locals 7

    iget-object v0, p0, Lqm/b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lqm/b;->a:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "load data from preload"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lqm/b;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lqm/b;->b:Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    iput-object p1, p0, Lqm/b;->c:Landroidx/lifecycle/b0;

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic g(Lqm/b;Landroidx/lifecycle/b0;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lqm/b;->f(Landroidx/lifecycle/b0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lqm/b;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lqm/b;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqm/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Lqm/b;->c:Landroidx/lifecycle/b0;

    const-string v1, "TAG"

    if-nez v0, :cond_0

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lqm/b;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "load data handleFailureResult :"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v8, Llg/a;->a:Llg/a$a;

    iget-object v9, p0, Lqm/b;->a:Ljava/lang/String;

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v10, "load data handleFailureResult : return to ui"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqm/b;->c:Landroidx/lifecycle/b0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lqm/b;->c:Landroidx/lifecycle/b0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lqm/b;->d:Lio/reactivex/rxjava3/disposables/c;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lqm/d;->a(Lio/reactivex/rxjava3/disposables/c;)V

    :cond_3
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Lqm/b;->c:Landroidx/lifecycle/b0;

    const-string v1, "TAG"

    if-nez v0, :cond_0

    iput-object p1, p0, Lqm/b;->b:Ljava/lang/Object;

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lqm/b;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "load data handleSuccessResult : cache data"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v8, Llg/a;->a:Llg/a$a;

    iget-object v9, p0, Lqm/b;->a:Ljava/lang/String;

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v10, "load data handleSuccessResult : return to ui"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqm/b;->c:Landroidx/lifecycle/b0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lqm/b;->c:Landroidx/lifecycle/b0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lqm/b;->d:Lio/reactivex/rxjava3/disposables/c;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lqm/d;->a(Lio/reactivex/rxjava3/disposables/c;)V

    :cond_3
    return-void
.end method

.method public final f(Landroidx/lifecycle/b0;)V
    .locals 8

    invoke-direct {p0, p1}, Lqm/b;->e(Landroidx/lifecycle/b0;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lqm/b;->a:Ljava/lang/String;

    const-string v7, "TAG"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lqm/b;->d:Lio/reactivex/rxjava3/disposables/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadData  disposable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  this:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lqm/b;->d:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lqm/b;->e:Lkotlinx/coroutines/t1;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlinx/coroutines/t1;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :goto_0
    iget-object v2, p0, Lqm/b;->a:Ljava/lang/String;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "load data ing .. wait"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lqm/b;->a:Ljava/lang/String;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "loadDataFromService"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lqm/b;->h(Landroidx/lifecycle/b0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public abstract h(Landroidx/lifecycle/b0;)V
.end method

.method public final i(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    iput-object p1, p0, Lqm/b;->d:Lio/reactivex/rxjava3/disposables/c;

    return-void
.end method

.method public final j(Lkotlinx/coroutines/t1;)V
    .locals 0

    iput-object p1, p0, Lqm/b;->e:Lkotlinx/coroutines/t1;

    return-void
.end method
