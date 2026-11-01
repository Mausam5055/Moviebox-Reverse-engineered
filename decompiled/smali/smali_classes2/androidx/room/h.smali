.class public abstract Landroidx/room/h;
.super Landroidx/room/j0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/room/j0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected abstract j(La4/h;Ljava/lang/Object;)V
.end method

.method public final k(Ljava/lang/Iterable;)V
    .locals 2

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/room/h;->j(La4/h;Ljava/lang/Object;)V

    invoke-interface {v0}, La4/h;->R()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-void

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw p1
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/room/h;->j(La4/h;Ljava/lang/Object;)V

    invoke-interface {v0}, La4/h;->R()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw p1
.end method

.method public final m(Ljava/lang/Object;)J
    .locals 3

    invoke-virtual {p0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/room/h;->j(La4/h;Ljava/lang/Object;)V

    invoke-interface {v0}, La4/h;->R()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-wide v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw p1
.end method
