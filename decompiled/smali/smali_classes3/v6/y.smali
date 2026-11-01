.class public final Lv6/y;
.super Ljava/lang/Object;

# interfaces
.implements Lv6/s;


# instance fields
.field public final a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

.field public final b:Lv6/t;

.field public final c:Lv6/v;

.field public final d:Lv6/w;

.field public final e:Lv6/x;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    new-instance v0, Lv6/t;

    invoke-direct {v0, p1}, Lv6/t;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    iput-object v0, p0, Lv6/y;->b:Lv6/t;

    new-instance v0, Lv6/u;

    invoke-direct {v0, p1}, Lv6/u;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    new-instance v0, Lv6/v;

    invoke-direct {v0, p1}, Lv6/v;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    iput-object v0, p0, Lv6/y;->c:Lv6/v;

    new-instance v0, Lv6/w;

    invoke-direct {v0, p1}, Lv6/w;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    iput-object v0, p0, Lv6/y;->d:Lv6/w;

    new-instance v0, Lv6/x;

    invoke-direct {v0, p1}, Lv6/x;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    iput-object v0, p0, Lv6/y;->e:Lv6/x;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lv6/y;->d:Lv6/w;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    move-result v1

    iget-object v2, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lv6/y;->d:Lv6/w;

    invoke-virtual {v2, v0}, Landroidx/room/j0;->h(La4/h;)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v2, p0, Lv6/y;->d:Lv6/w;

    invoke-virtual {v2, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw v1
.end method

.method public final a(Lv6/z;)J
    .locals 2

    iget-object v0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    invoke-static {p0, p1}, Lv6/s$a;->b(Lv6/y;Lv6/z;)J

    move-result-wide v0

    iget-object p1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method

.method public final b()Landroid/database/Cursor;
    .locals 2

    const-string v0, "SELECT * FROM hisavana_ab_room"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/g0;->h(Ljava/lang/String;I)Landroidx/room/g0;

    move-result-object v0

    iget-object v1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->V(La4/g;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lv6/z;)V
    .locals 1

    iget-object v0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    invoke-static {p0, p1}, Lv6/s$a;->a(Lv6/y;Lv6/z;)V

    iget-object p1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method
