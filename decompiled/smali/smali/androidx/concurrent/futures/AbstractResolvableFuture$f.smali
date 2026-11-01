.class final Landroidx/concurrent/futures/AbstractResolvableFuture$f;
.super Landroidx/concurrent/futures/AbstractResolvableFuture$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$b;-><init>(Landroidx/concurrent/futures/AbstractResolvableFuture$a;)V

    return-void
.end method


# virtual methods
.method a(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$d;Landroidx/concurrent/futures/AbstractResolvableFuture$d;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$d;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method b(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method c(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$g;Landroidx/concurrent/futures/AbstractResolvableFuture$g;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method d(Landroidx/concurrent/futures/AbstractResolvableFuture$g;Landroidx/concurrent/futures/AbstractResolvableFuture$g;)V
    .locals 0

    iput-object p2, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    return-void
.end method

.method e(Landroidx/concurrent/futures/AbstractResolvableFuture$g;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->a:Ljava/lang/Thread;

    return-void
.end method
