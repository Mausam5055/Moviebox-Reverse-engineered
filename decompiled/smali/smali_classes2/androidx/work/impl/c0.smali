.class final Landroidx/work/impl/c0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/a0;


# instance fields
.field private final b:Landroidx/work/impl/a0;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/work/impl/a0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/c0;->b:Landroidx/work/impl/a0;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/c0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroidx/work/impl/model/x;)Z
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/c0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/c0;->b:Landroidx/work/impl/a0;

    invoke-interface {v1, p1}, Landroidx/work/impl/a0;->a(Landroidx/work/impl/model/x;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public b(Landroidx/work/impl/model/x;)Landroidx/work/impl/y;
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/c0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/c0;->b:Landroidx/work/impl/a0;

    invoke-interface {v1, p1}, Landroidx/work/impl/a0;->b(Landroidx/work/impl/model/x;)Landroidx/work/impl/y;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public synthetic c(Landroidx/work/impl/model/j0;)Landroidx/work/impl/y;
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/z;->a(Landroidx/work/impl/a0;Landroidx/work/impl/model/j0;)Landroidx/work/impl/y;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroidx/work/impl/model/x;)Landroidx/work/impl/y;
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/c0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/c0;->b:Landroidx/work/impl/a0;

    invoke-interface {v1, p1}, Landroidx/work/impl/a0;->d(Landroidx/work/impl/model/x;)Landroidx/work/impl/y;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public remove(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/c0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/c0;->b:Landroidx/work/impl/a0;

    invoke-interface {v1, p1}, Landroidx/work/impl/a0;->remove(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
