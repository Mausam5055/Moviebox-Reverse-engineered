.class public final Lcom/cloud/hisavana/sdk/w3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/v3;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/h;

.field private final c:Landroidx/room/f;

.field private final d:Landroidx/room/j0;

.field private final e:Landroidx/room/j0;

.field private final f:Landroidx/room/j0;

.field private final g:Landroidx/room/j0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/cloud/hisavana/sdk/w3$a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w3$a;-><init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->b:Landroidx/room/h;

    new-instance v0, Lcom/cloud/hisavana/sdk/w3$b;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w3$b;-><init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->c:Landroidx/room/f;

    new-instance v0, Lcom/cloud/hisavana/sdk/w3$c;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w3$c;-><init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->d:Landroidx/room/j0;

    new-instance v0, Lcom/cloud/hisavana/sdk/w3$d;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w3$d;-><init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->e:Landroidx/room/j0;

    new-instance v0, Lcom/cloud/hisavana/sdk/w3$e;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w3$e;-><init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->f:Landroidx/room/j0;

    new-instance v0, Lcom/cloud/hisavana/sdk/w3$f;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/w3$f;-><init>(Lcom/cloud/hisavana/sdk/w3;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->g:Landroidx/room/j0;

    return-void
.end method

.method public static e()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->c:Landroidx/room/f;

    invoke-virtual {v0, p1}, Landroidx/room/f;->l(Ljava/lang/Iterable;)I

    move-result p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method

.method public a(La4/g;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->V(La4/g;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->g:Landroidx/room/j0;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/w3;->g:Landroidx/room/j0;

    invoke-virtual {v1, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/w3;->g:Landroidx/room/j0;

    invoke-virtual {v2, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw v1
.end method

.method public b(La4/g;)I
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

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

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->b:Landroidx/room/h;

    invoke-virtual {v0, p1}, Landroidx/room/h;->k(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method

.method public d(Ljava/util/List;)Ljava/util/List;
    .locals 23

    move-object/from16 v1, p0

    invoke-static {}, Landroidx/room/util/n;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SELECT * FROM adList_room WHERE ad_creative_id IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    invoke-static {v0, v3}, Landroidx/room/util/n;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/room/g0;->h(Ljava/lang/String;I)Landroidx/room/g0;

    move-result-object v3

    if-nez p1, :cond_1

    invoke-virtual {v3, v2}, Landroidx/room/g0;->g(I)V

    goto :goto_3

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-virtual {v3, v2}, Landroidx/room/g0;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v2, v4}, Landroidx/room/g0;->y(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/w3;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;La4/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "_id"

    invoke-static {v2, v0}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "ad_creative_id"

    invoke-static {v2, v5}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "codeSeatId"

    invoke-static {v2, v6}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "file_path"

    invoke-static {v2, v7}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "price"

    invoke-static {v2, v8}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "is_offline_ad"

    invoke-static {v2, v9}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "ad_request_ver"

    invoke-static {v2, v10}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "ad_bean"

    invoke-static {v2, v11}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v16, v4

    goto :goto_5

    :cond_4
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    :goto_5
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v17, v4

    goto :goto_6

    :cond_5
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v13

    :goto_6
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v18, v4

    goto :goto_7

    :cond_6
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v13

    :goto_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v19, v4

    goto :goto_8

    :cond_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v19, v13

    :goto_8
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v20, v4

    goto :goto_9

    :cond_8
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v20, v13

    :goto_9
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v21, v4

    goto :goto_a

    :cond_9
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v21, v13

    :goto_a
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v22, v4

    goto :goto_b

    :cond_a
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v22, v13

    :goto_b
    new-instance v13, Lcom/cloud/hisavana/sdk/y3;

    move-object v14, v13

    invoke-direct/range {v14 .. v22}, Lcom/cloud/hisavana/sdk/y3;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/g0;->release()V

    return-object v12

    :goto_c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/g0;->release()V

    throw v0
.end method
