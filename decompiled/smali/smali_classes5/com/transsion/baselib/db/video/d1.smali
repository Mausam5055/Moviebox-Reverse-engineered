.class public final Lcom/transsion/baselib/db/video/d1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/db/video/VideoDetailPlayDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Lij/b;

.field private final d:Landroidx/room/e;

.field private final e:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lij/b;

    invoke-direct {v0}, Lij/b;-><init>()V

    iput-object v0, p0, Lcom/transsion/baselib/db/video/d1;->c:Lij/b;

    iput-object p1, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/transsion/baselib/db/video/d1$a;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/d1$a;-><init>(Lcom/transsion/baselib/db/video/d1;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/d1;->b:Landroidx/room/g;

    new-instance p1, Lcom/transsion/baselib/db/video/d1$b;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/d1$b;-><init>(Lcom/transsion/baselib/db/video/d1;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/d1;->d:Landroidx/room/e;

    new-instance p1, Lcom/transsion/baselib/db/video/d1$c;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/d1$c;-><init>(Lcom/transsion/baselib/db/video/d1;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/d1;->e:Landroidx/room/e;

    return-void
.end method

.method public static synthetic A(Lcom/transsion/baselib/db/video/d1;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/d1;->L(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/transsion/baselib/db/video/d1;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/d1;->P(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Ljava/lang/String;Lz3/b;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baselib/db/video/d1;->N(Ljava/lang/String;Lz3/b;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic D(Lcom/transsion/baselib/db/video/d1;)Lij/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/baselib/db/video/d1;->c:Lij/b;

    return-object p0
.end method

.method public static E()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic F(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->d:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic G(Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM VIDEO_DETAIL_PLAY"

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

.method private synthetic H(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 60

    move-object/from16 v0, p1

    const-string v1, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE subjectId = ? ORDER BY timeStamp DESC LIMIT 1"

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v1, v2}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_19

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "subjectId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "id"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ep"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "se"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "progress"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "coverUrl"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "thumbnail"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "videoUrl"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "subtitleSelectId"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "totalDuration"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "subjectDurationSeconds"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "hasDelete"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "playMode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "downloadUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "downloadFilePath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "downloadSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "dubs"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "rewardPlayed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "rewardUnlock"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "rewardFree"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v27

    const/16 v28, 0x0

    if-eqz v27, :cond_17

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1

    move-object/from16 v30, v28

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v30, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v31, v28

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v31, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v34

    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v36, v28

    goto :goto_3

    :cond_3
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    :goto_3
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v37, v28

    goto :goto_4

    :cond_4
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v4

    :goto_4
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v38, v28

    goto :goto_5

    :cond_5
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v38, v4

    :goto_5
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v39, v28

    goto :goto_6

    :cond_6
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v39, v4

    :goto_6
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v40

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v42, v28

    goto :goto_7

    :cond_7
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v42, v4

    :goto_7
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v43, v28

    goto :goto_8

    :cond_8
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v43, v4

    :goto_8
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v44, v28

    goto :goto_9

    :cond_9
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v44, v4

    :goto_9
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move/from16 v4, p1

    move-object/from16 v45, v28

    goto :goto_a

    :cond_a
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v45, v4

    move/from16 v4, p1

    :goto_a
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_b

    move/from16 v4, v16

    move-object/from16 v46, v28

    goto :goto_b

    :cond_b
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v46, v4

    move/from16 v4, v16

    :goto_b
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    move/from16 v4, v17

    const/16 v47, 0x1

    goto :goto_c

    :cond_c
    move/from16 v47, v5

    move/from16 v4, v17

    :goto_c
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_d

    move/from16 v4, v18

    move-object/from16 v48, v28

    goto :goto_d

    :cond_d
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v48, v4

    move/from16 v4, v18

    :goto_d
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_e

    move/from16 v4, v19

    move-object/from16 v49, v28

    goto :goto_e

    :cond_e
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v49, v4

    move/from16 v4, v19

    :goto_e
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_f

    move/from16 v4, v20

    move-object/from16 v50, v28

    goto :goto_f

    :cond_f
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v50, v4

    move/from16 v4, v20

    :goto_f
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v51

    move/from16 v4, v21

    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_10

    move-object/from16 v6, p0

    move-object/from16 v4, v28

    goto :goto_10

    :cond_10
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p0

    :goto_10
    :try_start_1
    iget-object v7, v6, Lcom/transsion/baselib/db/video/d1;->c:Lij/b;

    invoke-virtual {v7, v4}, Lij/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v53

    move/from16 v4, v22

    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_11

    move/from16 v4, v23

    move-object/from16 v54, v28

    goto :goto_11

    :cond_11
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v54, v4

    move/from16 v4, v23

    :goto_11
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_12

    move/from16 v4, v24

    move-object/from16 v55, v28

    goto :goto_12

    :cond_12
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v55, v4

    move/from16 v4, v24

    :goto_12
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v4, v7

    if-eqz v4, :cond_13

    move/from16 v4, v25

    const/16 v56, 0x1

    goto :goto_13

    :cond_13
    move/from16 v56, v5

    move/from16 v4, v25

    :goto_13
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v4, v7

    if-eqz v4, :cond_14

    move/from16 v4, v26

    const/16 v57, 0x1

    goto :goto_14

    :cond_14
    move/from16 v57, v5

    move/from16 v4, v26

    :goto_14
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v4, v7

    if-eqz v4, :cond_15

    const/16 v58, 0x1

    goto :goto_15

    :cond_15
    move/from16 v58, v5

    :goto_15
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_16

    :goto_16
    move-object/from16 v59, v28

    goto :goto_17

    :cond_16
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    goto :goto_16

    :goto_17
    new-instance v28, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-object/from16 v29, v28

    move/from16 v32, v0

    move/from16 v33, v3

    invoke-direct/range {v29 .. v59}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_18

    :catchall_1
    move-exception v0

    goto :goto_19

    :cond_17
    move-object/from16 v6, p0

    :goto_18
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v28

    :goto_19
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic I(IILjava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 58

    move-object/from16 v0, p3

    const-string v1, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE se = ? AND ep = ? AND subjectId = ? ORDER BY timeStamp DESC LIMIT 1"

    move-object/from16 v2, p4

    invoke-interface {v2, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    move/from16 v2, p1

    int-to-long v2, v2

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v1, v4, v2, v3}, Lz3/e;->c(IJ)V

    const/4 v2, 0x2

    move/from16 v3, p2

    int-to-long v5, v3

    invoke-interface {v1, v2, v5, v6}, Lz3/e;->c(IJ)V

    const/4 v2, 0x3

    if-nez v0, :cond_0

    invoke-interface {v1, v2}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_19

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

    const-string v5, "se"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "progress"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "coverUrl"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "thumbnail"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "videoUrl"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "subtitleSelectId"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "totalDuration"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "subjectDurationSeconds"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v4, "subjectType"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 p2, v4

    const-string v4, "hasDelete"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 p3, v4

    const-string v4, "playMode"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 p4, v4

    const-string v4, "downloadUrl"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v4

    const-string v4, "downloadFilePath"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v17, v4

    const-string v4, "downloadSize"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    const-string v4, "dubs"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    const-string v4, "lastAdStartTimeStamp"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    const-string v4, "lastAdEndTimeStamp"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    const-string v4, "rewardPlayed"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "rewardUnlock"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    const-string v4, "rewardFree"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    const-string v4, "ops"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v25

    const/16 v26, 0x0

    if-eqz v25, :cond_17

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1

    move-object/from16 v28, v26

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v0

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v29, v26

    goto :goto_2

    :cond_2
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v0

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v32

    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v34, v26

    goto :goto_3

    :cond_3
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v34, v3

    :goto_3
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v35, v26

    goto :goto_4

    :cond_4
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    :goto_4
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v36, v26

    goto :goto_5

    :cond_5
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v36, v3

    :goto_5
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v37, v26

    goto :goto_6

    :cond_6
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v37, v3

    :goto_6
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v38

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v40, v26

    goto :goto_7

    :cond_7
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v40, v3

    :goto_7
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v41, v26

    goto :goto_8

    :cond_8
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v41, v3

    :goto_8
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v42, v26

    goto :goto_9

    :cond_9
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v42, v3

    :goto_9
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v3, p2

    move-object/from16 v43, v26

    goto :goto_a

    :cond_a
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v43, v3

    move/from16 v3, p2

    :goto_a
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_b

    move/from16 v3, p3

    move-object/from16 v44, v26

    goto :goto_b

    :cond_b
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v44, v3

    move/from16 v3, p3

    :goto_b
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    const/4 v5, 0x0

    if-eqz v3, :cond_c

    move/from16 v3, p4

    const/16 v45, 0x1

    goto :goto_c

    :cond_c
    move/from16 v3, p4

    move/from16 v45, v5

    :goto_c
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_d

    move/from16 v3, v16

    move-object/from16 v46, v26

    goto :goto_d

    :cond_d
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v46, v3

    move/from16 v3, v16

    :goto_d
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_e

    move/from16 v3, v17

    move-object/from16 v47, v26

    goto :goto_e

    :cond_e
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v47, v3

    move/from16 v3, v17

    :goto_e
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_f

    move/from16 v3, v18

    move-object/from16 v48, v26

    goto :goto_f

    :cond_f
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v48, v3

    move/from16 v3, v18

    :goto_f
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v49

    move/from16 v3, v19

    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_10

    move-object/from16 v6, p0

    move-object/from16 v3, v26

    goto :goto_10

    :cond_10
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p0

    :goto_10
    :try_start_1
    iget-object v7, v6, Lcom/transsion/baselib/db/video/d1;->c:Lij/b;

    invoke-virtual {v7, v3}, Lij/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v51

    move/from16 v3, v20

    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_11

    move/from16 v3, v21

    move-object/from16 v52, v26

    goto :goto_11

    :cond_11
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v52, v3

    move/from16 v3, v21

    :goto_11
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_12

    move/from16 v3, v22

    move-object/from16 v53, v26

    goto :goto_12

    :cond_12
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v53, v3

    move/from16 v3, v22

    :goto_12
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v3, v7

    if-eqz v3, :cond_13

    move/from16 v3, v23

    const/16 v54, 0x1

    goto :goto_13

    :cond_13
    move/from16 v54, v5

    move/from16 v3, v23

    :goto_13
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v3, v7

    if-eqz v3, :cond_14

    move/from16 v3, v24

    const/16 v55, 0x1

    goto :goto_14

    :cond_14
    move/from16 v55, v5

    move/from16 v3, v24

    :goto_14
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v3, v7

    if-eqz v3, :cond_15

    const/16 v56, 0x1

    goto :goto_15

    :cond_15
    move/from16 v56, v5

    :goto_15
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_16

    :goto_16
    move-object/from16 v57, v26

    goto :goto_17

    :cond_16
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_16

    :goto_17
    new-instance v26, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-object/from16 v27, v26

    move/from16 v30, v0

    move/from16 v31, v2

    invoke-direct/range {v27 .. v57}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_18

    :catchall_1
    move-exception v0

    goto :goto_19

    :cond_17
    move-object/from16 v6, p0

    :goto_18
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v26

    :goto_19
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic J(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 58

    move-object/from16 v0, p1

    const-string v1, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE subjectId = ? AND se = ? AND ep = ?"

    move-object/from16 v2, p4

    invoke-interface {v2, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v1, v2}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_19

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    move/from16 v3, p2

    int-to-long v3, v3

    invoke-interface {v1, v0, v3, v4}, Lz3/e;->c(IJ)V

    const/4 v0, 0x3

    move/from16 v3, p3

    int-to-long v3, v3

    invoke-interface {v1, v0, v3, v4}, Lz3/e;->c(IJ)V

    const-string v0, "subjectId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "id"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ep"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "se"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "progress"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "coverUrl"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "thumbnail"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "videoUrl"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "subtitleSelectId"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "totalDuration"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "subjectDurationSeconds"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "hasDelete"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p2, v2

    const-string v2, "playMode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p3, v2

    const-string v2, "downloadUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "downloadFilePath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "downloadSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "dubs"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "rewardPlayed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "rewardUnlock"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "rewardFree"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v25

    const/16 v26, 0x0

    if-eqz v25, :cond_17

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1

    move-object/from16 v28, v26

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v29, v26

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v32

    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v34, v26

    goto :goto_3

    :cond_3
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v34, v4

    :goto_3
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v35, v26

    goto :goto_4

    :cond_4
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v35, v4

    :goto_4
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v36, v26

    goto :goto_5

    :cond_5
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    :goto_5
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v37, v26

    goto :goto_6

    :cond_6
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v4

    :goto_6
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v38

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v40, v26

    goto :goto_7

    :cond_7
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v40, v4

    :goto_7
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v41, v26

    goto :goto_8

    :cond_8
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v41, v4

    :goto_8
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v42, v26

    goto :goto_9

    :cond_9
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v42, v4

    :goto_9
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move/from16 v4, p1

    move-object/from16 v43, v26

    goto :goto_a

    :cond_a
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v43, v4

    move/from16 v4, p1

    :goto_a
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_b

    move/from16 v4, p2

    move-object/from16 v44, v26

    goto :goto_b

    :cond_b
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v44, v4

    move/from16 v4, p2

    :goto_b
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    move/from16 v4, p3

    const/16 v45, 0x1

    goto :goto_c

    :cond_c
    move/from16 v4, p3

    move/from16 v45, v5

    :goto_c
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_d

    move/from16 v4, v16

    move-object/from16 v46, v26

    goto :goto_d

    :cond_d
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v46, v4

    move/from16 v4, v16

    :goto_d
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_e

    move/from16 v4, v17

    move-object/from16 v47, v26

    goto :goto_e

    :cond_e
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v47, v4

    move/from16 v4, v17

    :goto_e
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_f

    move/from16 v4, v18

    move-object/from16 v48, v26

    goto :goto_f

    :cond_f
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v48, v4

    move/from16 v4, v18

    :goto_f
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v49

    move/from16 v4, v19

    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_10

    move-object/from16 v6, p0

    move-object/from16 v4, v26

    goto :goto_10

    :cond_10
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p0

    :goto_10
    :try_start_1
    iget-object v7, v6, Lcom/transsion/baselib/db/video/d1;->c:Lij/b;

    invoke-virtual {v7, v4}, Lij/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v51

    move/from16 v4, v20

    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_11

    move/from16 v4, v21

    move-object/from16 v52, v26

    goto :goto_11

    :cond_11
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v52, v4

    move/from16 v4, v21

    :goto_11
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_12

    move/from16 v4, v22

    move-object/from16 v53, v26

    goto :goto_12

    :cond_12
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v53, v4

    move/from16 v4, v22

    :goto_12
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v4, v7

    if-eqz v4, :cond_13

    move/from16 v4, v23

    const/16 v54, 0x1

    goto :goto_13

    :cond_13
    move/from16 v54, v5

    move/from16 v4, v23

    :goto_13
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v4, v7

    if-eqz v4, :cond_14

    move/from16 v4, v24

    const/16 v55, 0x1

    goto :goto_14

    :cond_14
    move/from16 v55, v5

    move/from16 v4, v24

    :goto_14
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v4, v7

    if-eqz v4, :cond_15

    const/16 v56, 0x1

    goto :goto_15

    :cond_15
    move/from16 v56, v5

    :goto_15
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_16

    :goto_16
    move-object/from16 v57, v26

    goto :goto_17

    :cond_16
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_16

    :goto_17
    new-instance v26, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-object/from16 v27, v26

    move/from16 v30, v0

    move/from16 v31, v3

    invoke-direct/range {v27 .. v57}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_18

    :catchall_1
    move-exception v0

    goto :goto_19

    :cond_17
    move-object/from16 v6, p0

    :goto_18
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v26

    :goto_19
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic K(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 66

    move-object/from16 v0, p1

    const-string v1, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE subjectId = ? ORDER BY timeStamp DESC"

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v1, v2}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1b

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "subjectId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "id"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ep"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "se"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "progress"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "coverUrl"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "thumbnail"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "videoUrl"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "subtitleSelectId"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "totalDuration"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "subjectDurationSeconds"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "hasDelete"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "playMode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "downloadUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "downloadFilePath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "downloadSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "dubs"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "rewardPlayed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "rewardUnlock"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "rewardFree"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v28

    if-eqz v28, :cond_17

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v28

    const/16 v29, 0x0

    if-eqz v28, :cond_1

    move-object/from16 v31, v29

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v31, v28

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_2

    move-object/from16 v61, v2

    move/from16 v28, v3

    move-object/from16 v32, v29

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v61, v2

    move-object/from16 v32, v28

    move/from16 v28, v3

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v62, v4

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v35

    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v37, v29

    goto :goto_4

    :cond_3
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v4

    :goto_4
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v38, v29

    goto :goto_5

    :cond_4
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v38, v4

    :goto_5
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v39, v29

    goto :goto_6

    :cond_5
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v39, v4

    :goto_6
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v40, v29

    goto :goto_7

    :cond_6
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v40, v4

    :goto_7
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v43, v29

    goto :goto_8

    :cond_7
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v43, v4

    :goto_8
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v44, v29

    goto :goto_9

    :cond_8
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v44, v4

    :goto_9
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v45, v29

    goto :goto_a

    :cond_9
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v45, v4

    :goto_a
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move/from16 v4, p1

    move-object/from16 v46, v29

    goto :goto_b

    :cond_a
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v46, v4

    move/from16 v4, p1

    :goto_b
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_b

    move/from16 p1, v5

    move/from16 v63, v6

    move/from16 v5, v16

    move-object/from16 v47, v29

    :goto_c
    move/from16 v16, v7

    goto :goto_d

    :cond_b
    move/from16 p1, v5

    move/from16 v63, v6

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v47, v5

    move/from16 v5, v16

    goto :goto_c

    :goto_d
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    if-eqz v6, :cond_c

    move/from16 v6, v17

    const/16 v48, 0x1

    goto :goto_e

    :cond_c
    move/from16 v6, v17

    const/16 v48, 0x0

    :goto_e
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v7, v18

    move-object/from16 v49, v29

    goto :goto_f

    :cond_d
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v49, v17

    move/from16 v7, v18

    :goto_f
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e

    move/from16 v18, v0

    move/from16 v0, v19

    move-object/from16 v50, v29

    goto :goto_10

    :cond_e
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v50, v18

    move/from16 v18, v0

    move/from16 v0, v19

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v19, v0

    move/from16 v0, v20

    move-object/from16 v51, v29

    goto :goto_11

    :cond_f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v51, v19

    move/from16 v19, v0

    move/from16 v0, v20

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v52

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_10

    move/from16 v64, v0

    move/from16 v21, v4

    move/from16 v65, v5

    move-object/from16 v0, v29

    :goto_12
    move-object/from16 v4, p0

    goto :goto_13

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v64, v0

    move/from16 v65, v5

    move-object/from16 v0, v21

    move/from16 v21, v4

    goto :goto_12

    :goto_13
    iget-object v5, v4, Lcom/transsion/baselib/db/video/d1;->c:Lij/b;

    invoke-virtual {v5, v0}, Lij/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v54

    move/from16 v0, v22

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_11

    move/from16 v5, v23

    move-object/from16 v55, v29

    goto :goto_14

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v55, v5

    move/from16 v5, v23

    :goto_14
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_12

    move/from16 v22, v0

    move/from16 v23, v5

    move/from16 v0, v24

    move-object/from16 v56, v29

    goto :goto_15

    :cond_12
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move/from16 v23, v5

    move-object/from16 v56, v22

    move/from16 v22, v0

    move/from16 v0, v24

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v24, v6

    if-eqz v4, :cond_13

    move/from16 v4, v25

    const/16 v57, 0x1

    goto :goto_16

    :cond_13
    move/from16 v4, v25

    const/16 v57, 0x0

    :goto_16
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v25, v7

    if-eqz v5, :cond_14

    move/from16 v5, v26

    const/16 v58, 0x1

    goto :goto_17

    :cond_14
    move/from16 v5, v26

    const/16 v58, 0x0

    :goto_17
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    if-eqz v6, :cond_15

    move/from16 v6, v27

    const/16 v59, 0x1

    goto :goto_18

    :cond_15
    move/from16 v6, v27

    const/16 v59, 0x0

    :goto_18
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_16

    :goto_19
    move-object/from16 v60, v29

    goto :goto_1a

    :cond_16
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_19

    :goto_1a
    new-instance v7, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-object/from16 v30, v7

    move/from16 v33, v2

    move/from16 v34, v3

    invoke-direct/range {v30 .. v60}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V

    move-object/from16 v2, v61

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v7, v16

    move/from16 v17, v24

    move/from16 v3, v28

    move/from16 v6, v63

    move/from16 v16, v65

    move/from16 v5, p1

    move/from16 v24, v0

    move/from16 v0, v18

    move/from16 p1, v21

    move/from16 v18, v25

    move/from16 v21, v64

    move/from16 v25, v4

    move/from16 v4, v62

    goto/16 :goto_1

    :cond_17
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_1b
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic L(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 60

    move-object/from16 v0, p1

    const-string v1, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE dubs LIKE \'%\' || ? || \'%\' ORDER BY timeStamp DESC LIMIT 1"

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v1, v2}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_19

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "subjectId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "id"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ep"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "se"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "progress"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "coverUrl"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "thumbnail"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "videoUrl"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "subtitleSelectId"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "totalDuration"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "subjectDurationSeconds"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "hasDelete"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "playMode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "downloadUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "downloadFilePath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "downloadSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "dubs"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "rewardPlayed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "rewardUnlock"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "rewardFree"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v27

    const/16 v28, 0x0

    if-eqz v27, :cond_17

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1

    move-object/from16 v30, v28

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v30, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v31, v28

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v31, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v34

    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v36, v28

    goto :goto_3

    :cond_3
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    :goto_3
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v37, v28

    goto :goto_4

    :cond_4
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v4

    :goto_4
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v38, v28

    goto :goto_5

    :cond_5
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v38, v4

    :goto_5
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v39, v28

    goto :goto_6

    :cond_6
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v39, v4

    :goto_6
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v40

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v42, v28

    goto :goto_7

    :cond_7
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v42, v4

    :goto_7
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v43, v28

    goto :goto_8

    :cond_8
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v43, v4

    :goto_8
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v44, v28

    goto :goto_9

    :cond_9
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v44, v4

    :goto_9
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move/from16 v4, p1

    move-object/from16 v45, v28

    goto :goto_a

    :cond_a
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v45, v4

    move/from16 v4, p1

    :goto_a
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_b

    move/from16 v4, v16

    move-object/from16 v46, v28

    goto :goto_b

    :cond_b
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v46, v4

    move/from16 v4, v16

    :goto_b
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    move/from16 v4, v17

    const/16 v47, 0x1

    goto :goto_c

    :cond_c
    move/from16 v47, v5

    move/from16 v4, v17

    :goto_c
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_d

    move/from16 v4, v18

    move-object/from16 v48, v28

    goto :goto_d

    :cond_d
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v48, v4

    move/from16 v4, v18

    :goto_d
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_e

    move/from16 v4, v19

    move-object/from16 v49, v28

    goto :goto_e

    :cond_e
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v49, v4

    move/from16 v4, v19

    :goto_e
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_f

    move/from16 v4, v20

    move-object/from16 v50, v28

    goto :goto_f

    :cond_f
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v50, v4

    move/from16 v4, v20

    :goto_f
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v51

    move/from16 v4, v21

    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_10

    move-object/from16 v6, p0

    move-object/from16 v4, v28

    goto :goto_10

    :cond_10
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p0

    :goto_10
    :try_start_1
    iget-object v7, v6, Lcom/transsion/baselib/db/video/d1;->c:Lij/b;

    invoke-virtual {v7, v4}, Lij/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v53

    move/from16 v4, v22

    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_11

    move/from16 v4, v23

    move-object/from16 v54, v28

    goto :goto_11

    :cond_11
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v54, v4

    move/from16 v4, v23

    :goto_11
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_12

    move/from16 v4, v24

    move-object/from16 v55, v28

    goto :goto_12

    :cond_12
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v55, v4

    move/from16 v4, v24

    :goto_12
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v4, v7

    if-eqz v4, :cond_13

    move/from16 v4, v25

    const/16 v56, 0x1

    goto :goto_13

    :cond_13
    move/from16 v56, v5

    move/from16 v4, v25

    :goto_13
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v4, v7

    if-eqz v4, :cond_14

    move/from16 v4, v26

    const/16 v57, 0x1

    goto :goto_14

    :cond_14
    move/from16 v57, v5

    move/from16 v4, v26

    :goto_14
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v4, v7

    if-eqz v4, :cond_15

    const/16 v58, 0x1

    goto :goto_15

    :cond_15
    move/from16 v58, v5

    :goto_15
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_16

    :goto_16
    move-object/from16 v59, v28

    goto :goto_17

    :cond_16
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    goto :goto_16

    :goto_17
    new-instance v28, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-object/from16 v29, v28

    move/from16 v32, v0

    move/from16 v33, v3

    invoke-direct/range {v29 .. v59}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_18

    :catchall_1
    move-exception v0

    goto :goto_19

    :cond_17
    move-object/from16 v6, p0

    :goto_18
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v28

    :goto_19
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic M(IILz3/b;)Ljava/util/List;
    .locals 65

    const-string v0, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL AND rowid IN (SELECT rowid FROM (SELECT rowid, subjectId, MAX(timeStamp) as maxTimeStamp FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL GROUP BY subjectId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?;"

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    move/from16 v0, p1

    int-to-long v2, v0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const/4 v2, 0x2

    move/from16 v3, p2

    int-to-long v3, v3

    invoke-interface {v1, v2, v3, v4}, Lz3/e;->c(IJ)V

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "id"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ep"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "se"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "progress"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "coverUrl"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "thumbnail"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "videoUrl"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "subtitleSelectId"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "totalDuration"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "subjectDurationSeconds"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v0, "subjectType"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    const-string v0, "hasDelete"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p3, v0

    const-string v0, "playMode"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "downloadUrl"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "downloadFilePath"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "downloadSize"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "dubs"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "lastAdStartTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "lastAdEndTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "rewardPlayed"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "rewardUnlock"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "rewardFree"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "ops"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v27

    if-eqz v27, :cond_16

    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v27

    const/16 v28, 0x0

    if-eqz v27, :cond_0

    move-object/from16 v30, v28

    goto :goto_1

    :cond_0
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v30, v27

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1

    move/from16 v27, v2

    move/from16 v60, v3

    move-object/from16 v31, v28

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v27

    move/from16 v60, v3

    move-object/from16 v31, v27

    move/from16 v27, v2

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v61, v4

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v34

    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v36, v28

    goto :goto_3

    :cond_2
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    :goto_3
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v37, v28

    goto :goto_4

    :cond_3
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v4

    :goto_4
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v38, v28

    goto :goto_5

    :cond_4
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v38, v4

    :goto_5
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v39, v28

    goto :goto_6

    :cond_5
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v39, v4

    :goto_6
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v40

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v42, v28

    goto :goto_7

    :cond_6
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v42, v4

    :goto_7
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v43, v28

    goto :goto_8

    :cond_7
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v43, v4

    :goto_8
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v44, v28

    goto :goto_9

    :cond_8
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v44, v4

    :goto_9
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move/from16 v4, p2

    move-object/from16 v45, v28

    goto :goto_a

    :cond_9
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v45, v4

    move/from16 v4, p2

    :goto_a
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_a

    move/from16 p2, v5

    move/from16 v62, v6

    move-object/from16 v46, v28

    :goto_b
    move/from16 v5, p3

    move/from16 p3, v7

    goto :goto_c

    :cond_a
    move/from16 p2, v5

    move/from16 v62, v6

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v46, v5

    goto :goto_b

    :goto_c
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    if-eqz v6, :cond_b

    move/from16 v6, v16

    const/16 v47, 0x1

    goto :goto_d

    :cond_b
    move/from16 v6, v16

    const/16 v47, 0x0

    :goto_d
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_c

    move/from16 v7, v17

    move-object/from16 v48, v28

    goto :goto_e

    :cond_c
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v48, v16

    move/from16 v7, v17

    :goto_e
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v17, v4

    move/from16 v4, v18

    move-object/from16 v49, v28

    goto :goto_f

    :cond_d
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v49, v17

    move/from16 v17, v4

    move/from16 v4, v18

    :goto_f
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e

    move/from16 v18, v4

    move/from16 v4, v19

    move-object/from16 v50, v28

    goto :goto_10

    :cond_e
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v50, v18

    move/from16 v18, v4

    move/from16 v4, v19

    :goto_10
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v51

    move/from16 v19, v4

    move/from16 v4, v20

    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_f

    move/from16 v63, v4

    move/from16 v20, v5

    move/from16 v64, v6

    move-object/from16 v4, v28

    :goto_11
    move-object/from16 v5, p0

    goto :goto_12

    :cond_f
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v63, v4

    move/from16 v64, v6

    move-object/from16 v4, v20

    move/from16 v20, v5

    goto :goto_11

    :goto_12
    iget-object v6, v5, Lcom/transsion/baselib/db/video/d1;->c:Lij/b;

    invoke-virtual {v6, v4}, Lij/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v53

    move/from16 v4, v21

    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_10

    move/from16 v6, v22

    move-object/from16 v54, v28

    goto :goto_13

    :cond_10
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v54, v6

    move/from16 v6, v22

    :goto_13
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_11

    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v4, v23

    move-object/from16 v55, v28

    goto :goto_14

    :cond_11
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move/from16 v22, v6

    move-object/from16 v55, v21

    move/from16 v21, v4

    move/from16 v4, v23

    :goto_14
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v23, v7

    if-eqz v5, :cond_12

    move/from16 v5, v24

    const/16 v56, 0x1

    goto :goto_15

    :cond_12
    move/from16 v5, v24

    const/16 v56, 0x0

    :goto_15
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move v7, v4

    move/from16 v24, v5

    if-eqz v6, :cond_13

    move/from16 v6, v25

    const/16 v57, 0x1

    goto :goto_16

    :cond_13
    move/from16 v6, v25

    const/16 v57, 0x0

    :goto_16
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_14

    move/from16 v4, v26

    const/16 v58, 0x1

    goto :goto_17

    :cond_14
    move/from16 v4, v26

    const/16 v58, 0x0

    :goto_17
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_15

    :goto_18
    move-object/from16 v59, v28

    goto :goto_19

    :cond_15
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    goto :goto_18

    :goto_19
    new-instance v5, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-object/from16 v29, v5

    move/from16 v32, v2

    move/from16 v33, v3

    invoke-direct/range {v29 .. v59}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v5, p2

    move/from16 v26, v4

    move/from16 v25, v6

    move/from16 p2, v17

    move/from16 v17, v23

    move/from16 v2, v27

    move/from16 v3, v60

    move/from16 v4, v61

    move/from16 v6, v62

    move/from16 v16, v64

    move/from16 v23, v7

    move/from16 v7, p3

    move/from16 p3, v20

    move/from16 v20, v63

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1a

    :cond_16
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v0

    :goto_1a
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic N(Ljava/lang/String;Lz3/b;)Ljava/lang/Long;
    .locals 2

    const-string v0, "SELECT SUM(progress) AS totalProgress FROM VIDEO_DETAIL_PLAY WHERE subjectId = ?"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {p1, v0, p0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lz3/e;->A0()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0}, Lz3/e;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-interface {p1}, Lz3/e;->close()V

    return-object v0

    :goto_2
    invoke-interface {p1}, Lz3/e;->close()V

    throw p0
.end method

.method private synthetic O(IIILz3/b;)Ljava/util/List;
    .locals 64

    const-string v0, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL AND subjectType=? AND subjectDurationSeconds > 0 AND rowid IN (SELECT rowid FROM (SELECT rowid, subjectId, MAX(timeStamp) as maxTimeStamp FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL GROUP BY subjectId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?;"

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    move/from16 v0, p1

    int-to-long v2, v0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const/4 v2, 0x2

    move/from16 v3, p2

    int-to-long v3, v3

    invoke-interface {v1, v2, v3, v4}, Lz3/e;->c(IJ)V

    const/4 v2, 0x3

    move/from16 v3, p3

    int-to-long v3, v3

    invoke-interface {v1, v2, v3, v4}, Lz3/e;->c(IJ)V

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "id"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ep"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "se"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "progress"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "coverUrl"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "thumbnail"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "videoUrl"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "subtitleSelectId"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "totalDuration"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "subjectDurationSeconds"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v0, "subjectType"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    const-string v0, "hasDelete"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p3, v0

    const-string v0, "playMode"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p4, v0

    const-string v0, "downloadUrl"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "downloadFilePath"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "downloadSize"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "dubs"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "lastAdStartTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "lastAdEndTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "rewardPlayed"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "rewardUnlock"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "rewardFree"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "ops"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v26

    if-eqz v26, :cond_16

    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v26

    const/16 v27, 0x0

    if-eqz v26, :cond_0

    move-object/from16 v29, v27

    goto :goto_1

    :cond_0
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v29, v26

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1

    move/from16 v26, v2

    move/from16 v59, v3

    move-object/from16 v30, v27

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v59, v3

    move-object/from16 v30, v26

    move/from16 v26, v2

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v60, v4

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v33

    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v35, v27

    goto :goto_3

    :cond_2
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v35, v4

    :goto_3
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v36, v27

    goto :goto_4

    :cond_3
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    :goto_4
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v37, v27

    goto :goto_5

    :cond_4
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v4

    :goto_5
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v38, v27

    goto :goto_6

    :cond_5
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v38, v4

    :goto_6
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v39

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v41, v27

    goto :goto_7

    :cond_6
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v41, v4

    :goto_7
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v42, v27

    goto :goto_8

    :cond_7
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v42, v4

    :goto_8
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v43, v27

    goto :goto_9

    :cond_8
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v43, v4

    :goto_9
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move/from16 v4, p2

    move-object/from16 v44, v27

    goto :goto_a

    :cond_9
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v44, v4

    move/from16 v4, p2

    :goto_a
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    move/from16 p2, v5

    move/from16 v61, v6

    move-object/from16 v45, v27

    :goto_b
    move/from16 v5, p3

    move/from16 p3, v7

    goto :goto_c

    :cond_a
    move/from16 p2, v5

    move/from16 v61, v6

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v45, v5

    goto :goto_b

    :goto_c
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    if-eqz v6, :cond_b

    move/from16 v6, p4

    const/16 v46, 0x1

    goto :goto_d

    :cond_b
    move/from16 v6, p4

    const/16 v46, 0x0

    :goto_d
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_c

    move/from16 v7, v16

    move-object/from16 v47, v27

    goto :goto_e

    :cond_c
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v7, v16

    move-object/from16 v47, v28

    :goto_e
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v16, v4

    move/from16 v4, v17

    move-object/from16 v48, v27

    goto :goto_f

    :cond_d
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v48, v16

    move/from16 v16, v4

    move/from16 v4, v17

    :goto_f
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v17, v4

    move/from16 v4, v18

    move-object/from16 v49, v27

    goto :goto_10

    :cond_e
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v49, v17

    move/from16 v17, v4

    move/from16 v4, v18

    :goto_10
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v50

    move/from16 v18, v4

    move/from16 v4, v19

    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v62, v4

    move/from16 v19, v5

    move/from16 v63, v6

    move-object/from16 v4, v27

    :goto_11
    move-object/from16 v5, p0

    goto :goto_12

    :cond_f
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v62, v4

    move/from16 v63, v6

    move-object/from16 v4, v19

    move/from16 v19, v5

    goto :goto_11

    :goto_12
    iget-object v6, v5, Lcom/transsion/baselib/db/video/d1;->c:Lij/b;

    invoke-virtual {v6, v4}, Lij/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v52

    move/from16 v4, v20

    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_10

    move/from16 v6, v21

    move-object/from16 v53, v27

    goto :goto_13

    :cond_10
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v53, v6

    move/from16 v6, v21

    :goto_13
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_11

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v4, v22

    move-object/from16 v54, v27

    goto :goto_14

    :cond_11
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move/from16 v21, v6

    move-object/from16 v54, v20

    move/from16 v20, v4

    move/from16 v4, v22

    :goto_14
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v22, v7

    if-eqz v5, :cond_12

    move/from16 v5, v23

    const/16 v55, 0x1

    goto :goto_15

    :cond_12
    move/from16 v5, v23

    const/16 v55, 0x0

    :goto_15
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move v7, v4

    move/from16 v23, v5

    if-eqz v6, :cond_13

    move/from16 v6, v24

    const/16 v56, 0x1

    goto :goto_16

    :cond_13
    move/from16 v6, v24

    const/16 v56, 0x0

    :goto_16
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_14

    move/from16 v4, v25

    const/16 v57, 0x1

    goto :goto_17

    :cond_14
    move/from16 v4, v25

    const/16 v57, 0x0

    :goto_17
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_15

    :goto_18
    move-object/from16 v58, v27

    goto :goto_19

    :cond_15
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_18

    :goto_19
    new-instance v5, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-object/from16 v28, v5

    move/from16 v31, v2

    move/from16 v32, v3

    invoke-direct/range {v28 .. v58}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v5, p2

    move/from16 v25, v4

    move/from16 v24, v6

    move/from16 p2, v16

    move/from16 v16, v22

    move/from16 v2, v26

    move/from16 v3, v59

    move/from16 v4, v60

    move/from16 v6, v61

    move/from16 p4, v63

    move/from16 v22, v7

    move/from16 v7, p3

    move/from16 p3, v19

    move/from16 v19, v62

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1a

    :cond_16
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v0

    :goto_1a
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic P(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic Q(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->e:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic R(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "UPDATE VIDEO_DETAIL_PLAY SET subtitleSelectId = ? WHERE subjectId = ? "

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

.method public static synthetic q(Lcom/transsion/baselib/db/video/d1;Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/video/d1;->J(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/d1;->R(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/transsion/baselib/db/video/d1;IILz3/b;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/d1;->M(IILz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/transsion/baselib/db/video/d1;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/d1;->F(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/transsion/baselib/db/video/d1;Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/d1;->K(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/transsion/baselib/db/video/d1;IILjava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/video/d1;->I(IILjava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/transsion/baselib/db/video/d1;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/d1;->Q(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/transsion/baselib/db/video/d1;IIILz3/b;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/video/d1;->O(IIILz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/baselib/db/video/d1;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/d1;->H(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/baselib/db/video/d1;->G(Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/c1;

    invoke-direct {v1}, Lcom/transsion/baselib/db/video/c1;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/t0;

    invoke-direct {v1, p2, p1}, Lcom/transsion/baselib/db/video/t0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$DefaultImpls;->a(Lcom/transsion/baselib/db/video/VideoDetailPlayDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/w0;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/baselib/db/video/w0;-><init>(Lcom/transsion/baselib/db/video/d1;II)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/a1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/a1;-><init>(Lcom/transsion/baselib/db/video/d1;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;IIJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$DefaultImpls;->c(Lcom/transsion/baselib/db/video/VideoDetailPlayDao;Ljava/lang/String;IIJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/z0;

    invoke-direct {v1, p1}, Lcom/transsion/baselib/db/video/z0;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/s0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/s0;-><init>(Lcom/transsion/baselib/db/video/d1;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/v0;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/transsion/baselib/db/video/v0;-><init>(Lcom/transsion/baselib/db/video/d1;III)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/r0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/r0;-><init>(Lcom/transsion/baselib/db/video/d1;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/x0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/x0;-><init>(Lcom/transsion/baselib/db/video/d1;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/y0;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/transsion/baselib/db/video/y0;-><init>(Lcom/transsion/baselib/db/video/d1;IILjava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/u0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/u0;-><init>(Lcom/transsion/baselib/db/video/d1;Ljava/lang/String;II)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/b1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/b1;-><init>(Lcom/transsion/baselib/db/video/d1;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/baselib/db/video/d1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/q0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/q0;-><init>(Lcom/transsion/baselib/db/video/d1;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$DefaultImpls;->b(Lcom/transsion/baselib/db/video/VideoDetailPlayDao;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
