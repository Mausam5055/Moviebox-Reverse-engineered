.class public final Lcom/transsion/baselib/db/video/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/db/video/ShortTVPlayDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;

.field private final d:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/transsion/baselib/db/video/q$a;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/q$a;-><init>(Lcom/transsion/baselib/db/video/q;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/q;->b:Landroidx/room/g;

    new-instance p1, Lcom/transsion/baselib/db/video/q$b;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/q$b;-><init>(Lcom/transsion/baselib/db/video/q;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/q;->c:Landroidx/room/e;

    new-instance p1, Lcom/transsion/baselib/db/video/q$c;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/q$c;-><init>(Lcom/transsion/baselib/db/video/q;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/q;->d:Landroidx/room/e;

    return-void
.end method

.method public static synthetic c(Lcom/transsion/baselib/db/video/q;Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/q;->w(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(JILjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/video/q;->x(JILjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(IILz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/q;->v(IILz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/baselib/db/video/q;Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/q;->y(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/transsion/baselib/db/video/q;Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/q;->s(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/baselib/db/video/q;->t(Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/ShortTVPlayBean;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baselib/db/video/q;->u(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/ShortTVPlayBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/q;->z(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static r()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic s(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->c:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic t(Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM SHORT_TV_PLAY"

    invoke-interface {p0, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic u(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/ShortTVPlayBean;
    .locals 34

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM SHORT_TV_PLAY WHERE subjectId = ?"

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

    goto/16 :goto_b

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "subjectId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ep"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "se"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "totalEp"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "progress"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "description"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "coverUrl"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "thumbnail"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "videoId"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "videoUrl"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "timeStamp"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "subtitleSelectId"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v15

    const/16 v16, 0x0

    if-eqz v15, :cond_a

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v18, v16

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v19, v16

    goto :goto_2

    :cond_2
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v23

    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v25, v16

    goto :goto_3

    :cond_3
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v25, v4

    :goto_3
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v26, v16

    goto :goto_4

    :cond_4
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v26, v4

    :goto_4
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v27, v16

    goto :goto_5

    :cond_5
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v27, v4

    :goto_5
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v28, v16

    goto :goto_6

    :cond_6
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v28, v4

    :goto_6
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v29, v16

    goto :goto_7

    :cond_7
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v29, v4

    :goto_7
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v30, v16

    goto :goto_8

    :cond_8
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v4

    :goto_8
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v31

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_9
    move-object/from16 v33, v16

    goto :goto_a

    :cond_9
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_9

    :goto_a
    new-instance v16, Lcom/transsion/baselib/db/video/ShortTVPlayBean;

    move-object/from16 v17, v16

    move/from16 v20, v0

    move/from16 v21, v2

    move/from16 v22, v3

    invoke-direct/range {v17 .. v33}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v16

    :goto_b
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic v(IILz3/b;)Ljava/util/List;
    .locals 35

    const-string v0, "SELECT * FROM SHORT_TV_PLAY WHERE coverUrl IS NOT NULL AND rowid IN (SELECT rowid FROM (SELECT rowid, subjectId, MAX(timeStamp) as maxTimeStamp FROM SHORT_TV_PLAY WHERE coverUrl IS NOT NULL GROUP BY subjectId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?;"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v0, 0x1

    move/from16 v2, p0

    int-to-long v2, v2

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const/4 v0, 0x2

    move/from16 v2, p1

    int-to-long v2, v2

    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const-string v0, "subjectId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ep"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "se"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "totalEp"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "progress"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "description"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "coverUrl"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "thumbnail"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "videoId"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "videoUrl"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "timeStamp"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "subtitleSelectId"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_0

    move-object/from16 v19, v17

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v16

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_1

    move/from16 p0, v14

    move-object/from16 p1, v15

    move-object/from16 v20, v17

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move/from16 p0, v14

    move-object/from16 p1, v15

    move-object/from16 v20, v16

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 p2, v2

    move v15, v3

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v16, v4

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v24

    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v26, v17

    goto :goto_3

    :cond_2
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v26, v4

    :goto_3
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v27, v17

    goto :goto_4

    :cond_3
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v27, v4

    :goto_4
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v28, v17

    goto :goto_5

    :cond_4
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v28, v4

    :goto_5
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v29, v17

    goto :goto_6

    :cond_5
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v29, v4

    :goto_6
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v30, v17

    goto :goto_7

    :cond_6
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v4

    :goto_7
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v31, v17

    goto :goto_8

    :cond_7
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v31, v4

    :goto_8
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v32

    move/from16 v4, p0

    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    :goto_9
    move/from16 p0, v0

    move-object/from16 v34, v17

    goto :goto_a

    :cond_8
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_9

    :goto_a
    new-instance v0, Lcom/transsion/baselib/db/video/ShortTVPlayBean;

    move-object/from16 v18, v0

    move/from16 v21, v14

    move/from16 v22, v2

    move/from16 v23, v3

    invoke-direct/range {v18 .. v34}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v2, p1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move v14, v4

    move v3, v15

    move/from16 v4, v16

    move-object v15, v2

    move/from16 v2, p2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_b

    :cond_9
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_b
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic w(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic x(JILjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "UPDATE SHORT_TV_PLAY SET progress = ?, ep = ? WHERE subjectId = ?"

    invoke-interface {p4, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p4

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p4, v0, p0, p1}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    int-to-long p1, p2

    invoke-interface {p4, p0, p1, p2}, Lz3/e;->c(IJ)V

    const/4 p0, 0x3

    if-nez p3, :cond_0

    invoke-interface {p4, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p4, p0, p3}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p4}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p4}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {p4}, Lz3/e;->close()V

    throw p0
.end method

.method private synthetic y(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->d:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic z(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "UPDATE SHORT_TV_PLAY SET subtitleSelectId = ? WHERE subjectId = ? "

    invoke-interface {p2, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {p2, v0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {p2, v0, p0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x2

    if-nez p1, :cond_1

    invoke-interface {p2, p0}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p2, p0, p1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    invoke-interface {p2}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Lz3/e;->close()V

    return-object p0

    :goto_2
    invoke-interface {p2}, Lz3/e;->close()V

    throw p0
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/n;

    invoke-direct {v1}, Lcom/transsion/baselib/db/video/n;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/o;

    invoke-direct {v1, p2, p1}, Lcom/transsion/baselib/db/video/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/i;

    invoke-direct {v1, p2, p1}, Lcom/transsion/baselib/db/video/i;-><init>(II)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/k;

    invoke-direct {v1, p1}, Lcom/transsion/baselib/db/video/k;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/j;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/j;-><init>(Lcom/transsion/baselib/db/video/q;Lcom/transsion/baselib/db/video/ShortTVPlayBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/ShortTVPlayDao$DefaultImpls;->a(Lcom/transsion/baselib/db/video/ShortTVPlayDao;Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/p;

    invoke-direct {v1, p3, p4, p2, p1}, Lcom/transsion/baselib/db/video/p;-><init>(JILjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p5}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/l;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/l;-><init>(Lcom/transsion/baselib/db/video/q;Lcom/transsion/baselib/db/video/ShortTVPlayBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/m;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/m;-><init>(Lcom/transsion/baselib/db/video/q;Lcom/transsion/baselib/db/video/ShortTVPlayBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
