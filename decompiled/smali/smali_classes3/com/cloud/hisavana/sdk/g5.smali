.class public final Lcom/cloud/hisavana/sdk/g5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/f5;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/h;

.field private final c:Landroidx/room/h;

.field private final d:Landroidx/room/j0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/cloud/hisavana/sdk/g5$a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/g5$a;-><init>(Lcom/cloud/hisavana/sdk/g5;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->b:Landroidx/room/h;

    new-instance v0, Lcom/cloud/hisavana/sdk/g5$b;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/g5$b;-><init>(Lcom/cloud/hisavana/sdk/g5;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->c:Landroidx/room/h;

    new-instance v0, Lcom/cloud/hisavana/sdk/g5$c;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/g5$c;-><init>(Lcom/cloud/hisavana/sdk/g5;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->d:Landroidx/room/j0;

    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->d:Landroidx/room/j0;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    move-result v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/g5;->d:Landroidx/room/j0;

    invoke-virtual {v2, v0}, Landroidx/room/j0;->h(La4/h;)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/g5;->d:Landroidx/room/j0;

    invoke-virtual {v2, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw v1
.end method

.method public a(Ljava/util/List;)I
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    invoke-static {}, Landroidx/room/util/n;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE FROM attr_click_room WHERE _id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/room/util/n;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->m(Ljava/lang/String;)La4/h;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, La4/f;->g(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, La4/f;->c(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    invoke-interface {v0}, La4/h;->F()I

    move-result p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method

.method public a(Lcom/cloud/hisavana/sdk/j5;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->b:Landroidx/room/h;

    invoke-virtual {v0, p1}, Landroidx/room/h;->l(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 22

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM attr_click_room"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/room/g0;->h(Ljava/lang/String;I)Landroidx/room/g0;

    move-result-object v3

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/g5;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;La4/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "_id"

    invoke-static {v2, v0}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "ac_type"

    invoke-static {v2, v5}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "pkg"

    invoke-static {v2, v6}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "dl_type"

    invoke-static {v2, v7}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "codeSeatId"

    invoke-static {v2, v8}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "click_ts"

    invoke-static {v2, v9}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "ad_creative_id"

    invoke-static {v2, v10}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v16, v4

    goto :goto_1

    :cond_0
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    :goto_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v17, v4

    goto :goto_2

    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v12

    :goto_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v18, v4

    goto :goto_3

    :cond_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v12

    :goto_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v21, v4

    goto :goto_4

    :cond_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v12

    :goto_4
    new-instance v12, Lcom/cloud/hisavana/sdk/j5;

    move-object v13, v12

    invoke-direct/range {v13 .. v21}, Lcom/cloud/hisavana/sdk/j5;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/g0;->release()V

    return-object v11

    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/g0;->release()V

    throw v0
.end method
