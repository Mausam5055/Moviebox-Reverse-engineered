.class final Landroidx/work/impl/utils/futures/AbstractFuture$f;
.super Landroidx/work/impl/utils/futures/AbstractFuture$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/AbstractFuture$b;-><init>(Landroidx/work/impl/utils/futures/AbstractFuture$a;)V

    return-void
.end method


# virtual methods
.method a(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$d;Landroidx/work/impl/utils/futures/AbstractFuture$d;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/work/impl/utils/futures/AbstractFuture;->b:Landroidx/work/impl/utils/futures/AbstractFuture$d;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Landroidx/work/impl/utils/futures/AbstractFuture;->b:Landroidx/work/impl/utils/futures/AbstractFuture$d;

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

.method b(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/work/impl/utils/futures/AbstractFuture;->a:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Landroidx/work/impl/utils/futures/AbstractFuture;->a:Ljava/lang/Object;

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

.method c(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$g;Landroidx/work/impl/utils/futures/AbstractFuture$g;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/work/impl/utils/futures/AbstractFuture;->c:Landroidx/work/impl/utils/futures/AbstractFuture$g;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Landroidx/work/impl/utils/futures/AbstractFuture;->c:Landroidx/work/impl/utils/futures/AbstractFuture$g;

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

.method d(Landroidx/work/impl/utils/futures/AbstractFuture$g;Landroidx/work/impl/utils/futures/AbstractFuture$g;)V
    .locals 0

    iput-object p2, p1, Landroidx/work/impl/utils/futures/AbstractFuture$g;->b:Landroidx/work/impl/utils/futures/AbstractFuture$g;

    return-void
.end method

.method e(Landroidx/work/impl/utils/futures/AbstractFuture$g;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Landroidx/work/impl/utils/futures/AbstractFuture$g;->a:Ljava/lang/Thread;

    return-void
.end method
