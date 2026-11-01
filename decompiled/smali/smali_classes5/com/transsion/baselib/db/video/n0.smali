.class public final Lcom/transsion/baselib/db/video/n0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;

.field private final d:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/transsion/baselib/db/video/n0$a;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/n0$a;-><init>(Lcom/transsion/baselib/db/video/n0;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/n0;->b:Landroidx/room/g;

    new-instance p1, Lcom/transsion/baselib/db/video/n0$b;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/n0$b;-><init>(Lcom/transsion/baselib/db/video/n0;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/n0;->c:Landroidx/room/e;

    new-instance p1, Lcom/transsion/baselib/db/video/n0$c;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/n0$c;-><init>(Lcom/transsion/baselib/db/video/n0;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/n0;->d:Landroidx/room/e;

    return-void
.end method

.method public static synthetic A(JLjava/lang/String;JILjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/transsion/baselib/db/video/n0;->f0(JLjava/lang/String;JILjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(IILz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/n0;->c0(IILz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Ljava/lang/String;IILz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/n0;->S(Ljava/lang/String;IILz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(IILz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/n0;->T(IILz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/n0;->X(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/transsion/baselib/db/video/n0;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/n0;->e0(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Ljava/lang/String;IILz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/n0;->b0(Ljava/lang/String;IILz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/n0;->g0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/n0;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/n0;->a0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/baselib/db/video/n0;->Q(Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baselib/db/video/n0;->U(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baselib/db/video/n0;->R(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/n0;->W(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lcom/transsion/baselib/db/video/n0;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/n0;->d0(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static P()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic Q(Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM UGC_VIDEO_DETAIL_PLAY"

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

.method private static synthetic R(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM UGC_VIDEO_DETAIL_PLAY WHERE ugcVideoId=?"

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

.method private static synthetic S(Ljava/lang/String;IILz3/b;)Ljava/util/List;
    .locals 80

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM ugc_video_detail_play WHERE kidId = ? AND coverUrl IS NOT NULL AND collectionId NOT LIKE \'SINGLE_%\' AND rowid IN (SELECT rowid FROM (SELECT rowid, collectionId, MAX(timeStamp) as maxTimeStamp FROM ugc_video_detail_play WHERE kidId = ? AND coverUrl IS NOT NULL AND collectionId NOT LIKE \'SINGLE_%\' GROUP BY collectionId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?"

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

    goto/16 :goto_29

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v3, 0x2

    if-nez v0, :cond_1

    invoke-interface {v1, v3}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v1, v3, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    move/from16 v3, p1

    int-to-long v3, v3

    invoke-interface {v1, v0, v3, v4}, Lz3/e;->c(IJ)V

    const/4 v0, 0x4

    move/from16 v3, p2

    int-to-long v3, v3

    invoke-interface {v1, v0, v3, v4}, Lz3/e;->c(IJ)V

    const-string v0, "collectionId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "ugcVideoId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "progress"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "coverUrl"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "thumbnail"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "position"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "cateLev1Id"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "cateLev2Id"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "cateLev3Id"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "cateLev4Id"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "timeStamp"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "totalDuration"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p2, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "hasDelete"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "playMode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "downloadUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "downloadResid"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "downloadFilePath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "downloadSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "rewardPlayed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "rewardUnlock"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "rewardFree"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "uid"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "userName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "userAvatar"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "description"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "videoStyle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v35

    if-eqz v35, :cond_22

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v35

    const/16 v36, 0x0

    if-eqz v35, :cond_2

    move-object/from16 v38, v36

    goto :goto_3

    :cond_2
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v38, v35

    :goto_3
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_3

    move-object/from16 v39, v36

    goto :goto_4

    :cond_3
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v39, v35

    :goto_4
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v40

    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_4

    move-object/from16 v42, v36

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v42, v35

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_5

    move-object/from16 v43, v36

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v43, v35

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_6

    move/from16 v35, v3

    move/from16 v77, v4

    move-object/from16 v44, v36

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move/from16 v77, v4

    move-object/from16 v44, v35

    move/from16 v35, v3

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v46, v36

    goto :goto_8

    :cond_7
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v46, v4

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move/from16 v78, v5

    move-object/from16 v47, v36

    goto :goto_9

    :cond_8
    move/from16 v78, v5

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v47, v4

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v48, v36

    goto :goto_a

    :cond_9
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v48, v4

    :goto_a
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v49, v36

    goto :goto_b

    :cond_a
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v49, v4

    :goto_b
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v50, v36

    goto :goto_c

    :cond_b
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v50, v4

    :goto_c
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v51

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move/from16 v4, p0

    move-object/from16 v53, v36

    goto :goto_d

    :cond_c
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v53, v4

    move/from16 v4, p0

    :goto_d
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_d

    move/from16 v5, p1

    move-object/from16 v54, v36

    goto :goto_e

    :cond_d
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v54

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v54, v5

    move/from16 v5, p1

    :goto_e
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_e

    move/from16 p0, v0

    move-object/from16 v55, v36

    :goto_f
    move/from16 v0, p2

    goto :goto_10

    :cond_e
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move/from16 p0, v0

    move-object/from16 v55, v37

    goto :goto_f

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_f

    move/from16 p2, v0

    move/from16 v0, v16

    move-object/from16 v56, v36

    goto :goto_11

    :cond_f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    move/from16 p2, v0

    move/from16 v0, v16

    move-object/from16 v56, v37

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_10

    move/from16 v16, v4

    move/from16 p1, v5

    move/from16 v4, v17

    move-object/from16 v57, v36

    :goto_12
    move/from16 v17, v6

    goto :goto_13

    :cond_10
    move/from16 v16, v4

    move/from16 p1, v5

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v57, v4

    move/from16 v4, v17

    goto :goto_12

    :goto_13
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_11

    move/from16 v5, v18

    const/16 v58, 0x1

    goto :goto_14

    :cond_11
    move/from16 v5, v18

    const/16 v58, 0x0

    :goto_14
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_12

    move/from16 v6, v19

    move-object/from16 v59, v36

    goto :goto_15

    :cond_12
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v59, v18

    move/from16 v6, v19

    :goto_15
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_13

    move/from16 v19, v0

    move/from16 v0, v20

    move-object/from16 v60, v36

    goto :goto_16

    :cond_13
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v60, v19

    move/from16 v19, v0

    move/from16 v0, v20

    :goto_16
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_14

    move/from16 v20, v0

    move/from16 v0, v21

    move-object/from16 v61, v36

    goto :goto_17

    :cond_14
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v61, v20

    move/from16 v20, v0

    move/from16 v0, v21

    :goto_17
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move/from16 v21, v0

    move/from16 v0, v22

    move-object/from16 v62, v36

    goto :goto_18

    :cond_15
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v62, v21

    move/from16 v21, v0

    move/from16 v0, v22

    :goto_18
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v63

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_16

    move/from16 v23, v0

    move/from16 v0, v24

    move-object/from16 v65, v36

    goto :goto_19

    :cond_16
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v65

    invoke-static/range {v65 .. v66}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v65, v23

    move/from16 v23, v0

    move/from16 v0, v24

    :goto_19
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_17

    move/from16 v24, v0

    move/from16 v79, v5

    move/from16 v0, v25

    move-object/from16 v66, v36

    :goto_1a
    move/from16 v25, v4

    goto :goto_1b

    :cond_17
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v66

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move/from16 v79, v5

    move-object/from16 v66, v24

    move/from16 v24, v0

    move/from16 v0, v25

    goto :goto_1a

    :goto_1b
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_18

    move/from16 v4, v26

    const/16 v67, 0x1

    :goto_1c
    move/from16 v26, v6

    goto :goto_1d

    :cond_18
    move/from16 v4, v26

    const/16 v67, 0x0

    goto :goto_1c

    :goto_1d
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_19

    move/from16 v5, v27

    const/16 v68, 0x1

    :goto_1e
    move/from16 v27, v7

    goto :goto_1f

    :cond_19
    move/from16 v5, v27

    const/16 v68, 0x0

    goto :goto_1e

    :goto_1f
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    if-eqz v6, :cond_1a

    move/from16 v6, v28

    const/16 v69, 0x1

    goto :goto_20

    :cond_1a
    move/from16 v6, v28

    const/16 v69, 0x0

    :goto_20
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    move/from16 v7, v29

    move-object/from16 v70, v36

    goto :goto_21

    :cond_1b
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v70, v7

    move/from16 v7, v29

    :goto_21
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1c

    move/from16 v18, v0

    move/from16 v0, v30

    move-object/from16 v71, v36

    goto :goto_22

    :cond_1c
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v71, v18

    move/from16 v18, v0

    move/from16 v0, v30

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1d

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v72, v36

    goto :goto_23

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v30, v0

    move-object/from16 v72, v28

    move/from16 v0, v31

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1e

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v73, v36

    goto :goto_24

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v31, v0

    move-object/from16 v73, v28

    move/from16 v0, v32

    :goto_24
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1f

    move/from16 v32, v0

    move/from16 v0, v33

    move-object/from16 v74, v36

    goto :goto_25

    :cond_1f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v32, v0

    move-object/from16 v74, v28

    move/from16 v0, v33

    :goto_25
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_20

    move/from16 v33, v0

    move/from16 v0, v34

    move-object/from16 v75, v36

    goto :goto_26

    :cond_20
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v33, v0

    move-object/from16 v75, v28

    move/from16 v0, v34

    :goto_26
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_21

    :goto_27
    move/from16 v34, v0

    move-object/from16 v76, v36

    goto :goto_28

    :cond_21
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    goto :goto_27

    :goto_28
    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v37, v0

    move/from16 v45, v3

    invoke-direct/range {v37 .. v76}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 p0, v16

    move/from16 v6, v17

    move/from16 v16, v19

    move/from16 v17, v25

    move/from16 v19, v26

    move/from16 v7, v27

    move/from16 v3, v35

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v25, v18

    move/from16 v4, v77

    move/from16 v5, v78

    move/from16 v18, v79

    goto/16 :goto_2

    :cond_22
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_29
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic T(IILz3/b;)Ljava/util/List;
    .locals 83

    const-string v0, "SELECT * FROM ugc_video_detail_play WHERE (kidId IS NULL OR kidId = \'\') AND coverUrl IS NOT NULL AND collectionId NOT LIKE \'SINGLE_%\' AND rowid IN (SELECT rowid FROM (SELECT rowid, collectionId, MAX(timeStamp) as maxTimeStamp FROM ugc_video_detail_play WHERE (kidId IS NULL OR kidId = \'\') AND coverUrl IS NOT NULL AND collectionId NOT LIKE \'SINGLE_%\' GROUP BY collectionId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    move/from16 v0, p0

    int-to-long v2, v0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const/4 v2, 0x2

    move/from16 v3, p1

    int-to-long v3, v3

    invoke-interface {v1, v2, v3, v4}, Lz3/e;->c(IJ)V

    const-string v2, "collectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ugcVideoId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "progress"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "coverUrl"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "thumbnail"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "position"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "cateLev1Id"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "cateLev2Id"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "cateLev3Id"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "cateLev4Id"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "timeStamp"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v0, "totalDuration"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    const-string v0, "subjectDurationSeconds"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    const-string v0, "averageHueLight"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "subjectType"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "hasDelete"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "playMode"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "downloadUrl"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "downloadResid"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "downloadFilePath"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "downloadSize"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "lastAdStartTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "lastAdEndTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "rewardPlayed"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    const-string v0, "rewardUnlock"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    const-string v0, "rewardFree"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    const-string v0, "ops"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    const-string v0, "userName"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v0

    const-string v0, "userAvatar"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v32, v0

    const-string v0, "description"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v33, v0

    const-string v0, "videoStyle"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v34, v0

    const-string v0, "kidId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v35, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v36

    if-eqz v36, :cond_20

    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v36

    const/16 v37, 0x0

    if-eqz v36, :cond_0

    move-object/from16 v39, v37

    goto :goto_1

    :cond_0
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v39, v36

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1

    move-object/from16 v40, v37

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v40, v36

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_2

    move-object/from16 v43, v37

    goto :goto_3

    :cond_2
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v43, v36

    :goto_3
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_3

    move-object/from16 v44, v37

    goto :goto_4

    :cond_3
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v44, v36

    :goto_4
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_4

    move/from16 v36, v2

    move/from16 v78, v3

    move-object/from16 v45, v37

    goto :goto_5

    :cond_4
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move/from16 v78, v3

    move-object/from16 v45, v36

    move/from16 v36, v2

    :goto_5
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v47, v37

    goto :goto_6

    :cond_5
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v47, v3

    :goto_6
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 v79, v4

    move-object/from16 v48, v37

    goto :goto_7

    :cond_6
    move/from16 v79, v4

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v48, v3

    :goto_7
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v49, v37

    goto :goto_8

    :cond_7
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v49, v3

    :goto_8
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v50, v37

    goto :goto_9

    :cond_8
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v50, v3

    :goto_9
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v51, v37

    goto :goto_a

    :cond_9
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v51, v3

    :goto_a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v52

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v3, p1

    move-object/from16 v54, v37

    goto :goto_b

    :cond_a
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v54, v3

    move/from16 v3, p1

    :goto_b
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move/from16 v4, p2

    move-object/from16 v55, v37

    goto :goto_c

    :cond_b
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v55, v4

    move/from16 v4, p2

    :goto_c
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_c

    move/from16 p1, v3

    move/from16 v3, v16

    move-object/from16 v56, v37

    goto :goto_d

    :cond_c
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move/from16 p1, v3

    move/from16 v3, v16

    move-object/from16 v56, v38

    :goto_d
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v16, v3

    move/from16 v3, v17

    move-object/from16 v57, v37

    goto :goto_e

    :cond_d
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v57, v16

    move/from16 v16, v3

    move/from16 v3, v17

    :goto_e
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v17, v4

    move/from16 p2, v5

    move/from16 v4, v18

    move-object/from16 v58, v37

    :goto_f
    move/from16 v18, v6

    goto :goto_10

    :cond_e
    move/from16 v17, v4

    move/from16 p2, v5

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v58, v4

    move/from16 v4, v18

    goto :goto_f

    :goto_10
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_f

    move/from16 v5, v19

    const/16 v59, 0x1

    goto :goto_11

    :cond_f
    move/from16 v5, v19

    const/16 v59, 0x0

    :goto_11
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v6, v20

    move-object/from16 v60, v37

    goto :goto_12

    :cond_10
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v60, v19

    move/from16 v6, v20

    :goto_12
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_11

    move/from16 v20, v3

    move/from16 v3, v21

    move-object/from16 v61, v37

    goto :goto_13

    :cond_11
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v61, v20

    move/from16 v20, v3

    move/from16 v3, v21

    :goto_13
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_12

    move/from16 v21, v3

    move/from16 v3, v22

    move-object/from16 v62, v37

    goto :goto_14

    :cond_12
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v62, v21

    move/from16 v21, v3

    move/from16 v3, v22

    :goto_14
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_13

    move/from16 v22, v3

    move/from16 v3, v23

    move-object/from16 v63, v37

    goto :goto_15

    :cond_13
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v63, v22

    move/from16 v22, v3

    move/from16 v3, v23

    :goto_15
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v64

    move/from16 v23, v3

    move/from16 v3, v24

    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_14

    move/from16 v24, v3

    move/from16 v3, v25

    move-object/from16 v66, v37

    goto :goto_16

    :cond_14
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v66

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v66, v24

    move/from16 v24, v3

    move/from16 v3, v25

    :goto_16
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_15

    move/from16 v25, v3

    move/from16 v80, v5

    move/from16 v3, v26

    move-object/from16 v67, v37

    :goto_17
    move/from16 v26, v4

    goto :goto_18

    :cond_15
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v67

    invoke-static/range {v67 .. v68}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move/from16 v80, v5

    move-object/from16 v67, v25

    move/from16 v25, v3

    move/from16 v3, v26

    goto :goto_17

    :goto_18
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_16

    move/from16 v4, v27

    const/16 v68, 0x1

    :goto_19
    move/from16 v27, v6

    goto :goto_1a

    :cond_16
    move/from16 v4, v27

    const/16 v68, 0x0

    goto :goto_19

    :goto_1a
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move v6, v3

    if-eqz v5, :cond_17

    move/from16 v5, v28

    const/16 v69, 0x1

    :goto_1b
    move/from16 v28, v4

    goto :goto_1c

    :cond_17
    move/from16 v5, v28

    const/16 v69, 0x0

    goto :goto_1b

    :goto_1c
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_18

    move/from16 v3, v29

    const/16 v70, 0x1

    goto :goto_1d

    :cond_18
    move/from16 v3, v29

    const/16 v70, 0x0

    :goto_1d
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_19

    move/from16 v4, v30

    move-object/from16 v71, v37

    goto :goto_1e

    :cond_19
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v71, v4

    move/from16 v4, v30

    :goto_1e
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1a

    move/from16 v29, v3

    move/from16 v3, v31

    move-object/from16 v72, v37

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v29, v3

    move-object/from16 v72, v19

    move/from16 v3, v31

    :goto_1f
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1b

    move/from16 v31, v3

    move/from16 v3, v32

    move-object/from16 v73, v37

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v31, v3

    move-object/from16 v73, v19

    move/from16 v3, v32

    :goto_20
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1c

    move/from16 v32, v3

    move/from16 v3, v33

    move-object/from16 v74, v37

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v32, v3

    move-object/from16 v74, v19

    move/from16 v3, v33

    :goto_21
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1d

    move/from16 v33, v3

    move/from16 v3, v34

    move-object/from16 v75, v37

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v33, v3

    move-object/from16 v75, v19

    move/from16 v3, v34

    :goto_22
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1e

    move/from16 v34, v3

    move/from16 v3, v35

    move-object/from16 v76, v37

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v34, v3

    move-object/from16 v76, v19

    move/from16 v3, v35

    :goto_23
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1f

    :goto_24
    move/from16 v35, v3

    move-object/from16 v77, v37

    goto :goto_25

    :cond_1f
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    goto :goto_24

    :goto_25
    new-instance v3, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v38, v3

    move/from16 v46, v2

    invoke-direct/range {v38 .. v77}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v30, v4

    move/from16 v2, v36

    move/from16 v3, v78

    move/from16 v4, v79

    move/from16 v19, v80

    move/from16 v81, v5

    move/from16 v5, p2

    move/from16 p2, v17

    move/from16 v17, v20

    move/from16 v20, v27

    move/from16 v27, v28

    move/from16 v28, v81

    move/from16 v82, v26

    move/from16 v26, v6

    move/from16 v6, v18

    move/from16 v18, v82

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_26

    :cond_20
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v0

    :goto_26
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic U(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 78

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM UGC_VIDEO_DETAIL_PLAY WHERE ugcVideoId = ? AND collectionId NOT LIKE \'SINGLE_%\' ORDER BY timeStamp DESC LIMIT 1"

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

    goto/16 :goto_22

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "collectionId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "ugcVideoId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "progress"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "coverUrl"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "thumbnail"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "position"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "cateLev1Id"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "cateLev2Id"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "cateLev3Id"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "cateLev4Id"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "timeStamp"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "totalDuration"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "hasDelete"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "playMode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "downloadUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "downloadResid"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "downloadFilePath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "downloadSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "rewardPlayed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "rewardUnlock"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "rewardFree"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "uid"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "userName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "userAvatar"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "description"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "videoStyle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v36

    const/16 v37, 0x0

    if-eqz v36, :cond_21

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1

    move-object/from16 v39, v37

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v39, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v40, v37

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v40, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v43, v37

    goto :goto_3

    :cond_3
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v43, v0

    :goto_3
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v44, v37

    goto :goto_4

    :cond_4
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v44, v0

    :goto_4
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v45, v37

    goto :goto_5

    :cond_5
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v45, v0

    :goto_5
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v47, v37

    goto :goto_6

    :cond_6
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v47, v3

    :goto_6
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v48, v37

    goto :goto_7

    :cond_7
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v48, v3

    :goto_7
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v49, v37

    goto :goto_8

    :cond_8
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v49, v3

    :goto_8
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v50, v37

    goto :goto_9

    :cond_9
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v50, v3

    :goto_9
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v51, v37

    goto :goto_a

    :cond_a
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v51, v3

    :goto_a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v52

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move/from16 v3, p0

    move-object/from16 v54, v37

    goto :goto_b

    :cond_b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v54, v3

    move/from16 v3, p0

    :goto_b
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move/from16 v3, v16

    move-object/from16 v55, v37

    goto :goto_c

    :cond_c
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v55, v3

    move/from16 v3, v16

    :goto_c
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v3, v17

    move-object/from16 v56, v37

    goto :goto_d

    :cond_d
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v56, v3

    move/from16 v3, v17

    :goto_d
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v3, v18

    move-object/from16 v57, v37

    goto :goto_e

    :cond_e
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v57, v3

    move/from16 v3, v18

    :goto_e
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move/from16 v3, v19

    move-object/from16 v58, v37

    goto :goto_f

    :cond_f
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v58, v3

    move/from16 v3, v19

    :goto_f
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    move/from16 v3, v20

    const/16 v59, 0x1

    goto :goto_10

    :cond_10
    move/from16 v59, v4

    move/from16 v3, v20

    :goto_10
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_11

    move/from16 v3, v21

    move-object/from16 v60, v37

    goto :goto_11

    :cond_11
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v60, v3

    move/from16 v3, v21

    :goto_11
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v3, v22

    move-object/from16 v61, v37

    goto :goto_12

    :cond_12
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v61, v3

    move/from16 v3, v22

    :goto_12
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_13

    move/from16 v3, v23

    move-object/from16 v62, v37

    goto :goto_13

    :cond_13
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v62, v3

    move/from16 v3, v23

    :goto_13
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_14

    move/from16 v3, v24

    move-object/from16 v63, v37

    goto :goto_14

    :cond_14
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v63, v3

    move/from16 v3, v24

    :goto_14
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v64

    move/from16 v3, v25

    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_15

    move/from16 v3, v26

    move-object/from16 v66, v37

    goto :goto_15

    :cond_15
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v66, v3

    move/from16 v3, v26

    :goto_15
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v3, v27

    move-object/from16 v67, v37

    goto :goto_16

    :cond_16
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v67, v3

    move/from16 v3, v27

    :goto_16
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    if-eqz v3, :cond_17

    move/from16 v3, v28

    const/16 v68, 0x1

    goto :goto_17

    :cond_17
    move/from16 v68, v4

    move/from16 v3, v28

    :goto_17
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    if-eqz v3, :cond_18

    move/from16 v3, v29

    const/16 v69, 0x1

    goto :goto_18

    :cond_18
    move/from16 v69, v4

    move/from16 v3, v29

    :goto_18
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    if-eqz v3, :cond_19

    move/from16 v3, v30

    const/16 v70, 0x1

    goto :goto_19

    :cond_19
    move/from16 v70, v4

    move/from16 v3, v30

    :goto_19
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    move/from16 v3, v31

    move-object/from16 v71, v37

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v71, v3

    move/from16 v3, v31

    :goto_1a
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    move/from16 v3, v32

    move-object/from16 v72, v37

    goto :goto_1b

    :cond_1b
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v72, v3

    move/from16 v3, v32

    :goto_1b
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    move/from16 v3, v33

    move-object/from16 v73, v37

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v73, v3

    move/from16 v3, v33

    :goto_1c
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    move/from16 v3, v34

    move-object/from16 v74, v37

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v74, v3

    move/from16 v3, v34

    :goto_1d
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move/from16 v3, v35

    move-object/from16 v75, v37

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v75, v3

    move/from16 v3, v35

    :goto_1e
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v76, v37

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v76, v3

    :goto_1f
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_20

    :goto_20
    move-object/from16 v77, v37

    goto :goto_21

    :cond_20
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    goto :goto_20

    :goto_21
    new-instance v37, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v38, v37

    move/from16 v46, v0

    invoke-direct/range {v38 .. v77}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_21
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v37

    :goto_22
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic V(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 78

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM UGC_VIDEO_DETAIL_PLAY WHERE collectionId = ? ORDER BY timeStamp DESC LIMIT 1"

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

    goto/16 :goto_22

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "collectionId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "ugcVideoId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "progress"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "coverUrl"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "thumbnail"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "position"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "cateLev1Id"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "cateLev2Id"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "cateLev3Id"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "cateLev4Id"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "timeStamp"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "totalDuration"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "hasDelete"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "playMode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "downloadUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "downloadResid"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "downloadFilePath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "downloadSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "rewardPlayed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "rewardUnlock"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "rewardFree"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "uid"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "userName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "userAvatar"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "description"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "videoStyle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v36

    const/16 v37, 0x0

    if-eqz v36, :cond_21

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1

    move-object/from16 v39, v37

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v39, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v40, v37

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v40, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v43, v37

    goto :goto_3

    :cond_3
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v43, v0

    :goto_3
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v44, v37

    goto :goto_4

    :cond_4
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v44, v0

    :goto_4
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v45, v37

    goto :goto_5

    :cond_5
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v45, v0

    :goto_5
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v47, v37

    goto :goto_6

    :cond_6
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v47, v3

    :goto_6
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v48, v37

    goto :goto_7

    :cond_7
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v48, v3

    :goto_7
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v49, v37

    goto :goto_8

    :cond_8
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v49, v3

    :goto_8
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v50, v37

    goto :goto_9

    :cond_9
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v50, v3

    :goto_9
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v51, v37

    goto :goto_a

    :cond_a
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v51, v3

    :goto_a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v52

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move/from16 v3, p0

    move-object/from16 v54, v37

    goto :goto_b

    :cond_b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v54, v3

    move/from16 v3, p0

    :goto_b
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move/from16 v3, v16

    move-object/from16 v55, v37

    goto :goto_c

    :cond_c
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v55, v3

    move/from16 v3, v16

    :goto_c
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v3, v17

    move-object/from16 v56, v37

    goto :goto_d

    :cond_d
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v56, v3

    move/from16 v3, v17

    :goto_d
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v3, v18

    move-object/from16 v57, v37

    goto :goto_e

    :cond_e
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v57, v3

    move/from16 v3, v18

    :goto_e
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move/from16 v3, v19

    move-object/from16 v58, v37

    goto :goto_f

    :cond_f
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v58, v3

    move/from16 v3, v19

    :goto_f
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    move/from16 v3, v20

    const/16 v59, 0x1

    goto :goto_10

    :cond_10
    move/from16 v59, v4

    move/from16 v3, v20

    :goto_10
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_11

    move/from16 v3, v21

    move-object/from16 v60, v37

    goto :goto_11

    :cond_11
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v60, v3

    move/from16 v3, v21

    :goto_11
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v3, v22

    move-object/from16 v61, v37

    goto :goto_12

    :cond_12
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v61, v3

    move/from16 v3, v22

    :goto_12
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_13

    move/from16 v3, v23

    move-object/from16 v62, v37

    goto :goto_13

    :cond_13
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v62, v3

    move/from16 v3, v23

    :goto_13
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_14

    move/from16 v3, v24

    move-object/from16 v63, v37

    goto :goto_14

    :cond_14
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v63, v3

    move/from16 v3, v24

    :goto_14
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v64

    move/from16 v3, v25

    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_15

    move/from16 v3, v26

    move-object/from16 v66, v37

    goto :goto_15

    :cond_15
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v66, v3

    move/from16 v3, v26

    :goto_15
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v3, v27

    move-object/from16 v67, v37

    goto :goto_16

    :cond_16
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v67, v3

    move/from16 v3, v27

    :goto_16
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    if-eqz v3, :cond_17

    move/from16 v3, v28

    const/16 v68, 0x1

    goto :goto_17

    :cond_17
    move/from16 v68, v4

    move/from16 v3, v28

    :goto_17
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    if-eqz v3, :cond_18

    move/from16 v3, v29

    const/16 v69, 0x1

    goto :goto_18

    :cond_18
    move/from16 v69, v4

    move/from16 v3, v29

    :goto_18
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    if-eqz v3, :cond_19

    move/from16 v3, v30

    const/16 v70, 0x1

    goto :goto_19

    :cond_19
    move/from16 v70, v4

    move/from16 v3, v30

    :goto_19
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    move/from16 v3, v31

    move-object/from16 v71, v37

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v71, v3

    move/from16 v3, v31

    :goto_1a
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    move/from16 v3, v32

    move-object/from16 v72, v37

    goto :goto_1b

    :cond_1b
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v72, v3

    move/from16 v3, v32

    :goto_1b
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    move/from16 v3, v33

    move-object/from16 v73, v37

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v73, v3

    move/from16 v3, v33

    :goto_1c
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    move/from16 v3, v34

    move-object/from16 v74, v37

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v74, v3

    move/from16 v3, v34

    :goto_1d
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move/from16 v3, v35

    move-object/from16 v75, v37

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v75, v3

    move/from16 v3, v35

    :goto_1e
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v76, v37

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v76, v3

    :goto_1f
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_20

    :goto_20
    move-object/from16 v77, v37

    goto :goto_21

    :cond_20
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    goto :goto_20

    :goto_21
    new-instance v37, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v38, v37

    move/from16 v46, v0

    invoke-direct/range {v38 .. v77}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_21
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v37

    :goto_22
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic W(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 77

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM UGC_VIDEO_DETAIL_PLAY WHERE ugcVideoId = ? AND collectionId = ? ORDER BY timeStamp DESC LIMIT 1"

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v2, v3}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_23

    :cond_0
    invoke-interface {v2, v3, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    if-nez v1, :cond_1

    invoke-interface {v2, v0}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v2, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    const-string v0, "collectionId"

    invoke-static {v2, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v1, "ugcVideoId"

    invoke-static {v2, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v4, "progress"

    invoke-static {v2, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    invoke-static {v2, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "coverUrl"

    invoke-static {v2, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "thumbnail"

    invoke-static {v2, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "position"

    invoke-static {v2, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v2, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "cateLev1Id"

    invoke-static {v2, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "cateLev2Id"

    invoke-static {v2, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "cateLev3Id"

    invoke-static {v2, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "cateLev4Id"

    invoke-static {v2, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "timeStamp"

    invoke-static {v2, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subtitleSelectId"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v3, "totalDuration"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 p0, v3

    const-string v3, "subjectDurationSeconds"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 p1, v3

    const-string v3, "averageHueLight"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "subjectType"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "hasDelete"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "playMode"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "downloadUrl"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "downloadResid"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "downloadFilePath"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "downloadSize"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "lastAdStartTimeStamp"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "lastAdEndTimeStamp"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "rewardPlayed"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "rewardUnlock"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "rewardFree"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "ops"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    const-string v3, "uid"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v30, v3

    const-string v3, "userName"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v31, v3

    const-string v3, "userAvatar"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v32, v3

    const-string v3, "description"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v33, v3

    const-string v3, "videoStyle"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v34, v3

    const-string v3, "kidId"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Lz3/e;->A0()Z

    move-result v35

    const/16 v36, 0x0

    if-eqz v35, :cond_22

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_2

    move-object/from16 v38, v36

    goto :goto_2

    :cond_2
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v38, v0

    :goto_2
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v39, v36

    goto :goto_3

    :cond_3
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v39, v0

    :goto_3
    invoke-interface {v2, v4}, Lz3/e;->getLong(I)J

    move-result-wide v40

    invoke-interface {v2, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v42, v36

    goto :goto_4

    :cond_4
    invoke-interface {v2, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v42, v0

    :goto_4
    invoke-interface {v2, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v43, v36

    goto :goto_5

    :cond_5
    invoke-interface {v2, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v43, v0

    :goto_5
    invoke-interface {v2, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v44, v36

    goto :goto_6

    :cond_6
    invoke-interface {v2, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v44, v0

    :goto_6
    invoke-interface {v2, v8}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {v2, v9}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v46, v36

    goto :goto_7

    :cond_7
    invoke-interface {v2, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v46, v1

    :goto_7
    invoke-interface {v2, v10}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v47, v36

    goto :goto_8

    :cond_8
    invoke-interface {v2, v10}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v47, v1

    :goto_8
    invoke-interface {v2, v11}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v48, v36

    goto :goto_9

    :cond_9
    invoke-interface {v2, v11}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v48, v1

    :goto_9
    invoke-interface {v2, v12}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v49, v36

    goto :goto_a

    :cond_a
    invoke-interface {v2, v12}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v49, v1

    :goto_a
    invoke-interface {v2, v13}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v50, v36

    goto :goto_b

    :cond_b
    invoke-interface {v2, v13}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v50, v1

    :goto_b
    invoke-interface {v2, v14}, Lz3/e;->getLong(I)J

    move-result-wide v51

    invoke-interface {v2, v15}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v1, p0

    move-object/from16 v53, v36

    goto :goto_c

    :cond_c
    invoke-interface {v2, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v53, v1

    move/from16 v1, p0

    :goto_c
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v1, p1

    move-object/from16 v54, v36

    goto :goto_d

    :cond_d
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v54, v1

    move/from16 v1, p1

    :goto_d
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v1, v16

    move-object/from16 v55, v36

    goto :goto_e

    :cond_e
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v55, v1

    move/from16 v1, v16

    :goto_e
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move/from16 v1, v17

    move-object/from16 v56, v36

    goto :goto_f

    :cond_f
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v56, v1

    move/from16 v1, v17

    :goto_f
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move/from16 v1, v18

    move-object/from16 v57, v36

    goto :goto_10

    :cond_10
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v57, v1

    move/from16 v1, v18

    :goto_10
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    const/4 v4, 0x0

    if-eqz v1, :cond_11

    move/from16 v1, v19

    const/16 v58, 0x1

    goto :goto_11

    :cond_11
    move/from16 v58, v4

    move/from16 v1, v19

    :goto_11
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v1, v20

    move-object/from16 v59, v36

    goto :goto_12

    :cond_12
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v59, v1

    move/from16 v1, v20

    :goto_12
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_13

    move/from16 v1, v21

    move-object/from16 v60, v36

    goto :goto_13

    :cond_13
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v60, v1

    move/from16 v1, v21

    :goto_13
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_14

    move/from16 v1, v22

    move-object/from16 v61, v36

    goto :goto_14

    :cond_14
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v61, v1

    move/from16 v1, v22

    :goto_14
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_15

    move/from16 v1, v23

    move-object/from16 v62, v36

    goto :goto_15

    :cond_15
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v62, v1

    move/from16 v1, v23

    :goto_15
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v63

    move/from16 v1, v24

    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v1, v25

    move-object/from16 v65, v36

    goto :goto_16

    :cond_16
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v65, v1

    move/from16 v1, v25

    :goto_16
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_17

    move/from16 v1, v26

    move-object/from16 v66, v36

    goto :goto_17

    :cond_17
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v66, v1

    move/from16 v1, v26

    :goto_17
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v1, v5

    if-eqz v1, :cond_18

    move/from16 v1, v27

    const/16 v67, 0x1

    goto :goto_18

    :cond_18
    move/from16 v67, v4

    move/from16 v1, v27

    :goto_18
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v1, v5

    if-eqz v1, :cond_19

    move/from16 v1, v28

    const/16 v68, 0x1

    goto :goto_19

    :cond_19
    move/from16 v68, v4

    move/from16 v1, v28

    :goto_19
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v1, v5

    if-eqz v1, :cond_1a

    move/from16 v1, v29

    const/16 v69, 0x1

    goto :goto_1a

    :cond_1a
    move/from16 v69, v4

    move/from16 v1, v29

    :goto_1a
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    move/from16 v1, v30

    move-object/from16 v70, v36

    goto :goto_1b

    :cond_1b
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v70, v1

    move/from16 v1, v30

    :goto_1b
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    move/from16 v1, v31

    move-object/from16 v71, v36

    goto :goto_1c

    :cond_1c
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v71, v1

    move/from16 v1, v31

    :goto_1c
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    move/from16 v1, v32

    move-object/from16 v72, v36

    goto :goto_1d

    :cond_1d
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v72, v1

    move/from16 v1, v32

    :goto_1d
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move/from16 v1, v33

    move-object/from16 v73, v36

    goto :goto_1e

    :cond_1e
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v73, v1

    move/from16 v1, v33

    :goto_1e
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    move/from16 v1, v34

    move-object/from16 v74, v36

    goto :goto_1f

    :cond_1f
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v74, v1

    move/from16 v1, v34

    :goto_1f
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v75, v36

    goto :goto_20

    :cond_20
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v75, v1

    :goto_20
    invoke-interface {v2, v3}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_21

    :goto_21
    move-object/from16 v76, v36

    goto :goto_22

    :cond_21
    invoke-interface {v2, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    goto :goto_21

    :goto_22
    new-instance v36, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v37, v36

    move/from16 v45, v0

    invoke-direct/range {v37 .. v76}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_22
    invoke-interface {v2}, Lz3/e;->close()V

    return-object v36

    :goto_23
    invoke-interface {v2}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic X(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 77

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND kidId = ? ORDER BY timeStamp DESC LIMIT 1"

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v2, v3}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_23

    :cond_0
    invoke-interface {v2, v3, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    if-nez v1, :cond_1

    invoke-interface {v2, v0}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v2, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    const-string v0, "collectionId"

    invoke-static {v2, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v1, "ugcVideoId"

    invoke-static {v2, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v4, "progress"

    invoke-static {v2, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    invoke-static {v2, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "coverUrl"

    invoke-static {v2, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "thumbnail"

    invoke-static {v2, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "position"

    invoke-static {v2, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v2, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "cateLev1Id"

    invoke-static {v2, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "cateLev2Id"

    invoke-static {v2, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "cateLev3Id"

    invoke-static {v2, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "cateLev4Id"

    invoke-static {v2, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "timeStamp"

    invoke-static {v2, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subtitleSelectId"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v3, "totalDuration"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 p0, v3

    const-string v3, "subjectDurationSeconds"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 p1, v3

    const-string v3, "averageHueLight"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "subjectType"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "hasDelete"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "playMode"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "downloadUrl"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "downloadResid"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "downloadFilePath"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "downloadSize"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "lastAdStartTimeStamp"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "lastAdEndTimeStamp"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "rewardPlayed"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "rewardUnlock"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "rewardFree"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "ops"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    const-string v3, "uid"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v30, v3

    const-string v3, "userName"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v31, v3

    const-string v3, "userAvatar"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v32, v3

    const-string v3, "description"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v33, v3

    const-string v3, "videoStyle"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v34, v3

    const-string v3, "kidId"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Lz3/e;->A0()Z

    move-result v35

    const/16 v36, 0x0

    if-eqz v35, :cond_22

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_2

    move-object/from16 v38, v36

    goto :goto_2

    :cond_2
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v38, v0

    :goto_2
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v39, v36

    goto :goto_3

    :cond_3
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v39, v0

    :goto_3
    invoke-interface {v2, v4}, Lz3/e;->getLong(I)J

    move-result-wide v40

    invoke-interface {v2, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v42, v36

    goto :goto_4

    :cond_4
    invoke-interface {v2, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v42, v0

    :goto_4
    invoke-interface {v2, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v43, v36

    goto :goto_5

    :cond_5
    invoke-interface {v2, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v43, v0

    :goto_5
    invoke-interface {v2, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v44, v36

    goto :goto_6

    :cond_6
    invoke-interface {v2, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v44, v0

    :goto_6
    invoke-interface {v2, v8}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {v2, v9}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v46, v36

    goto :goto_7

    :cond_7
    invoke-interface {v2, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v46, v1

    :goto_7
    invoke-interface {v2, v10}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v47, v36

    goto :goto_8

    :cond_8
    invoke-interface {v2, v10}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v47, v1

    :goto_8
    invoke-interface {v2, v11}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v48, v36

    goto :goto_9

    :cond_9
    invoke-interface {v2, v11}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v48, v1

    :goto_9
    invoke-interface {v2, v12}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v49, v36

    goto :goto_a

    :cond_a
    invoke-interface {v2, v12}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v49, v1

    :goto_a
    invoke-interface {v2, v13}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v50, v36

    goto :goto_b

    :cond_b
    invoke-interface {v2, v13}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v50, v1

    :goto_b
    invoke-interface {v2, v14}, Lz3/e;->getLong(I)J

    move-result-wide v51

    invoke-interface {v2, v15}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v1, p0

    move-object/from16 v53, v36

    goto :goto_c

    :cond_c
    invoke-interface {v2, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v53, v1

    move/from16 v1, p0

    :goto_c
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v1, p1

    move-object/from16 v54, v36

    goto :goto_d

    :cond_d
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v54, v1

    move/from16 v1, p1

    :goto_d
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v1, v16

    move-object/from16 v55, v36

    goto :goto_e

    :cond_e
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v55, v1

    move/from16 v1, v16

    :goto_e
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move/from16 v1, v17

    move-object/from16 v56, v36

    goto :goto_f

    :cond_f
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v56, v1

    move/from16 v1, v17

    :goto_f
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move/from16 v1, v18

    move-object/from16 v57, v36

    goto :goto_10

    :cond_10
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v57, v1

    move/from16 v1, v18

    :goto_10
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    const/4 v4, 0x0

    if-eqz v1, :cond_11

    move/from16 v1, v19

    const/16 v58, 0x1

    goto :goto_11

    :cond_11
    move/from16 v58, v4

    move/from16 v1, v19

    :goto_11
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v1, v20

    move-object/from16 v59, v36

    goto :goto_12

    :cond_12
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v59, v1

    move/from16 v1, v20

    :goto_12
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_13

    move/from16 v1, v21

    move-object/from16 v60, v36

    goto :goto_13

    :cond_13
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v60, v1

    move/from16 v1, v21

    :goto_13
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_14

    move/from16 v1, v22

    move-object/from16 v61, v36

    goto :goto_14

    :cond_14
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v61, v1

    move/from16 v1, v22

    :goto_14
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_15

    move/from16 v1, v23

    move-object/from16 v62, v36

    goto :goto_15

    :cond_15
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v62, v1

    move/from16 v1, v23

    :goto_15
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v63

    move/from16 v1, v24

    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v1, v25

    move-object/from16 v65, v36

    goto :goto_16

    :cond_16
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v65, v1

    move/from16 v1, v25

    :goto_16
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_17

    move/from16 v1, v26

    move-object/from16 v66, v36

    goto :goto_17

    :cond_17
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v66, v1

    move/from16 v1, v26

    :goto_17
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v1, v5

    if-eqz v1, :cond_18

    move/from16 v1, v27

    const/16 v67, 0x1

    goto :goto_18

    :cond_18
    move/from16 v67, v4

    move/from16 v1, v27

    :goto_18
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v1, v5

    if-eqz v1, :cond_19

    move/from16 v1, v28

    const/16 v68, 0x1

    goto :goto_19

    :cond_19
    move/from16 v68, v4

    move/from16 v1, v28

    :goto_19
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v1, v5

    if-eqz v1, :cond_1a

    move/from16 v1, v29

    const/16 v69, 0x1

    goto :goto_1a

    :cond_1a
    move/from16 v69, v4

    move/from16 v1, v29

    :goto_1a
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    move/from16 v1, v30

    move-object/from16 v70, v36

    goto :goto_1b

    :cond_1b
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v70, v1

    move/from16 v1, v30

    :goto_1b
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    move/from16 v1, v31

    move-object/from16 v71, v36

    goto :goto_1c

    :cond_1c
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v71, v1

    move/from16 v1, v31

    :goto_1c
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    move/from16 v1, v32

    move-object/from16 v72, v36

    goto :goto_1d

    :cond_1d
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v72, v1

    move/from16 v1, v32

    :goto_1d
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move/from16 v1, v33

    move-object/from16 v73, v36

    goto :goto_1e

    :cond_1e
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v73, v1

    move/from16 v1, v33

    :goto_1e
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    move/from16 v1, v34

    move-object/from16 v74, v36

    goto :goto_1f

    :cond_1f
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v74, v1

    move/from16 v1, v34

    :goto_1f
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v75, v36

    goto :goto_20

    :cond_20
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v75, v1

    :goto_20
    invoke-interface {v2, v3}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_21

    :goto_21
    move-object/from16 v76, v36

    goto :goto_22

    :cond_21
    invoke-interface {v2, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    goto :goto_21

    :goto_22
    new-instance v36, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v37, v36

    move/from16 v45, v0

    invoke-direct/range {v37 .. v76}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_22
    invoke-interface {v2}, Lz3/e;->close()V

    return-object v36

    :goto_23
    invoke-interface {v2}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic Y(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 78

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND (kidId IS NULL OR kidId = \'\') ORDER BY timeStamp DESC LIMIT 1"

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

    goto/16 :goto_22

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "collectionId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "ugcVideoId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "progress"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "coverUrl"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "thumbnail"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "position"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "cateLev1Id"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "cateLev2Id"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "cateLev3Id"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "cateLev4Id"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "timeStamp"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "totalDuration"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "hasDelete"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "playMode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "downloadUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "downloadResid"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "downloadFilePath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "downloadSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "rewardPlayed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "rewardUnlock"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "rewardFree"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "uid"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "userName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "userAvatar"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "description"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "videoStyle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v36

    const/16 v37, 0x0

    if-eqz v36, :cond_21

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1

    move-object/from16 v39, v37

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v39, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v40, v37

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v40, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v43, v37

    goto :goto_3

    :cond_3
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v43, v0

    :goto_3
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v44, v37

    goto :goto_4

    :cond_4
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v44, v0

    :goto_4
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v45, v37

    goto :goto_5

    :cond_5
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v45, v0

    :goto_5
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v47, v37

    goto :goto_6

    :cond_6
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v47, v3

    :goto_6
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v48, v37

    goto :goto_7

    :cond_7
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v48, v3

    :goto_7
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v49, v37

    goto :goto_8

    :cond_8
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v49, v3

    :goto_8
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v50, v37

    goto :goto_9

    :cond_9
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v50, v3

    :goto_9
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v51, v37

    goto :goto_a

    :cond_a
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v51, v3

    :goto_a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v52

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move/from16 v3, p0

    move-object/from16 v54, v37

    goto :goto_b

    :cond_b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v54, v3

    move/from16 v3, p0

    :goto_b
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move/from16 v3, v16

    move-object/from16 v55, v37

    goto :goto_c

    :cond_c
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v55, v3

    move/from16 v3, v16

    :goto_c
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v3, v17

    move-object/from16 v56, v37

    goto :goto_d

    :cond_d
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v56, v3

    move/from16 v3, v17

    :goto_d
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v3, v18

    move-object/from16 v57, v37

    goto :goto_e

    :cond_e
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v57, v3

    move/from16 v3, v18

    :goto_e
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move/from16 v3, v19

    move-object/from16 v58, v37

    goto :goto_f

    :cond_f
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v58, v3

    move/from16 v3, v19

    :goto_f
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    move/from16 v3, v20

    const/16 v59, 0x1

    goto :goto_10

    :cond_10
    move/from16 v59, v4

    move/from16 v3, v20

    :goto_10
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_11

    move/from16 v3, v21

    move-object/from16 v60, v37

    goto :goto_11

    :cond_11
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v60, v3

    move/from16 v3, v21

    :goto_11
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v3, v22

    move-object/from16 v61, v37

    goto :goto_12

    :cond_12
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v61, v3

    move/from16 v3, v22

    :goto_12
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_13

    move/from16 v3, v23

    move-object/from16 v62, v37

    goto :goto_13

    :cond_13
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v62, v3

    move/from16 v3, v23

    :goto_13
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_14

    move/from16 v3, v24

    move-object/from16 v63, v37

    goto :goto_14

    :cond_14
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v63, v3

    move/from16 v3, v24

    :goto_14
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v64

    move/from16 v3, v25

    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_15

    move/from16 v3, v26

    move-object/from16 v66, v37

    goto :goto_15

    :cond_15
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v66, v3

    move/from16 v3, v26

    :goto_15
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v3, v27

    move-object/from16 v67, v37

    goto :goto_16

    :cond_16
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v67, v3

    move/from16 v3, v27

    :goto_16
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    if-eqz v3, :cond_17

    move/from16 v3, v28

    const/16 v68, 0x1

    goto :goto_17

    :cond_17
    move/from16 v68, v4

    move/from16 v3, v28

    :goto_17
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    if-eqz v3, :cond_18

    move/from16 v3, v29

    const/16 v69, 0x1

    goto :goto_18

    :cond_18
    move/from16 v69, v4

    move/from16 v3, v29

    :goto_18
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    if-eqz v3, :cond_19

    move/from16 v3, v30

    const/16 v70, 0x1

    goto :goto_19

    :cond_19
    move/from16 v70, v4

    move/from16 v3, v30

    :goto_19
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    move/from16 v3, v31

    move-object/from16 v71, v37

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v71, v3

    move/from16 v3, v31

    :goto_1a
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    move/from16 v3, v32

    move-object/from16 v72, v37

    goto :goto_1b

    :cond_1b
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v72, v3

    move/from16 v3, v32

    :goto_1b
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    move/from16 v3, v33

    move-object/from16 v73, v37

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v73, v3

    move/from16 v3, v33

    :goto_1c
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    move/from16 v3, v34

    move-object/from16 v74, v37

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v74, v3

    move/from16 v3, v34

    :goto_1d
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move/from16 v3, v35

    move-object/from16 v75, v37

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v75, v3

    move/from16 v3, v35

    :goto_1e
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v76, v37

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v76, v3

    :goto_1f
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_20

    :goto_20
    move-object/from16 v77, v37

    goto :goto_21

    :cond_20
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    goto :goto_20

    :goto_21
    new-instance v37, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v38, v37

    move/from16 v46, v0

    invoke-direct/range {v38 .. v77}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_21
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v37

    :goto_22
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 76

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND ugcVideoId = ? AND kidId = ? ORDER BY timeStamp DESC LIMIT 1"

    move-object/from16 v4, p3

    invoke-interface {v4, v3}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v3, v4}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_24

    :cond_0
    invoke-interface {v3, v4, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    if-nez v1, :cond_1

    invoke-interface {v3, v0}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v3, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    if-nez v2, :cond_2

    invoke-interface {v3, v0}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-interface {v3, v0, v2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2
    const-string v0, "collectionId"

    invoke-static {v3, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v1, "ugcVideoId"

    invoke-static {v3, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v2, "progress"

    invoke-static {v3, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v5, "title"

    invoke-static {v3, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "coverUrl"

    invoke-static {v3, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "thumbnail"

    invoke-static {v3, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "position"

    invoke-static {v3, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v3, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "cateLev1Id"

    invoke-static {v3, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "cateLev2Id"

    invoke-static {v3, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "cateLev3Id"

    invoke-static {v3, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "cateLev4Id"

    invoke-static {v3, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "timeStamp"

    invoke-static {v3, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subtitleSelectId"

    invoke-static {v3, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v4, "totalDuration"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 p0, v4

    const-string v4, "subjectDurationSeconds"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 p1, v4

    const-string v4, "averageHueLight"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 p2, v4

    const-string v4, "subjectType"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v4

    const-string v4, "hasDelete"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v17, v4

    const-string v4, "playMode"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    const-string v4, "downloadUrl"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    const-string v4, "downloadResid"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    const-string v4, "downloadFilePath"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    const-string v4, "downloadSize"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "lastAdStartTimeStamp"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    const-string v4, "lastAdEndTimeStamp"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    const-string v4, "rewardPlayed"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v25, v4

    const-string v4, "rewardUnlock"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v26, v4

    const-string v4, "rewardFree"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v27, v4

    const-string v4, "ops"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v28, v4

    const-string v4, "uid"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v29, v4

    const-string v4, "userName"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v30, v4

    const-string v4, "userAvatar"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v31, v4

    const-string v4, "description"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v32, v4

    const-string v4, "videoStyle"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    move/from16 v33, v4

    const-string v4, "kidId"

    invoke-static {v3, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3}, Lz3/e;->A0()Z

    move-result v34

    const/16 v35, 0x0

    if-eqz v34, :cond_23

    invoke-interface {v3, v0}, Lz3/e;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_3

    move-object/from16 v37, v35

    goto :goto_3

    :cond_3
    invoke-interface {v3, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v37, v0

    :goto_3
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v38, v35

    goto :goto_4

    :cond_4
    invoke-interface {v3, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v38, v0

    :goto_4
    invoke-interface {v3, v2}, Lz3/e;->getLong(I)J

    move-result-wide v39

    invoke-interface {v3, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v41, v35

    goto :goto_5

    :cond_5
    invoke-interface {v3, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v41, v0

    :goto_5
    invoke-interface {v3, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v42, v35

    goto :goto_6

    :cond_6
    invoke-interface {v3, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v42, v0

    :goto_6
    invoke-interface {v3, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v43, v35

    goto :goto_7

    :cond_7
    invoke-interface {v3, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v43, v0

    :goto_7
    invoke-interface {v3, v8}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {v3, v9}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v45, v35

    goto :goto_8

    :cond_8
    invoke-interface {v3, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v45, v1

    :goto_8
    invoke-interface {v3, v10}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v46, v35

    goto :goto_9

    :cond_9
    invoke-interface {v3, v10}, Lz3/e;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v46, v1

    :goto_9
    invoke-interface {v3, v11}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v47, v35

    goto :goto_a

    :cond_a
    invoke-interface {v3, v11}, Lz3/e;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v47, v1

    :goto_a
    invoke-interface {v3, v12}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v48, v35

    goto :goto_b

    :cond_b
    invoke-interface {v3, v12}, Lz3/e;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v48, v1

    :goto_b
    invoke-interface {v3, v13}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v49, v35

    goto :goto_c

    :cond_c
    invoke-interface {v3, v13}, Lz3/e;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v49, v1

    :goto_c
    invoke-interface {v3, v14}, Lz3/e;->getLong(I)J

    move-result-wide v50

    invoke-interface {v3, v15}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d

    move/from16 v1, p0

    move-object/from16 v52, v35

    goto :goto_d

    :cond_d
    invoke-interface {v3, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v52, v1

    move/from16 v1, p0

    :goto_d
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_e

    move/from16 v1, p1

    move-object/from16 v53, v35

    goto :goto_e

    :cond_e
    invoke-interface {v3, v1}, Lz3/e;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v53, v1

    move/from16 v1, p1

    :goto_e
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_f

    move/from16 v1, p2

    move-object/from16 v54, v35

    goto :goto_f

    :cond_f
    invoke-interface {v3, v1}, Lz3/e;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v54, v1

    move/from16 v1, p2

    :goto_f
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_10

    move/from16 v1, v16

    move-object/from16 v55, v35

    goto :goto_10

    :cond_10
    invoke-interface {v3, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v55, v1

    move/from16 v1, v16

    :goto_10
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_11

    move/from16 v1, v17

    move-object/from16 v56, v35

    goto :goto_11

    :cond_11
    invoke-interface {v3, v1}, Lz3/e;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v56, v1

    move/from16 v1, v17

    :goto_11
    invoke-interface {v3, v1}, Lz3/e;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    move/from16 v1, v18

    const/16 v57, 0x1

    goto :goto_12

    :cond_12
    move/from16 v57, v2

    move/from16 v1, v18

    :goto_12
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_13

    move/from16 v1, v19

    move-object/from16 v58, v35

    goto :goto_13

    :cond_13
    invoke-interface {v3, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v58, v1

    move/from16 v1, v19

    :goto_13
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_14

    move/from16 v1, v20

    move-object/from16 v59, v35

    goto :goto_14

    :cond_14
    invoke-interface {v3, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v59, v1

    move/from16 v1, v20

    :goto_14
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_15

    move/from16 v1, v21

    move-object/from16 v60, v35

    goto :goto_15

    :cond_15
    invoke-interface {v3, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v60, v1

    move/from16 v1, v21

    :goto_15
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v1, v22

    move-object/from16 v61, v35

    goto :goto_16

    :cond_16
    invoke-interface {v3, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v61, v1

    move/from16 v1, v22

    :goto_16
    invoke-interface {v3, v1}, Lz3/e;->getLong(I)J

    move-result-wide v62

    move/from16 v1, v23

    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_17

    move/from16 v1, v24

    move-object/from16 v64, v35

    goto :goto_17

    :cond_17
    invoke-interface {v3, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v64, v1

    move/from16 v1, v24

    :goto_17
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_18

    move/from16 v1, v25

    move-object/from16 v65, v35

    goto :goto_18

    :cond_18
    invoke-interface {v3, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v65, v1

    move/from16 v1, v25

    :goto_18
    invoke-interface {v3, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v1, v5

    if-eqz v1, :cond_19

    move/from16 v1, v26

    const/16 v66, 0x1

    goto :goto_19

    :cond_19
    move/from16 v66, v2

    move/from16 v1, v26

    :goto_19
    invoke-interface {v3, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v1, v5

    if-eqz v1, :cond_1a

    move/from16 v1, v27

    const/16 v67, 0x1

    goto :goto_1a

    :cond_1a
    move/from16 v67, v2

    move/from16 v1, v27

    :goto_1a
    invoke-interface {v3, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v1, v5

    if-eqz v1, :cond_1b

    move/from16 v1, v28

    const/16 v68, 0x1

    goto :goto_1b

    :cond_1b
    move/from16 v68, v2

    move/from16 v1, v28

    :goto_1b
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    move/from16 v1, v29

    move-object/from16 v69, v35

    goto :goto_1c

    :cond_1c
    invoke-interface {v3, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v69, v1

    move/from16 v1, v29

    :goto_1c
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    move/from16 v1, v30

    move-object/from16 v70, v35

    goto :goto_1d

    :cond_1d
    invoke-interface {v3, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v70, v1

    move/from16 v1, v30

    :goto_1d
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    move/from16 v1, v31

    move-object/from16 v71, v35

    goto :goto_1e

    :cond_1e
    invoke-interface {v3, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v71, v1

    move/from16 v1, v31

    :goto_1e
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    move/from16 v1, v32

    move-object/from16 v72, v35

    goto :goto_1f

    :cond_1f
    invoke-interface {v3, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v72, v1

    move/from16 v1, v32

    :goto_1f
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_20

    move/from16 v1, v33

    move-object/from16 v73, v35

    goto :goto_20

    :cond_20
    invoke-interface {v3, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v73, v1

    move/from16 v1, v33

    :goto_20
    invoke-interface {v3, v1}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v74, v35

    goto :goto_21

    :cond_21
    invoke-interface {v3, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v74, v1

    :goto_21
    invoke-interface {v3, v4}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_22

    :goto_22
    move-object/from16 v75, v35

    goto :goto_23

    :cond_22
    invoke-interface {v3, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    goto :goto_22

    :goto_23
    new-instance v35, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v36, v35

    move/from16 v44, v0

    invoke-direct/range {v36 .. v75}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_23
    invoke-interface {v3}, Lz3/e;->close()V

    return-object v35

    :goto_24
    invoke-interface {v3}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic a0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 77

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND ugcVideoId = ? AND (kidId IS NULL OR kidId = \'\') ORDER BY timeStamp DESC LIMIT 1"

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v2, v3}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_23

    :cond_0
    invoke-interface {v2, v3, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    if-nez v1, :cond_1

    invoke-interface {v2, v0}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v2, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    const-string v0, "collectionId"

    invoke-static {v2, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v1, "ugcVideoId"

    invoke-static {v2, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v4, "progress"

    invoke-static {v2, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    invoke-static {v2, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "coverUrl"

    invoke-static {v2, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "thumbnail"

    invoke-static {v2, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "position"

    invoke-static {v2, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v2, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "cateLev1Id"

    invoke-static {v2, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "cateLev2Id"

    invoke-static {v2, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "cateLev3Id"

    invoke-static {v2, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "cateLev4Id"

    invoke-static {v2, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "timeStamp"

    invoke-static {v2, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subtitleSelectId"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v3, "totalDuration"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 p0, v3

    const-string v3, "subjectDurationSeconds"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 p1, v3

    const-string v3, "averageHueLight"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "subjectType"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "hasDelete"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "playMode"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "downloadUrl"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "downloadResid"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "downloadFilePath"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "downloadSize"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "lastAdStartTimeStamp"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "lastAdEndTimeStamp"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "rewardPlayed"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "rewardUnlock"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "rewardFree"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "ops"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    const-string v3, "uid"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v30, v3

    const-string v3, "userName"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v31, v3

    const-string v3, "userAvatar"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v32, v3

    const-string v3, "description"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v33, v3

    const-string v3, "videoStyle"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v34, v3

    const-string v3, "kidId"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Lz3/e;->A0()Z

    move-result v35

    const/16 v36, 0x0

    if-eqz v35, :cond_22

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_2

    move-object/from16 v38, v36

    goto :goto_2

    :cond_2
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v38, v0

    :goto_2
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v39, v36

    goto :goto_3

    :cond_3
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v39, v0

    :goto_3
    invoke-interface {v2, v4}, Lz3/e;->getLong(I)J

    move-result-wide v40

    invoke-interface {v2, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v42, v36

    goto :goto_4

    :cond_4
    invoke-interface {v2, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v42, v0

    :goto_4
    invoke-interface {v2, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v43, v36

    goto :goto_5

    :cond_5
    invoke-interface {v2, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v43, v0

    :goto_5
    invoke-interface {v2, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v44, v36

    goto :goto_6

    :cond_6
    invoke-interface {v2, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v44, v0

    :goto_6
    invoke-interface {v2, v8}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {v2, v9}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v46, v36

    goto :goto_7

    :cond_7
    invoke-interface {v2, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v46, v1

    :goto_7
    invoke-interface {v2, v10}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v47, v36

    goto :goto_8

    :cond_8
    invoke-interface {v2, v10}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v47, v1

    :goto_8
    invoke-interface {v2, v11}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v48, v36

    goto :goto_9

    :cond_9
    invoke-interface {v2, v11}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v48, v1

    :goto_9
    invoke-interface {v2, v12}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v49, v36

    goto :goto_a

    :cond_a
    invoke-interface {v2, v12}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v49, v1

    :goto_a
    invoke-interface {v2, v13}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v50, v36

    goto :goto_b

    :cond_b
    invoke-interface {v2, v13}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v50, v1

    :goto_b
    invoke-interface {v2, v14}, Lz3/e;->getLong(I)J

    move-result-wide v51

    invoke-interface {v2, v15}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v1, p0

    move-object/from16 v53, v36

    goto :goto_c

    :cond_c
    invoke-interface {v2, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v53, v1

    move/from16 v1, p0

    :goto_c
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v1, p1

    move-object/from16 v54, v36

    goto :goto_d

    :cond_d
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v54, v1

    move/from16 v1, p1

    :goto_d
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v1, v16

    move-object/from16 v55, v36

    goto :goto_e

    :cond_e
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v55, v1

    move/from16 v1, v16

    :goto_e
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move/from16 v1, v17

    move-object/from16 v56, v36

    goto :goto_f

    :cond_f
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v56, v1

    move/from16 v1, v17

    :goto_f
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move/from16 v1, v18

    move-object/from16 v57, v36

    goto :goto_10

    :cond_10
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v57, v1

    move/from16 v1, v18

    :goto_10
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    const/4 v4, 0x0

    if-eqz v1, :cond_11

    move/from16 v1, v19

    const/16 v58, 0x1

    goto :goto_11

    :cond_11
    move/from16 v58, v4

    move/from16 v1, v19

    :goto_11
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v1, v20

    move-object/from16 v59, v36

    goto :goto_12

    :cond_12
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v59, v1

    move/from16 v1, v20

    :goto_12
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_13

    move/from16 v1, v21

    move-object/from16 v60, v36

    goto :goto_13

    :cond_13
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v60, v1

    move/from16 v1, v21

    :goto_13
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_14

    move/from16 v1, v22

    move-object/from16 v61, v36

    goto :goto_14

    :cond_14
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v61, v1

    move/from16 v1, v22

    :goto_14
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_15

    move/from16 v1, v23

    move-object/from16 v62, v36

    goto :goto_15

    :cond_15
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v62, v1

    move/from16 v1, v23

    :goto_15
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v63

    move/from16 v1, v24

    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v1, v25

    move-object/from16 v65, v36

    goto :goto_16

    :cond_16
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v65, v1

    move/from16 v1, v25

    :goto_16
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_17

    move/from16 v1, v26

    move-object/from16 v66, v36

    goto :goto_17

    :cond_17
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v66, v1

    move/from16 v1, v26

    :goto_17
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v1, v5

    if-eqz v1, :cond_18

    move/from16 v1, v27

    const/16 v67, 0x1

    goto :goto_18

    :cond_18
    move/from16 v67, v4

    move/from16 v1, v27

    :goto_18
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v1, v5

    if-eqz v1, :cond_19

    move/from16 v1, v28

    const/16 v68, 0x1

    goto :goto_19

    :cond_19
    move/from16 v68, v4

    move/from16 v1, v28

    :goto_19
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v1, v5

    if-eqz v1, :cond_1a

    move/from16 v1, v29

    const/16 v69, 0x1

    goto :goto_1a

    :cond_1a
    move/from16 v69, v4

    move/from16 v1, v29

    :goto_1a
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    move/from16 v1, v30

    move-object/from16 v70, v36

    goto :goto_1b

    :cond_1b
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v70, v1

    move/from16 v1, v30

    :goto_1b
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    move/from16 v1, v31

    move-object/from16 v71, v36

    goto :goto_1c

    :cond_1c
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v71, v1

    move/from16 v1, v31

    :goto_1c
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    move/from16 v1, v32

    move-object/from16 v72, v36

    goto :goto_1d

    :cond_1d
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v72, v1

    move/from16 v1, v32

    :goto_1d
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move/from16 v1, v33

    move-object/from16 v73, v36

    goto :goto_1e

    :cond_1e
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v73, v1

    move/from16 v1, v33

    :goto_1e
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    move/from16 v1, v34

    move-object/from16 v74, v36

    goto :goto_1f

    :cond_1f
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v74, v1

    move/from16 v1, v34

    :goto_1f
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v75, v36

    goto :goto_20

    :cond_20
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v75, v1

    :goto_20
    invoke-interface {v2, v3}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_21

    :goto_21
    move-object/from16 v76, v36

    goto :goto_22

    :cond_21
    invoke-interface {v2, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    goto :goto_21

    :goto_22
    new-instance v36, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v37, v36

    move/from16 v45, v0

    invoke-direct/range {v37 .. v76}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_22
    invoke-interface {v2}, Lz3/e;->close()V

    return-object v36

    :goto_23
    invoke-interface {v2}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic b0(Ljava/lang/String;IILz3/b;)Ljava/util/List;
    .locals 80

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM ugc_video_detail_play WHERE kidId = ? AND coverUrl IS NOT NULL AND collectionId LIKE \'SINGLE_%\' ORDER BY timeStamp DESC LIMIT ? OFFSET ?"

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

    goto/16 :goto_28

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    move/from16 v3, p1

    int-to-long v3, v3

    invoke-interface {v1, v0, v3, v4}, Lz3/e;->c(IJ)V

    const/4 v0, 0x3

    move/from16 v3, p2

    int-to-long v3, v3

    invoke-interface {v1, v0, v3, v4}, Lz3/e;->c(IJ)V

    const-string v0, "collectionId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "ugcVideoId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "progress"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "coverUrl"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "thumbnail"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "position"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "cateLev1Id"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "cateLev2Id"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "cateLev3Id"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "cateLev4Id"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "timeStamp"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "totalDuration"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p2, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "hasDelete"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "playMode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "downloadUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "downloadResid"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "downloadFilePath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "downloadSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "rewardPlayed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "rewardUnlock"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "rewardFree"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "uid"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "userName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "userAvatar"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "description"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "videoStyle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v35

    if-eqz v35, :cond_21

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v35

    const/16 v36, 0x0

    if-eqz v35, :cond_1

    move-object/from16 v38, v36

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v38, v35

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_2

    move-object/from16 v39, v36

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v39, v35

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v40

    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_3

    move-object/from16 v42, v36

    goto :goto_4

    :cond_3
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v42, v35

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_4

    move-object/from16 v43, v36

    goto :goto_5

    :cond_4
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v43, v35

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_5

    move/from16 v35, v3

    move/from16 v77, v4

    move-object/from16 v44, v36

    goto :goto_6

    :cond_5
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move/from16 v77, v4

    move-object/from16 v44, v35

    move/from16 v35, v3

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v46, v36

    goto :goto_7

    :cond_6
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v46, v4

    :goto_7
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move/from16 v78, v5

    move-object/from16 v47, v36

    goto :goto_8

    :cond_7
    move/from16 v78, v5

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v47, v4

    :goto_8
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v48, v36

    goto :goto_9

    :cond_8
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v48, v4

    :goto_9
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v49, v36

    goto :goto_a

    :cond_9
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v49, v4

    :goto_a
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v50, v36

    goto :goto_b

    :cond_a
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v50, v4

    :goto_b
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v51

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move/from16 v4, p0

    move-object/from16 v53, v36

    goto :goto_c

    :cond_b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v53, v4

    move/from16 v4, p0

    :goto_c
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_c

    move/from16 v5, p1

    move-object/from16 v54, v36

    goto :goto_d

    :cond_c
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v54

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v54, v5

    move/from16 v5, p1

    :goto_d
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_d

    move/from16 p0, v0

    move-object/from16 v55, v36

    :goto_e
    move/from16 v0, p2

    goto :goto_f

    :cond_d
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move/from16 p0, v0

    move-object/from16 v55, v37

    goto :goto_e

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_e

    move/from16 p2, v0

    move/from16 v0, v16

    move-object/from16 v56, v36

    goto :goto_10

    :cond_e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    move/from16 p2, v0

    move/from16 v0, v16

    move-object/from16 v56, v37

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_f

    move/from16 v16, v4

    move/from16 p1, v5

    move/from16 v4, v17

    move-object/from16 v57, v36

    :goto_11
    move/from16 v17, v6

    goto :goto_12

    :cond_f
    move/from16 v16, v4

    move/from16 p1, v5

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v57, v4

    move/from16 v4, v17

    goto :goto_11

    :goto_12
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_10

    move/from16 v5, v18

    const/16 v58, 0x1

    goto :goto_13

    :cond_10
    move/from16 v5, v18

    const/16 v58, 0x0

    :goto_13
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_11

    move/from16 v6, v19

    move-object/from16 v59, v36

    goto :goto_14

    :cond_11
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v59, v18

    move/from16 v6, v19

    :goto_14
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_12

    move/from16 v19, v0

    move/from16 v0, v20

    move-object/from16 v60, v36

    goto :goto_15

    :cond_12
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v60, v19

    move/from16 v19, v0

    move/from16 v0, v20

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_13

    move/from16 v20, v0

    move/from16 v0, v21

    move-object/from16 v61, v36

    goto :goto_16

    :cond_13
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v61, v20

    move/from16 v20, v0

    move/from16 v0, v21

    :goto_16
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v21, v0

    move/from16 v0, v22

    move-object/from16 v62, v36

    goto :goto_17

    :cond_14
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v62, v21

    move/from16 v21, v0

    move/from16 v0, v22

    :goto_17
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v63

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_15

    move/from16 v23, v0

    move/from16 v0, v24

    move-object/from16 v65, v36

    goto :goto_18

    :cond_15
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v65

    invoke-static/range {v65 .. v66}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v65, v23

    move/from16 v23, v0

    move/from16 v0, v24

    :goto_18
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_16

    move/from16 v24, v0

    move/from16 v79, v5

    move/from16 v0, v25

    move-object/from16 v66, v36

    :goto_19
    move/from16 v25, v4

    goto :goto_1a

    :cond_16
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v66

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move/from16 v79, v5

    move-object/from16 v66, v24

    move/from16 v24, v0

    move/from16 v0, v25

    goto :goto_19

    :goto_1a
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_17

    move/from16 v4, v26

    const/16 v67, 0x1

    :goto_1b
    move/from16 v26, v6

    goto :goto_1c

    :cond_17
    move/from16 v4, v26

    const/16 v67, 0x0

    goto :goto_1b

    :goto_1c
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_18

    move/from16 v5, v27

    const/16 v68, 0x1

    :goto_1d
    move/from16 v27, v7

    goto :goto_1e

    :cond_18
    move/from16 v5, v27

    const/16 v68, 0x0

    goto :goto_1d

    :goto_1e
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    if-eqz v6, :cond_19

    move/from16 v6, v28

    const/16 v69, 0x1

    goto :goto_1f

    :cond_19
    move/from16 v6, v28

    const/16 v69, 0x0

    :goto_1f
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    move/from16 v7, v29

    move-object/from16 v70, v36

    goto :goto_20

    :cond_1a
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v70, v7

    move/from16 v7, v29

    :goto_20
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1b

    move/from16 v18, v0

    move/from16 v0, v30

    move-object/from16 v71, v36

    goto :goto_21

    :cond_1b
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v71, v18

    move/from16 v18, v0

    move/from16 v0, v30

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1c

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v72, v36

    goto :goto_22

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v30, v0

    move-object/from16 v72, v28

    move/from16 v0, v31

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1d

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v73, v36

    goto :goto_23

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v31, v0

    move-object/from16 v73, v28

    move/from16 v0, v32

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1e

    move/from16 v32, v0

    move/from16 v0, v33

    move-object/from16 v74, v36

    goto :goto_24

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v32, v0

    move-object/from16 v74, v28

    move/from16 v0, v33

    :goto_24
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1f

    move/from16 v33, v0

    move/from16 v0, v34

    move-object/from16 v75, v36

    goto :goto_25

    :cond_1f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v33, v0

    move-object/from16 v75, v28

    move/from16 v0, v34

    :goto_25
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_20

    :goto_26
    move/from16 v34, v0

    move-object/from16 v76, v36

    goto :goto_27

    :cond_20
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    goto :goto_26

    :goto_27
    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v37, v0

    move/from16 v45, v3

    invoke-direct/range {v37 .. v76}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 p0, v16

    move/from16 v6, v17

    move/from16 v16, v19

    move/from16 v17, v25

    move/from16 v19, v26

    move/from16 v7, v27

    move/from16 v3, v35

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v25, v18

    move/from16 v4, v77

    move/from16 v5, v78

    move/from16 v18, v79

    goto/16 :goto_1

    :cond_21
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_28
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic c0(IILz3/b;)Ljava/util/List;
    .locals 83

    const-string v0, "SELECT * FROM ugc_video_detail_play WHERE (kidId IS NULL OR kidId = \'\') AND coverUrl IS NOT NULL AND collectionId LIKE \'SINGLE_%\' ORDER BY timeStamp DESC LIMIT ? OFFSET ?"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    move/from16 v0, p0

    int-to-long v2, v0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const/4 v2, 0x2

    move/from16 v3, p1

    int-to-long v3, v3

    invoke-interface {v1, v2, v3, v4}, Lz3/e;->c(IJ)V

    const-string v2, "collectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ugcVideoId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "progress"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "coverUrl"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "thumbnail"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "position"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "cateLev1Id"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "cateLev2Id"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "cateLev3Id"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "cateLev4Id"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "timeStamp"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v0, "totalDuration"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    const-string v0, "subjectDurationSeconds"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    const-string v0, "averageHueLight"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "subjectType"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "hasDelete"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "playMode"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "downloadUrl"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "downloadResid"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "downloadFilePath"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "downloadSize"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "lastAdStartTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "lastAdEndTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "rewardPlayed"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    const-string v0, "rewardUnlock"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    const-string v0, "rewardFree"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    const-string v0, "ops"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    const-string v0, "userName"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v0

    const-string v0, "userAvatar"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v32, v0

    const-string v0, "description"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v33, v0

    const-string v0, "videoStyle"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v34, v0

    const-string v0, "kidId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v35, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v36

    if-eqz v36, :cond_20

    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v36

    const/16 v37, 0x0

    if-eqz v36, :cond_0

    move-object/from16 v39, v37

    goto :goto_1

    :cond_0
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v39, v36

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1

    move-object/from16 v40, v37

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v40, v36

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_2

    move-object/from16 v43, v37

    goto :goto_3

    :cond_2
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v43, v36

    :goto_3
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_3

    move-object/from16 v44, v37

    goto :goto_4

    :cond_3
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v44, v36

    :goto_4
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_4

    move/from16 v36, v2

    move/from16 v78, v3

    move-object/from16 v45, v37

    goto :goto_5

    :cond_4
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move/from16 v78, v3

    move-object/from16 v45, v36

    move/from16 v36, v2

    :goto_5
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v47, v37

    goto :goto_6

    :cond_5
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v47, v3

    :goto_6
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 v79, v4

    move-object/from16 v48, v37

    goto :goto_7

    :cond_6
    move/from16 v79, v4

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v48, v3

    :goto_7
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v49, v37

    goto :goto_8

    :cond_7
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v49, v3

    :goto_8
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v50, v37

    goto :goto_9

    :cond_8
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v50, v3

    :goto_9
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v51, v37

    goto :goto_a

    :cond_9
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v51, v3

    :goto_a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v52

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v3, p1

    move-object/from16 v54, v37

    goto :goto_b

    :cond_a
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v54, v3

    move/from16 v3, p1

    :goto_b
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move/from16 v4, p2

    move-object/from16 v55, v37

    goto :goto_c

    :cond_b
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v55, v4

    move/from16 v4, p2

    :goto_c
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_c

    move/from16 p1, v3

    move/from16 v3, v16

    move-object/from16 v56, v37

    goto :goto_d

    :cond_c
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move/from16 p1, v3

    move/from16 v3, v16

    move-object/from16 v56, v38

    :goto_d
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v16, v3

    move/from16 v3, v17

    move-object/from16 v57, v37

    goto :goto_e

    :cond_d
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v57, v16

    move/from16 v16, v3

    move/from16 v3, v17

    :goto_e
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v17, v4

    move/from16 p2, v5

    move/from16 v4, v18

    move-object/from16 v58, v37

    :goto_f
    move/from16 v18, v6

    goto :goto_10

    :cond_e
    move/from16 v17, v4

    move/from16 p2, v5

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v58, v4

    move/from16 v4, v18

    goto :goto_f

    :goto_10
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_f

    move/from16 v5, v19

    const/16 v59, 0x1

    goto :goto_11

    :cond_f
    move/from16 v5, v19

    const/16 v59, 0x0

    :goto_11
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v6, v20

    move-object/from16 v60, v37

    goto :goto_12

    :cond_10
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v60, v19

    move/from16 v6, v20

    :goto_12
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_11

    move/from16 v20, v3

    move/from16 v3, v21

    move-object/from16 v61, v37

    goto :goto_13

    :cond_11
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v61, v20

    move/from16 v20, v3

    move/from16 v3, v21

    :goto_13
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_12

    move/from16 v21, v3

    move/from16 v3, v22

    move-object/from16 v62, v37

    goto :goto_14

    :cond_12
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v62, v21

    move/from16 v21, v3

    move/from16 v3, v22

    :goto_14
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_13

    move/from16 v22, v3

    move/from16 v3, v23

    move-object/from16 v63, v37

    goto :goto_15

    :cond_13
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v63, v22

    move/from16 v22, v3

    move/from16 v3, v23

    :goto_15
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v64

    move/from16 v23, v3

    move/from16 v3, v24

    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_14

    move/from16 v24, v3

    move/from16 v3, v25

    move-object/from16 v66, v37

    goto :goto_16

    :cond_14
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v66

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v66, v24

    move/from16 v24, v3

    move/from16 v3, v25

    :goto_16
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_15

    move/from16 v25, v3

    move/from16 v80, v5

    move/from16 v3, v26

    move-object/from16 v67, v37

    :goto_17
    move/from16 v26, v4

    goto :goto_18

    :cond_15
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v67

    invoke-static/range {v67 .. v68}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move/from16 v80, v5

    move-object/from16 v67, v25

    move/from16 v25, v3

    move/from16 v3, v26

    goto :goto_17

    :goto_18
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_16

    move/from16 v4, v27

    const/16 v68, 0x1

    :goto_19
    move/from16 v27, v6

    goto :goto_1a

    :cond_16
    move/from16 v4, v27

    const/16 v68, 0x0

    goto :goto_19

    :goto_1a
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move v6, v3

    if-eqz v5, :cond_17

    move/from16 v5, v28

    const/16 v69, 0x1

    :goto_1b
    move/from16 v28, v4

    goto :goto_1c

    :cond_17
    move/from16 v5, v28

    const/16 v69, 0x0

    goto :goto_1b

    :goto_1c
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_18

    move/from16 v3, v29

    const/16 v70, 0x1

    goto :goto_1d

    :cond_18
    move/from16 v3, v29

    const/16 v70, 0x0

    :goto_1d
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_19

    move/from16 v4, v30

    move-object/from16 v71, v37

    goto :goto_1e

    :cond_19
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v71, v4

    move/from16 v4, v30

    :goto_1e
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1a

    move/from16 v29, v3

    move/from16 v3, v31

    move-object/from16 v72, v37

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v29, v3

    move-object/from16 v72, v19

    move/from16 v3, v31

    :goto_1f
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1b

    move/from16 v31, v3

    move/from16 v3, v32

    move-object/from16 v73, v37

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v31, v3

    move-object/from16 v73, v19

    move/from16 v3, v32

    :goto_20
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1c

    move/from16 v32, v3

    move/from16 v3, v33

    move-object/from16 v74, v37

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v32, v3

    move-object/from16 v74, v19

    move/from16 v3, v33

    :goto_21
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1d

    move/from16 v33, v3

    move/from16 v3, v34

    move-object/from16 v75, v37

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v33, v3

    move-object/from16 v75, v19

    move/from16 v3, v34

    :goto_22
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1e

    move/from16 v34, v3

    move/from16 v3, v35

    move-object/from16 v76, v37

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v34, v3

    move-object/from16 v76, v19

    move/from16 v3, v35

    :goto_23
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1f

    :goto_24
    move/from16 v35, v3

    move-object/from16 v77, v37

    goto :goto_25

    :cond_1f
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    goto :goto_24

    :goto_25
    new-instance v3, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v38, v3

    move/from16 v46, v2

    invoke-direct/range {v38 .. v77}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v30, v4

    move/from16 v2, v36

    move/from16 v3, v78

    move/from16 v4, v79

    move/from16 v19, v80

    move/from16 v81, v5

    move/from16 v5, p2

    move/from16 p2, v17

    move/from16 v17, v20

    move/from16 v20, v27

    move/from16 v27, v28

    move/from16 v28, v81

    move/from16 v82, v26

    move/from16 v26, v6

    move/from16 v6, v18

    move/from16 v18, v82

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_26

    :cond_20
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v0

    :goto_26
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic d0(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic e0(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->d:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic f0(JLjava/lang/String;JILjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "UPDATE UGC_VIDEO_DETAIL_PLAY SET progress = ?, ugcVideoId= ?, timeStamp =?, position = ? WHERE collectionId = ? "

    invoke-interface {p7, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p7

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p7, v0, p0, p1}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    if-nez p2, :cond_0

    invoke-interface {p7, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {p7, p0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x3

    invoke-interface {p7, p0, p3, p4}, Lz3/e;->c(IJ)V

    const/4 p0, 0x4

    int-to-long p1, p5

    invoke-interface {p7, p0, p1, p2}, Lz3/e;->c(IJ)V

    const/4 p0, 0x5

    if-nez p6, :cond_1

    invoke-interface {p7, p0}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p7, p0, p6}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    invoke-interface {p7}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p7}, Lz3/e;->close()V

    return-object p0

    :goto_2
    invoke-interface {p7}, Lz3/e;->close()V

    throw p0
.end method

.method private static synthetic g0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "UPDATE UGC_VIDEO_DETAIL_PLAY SET subtitleSelectId = ? WHERE collectionId = ? "

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

.method private static synthetic h0(JLjava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "UPDATE UGC_VIDEO_DETAIL_PLAY SET totalDuration = ?, ugcVideoId= ? WHERE collectionId = ? "

    invoke-interface {p4, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p4

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p4, v0, p0, p1}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    if-nez p2, :cond_0

    invoke-interface {p4, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {p4, p0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x3

    if-nez p3, :cond_1

    invoke-interface {p4, p0}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p4, p0, p3}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    invoke-interface {p4}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p4}, Lz3/e;->close()V

    return-object p0

    :goto_2
    invoke-interface {p4}, Lz3/e;->close()V

    throw p0
.end method

.method public static synthetic x(JLjava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/video/n0;->h0(JLjava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baselib/db/video/n0;->V(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baselib/db/video/n0;->Y(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/b0;

    invoke-direct {v1}, Lcom/transsion/baselib/db/video/b0;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/a0;

    invoke-direct {v1, p2, p1}, Lcom/transsion/baselib/db/video/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;->b(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;->c(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v10, Lcom/transsion/baselib/db/video/m0;

    move-object v2, v10

    move-wide/from16 v3, p5

    move-object v5, p2

    move-wide v6, p3

    move/from16 v8, p7

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/transsion/baselib/db/video/m0;-><init>(JLjava/lang/String;JILjava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p8

    invoke-static {v1, v2, v3, v10, v4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public f(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/e0;

    invoke-direct {v1, p2, p1}, Lcom/transsion/baselib/db/video/e0;-><init>(II)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/x;

    invoke-direct {v1, p1}, Lcom/transsion/baselib/db/video/x;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/y;

    invoke-direct {v1, p3, p4, p2, p1}, Lcom/transsion/baselib/db/video/y;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p5}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/v;

    invoke-direct {v1, p3, p2, p1}, Lcom/transsion/baselib/db/video/v;-><init>(Ljava/lang/String;II)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/z;

    invoke-direct {v1, p1}, Lcom/transsion/baselib/db/video/z;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;->e(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Ljava/lang/String;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/l0;

    invoke-direct {v1, p1, p2}, Lcom/transsion/baselib/db/video/l0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/w;

    invoke-direct {v1, p1}, Lcom/transsion/baselib/db/video/w;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;->d(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/h0;

    invoke-direct {v1, p2, p1}, Lcom/transsion/baselib/db/video/h0;-><init>(II)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/f0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/f0;-><init>(Lcom/transsion/baselib/db/video/n0;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/d0;

    invoke-direct {v1, p1, p2}, Lcom/transsion/baselib/db/video/d0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;->a(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/i0;

    invoke-direct {v1, p2, p1}, Lcom/transsion/baselib/db/video/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/c0;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/baselib/db/video/c0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/j0;

    invoke-direct {v1, p1}, Lcom/transsion/baselib/db/video/j0;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public v(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/g0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/g0;-><init>(Lcom/transsion/baselib/db/video/n0;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public w(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/n0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/k0;

    invoke-direct {v1, p3, p2, p1}, Lcom/transsion/baselib/db/video/k0;-><init>(Ljava/lang/String;II)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
