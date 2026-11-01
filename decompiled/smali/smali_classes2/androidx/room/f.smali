.class public abstract Landroidx/room/f;
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

.method public final k(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/room/f;->j(La4/h;Ljava/lang/Object;)V

    invoke-interface {v0}, La4/h;->F()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/room/j0;->h(La4/h;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw p1
.end method

.method public final l(Ljava/lang/Iterable;)I
    .locals 3

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroidx/room/f;->j(La4/h;Ljava/lang/Object;)V

    invoke-interface {v0}, La4/h;->F()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/room/j0;->h(La4/h;)V

    return v1

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw p1
.end method
