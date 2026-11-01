.class public final Llj/c1;
.super Ljava/lang/Object;

# interfaces
.implements Llj/v0;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj/c1;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Llj/c1$a;

    invoke-direct {p1, p0}, Llj/c1$a;-><init>(Llj/c1;)V

    iput-object p1, p0, Llj/c1;->b:Landroidx/room/g;

    new-instance p1, Llj/c1$b;

    invoke-direct {p1, p0}, Llj/c1$b;-><init>(Llj/c1;)V

    iput-object p1, p0, Llj/c1;->c:Landroidx/room/e;

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Llj/c1;->p(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;IILz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Llj/c1;->r(Ljava/lang/String;IILz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Llj/c1;Lcom/transsion/baselib/db/download/SubtitleBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Llj/c1;->s(Lcom/transsion/baselib/db/download/SubtitleBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Llj/c1;->n(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Llj/c1;->o(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Llj/c1;->q(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static m()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic n(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM DOWNLOAD_SUBTITLE_TABLE WHERE postId=?"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v0, p0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {p1}, Lz3/e;->close()V

    throw p0
.end method

.method private static synthetic o(Lz3/b;)Ljava/util/List;
    .locals 40

    const-string v0, "SELECT * FROM DOWNLOAD_SUBTITLE_TABLE"

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "resourceId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "postId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "url"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "path"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "lan"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "lanName"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "subtitleName"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "size"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "delayDuration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "type"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "fileCharsetName"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "subjectId"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "ep"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "resolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v17

    const/16 v18, 0x0

    if-eqz v17, :cond_0

    move-object/from16 v20, v18

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v20, v17

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v21, v18

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v21, v17

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v22, v18

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v22, v17

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v23, v18

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v23, v17

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v24, v18

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v24, v17

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v25, v18

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v25, v17

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v26, v18

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v26, v17

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v27, v18

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v27, v17

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v17, v2

    move/from16 v36, v3

    move-object/from16 v28, v18

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move/from16 v36, v3

    move-object/from16 v28, v17

    move/from16 v17, v2

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v37, v4

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v31, v18

    goto :goto_a

    :cond_9
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v31, v4

    :goto_a
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_b
    move-object/from16 v32, v18

    move/from16 v18, v5

    goto :goto_c

    :cond_a
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_b

    :goto_c
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    move/from16 p0, v6

    move/from16 v38, v7

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v39, v9

    move/from16 v7, v16

    move/from16 v16, v8

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    new-instance v9, Lcom/transsion/baselib/db/download/SubtitleBean;

    move-object/from16 v19, v9

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v33, v4

    move/from16 v34, v6

    move/from16 v35, v8

    invoke-direct/range {v19 .. v35}, Lcom/transsion/baselib/db/download/SubtitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v6, p0

    move/from16 p0, v5

    move/from16 v8, v16

    move/from16 v2, v17

    move/from16 v5, v18

    move/from16 v3, v36

    move/from16 v4, v37

    move/from16 v9, v39

    move/from16 v16, v7

    move/from16 v7, v38

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_b
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v15

    :goto_d
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic p(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 39

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_SUBTITLE_TABLE WHERE postId = ? "

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v1, v2}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "resourceId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "postId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "url"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "path"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "lan"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "lanName"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "subtitleName"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "size"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "delayDuration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "type"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "fileCharsetName"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "subjectId"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "ep"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "resolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_1

    move-object/from16 v19, v17

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v16

    :goto_2
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v20, v17

    goto :goto_3

    :cond_2
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v16

    :goto_3
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v21, v17

    goto :goto_4

    :cond_3
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v21, v16

    :goto_4
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v22, v17

    goto :goto_5

    :cond_4
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v22, v16

    :goto_5
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v23, v17

    goto :goto_6

    :cond_5
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v23, v16

    :goto_6
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v24, v17

    goto :goto_7

    :cond_6
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v24, v16

    :goto_7
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v25, v17

    goto :goto_8

    :cond_7
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v25, v16

    :goto_8
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v26, v17

    goto :goto_9

    :cond_8
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v26, v16

    :goto_9
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_9

    move/from16 v16, v2

    move/from16 v35, v3

    move-object/from16 v27, v17

    goto :goto_a

    :cond_9
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 v35, v3

    move-object/from16 v27, v16

    move/from16 v16, v2

    :goto_a
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v36, v4

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v30, v17

    goto :goto_b

    :cond_a
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v4

    :goto_b
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_c
    move-object/from16 v31, v17

    move/from16 v17, v5

    goto :goto_d

    :cond_b
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_c

    :goto_d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    move/from16 p0, v6

    move/from16 v37, v7

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, p1

    move/from16 p1, v8

    move/from16 v38, v9

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    new-instance v9, Lcom/transsion/baselib/db/download/SubtitleBean;

    move-object/from16 v18, v9

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v32, v4

    move/from16 v33, v6

    move/from16 v34, v8

    invoke-direct/range {v18 .. v34}, Lcom/transsion/baselib/db/download/SubtitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v6, p0

    move/from16 v8, p1

    move/from16 p0, v5

    move/from16 p1, v7

    move/from16 v2, v16

    move/from16 v5, v17

    move/from16 v3, v35

    move/from16 v4, v36

    move/from16 v7, v37

    move/from16 v9, v38

    goto/16 :goto_1

    :cond_c
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v15

    :goto_e
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic q(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 39

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_SUBTITLE_TABLE WHERE subjectId = ? "

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v1, v2}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "resourceId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "postId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "url"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "path"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "lan"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "lanName"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "subtitleName"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "size"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "delayDuration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "type"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "fileCharsetName"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "subjectId"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "ep"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "resolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_1

    move-object/from16 v19, v17

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v16

    :goto_2
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v20, v17

    goto :goto_3

    :cond_2
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v16

    :goto_3
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v21, v17

    goto :goto_4

    :cond_3
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v21, v16

    :goto_4
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v22, v17

    goto :goto_5

    :cond_4
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v22, v16

    :goto_5
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v23, v17

    goto :goto_6

    :cond_5
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v23, v16

    :goto_6
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v24, v17

    goto :goto_7

    :cond_6
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v24, v16

    :goto_7
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v25, v17

    goto :goto_8

    :cond_7
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v25, v16

    :goto_8
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v26, v17

    goto :goto_9

    :cond_8
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v26, v16

    :goto_9
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_9

    move/from16 v16, v2

    move/from16 v35, v3

    move-object/from16 v27, v17

    goto :goto_a

    :cond_9
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 v35, v3

    move-object/from16 v27, v16

    move/from16 v16, v2

    :goto_a
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v36, v4

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v30, v17

    goto :goto_b

    :cond_a
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v4

    :goto_b
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_c
    move-object/from16 v31, v17

    move/from16 v17, v5

    goto :goto_d

    :cond_b
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_c

    :goto_d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    move/from16 p0, v6

    move/from16 v37, v7

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, p1

    move/from16 p1, v8

    move/from16 v38, v9

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    new-instance v9, Lcom/transsion/baselib/db/download/SubtitleBean;

    move-object/from16 v18, v9

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v32, v4

    move/from16 v33, v6

    move/from16 v34, v8

    invoke-direct/range {v18 .. v34}, Lcom/transsion/baselib/db/download/SubtitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v6, p0

    move/from16 v8, p1

    move/from16 p0, v5

    move/from16 p1, v7

    move/from16 v2, v16

    move/from16 v5, v17

    move/from16 v3, v35

    move/from16 v4, v36

    move/from16 v7, v37

    move/from16 v9, v38

    goto/16 :goto_1

    :cond_c
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v15

    :goto_e
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic r(Ljava/lang/String;IILz3/b;)Ljava/util/List;
    .locals 37

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_SUBTITLE_TABLE WHERE subjectId = ? AND ep = ? AND se = ?"

    move-object/from16 v2, p3

    invoke-interface {v2, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v1, v2}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    move/from16 v2, p1

    int-to-long v2, v2

    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const/4 v0, 0x3

    move/from16 v2, p2

    int-to-long v2, v2

    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const-string v0, "resourceId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "postId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "url"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "path"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "lan"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "lanName"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "subtitleName"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "size"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "delayDuration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "type"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "fileCharsetName"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "subjectId"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "ep"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "resolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_1

    move-object/from16 v19, v17

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v16

    :goto_2
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v20, v17

    goto :goto_3

    :cond_2
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v16

    :goto_3
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v21, v17

    goto :goto_4

    :cond_3
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v21, v16

    :goto_4
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v22, v17

    goto :goto_5

    :cond_4
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v22, v16

    :goto_5
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v23, v17

    goto :goto_6

    :cond_5
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v23, v16

    :goto_6
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v24, v17

    goto :goto_7

    :cond_6
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v24, v16

    :goto_7
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v25, v17

    goto :goto_8

    :cond_7
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v25, v16

    :goto_8
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v26, v17

    goto :goto_9

    :cond_8
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v26, v16

    :goto_9
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_9

    move/from16 p2, v2

    move/from16 p3, v3

    move-object/from16 v27, v17

    goto :goto_a

    :cond_9
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 p2, v2

    move/from16 p3, v3

    move-object/from16 v27, v16

    :goto_a
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v16, v4

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v30, v17

    goto :goto_b

    :cond_a
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v4

    :goto_b
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_c
    move-object/from16 v31, v17

    move/from16 v17, v5

    goto :goto_d

    :cond_b
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_c

    :goto_d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    move/from16 p0, v6

    move/from16 v35, v7

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, p1

    move/from16 p1, v8

    move/from16 v36, v9

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    new-instance v9, Lcom/transsion/baselib/db/download/SubtitleBean;

    move-object/from16 v18, v9

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v32, v4

    move/from16 v33, v6

    move/from16 v34, v8

    invoke-direct/range {v18 .. v34}, Lcom/transsion/baselib/db/download/SubtitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v6, p0

    move/from16 v8, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 p0, v5

    move/from16 p1, v7

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v7, v35

    move/from16 v9, v36

    goto/16 :goto_1

    :cond_c
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v15

    :goto_e
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic s(Lcom/transsion/baselib/db/download/SubtitleBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Llj/c1;->c:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/transsion/baselib/db/download/SubtitleBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Llj/c1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/z0;

    invoke-direct {v1, p0, p1}, Llj/z0;-><init>(Llj/c1;Lcom/transsion/baselib/db/download/SubtitleBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Llj/c1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/a1;

    invoke-direct {v1}, Llj/a1;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/c1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/y0;

    invoke-direct {v1, p1}, Llj/y0;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/c1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/b1;

    invoke-direct {v1, p1}, Llj/b1;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/c1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/w0;

    invoke-direct {v1, p1, p2, p3}, Llj/w0;-><init>(Ljava/lang/String;II)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/c1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/x0;

    invoke-direct {v1, p1}, Llj/x0;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
