.class public final Lcom/cloud/hisavana/sdk/w0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/v0;


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

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/cloud/hisavana/sdk/w0$a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w0$a;-><init>(Lcom/cloud/hisavana/sdk/w0;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->b:Landroidx/room/h;

    new-instance v0, Lcom/cloud/hisavana/sdk/w0$b;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w0$b;-><init>(Lcom/cloud/hisavana/sdk/w0;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->c:Landroidx/room/f;

    new-instance v0, Lcom/cloud/hisavana/sdk/w0$c;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w0$c;-><init>(Lcom/cloud/hisavana/sdk/w0;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->d:Landroidx/room/j0;

    new-instance v0, Lcom/cloud/hisavana/sdk/w0$d;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w0$d;-><init>(Lcom/cloud/hisavana/sdk/w0;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->e:Landroidx/room/j0;

    return-void
.end method

.method public static d()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->c:Landroidx/room/f;

    invoke-virtual {v0, p1}, Landroidx/room/f;->l(Ljava/lang/Iterable;)I

    move-result p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method

.method public a(La4/g;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->V(La4/g;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->d:Landroidx/room/j0;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w0;->d:Landroidx/room/j0;

    invoke-virtual {v1, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w0;->d:Landroidx/room/j0;

    invoke-virtual {v2, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw v1
.end method

.method public b(La4/g;)I
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;La4/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v2

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public c(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->b:Landroidx/room/h;

    invoke-virtual {v0, p1}, Landroidx/room/h;->k(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method
