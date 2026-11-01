.class public final Lcom/cloud/hisavana/sdk/n1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/m1;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/h;

.field private final c:Landroidx/room/f;

.field private final d:Landroidx/room/j0;

.field private final e:Landroidx/room/j0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/cloud/hisavana/sdk/n1$a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/n1$a;-><init>(Lcom/cloud/hisavana/sdk/n1;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->b:Landroidx/room/h;

    new-instance v0, Lcom/cloud/hisavana/sdk/n1$b;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/n1$b;-><init>(Lcom/cloud/hisavana/sdk/n1;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->c:Landroidx/room/f;

    new-instance v0, Lcom/cloud/hisavana/sdk/n1$c;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/n1$c;-><init>(Lcom/cloud/hisavana/sdk/n1;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->d:Landroidx/room/j0;

    new-instance v0, Lcom/cloud/hisavana/sdk/n1$d;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/n1$d;-><init>(Lcom/cloud/hisavana/sdk/n1;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->e:Landroidx/room/j0;

    return-void
.end method

.method public static e()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)I
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->d:Landroidx/room/j0;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, La4/f;->c(IJ)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    move-result p1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/n1;->d:Landroidx/room/j0;

    invoke-virtual {p2, v0}, Landroidx/room/j0;->h(La4/h;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->t()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/n1;->d:Landroidx/room/j0;

    invoke-virtual {p2, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw p1
.end method

.method public a(La4/g;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->V(La4/g;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 6

    const-string v0, "SELECT tracking_data FROM retry_tracking_table_room"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/g0;->h(Ljava/lang/String;I)Landroidx/room/g0;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->j()V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;La4/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    goto :goto_1

    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/g0;->release()V

    return-object v4

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/g0;->release()V

    throw v1
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->e:Landroidx/room/j0;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n1;->e:Landroidx/room/j0;

    invoke-virtual {v1, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/n1;->e:Landroidx/room/j0;

    invoke-virtual {v2, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw v1
.end method

.method public b(Lcom/cloud/hisavana/sdk/q1;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->b:Landroidx/room/h;

    invoke-virtual {v0, p1}, Landroidx/room/h;->l(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method

.method public c(Lcom/cloud/hisavana/sdk/q1;)I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->c:Landroidx/room/f;

    invoke-virtual {v0, p1}, Landroidx/room/f;->k(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method

.method public d([Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    invoke-static {}, Landroidx/room/util/n;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE FROM retry_tracking_table_room WHERE uuid in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-static {v0, v1}, Landroidx/room/util/n;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->m(Ljava/lang/String;)La4/h;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    invoke-interface {v0, v2}, La4/f;->g(I)V

    goto :goto_1

    :cond_0
    invoke-interface {v0, v2, v4}, La4/f;->y(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    invoke-interface {v0}, La4/h;->F()I

    move-result p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method
