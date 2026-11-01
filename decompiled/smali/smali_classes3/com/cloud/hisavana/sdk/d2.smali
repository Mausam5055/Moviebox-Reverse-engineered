.class public final Lcom/cloud/hisavana/sdk/d2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/c2;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/h;

.field private final c:Landroidx/room/j0;

.field private final d:Landroidx/room/j0;

.field private final e:Landroidx/room/j0;

.field private final f:Landroidx/room/j0;

.field private final g:Landroidx/room/j0;

.field private final h:Landroidx/room/j0;

.field private final i:Landroidx/room/j0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/cloud/hisavana/sdk/d2$a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/d2$a;-><init>(Lcom/cloud/hisavana/sdk/d2;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->b:Landroidx/room/h;

    new-instance v0, Lcom/cloud/hisavana/sdk/d2$b;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/d2$b;-><init>(Lcom/cloud/hisavana/sdk/d2;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->c:Landroidx/room/j0;

    new-instance v0, Lcom/cloud/hisavana/sdk/d2$c;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/d2$c;-><init>(Lcom/cloud/hisavana/sdk/d2;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->d:Landroidx/room/j0;

    new-instance v0, Lcom/cloud/hisavana/sdk/d2$d;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/d2$d;-><init>(Lcom/cloud/hisavana/sdk/d2;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->e:Landroidx/room/j0;

    new-instance v0, Lcom/cloud/hisavana/sdk/d2$e;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/d2$e;-><init>(Lcom/cloud/hisavana/sdk/d2;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->f:Landroidx/room/j0;

    new-instance v0, Lcom/cloud/hisavana/sdk/d2$f;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/d2$f;-><init>(Lcom/cloud/hisavana/sdk/d2;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->g:Landroidx/room/j0;

    new-instance v0, Lcom/cloud/hisavana/sdk/d2$g;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/d2$g;-><init>(Lcom/cloud/hisavana/sdk/d2;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->h:Landroidx/room/j0;

    new-instance v0, Lcom/cloud/hisavana/sdk/d2$h;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/d2$h;-><init>(Lcom/cloud/hisavana/sdk/d2;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->i:Landroidx/room/j0;

    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 38

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM default_ad_room"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/room/g0;->h(Ljava/lang/String;I)Landroidx/room/g0;

    move-result-object v3

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;La4/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "ad_creative_id"

    invoke-static {v2, v0}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "codeSeatId"

    invoke-static {v2, v5}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "ad_type"

    invoke-static {v2, v6}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "price"

    invoke-static {v2, v7}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ad_request_ver"

    invoke-static {v2, v8}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "displayed_times"

    invoke-static {v2, v9}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "displayed_date"

    invoke-static {v2, v10}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "start_date"

    invoke-static {v2, v11}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "end_date"

    invoke-static {v2, v12}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "display_max_times"

    invoke-static {v2, v13}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "file_path"

    invoke-static {v2, v14}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "default_country_white"

    invoke-static {v2, v15}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "default_country_black"

    invoke-static {v2, v4}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "default_brand_white"

    invoke-static {v2, v1}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "default_brand_black"

    invoke-static {v2, v3}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "ad_bean"

    invoke-static {v2, v3}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v19, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v21, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v22, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    :goto_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v24, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v24, v1

    :goto_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v27, 0x0

    goto :goto_4

    :cond_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    :goto_4
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v28, 0x0

    goto :goto_5

    :cond_4
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    :goto_5
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v29, 0x0

    goto :goto_6

    :cond_5
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v29, v1

    :goto_6
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v31, 0x0

    goto :goto_7

    :cond_6
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    :goto_7
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v32, 0x0

    goto :goto_8

    :cond_7
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    :goto_8
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move/from16 v1, v19

    const/16 v33, 0x0

    goto :goto_9

    :cond_8
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v33, v1

    move/from16 v1, v19

    :goto_9
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_9

    const/16 v34, 0x0

    :goto_a
    move/from16 v37, v17

    move/from16 v17, v0

    move/from16 v0, v37

    goto :goto_b

    :cond_9
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v34, v19

    goto :goto_a

    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v35, 0x0

    :goto_c
    move/from16 v37, v18

    move/from16 v18, v0

    move/from16 v0, v37

    goto :goto_d

    :cond_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v35, v19

    goto :goto_c

    :goto_d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_b

    move/from16 v19, v0

    const/16 v36, 0x0

    goto :goto_e

    :cond_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v36, v19

    move/from16 v19, v0

    :goto_e
    new-instance v0, Lcom/cloud/hisavana/sdk/g2;

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v36}, Lcom/cloud/hisavana/sdk/g2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Double;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_f

    :cond_c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/g0;->release()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/g0;->release()V

    throw v0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->h:Landroidx/room/j0;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1, v2}, La4/f;->c(IJ)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->h:Landroidx/room/j0;

    invoke-virtual {p1, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d2;->h:Landroidx/room/j0;

    invoke-virtual {v1, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw p1
.end method

.method public a(Lcom/cloud/hisavana/sdk/g2;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->b:Landroidx/room/h;

    invoke-virtual {v0, p1}, Landroidx/room/h;->l(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->e:Landroidx/room/j0;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->e:Landroidx/room/j0;

    invoke-virtual {p1, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d2;->e:Landroidx/room/j0;

    invoke-virtual {v1, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->d:Landroidx/room/j0;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    invoke-interface {v0, p1}, La4/f;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, p2}, La4/f;->y(ILjava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->d:Landroidx/room/j0;

    invoke-virtual {p1, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->t()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d2;->d:Landroidx/room/j0;

    invoke-virtual {p2, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->g:Landroidx/room/j0;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    invoke-interface {v0, v1}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p3}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    const/4 p3, 0x2

    if-nez p1, :cond_1

    invoke-interface {v0, p3}, La4/f;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p3, p1}, La4/f;->y(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x3

    if-nez p2, :cond_2

    invoke-interface {v0, p1}, La4/f;->g(I)V

    goto :goto_2

    :cond_2
    invoke-interface {v0, p1, p2}, La4/f;->y(ILjava/lang/String;)V

    :goto_2
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->g:Landroidx/room/j0;

    invoke-virtual {p1, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->t()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d2;->g:Landroidx/room/j0;

    invoke-virtual {p2, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    invoke-static {}, Landroidx/room/util/n;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE FROM default_ad_room WHERE codeSeatId NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/room/util/n;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

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

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, La4/f;->g(I)V

    goto :goto_1

    :cond_0
    invoke-interface {v0, v1, v2}, La4/f;->y(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    invoke-interface {v0}, La4/h;->F()I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->i:Landroidx/room/j0;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d2;->i:Landroidx/room/j0;

    invoke-virtual {v1, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->t()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/d2;->i:Landroidx/room/j0;

    invoke-virtual {v2, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->f:Landroidx/room/j0;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    if-nez p1, :cond_1

    invoke-interface {v0, v1}, La4/f;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, v1, p1}, La4/f;->y(ILjava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->f:Landroidx/room/j0;

    invoke-virtual {p1, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d2;->f:Landroidx/room/j0;

    invoke-virtual {v1, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d2;->c:Landroidx/room/j0;

    invoke-virtual {v0}, Landroidx/room/j0;->b()La4/h;

    move-result-object v0

    int-to-long v1, p3

    const/4 p3, 0x1

    invoke-interface {v0, p3, v1, v2}, La4/f;->c(IJ)V

    const/4 p3, 0x2

    if-nez p4, :cond_0

    invoke-interface {v0, p3}, La4/f;->g(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p3, p4}, La4/f;->y(ILjava/lang/String;)V

    :goto_0
    const/4 p3, 0x3

    if-nez p1, :cond_1

    invoke-interface {v0, p3}, La4/f;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p3, p1}, La4/f;->y(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x4

    if-nez p2, :cond_2

    invoke-interface {v0, p1}, La4/f;->g(I)V

    goto :goto_2

    :cond_2
    invoke-interface {v0, p1, p2}, La4/f;->y(ILjava/lang/String;)V

    :goto_2
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La4/h;->F()I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d2;->c:Landroidx/room/j0;

    invoke-virtual {p1, v0}, Landroidx/room/j0;->h(La4/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d2;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->t()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/d2;->c:Landroidx/room/j0;

    invoke-virtual {p2, v0}, Landroidx/room/j0;->h(La4/h;)V

    throw p1
.end method
