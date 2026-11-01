.class public final Lmu/i;
.super Ljava/lang/Object;

# interfaces
.implements Lmu/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;

.field private final d:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmu/i;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lmu/i$a;

    invoke-direct {p1, p0}, Lmu/i$a;-><init>(Lmu/i;)V

    iput-object p1, p0, Lmu/i;->b:Landroidx/room/g;

    new-instance p1, Lmu/i$b;

    invoke-direct {p1, p0}, Lmu/i$b;-><init>(Lmu/i;)V

    iput-object p1, p0, Lmu/i;->c:Landroidx/room/e;

    new-instance p1, Lmu/i$c;

    invoke-direct {p1, p0}, Lmu/i$c;-><init>(Lmu/i;)V

    iput-object p1, p0, Lmu/i;->d:Landroidx/room/e;

    return-void
.end method

.method public static synthetic h(Lmu/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lz3/b;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lmu/i;->p(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lz3/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lmu/i;->q(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(ILz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lmu/i;->r(ILz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lmu/i;->s(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;ILz3/b;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
    .locals 0

    invoke-static {p0, p1, p2}, Lmu/i;->t(Ljava/lang/String;ILz3/b;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lmu/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lmu/i;->u(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lmu/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lz3/b;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lmu/i;->v(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lz3/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static o()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic p(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lz3/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmu/i;->c:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic q(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM st_download_table WHERE resourceId =?"

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

.method private static synthetic r(ILz3/b;)Ljava/util/List;
    .locals 64

    const-string v0, "SELECT * FROM st_download_table WHERE status = ?"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v0, 0x1

    move/from16 v2, p0

    int-to-long v2, v2

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "resourceStreamType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "lan"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "lanName"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "url"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "size"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "delay"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "downloads"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "type"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "postId"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "subtitleName"

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

    const-string v15, "subjectName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "status"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "fileCharsetName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "path"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "zipPath"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "taskId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "failCount"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "ugcVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "ugcVideoCollectionId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "ops"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v26

    if-eqz v26, :cond_13

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    const/16 v27, 0x0

    if-eqz v26, :cond_0

    move/from16 v26, v14

    move-object/from16 v55, v15

    move-object/from16 v29, v27

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v55, v15

    move-object/from16 v29, v26

    move/from16 v26, v14

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v31, v27

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v31, v15

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v32, v27

    goto :goto_3

    :cond_2
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v32, v15

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v33, v27

    goto :goto_4

    :cond_3
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v33, v15

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v34, v27

    goto :goto_5

    :cond_4
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v34, v15

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v35, v27

    goto :goto_6

    :cond_5
    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v35, v15

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v36, v27

    goto :goto_7

    :cond_6
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v36, v15

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move v15, v2

    move/from16 v56, v3

    move-object/from16 v37, v27

    goto :goto_8

    :cond_7
    move v15, v2

    move/from16 v56, v3

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v37, v2

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v39, v27

    goto :goto_9

    :cond_8
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v39, v3

    :goto_9
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v40, v27

    goto :goto_a

    :cond_9
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v40, v3

    :goto_a
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v57, v5

    move/from16 v3, v26

    move-object/from16 v41, v27

    :goto_b
    move/from16 v26, v4

    goto :goto_c

    :cond_a
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v41, v3

    move/from16 v57, v5

    move/from16 v3, v26

    goto :goto_b

    :goto_c
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    move/from16 p0, v6

    move/from16 v58, v7

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, p1

    move/from16 p1, v8

    move/from16 v59, v9

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v9, v16

    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_b

    move/from16 v16, v0

    move/from16 v60, v9

    move/from16 v0, v17

    move-object/from16 v45, v27

    :goto_d
    move/from16 v17, v10

    goto :goto_e

    :cond_b
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v60, v9

    move-object/from16 v45, v16

    move/from16 v16, v0

    move/from16 v0, v17

    goto :goto_d

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v10, v18

    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_c

    move/from16 v18, v0

    move/from16 v0, v19

    move-object/from16 v47, v27

    goto :goto_f

    :cond_c
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v47, v18

    move/from16 v18, v0

    move/from16 v0, v19

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_d

    move/from16 v19, v0

    move/from16 v0, v20

    move-object/from16 v48, v27

    goto :goto_10

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v48, v19

    move/from16 v19, v0

    move/from16 v0, v20

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_e

    move/from16 v20, v0

    move/from16 v0, v21

    move-object/from16 v49, v27

    goto :goto_11

    :cond_e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v49, v20

    move/from16 v20, v0

    move/from16 v0, v21

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_f

    move/from16 v21, v0

    move/from16 v61, v10

    move/from16 v0, v22

    move-object/from16 v50, v27

    :goto_12
    move/from16 v22, v11

    goto :goto_13

    :cond_f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v61, v10

    move-object/from16 v50, v21

    move/from16 v21, v0

    move/from16 v0, v22

    goto :goto_12

    :goto_13
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v11, v23

    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_10

    move/from16 v23, v0

    move/from16 v0, v24

    move-object/from16 v52, v27

    goto :goto_14

    :cond_10
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v52, v23

    move/from16 v23, v0

    move/from16 v0, v24

    :goto_14
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_11

    move/from16 v24, v0

    move/from16 v0, v25

    move-object/from16 v53, v27

    goto :goto_15

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v53, v24

    move/from16 v24, v0

    move/from16 v0, v25

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_12

    :goto_16
    move/from16 v25, v0

    move-object/from16 v54, v27

    goto :goto_17

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_16

    :goto_17
    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-object/from16 v28, v0

    move/from16 v30, v14

    move/from16 v38, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move/from16 v44, v8

    move/from16 v46, v9

    move/from16 v51, v10

    invoke-direct/range {v28 .. v54}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v55

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v6, p0

    move/from16 v8, p1

    move v14, v3

    move/from16 p0, v5

    move/from16 p1, v7

    move/from16 v0, v16

    move/from16 v10, v17

    move/from16 v17, v18

    move/from16 v4, v26

    move/from16 v3, v56

    move/from16 v5, v57

    move/from16 v7, v58

    move/from16 v9, v59

    move/from16 v16, v60

    move/from16 v18, v61

    move/from16 v62, v15

    move-object v15, v2

    move/from16 v2, v62

    move/from16 v63, v23

    move/from16 v23, v11

    move/from16 v11, v22

    move/from16 v22, v63

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_18

    :cond_13
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_18
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic s(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 64

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM st_download_table WHERE resourceId = ?"

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

    goto/16 :goto_19

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "resourceStreamType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "lan"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "lanName"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "url"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "size"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "delay"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "downloads"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "type"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "postId"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "subtitleName"

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

    const-string v15, "subjectName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "status"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "fileCharsetName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "path"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "zipPath"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "taskId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "failCount"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "ugcVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "ugcVideoCollectionId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "ops"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v26

    if-eqz v26, :cond_14

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    const/16 v27, 0x0

    if-eqz v26, :cond_1

    move/from16 v26, v14

    move-object/from16 v55, v15

    move-object/from16 v29, v27

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v55, v15

    move-object/from16 v29, v26

    move/from16 v26, v14

    :goto_2
    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v31, v27

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v31, v15

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v32, v27

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v32, v15

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v33, v27

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v33, v15

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v34, v27

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v34, v15

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v35, v27

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v35, v15

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v36, v27

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v36, v15

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move v15, v2

    move/from16 v56, v3

    move-object/from16 v37, v27

    goto :goto_9

    :cond_8
    move v15, v2

    move/from16 v56, v3

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v37, v2

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v39, v27

    goto :goto_a

    :cond_9
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v39, v3

    :goto_a
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v40, v27

    goto :goto_b

    :cond_a
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v40, v3

    :goto_b
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move/from16 v57, v5

    move/from16 v3, v26

    move-object/from16 v41, v27

    :goto_c
    move/from16 v26, v4

    goto :goto_d

    :cond_b
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v41, v3

    move/from16 v57, v5

    move/from16 v3, v26

    goto :goto_c

    :goto_d
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    move/from16 p0, v6

    move/from16 v58, v7

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, p1

    move/from16 p1, v8

    move/from16 v59, v9

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v9, v16

    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_c

    move/from16 v16, v0

    move/from16 v60, v9

    move/from16 v0, v17

    move-object/from16 v45, v27

    :goto_e
    move/from16 v17, v10

    goto :goto_f

    :cond_c
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v60, v9

    move-object/from16 v45, v16

    move/from16 v16, v0

    move/from16 v0, v17

    goto :goto_e

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v10, v18

    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_d

    move/from16 v18, v0

    move/from16 v0, v19

    move-object/from16 v47, v27

    goto :goto_10

    :cond_d
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v47, v18

    move/from16 v18, v0

    move/from16 v0, v19

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_e

    move/from16 v19, v0

    move/from16 v0, v20

    move-object/from16 v48, v27

    goto :goto_11

    :cond_e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v48, v19

    move/from16 v19, v0

    move/from16 v0, v20

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_f

    move/from16 v20, v0

    move/from16 v0, v21

    move-object/from16 v49, v27

    goto :goto_12

    :cond_f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v49, v20

    move/from16 v20, v0

    move/from16 v0, v21

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_10

    move/from16 v21, v0

    move/from16 v61, v10

    move/from16 v0, v22

    move-object/from16 v50, v27

    :goto_13
    move/from16 v22, v11

    goto :goto_14

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v61, v10

    move-object/from16 v50, v21

    move/from16 v21, v0

    move/from16 v0, v22

    goto :goto_13

    :goto_14
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v11, v23

    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_11

    move/from16 v23, v0

    move/from16 v0, v24

    move-object/from16 v52, v27

    goto :goto_15

    :cond_11
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v52, v23

    move/from16 v23, v0

    move/from16 v0, v24

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_12

    move/from16 v24, v0

    move/from16 v0, v25

    move-object/from16 v53, v27

    goto :goto_16

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v53, v24

    move/from16 v24, v0

    move/from16 v0, v25

    :goto_16
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_13

    :goto_17
    move/from16 v25, v0

    move-object/from16 v54, v27

    goto :goto_18

    :cond_13
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_17

    :goto_18
    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-object/from16 v28, v0

    move/from16 v30, v14

    move/from16 v38, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move/from16 v44, v8

    move/from16 v46, v9

    move/from16 v51, v10

    invoke-direct/range {v28 .. v54}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v55

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v6, p0

    move/from16 v8, p1

    move v14, v3

    move/from16 p0, v5

    move/from16 p1, v7

    move/from16 v0, v16

    move/from16 v10, v17

    move/from16 v17, v18

    move/from16 v4, v26

    move/from16 v3, v56

    move/from16 v5, v57

    move/from16 v7, v58

    move/from16 v9, v59

    move/from16 v16, v60

    move/from16 v18, v61

    move/from16 v62, v15

    move-object v15, v2

    move/from16 v2, v62

    move/from16 v63, v23

    move/from16 v23, v11

    move/from16 v11, v22

    move/from16 v22, v63

    goto/16 :goto_1

    :cond_14
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_19
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic t(Ljava/lang/String;ILz3/b;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
    .locals 53

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM st_download_table WHERE id = ? AND resourceStreamType = ?"

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

    goto/16 :goto_15

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    move/from16 v2, p1

    int-to-long v2, v2

    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "resourceStreamType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "lan"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "lanName"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "url"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "size"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "delay"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "downloads"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "type"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "postId"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "subtitleName"

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

    const-string v15, "subjectName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p2, v15

    const-string v15, "status"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "fileCharsetName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "path"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "zipPath"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "taskId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "failCount"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "ugcVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "ugcVideoCollectionId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "ops"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v24

    const/16 v25, 0x0

    if-eqz v24, :cond_14

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_1

    move v0, v14

    move/from16 v24, v15

    move-object/from16 v27, v25

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v0

    move v0, v14

    move/from16 v24, v15

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v2, v14

    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v29, v25

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v30, v25

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v3

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v31, v25

    goto :goto_4

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v31, v3

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v32, v25

    goto :goto_5

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v3

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v33, v25

    goto :goto_6

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v33, v3

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v34, v25

    goto :goto_7

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v34, v3

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v35, v25

    goto :goto_8

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v35, v3

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v37, v25

    goto :goto_9

    :cond_9
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v4

    :goto_9
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v38, v25

    goto :goto_a

    :cond_a
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v38, v4

    :goto_a
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v39, v25

    goto :goto_b

    :cond_b
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v39, v4

    :goto_b
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v4, p0

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p1

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p2

    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_c

    move/from16 v6, v16

    move-object/from16 v43, v25

    goto :goto_c

    :cond_c
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v43, v6

    move/from16 v6, v16

    :goto_c
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, v17

    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_d

    move/from16 v7, v18

    move-object/from16 v45, v25

    goto :goto_d

    :cond_d
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v45, v7

    move/from16 v7, v18

    :goto_d
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_e

    move/from16 v7, v19

    move-object/from16 v46, v25

    goto :goto_e

    :cond_e
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v46, v7

    move/from16 v7, v19

    :goto_e
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_f

    move/from16 v7, v20

    move-object/from16 v47, v25

    goto :goto_f

    :cond_f
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v47, v7

    move/from16 v7, v20

    :goto_f
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_10

    move/from16 v7, v21

    move-object/from16 v48, v25

    goto :goto_10

    :cond_10
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v48, v7

    move/from16 v7, v21

    :goto_10
    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v22

    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_11

    move/from16 v8, v23

    move-object/from16 v50, v25

    goto :goto_11

    :cond_11
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v50, v8

    move/from16 v8, v23

    :goto_11
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_12

    move/from16 v8, v24

    move-object/from16 v51, v25

    goto :goto_12

    :cond_12
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v51, v8

    move/from16 v8, v24

    :goto_12
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_13

    :goto_13
    move-object/from16 v52, v25

    goto :goto_14

    :cond_13
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v25

    goto :goto_13

    :goto_14
    new-instance v25, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-object/from16 v26, v25

    move/from16 v28, v2

    move/from16 v36, v3

    move/from16 v40, v0

    move/from16 v41, v4

    move/from16 v42, v5

    move/from16 v44, v6

    move/from16 v49, v7

    invoke-direct/range {v26 .. v52}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_14
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v25

    :goto_15
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic u(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lmu/i;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic v(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lz3/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmu/i;->d:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmu/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmu/b;

    invoke-direct {v1, p1}, Lmu/b;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmu/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmu/h;

    invoke-direct {v1, p1}, Lmu/h;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;I)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
    .locals 2

    iget-object v0, p0, Lmu/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmu/d;

    invoke-direct {v1, p1, p2}, Lmu/d;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    return-object p1
.end method

.method public d(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmu/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmu/e;

    invoke-direct {v1, p1}, Lmu/e;-><init>(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmu/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmu/c;

    invoke-direct {v1, p0, p1}, Lmu/c;-><init>(Lmu/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmu/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmu/f;

    invoke-direct {v1, p0, p1}, Lmu/f;-><init>(Lmu/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public g(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmu/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmu/g;

    invoke-direct {v1, p0, p1}, Lmu/g;-><init>(Lmu/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method
