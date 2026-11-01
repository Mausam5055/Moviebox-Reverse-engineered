.class public final Lfh/i;
.super Ljava/lang/Object;

# interfaces
.implements Ldh/b;
.implements Ldh/a;


# instance fields
.field private a:Ldh/b;

.field private b:Ljava/util/concurrent/Executor;

.field private c:Ldh/a;


# direct methods
.method public constructor <init>(Ldh/b;Ljava/util/concurrent/Executor;Ldh/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfh/i;->a:Ldh/b;

    iput-object p2, p0, Lfh/i;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lfh/i;->c:Ldh/a;

    return-void
.end method

.method public static synthetic d(Lfh/i;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lfh/i;->k(Lfh/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e(Lfh/i;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lfh/i;->i(Lfh/i;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lfh/i;)V
    .locals 0

    invoke-static {p0}, Lfh/i;->m(Lfh/i;)V

    return-void
.end method

.method public static synthetic g(Lfh/i;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lfh/i;->j(Lfh/i;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic h(Lfh/i;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lfh/i;->l(Lfh/i;Ljava/lang/String;)V

    return-void
.end method

.method private static final i(Lfh/i;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lfh/i;->a:Ldh/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ldh/b;->onCompleted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final j(Lfh/i;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lfh/i;->a:Ldh/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ldh/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static final k(Lfh/i;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lfh/i;->c:Ldh/a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ldh/a;->c(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static final l(Lfh/i;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lfh/i;->a:Ldh/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ldh/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final m(Lfh/i;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lfh/i;->c:Ldh/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldh/a;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Lfh/i;->c(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "threadName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfh/i;->a:Ldh/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfh/i;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    new-instance v1, Lfh/d;

    invoke-direct {v1, p0, p1}, Lfh/d;-><init>(Lfh/i;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "threadName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lfh/i;->c(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lfh/i;->a:Ldh/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfh/i;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    new-instance v1, Lfh/f;

    invoke-direct {v1, p0, p1, p2}, Lfh/f;-><init>(Lfh/i;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfh/i;->c:Ldh/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfh/i;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    new-instance v1, Lfh/h;

    invoke-direct {v1, p0, p1}, Lfh/h;-><init>(Lfh/i;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onCompleted(Ljava/lang/String;)V
    .locals 2

    const-string v0, "threadName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfh/i;->a:Ldh/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfh/i;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    new-instance v1, Lfh/g;

    invoke-direct {v1, p0, p1}, Lfh/g;-><init>(Lfh/i;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lfh/i;->c:Ldh/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfh/i;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    new-instance v1, Lfh/e;

    invoke-direct {v1, p0}, Lfh/e;-><init>(Lfh/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
