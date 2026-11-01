.class public final Llj/l0;
.super Ljava/lang/Object;

# interfaces
.implements Llj/c;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;

.field private final d:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Llj/l0$a;

    invoke-direct {p1, p0}, Llj/l0$a;-><init>(Llj/l0;)V

    iput-object p1, p0, Llj/l0;->b:Landroidx/room/g;

    new-instance p1, Llj/l0$b;

    invoke-direct {p1, p0}, Llj/l0$b;-><init>(Llj/l0;)V

    iput-object p1, p0, Llj/l0;->c:Landroidx/room/e;

    new-instance p1, Llj/l0$c;

    invoke-direct {p1, p0}, Llj/l0$c;-><init>(Llj/l0;)V

    iput-object p1, p0, Llj/l0;->d:Landroidx/room/e;

    return-void
.end method

.method private static synthetic A0(Lz3/b;)Ljava/util/List;
    .locals 186

    const-string v0, "SELECT * FROM DOWNLOAD_TABLE WHERE status = 6 OR status = 3 AND fileType == 1 ORDER BY updateTimeStamp DESC "

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "resourceId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "cover"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "size"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "postId"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sizeFormat"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "path"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "updateTimeStamp"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "progress"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "supportRanges"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "status"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "type"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "readProgress"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "createAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "isRead"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "episode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "ep"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "resolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "resourcePosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "multiresolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "videoWidth"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "videoHeight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "downloadErrorCount"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "subtitleStarted"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "subjectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "pageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "lastPageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "subjectName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "lastPlayTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "fileType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "totalEpisode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "uploadBy"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "sourceUrl"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "urlCreateAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "taskId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v39, v15

    const-string v15, "sessionTime"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v40, v15

    const-string v15, "reportStatus"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v41, v15

    const-string v15, "downloadHeaderSize"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v42, v15

    const-string v15, "rootPath"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v43, v15

    const-string v15, "rootPathType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v44, v15

    const-string v15, "thumbnail"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v45, v15

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v46, v15

    const-string v15, "isTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v47, v15

    const-string v15, "isClosedTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v48, v15

    const-string v15, "subjectType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v49, v15

    const-string v15, "genre"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v50, v15

    const-string v15, "subjectDurationSeconds"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v51, v15

    const-string v15, "currentDubLanName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v52, v15

    const-string v15, "currentDubLanCode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v53, v15

    const-string v15, "ops"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v54, v15

    const-string v15, "restrictLevel"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v55, v15

    const-string v15, "releaseDate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v56, v15

    const-string v15, "countryName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v57, v15

    const-string v15, "seNum"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v58, v15

    const-string v15, "subtitles"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v59, v15

    const-string v15, "imdbRate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v60, v15

    const-string v15, "lastAdStartTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v61, v15

    const-string v15, "lastAdEndTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v62, v15

    const-string v15, "subtitleIdType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v63, v15

    const-string v15, "ugcVideoCollectionId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v64, v15

    const-string v15, "ugcVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v65, v15

    const-string v15, "ugcVideoName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v66, v15

    const-string v15, "ugcVideoCollectionName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v67, v15

    const-string v15, "ugcVideoPosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v68, v15

    const-string v15, "ugcVideoType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v69, v15

    const-string v15, "ugcCateLev1Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v70, v15

    const-string v15, "ugcCateLev2Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v71, v15

    const-string v15, "ugcCateLev3Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v72, v15

    const-string v15, "ugcCateLev4Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v73, v15

    const-string v15, "ugcVideoTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v74, v15

    const-string v15, "ugcVideoParentVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v75, v15

    const-string v15, "ugcVideoParentTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v76, v15

    const-string v15, "ugcVideoEpTitle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v77, v15

    const-string v15, "ugcVideoIsVertical"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v78, v15

    const-string v15, "originData"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v79, v15

    const-string v15, "kidId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v80, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_36

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_0

    move-object/from16 v84, v82

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_1

    move-object/from16 v85, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v86, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v87, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v88, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v89, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v90, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v91, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v92, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v93, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v2

    move/from16 v171, v3

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v172, v4

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v173, v5

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 p0, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v0

    move/from16 v174, v5

    move/from16 v0, v17

    move/from16 v17, v6

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v175, v8

    move/from16 v6, v18

    move/from16 v18, v7

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v176, v10

    move/from16 v8, v19

    move/from16 v19, v9

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v177, v12

    move/from16 v10, v20

    move/from16 v20, v11

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v178, v14

    move/from16 v12, v21

    move/from16 v21, v13

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v107, v13

    move/from16 v14, v22

    move/from16 v22, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v179, v14

    move/from16 v13, v23

    move-object/from16 v23, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v109, v14

    move/from16 v15, v24

    move/from16 v24, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v110, v13

    move/from16 v14, v25

    move/from16 v25, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v180, v14

    move/from16 v13, v26

    move/from16 v26, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v112, v14

    move/from16 v15, v27

    move/from16 v27, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v28

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v114, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v0

    move/from16 v0, v29

    :goto_b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_b

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v115, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v0

    move/from16 v0, v30

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_c

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v116, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v0

    move/from16 v0, v31

    :goto_d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_d

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v117, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v0

    move/from16 v0, v32

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v0

    move/from16 v181, v14

    move/from16 v0, v33

    move/from16 v33, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v120, v14

    move/from16 v15, v34

    move/from16 v34, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v35

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_e

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v122, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v0

    move/from16 v0, v36

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_f

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v123, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v0

    move/from16 v0, v37

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_10

    move/from16 v38, v0

    move/from16 v0, v39

    move-object/from16 v126, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v0

    move/from16 v0, v39

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_11

    move/from16 v39, v0

    move/from16 v0, v40

    move-object/from16 v127, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v0

    move/from16 v0, v40

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v0

    move/from16 v182, v14

    move/from16 v0, v41

    move/from16 v41, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v0

    move/from16 v0, v43

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_12

    move/from16 v43, v0

    move/from16 v183, v15

    move/from16 v0, v44

    move-object/from16 v133, v82

    :goto_13
    move/from16 v44, v14

    goto :goto_14

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v183, v15

    move-object/from16 v133, v43

    move/from16 v43, v0

    move/from16 v0, v44

    goto :goto_13

    :goto_14
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_13

    move/from16 v45, v0

    move/from16 v0, v46

    move-object/from16 v135, v82

    goto :goto_15

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v0

    move/from16 v0, v46

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_14

    move/from16 v46, v0

    move/from16 v184, v15

    move/from16 v0, v47

    move-object/from16 v136, v82

    :goto_16
    move/from16 v47, v14

    goto :goto_17

    :cond_14
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v184, v15

    move-object/from16 v136, v46

    move/from16 v46, v0

    move/from16 v0, v47

    goto :goto_16

    :goto_17
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    const/16 v83, 0x1

    move/from16 v121, v13

    if-eqz v14, :cond_15

    move/from16 v14, v48

    move/from16 v137, v83

    :goto_18
    move/from16 v48, v12

    goto :goto_19

    :cond_15
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_18

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    if-eqz v12, :cond_16

    move/from16 v12, v49

    move/from16 v138, v83

    :goto_1a
    move/from16 v49, v14

    goto :goto_1b

    :cond_16
    move/from16 v12, v49

    const/16 v138, 0x0

    goto :goto_1a

    :goto_1b
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v50

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_17

    move/from16 v15, v51

    move-object/from16 v140, v82

    goto :goto_1c

    :cond_17
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v15, v51

    :goto_1c
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_18

    move/from16 v51, v12

    move/from16 v139, v13

    move/from16 v12, v52

    move-object/from16 v141, v82

    goto :goto_1d

    :cond_18
    move/from16 v51, v12

    move/from16 v139, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v141, v12

    move/from16 v12, v52

    :goto_1d
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_19

    move/from16 v13, v53

    move-object/from16 v142, v82

    goto :goto_1e

    :cond_19
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v142, v13

    move/from16 v13, v53

    :goto_1e
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1a

    move/from16 v52, v0

    move/from16 v0, v54

    move-object/from16 v143, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v0

    move/from16 v0, v54

    :goto_1f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1b

    move/from16 v54, v0

    move/from16 v0, v55

    move-object/from16 v144, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v0

    move-object/from16 v144, v53

    move/from16 v0, v55

    :goto_20
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v55, v0

    move/from16 v0, v56

    move-object/from16 v145, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v0

    move-object/from16 v145, v53

    move/from16 v0, v56

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v56, v0

    move/from16 v0, v57

    move-object/from16 v146, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v0

    move-object/from16 v146, v53

    move/from16 v0, v57

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v57, v0

    move/from16 v0, v58

    move-object/from16 v147, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v0

    move-object/from16 v147, v53

    move/from16 v0, v58

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v53, v12

    move/from16 v58, v13

    move/from16 v12, v59

    move-object/from16 v148, v82

    goto :goto_24

    :cond_1f
    move/from16 v53, v12

    move/from16 v58, v13

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v148, v12

    move/from16 v12, v59

    :goto_24
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_20

    move/from16 v13, v60

    move-object/from16 v149, v82

    goto :goto_25

    :cond_20
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v149, v13

    move/from16 v13, v60

    :goto_25
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_21

    move/from16 v59, v0

    move/from16 v0, v61

    move-object/from16 v150, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v0

    move/from16 v0, v61

    :goto_26
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_22

    move/from16 v61, v0

    move/from16 v0, v62

    move-object/from16 v151, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v0

    move-object/from16 v151, v60

    move/from16 v0, v62

    :goto_27
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v62, v0

    move/from16 v0, v63

    move-object/from16 v152, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v0

    move-object/from16 v152, v60

    move/from16 v0, v63

    :goto_28
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v63, v0

    move/from16 v0, v64

    move-object/from16 v153, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v0

    move-object/from16 v153, v60

    move/from16 v0, v64

    :goto_29
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v64, v0

    move/from16 v0, v65

    move-object/from16 v154, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v0

    move-object/from16 v154, v60

    move/from16 v0, v65

    :goto_2a
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v65, v0

    move/from16 v0, v66

    move-object/from16 v155, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v0

    move-object/from16 v155, v60

    move/from16 v0, v66

    :goto_2b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v66, v0

    move/from16 v0, v67

    move-object/from16 v156, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v0

    move-object/from16 v156, v60

    move/from16 v0, v67

    :goto_2c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v67, v0

    move/from16 v0, v68

    move-object/from16 v157, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v0

    move-object/from16 v157, v60

    move/from16 v0, v68

    :goto_2d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v60, v12

    move/from16 v68, v13

    move/from16 v12, v69

    move-object/from16 v158, v82

    goto :goto_2e

    :cond_29
    move/from16 v60, v12

    move/from16 v68, v13

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v158, v12

    move/from16 v12, v69

    :goto_2e
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2a

    move/from16 v13, v70

    move-object/from16 v159, v82

    goto :goto_2f

    :cond_2a
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v159, v13

    move/from16 v13, v70

    :goto_2f
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2b

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_30

    :cond_2b
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move v15, v12

    move/from16 v71, v13

    move/from16 v12, v72

    move-object/from16 v161, v82

    goto :goto_31

    :cond_2c
    move v15, v12

    move/from16 v71, v13

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v161, v12

    move/from16 v12, v72

    :goto_31
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2d

    move/from16 v72, v14

    move/from16 v13, v73

    move-object/from16 v162, v82

    goto :goto_32

    :cond_2d
    move/from16 v72, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v162, v13

    move/from16 v13, v73

    :goto_32
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2e

    move/from16 v73, v15

    move/from16 v14, v74

    move-object/from16 v163, v82

    goto :goto_33

    :cond_2e
    move/from16 v73, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v74

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v15, v75

    move-object/from16 v164, v82

    goto :goto_34

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v164, v15

    move/from16 v15, v75

    :goto_34
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_30

    move/from16 v74, v0

    move/from16 v0, v76

    move-object/from16 v165, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v0

    move/from16 v0, v76

    :goto_35
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_31

    move/from16 v76, v0

    move/from16 v0, v77

    move-object/from16 v166, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v0

    move-object/from16 v166, v75

    move/from16 v0, v77

    :goto_36
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v77, v0

    move/from16 v75, v12

    move/from16 v0, v78

    move-object/from16 v167, v82

    :goto_37
    move/from16 v78, v13

    goto :goto_38

    :cond_32
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v0

    move-object/from16 v167, v75

    move/from16 v0, v78

    move/from16 v75, v12

    goto :goto_37

    :goto_38
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    if-eqz v12, :cond_33

    move/from16 v12, v79

    move/from16 v168, v83

    goto :goto_39

    :cond_33
    move/from16 v12, v79

    const/16 v168, 0x0

    :goto_39
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_34

    move/from16 v13, v80

    move-object/from16 v169, v82

    goto :goto_3a

    :cond_34
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v169, v13

    move/from16 v13, v80

    :goto_3a
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_35

    :goto_3b
    move/from16 v50, v0

    move-object/from16 v170, v82

    goto :goto_3c

    :cond_35
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3b

    :goto_3c
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v0

    move/from16 v96, v2

    move/from16 v97, v3

    move/from16 v98, v4

    move/from16 v103, v5

    move/from16 v104, v7

    move/from16 v105, v9

    move/from16 v106, v11

    move/from16 v108, v25

    move/from16 v111, v48

    move/from16 v113, v34

    move/from16 v130, v44

    move/from16 v134, v47

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v23

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v79, v12

    move/from16 v80, v13

    move/from16 v7, v18

    move/from16 v9, v19

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v21, v22

    move/from16 v23, v24

    move/from16 v24, v26

    move/from16 v26, v27

    move/from16 v27, v33

    move/from16 v33, v35

    move/from16 v34, v41

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v49, v51

    move/from16 v47, v52

    move/from16 v52, v53

    move/from16 v53, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v51, v70

    move/from16 v70, v71

    move/from16 v71, v72

    move/from16 v68, v74

    move/from16 v72, v75

    move/from16 v3, v171

    move/from16 v4, v172

    move/from16 v5, v173

    move/from16 p0, v174

    move/from16 v12, v177

    move/from16 v22, v179

    move/from16 v25, v180

    move/from16 v35, v182

    move/from16 v42, v183

    move/from16 v45, v184

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v74, v14

    move/from16 v75, v15

    move/from16 v6, v17

    move/from16 v17, v28

    move/from16 v8, v175

    move/from16 v10, v176

    move/from16 v14, v178

    move/from16 v28, v181

    move-object v15, v2

    move/from16 v2, v81

    move/from16 v185, v78

    move/from16 v78, v50

    move/from16 v50, v69

    move/from16 v69, v73

    move/from16 v73, v185

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3d

    :cond_36
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_3d
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic B0(Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 170

    const-string v0, "SELECT * FROM DOWNLOAD_TABLE WHERE status ==5 AND fileType == 1 AND type != 1 ORDER BY updateTimeStamp DESC LIMIT 1"

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "resourceId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "cover"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "size"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "postId"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sizeFormat"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "path"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "updateTimeStamp"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "progress"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "supportRanges"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "status"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "type"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "readProgress"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "createAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "isRead"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "episode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "ep"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "resolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "resourcePosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "multiresolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "videoWidth"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "videoHeight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "downloadErrorCount"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "subtitleStarted"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "subjectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "pageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "lastPageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "subjectName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "lastPlayTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "fileType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "totalEpisode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "uploadBy"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "sourceUrl"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "urlCreateAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "taskId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v39, v15

    const-string v15, "sessionTime"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v40, v15

    const-string v15, "reportStatus"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v41, v15

    const-string v15, "downloadHeaderSize"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v42, v15

    const-string v15, "rootPath"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v43, v15

    const-string v15, "rootPathType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v44, v15

    const-string v15, "thumbnail"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v45, v15

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v46, v15

    const-string v15, "isTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v47, v15

    const-string v15, "isClosedTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v48, v15

    const-string v15, "subjectType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v49, v15

    const-string v15, "genre"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v50, v15

    const-string v15, "subjectDurationSeconds"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v51, v15

    const-string v15, "currentDubLanName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v52, v15

    const-string v15, "currentDubLanCode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v53, v15

    const-string v15, "ops"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v54, v15

    const-string v15, "restrictLevel"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v55, v15

    const-string v15, "releaseDate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v56, v15

    const-string v15, "countryName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v57, v15

    const-string v15, "seNum"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v58, v15

    const-string v15, "subtitles"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v59, v15

    const-string v15, "imdbRate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v60, v15

    const-string v15, "lastAdStartTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v61, v15

    const-string v15, "lastAdEndTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v62, v15

    const-string v15, "subtitleIdType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v63, v15

    const-string v15, "ugcVideoCollectionId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v64, v15

    const-string v15, "ugcVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v65, v15

    const-string v15, "ugcVideoName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v66, v15

    const-string v15, "ugcVideoCollectionName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v67, v15

    const-string v15, "ugcVideoPosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v68, v15

    const-string v15, "ugcVideoType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v69, v15

    const-string v15, "ugcCateLev1Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v70, v15

    const-string v15, "ugcCateLev2Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v71, v15

    const-string v15, "ugcCateLev3Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v72, v15

    const-string v15, "ugcCateLev4Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v73, v15

    const-string v15, "ugcVideoTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v74, v15

    const-string v15, "ugcVideoParentVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v75, v15

    const-string v15, "ugcVideoParentTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v76, v15

    const-string v15, "ugcVideoEpTitle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v77, v15

    const-string v15, "ugcVideoIsVertical"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v78, v15

    const-string v15, "originData"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v79, v15

    const-string v15, "kidId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v80

    const/16 v81, 0x0

    if-eqz v80, :cond_36

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v80

    if-eqz v80, :cond_0

    move-object/from16 v83, v81

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v83, v0

    :goto_0
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v84, v81

    goto :goto_1

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v84, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v85, v81

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v85, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v86, v81

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v86, v0

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v87, v81

    goto :goto_4

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v87, v0

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v88, v81

    goto :goto_5

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v88, v0

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v89, v81

    goto :goto_6

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v89, v0

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v90, v81

    goto :goto_7

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v90, v0

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v91, v81

    goto :goto_8

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v91, v0

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v92, v81

    goto :goto_9

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v92, v0

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v4, p0

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v98

    move/from16 v4, v16

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v100

    move/from16 v4, v17

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v18

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, v19

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, v20

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v21

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v9, v22

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v10, v23

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v11, v24

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v25

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v13, v26

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v16, v13

    move/from16 v14, v27

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v28

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_a

    move/from16 v14, v29

    move-object/from16 v113, v81

    goto :goto_a

    :cond_a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v113, v14

    move/from16 v14, v29

    :goto_a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v14, v30

    move-object/from16 v114, v81

    goto :goto_b

    :cond_b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v114, v14

    move/from16 v14, v30

    :goto_b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v14, v31

    move-object/from16 v115, v81

    goto :goto_c

    :cond_c
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v115, v14

    move/from16 v14, v31

    :goto_c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v14, v32

    move-object/from16 v116, v81

    goto :goto_d

    :cond_d
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v116, v14

    move/from16 v14, v32

    :goto_d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v117

    move/from16 v17, v13

    move/from16 v14, v33

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v18, v13

    move/from16 v14, v34

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v35

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_e

    move/from16 v14, v36

    move-object/from16 v121, v81

    goto :goto_e

    :cond_e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v121, v14

    move/from16 v14, v36

    :goto_e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v14, v37

    move-object/from16 v122, v81

    goto :goto_f

    :cond_f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v122, v14

    move/from16 v14, v37

    :goto_f
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v123

    move/from16 v14, v38

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v14, v39

    move-object/from16 v125, v81

    goto :goto_10

    :cond_10
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v125, v14

    move/from16 v14, v39

    :goto_10
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    move/from16 v14, v40

    move-object/from16 v126, v81

    goto :goto_11

    :cond_11
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v126, v14

    move/from16 v14, v40

    :goto_11
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v127

    move/from16 v19, v13

    move/from16 v14, v41

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v42

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v130

    move/from16 v14, v43

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_12

    move/from16 v20, v13

    move/from16 v14, v44

    move-object/from16 v132, v81

    goto :goto_12

    :cond_12
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v20, v13

    move-object/from16 v132, v14

    move/from16 v14, v44

    :goto_12
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v45

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_13

    move/from16 v14, v46

    move-object/from16 v134, v81

    goto :goto_13

    :cond_13
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v134, v14

    move/from16 v14, v46

    :goto_13
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v21, v13

    move/from16 v14, v47

    move-object/from16 v135, v81

    goto :goto_14

    :cond_14
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v21, v13

    move-object/from16 v135, v14

    move/from16 v14, v47

    :goto_14
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    const/16 v22, 0x1

    move/from16 p0, v15

    if-eqz v13, :cond_15

    move/from16 v136, v22

    move/from16 v13, v48

    goto :goto_15

    :cond_15
    move/from16 v13, v48

    const/16 v136, 0x0

    :goto_15
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v13, v14

    if-eqz v13, :cond_16

    move/from16 v137, v22

    move/from16 v13, v49

    goto :goto_16

    :cond_16
    move/from16 v13, v49

    const/16 v137, 0x0

    :goto_16
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v50

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_17

    move/from16 v14, v51

    move-object/from16 v139, v81

    goto :goto_17

    :cond_17
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v139, v14

    move/from16 v14, v51

    :goto_17
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_18

    move/from16 v14, v52

    move-object/from16 v140, v81

    goto :goto_18

    :cond_18
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v140, v14

    move/from16 v14, v52

    :goto_18
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_19

    move/from16 v14, v53

    move-object/from16 v141, v81

    goto :goto_19

    :cond_19
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v53

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v14, v54

    move-object/from16 v142, v81

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v142, v14

    move/from16 v14, v54

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    move/from16 v14, v55

    move-object/from16 v143, v81

    goto :goto_1b

    :cond_1b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v143, v14

    move/from16 v14, v55

    :goto_1b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1c

    move/from16 v14, v56

    move-object/from16 v144, v81

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v144, v14

    move/from16 v14, v56

    :goto_1c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1d

    move/from16 v14, v57

    move-object/from16 v145, v81

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v145, v14

    move/from16 v14, v57

    :goto_1d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1e

    move/from16 v14, v58

    move-object/from16 v146, v81

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v146, v14

    move/from16 v14, v58

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1f

    move/from16 v14, v59

    move-object/from16 v147, v81

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v147, v14

    move/from16 v14, v59

    :goto_1f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_20

    move/from16 v14, v60

    move-object/from16 v148, v81

    goto :goto_20

    :cond_20
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v148, v14

    move/from16 v14, v60

    :goto_20
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_21

    move/from16 v14, v61

    move-object/from16 v149, v81

    goto :goto_21

    :cond_21
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v149, v14

    move/from16 v14, v61

    :goto_21
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_22

    move/from16 v14, v62

    move-object/from16 v150, v81

    goto :goto_22

    :cond_22
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v150, v14

    move/from16 v14, v62

    :goto_22
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_23

    move/from16 v14, v63

    move-object/from16 v151, v81

    goto :goto_23

    :cond_23
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v151, v14

    move/from16 v14, v63

    :goto_23
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_24

    move/from16 v14, v64

    move-object/from16 v152, v81

    goto :goto_24

    :cond_24
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v152, v14

    move/from16 v14, v64

    :goto_24
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_25

    move/from16 v14, v65

    move-object/from16 v153, v81

    goto :goto_25

    :cond_25
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v153, v14

    move/from16 v14, v65

    :goto_25
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_26

    move/from16 v14, v66

    move-object/from16 v154, v81

    goto :goto_26

    :cond_26
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v154, v14

    move/from16 v14, v66

    :goto_26
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_27

    move/from16 v14, v67

    move-object/from16 v155, v81

    goto :goto_27

    :cond_27
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v155, v14

    move/from16 v14, v67

    :goto_27
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_28

    move/from16 v14, v68

    move-object/from16 v156, v81

    goto :goto_28

    :cond_28
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v156, v14

    move/from16 v14, v68

    :goto_28
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_29

    move/from16 v14, v69

    move-object/from16 v157, v81

    goto :goto_29

    :cond_29
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v157, v14

    move/from16 v14, v69

    :goto_29
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2a

    move/from16 v14, v70

    move-object/from16 v158, v81

    goto :goto_2a

    :cond_2a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v158, v14

    move/from16 v14, v70

    :goto_2a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2b

    move/from16 v14, v71

    move-object/from16 v159, v81

    goto :goto_2b

    :cond_2b
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v159, v14

    move/from16 v14, v71

    :goto_2b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move/from16 v14, v72

    move-object/from16 v160, v81

    goto :goto_2c

    :cond_2c
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v72

    :goto_2c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move/from16 v14, v73

    move-object/from16 v161, v81

    goto :goto_2d

    :cond_2d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v161, v14

    move/from16 v14, v73

    :goto_2d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2e

    move/from16 v14, v74

    move-object/from16 v162, v81

    goto :goto_2e

    :cond_2e
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v74

    :goto_2e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v14, v75

    move-object/from16 v163, v81

    goto :goto_2f

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v75

    :goto_2f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_30

    move/from16 v14, v76

    move-object/from16 v164, v81

    goto :goto_30

    :cond_30
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v164, v14

    move/from16 v14, v76

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_31

    move/from16 v14, v77

    move-object/from16 v165, v81

    goto :goto_31

    :cond_31
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v165, v14

    move/from16 v14, v77

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_32

    move/from16 v14, v78

    move-object/from16 v166, v81

    goto :goto_32

    :cond_32
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v166, v14

    move/from16 v14, v78

    :goto_32
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_33

    move/from16 v167, v22

    move/from16 v14, v79

    goto :goto_33

    :cond_33
    move/from16 v14, v79

    const/16 v167, 0x0

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_34

    move/from16 v14, p0

    move-object/from16 v168, v81

    goto :goto_34

    :cond_34
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v168, v14

    move/from16 v14, p0

    :goto_34
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_35

    :goto_35
    move-object/from16 v169, v81

    goto :goto_36

    :cond_35
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    goto :goto_35

    :goto_36
    new-instance v81, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v82, v81

    move/from16 v95, v0

    move/from16 v96, v2

    move/from16 v97, v3

    move/from16 v102, v4

    move/from16 v103, v5

    move/from16 v104, v6

    move/from16 v105, v7

    move/from16 v106, v8

    move/from16 v107, v9

    move/from16 v108, v10

    move/from16 v109, v11

    move/from16 v110, v12

    move/from16 v111, v16

    move/from16 v112, v17

    move/from16 v119, v18

    move/from16 v120, v19

    move/from16 v129, v20

    move/from16 v133, v21

    move/from16 v138, v13

    invoke-direct/range {v82 .. v169}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_37

    :catchall_0
    move-exception v0

    goto :goto_38

    :cond_36
    :goto_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v81

    :goto_38
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic C0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 190

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE kidId = ? AND status = 5 AND fileType == 1 ORDER BY updateTimeStamp DESC"

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

    goto/16 :goto_3e

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v79, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v80, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_1

    move-object/from16 v84, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v85, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v86, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v87, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v88, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v89, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v90, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v91, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v92, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_a

    move-object/from16 v93, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_b
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v3

    move/from16 v171, v4

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v172, v5

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v173, v6

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 p0, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v0

    move/from16 v174, v6

    move/from16 v0, v17

    move/from16 v17, v7

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v175, v9

    move/from16 v7, v18

    move/from16 v18, v8

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v176, v11

    move/from16 v9, v19

    move/from16 v19, v10

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v177, v13

    move/from16 v11, v20

    move/from16 v20, v12

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v178, v15

    move/from16 v13, v21

    move/from16 v21, v14

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v107, v14

    move/from16 v15, v22

    move/from16 v22, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v106, v12

    move/from16 v14, v23

    move/from16 v23, v11

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v179, v14

    move/from16 v12, v24

    move/from16 v24, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v180, v12

    move/from16 v15, v25

    move/from16 v25, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v181, v15

    move/from16 v12, v26

    move/from16 v26, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v182, v12

    move/from16 v15, v27

    move/from16 v27, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v28

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_b

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v114, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v0

    move/from16 v0, v29

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_c

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v115, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v0

    move/from16 v0, v30

    :goto_d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_d

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v116, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v0

    move/from16 v0, v31

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_e

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v117, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v0

    move/from16 v0, v32

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v0

    move/from16 v183, v12

    move/from16 v0, v33

    move/from16 v33, v11

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v184, v15

    move/from16 v12, v34

    move/from16 v34, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v35

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_f

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v122, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v0

    move/from16 v0, v36

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_10

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v123, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v0

    move/from16 v0, v37

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_11

    move/from16 v38, v0

    move/from16 v0, v39

    move-object/from16 v126, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v0

    move/from16 v0, v39

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_12

    move/from16 v39, v0

    move/from16 v0, v40

    move-object/from16 v127, v82

    goto :goto_13

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v0

    move/from16 v0, v40

    :goto_13
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v0

    move/from16 v185, v15

    move/from16 v0, v41

    move/from16 v41, v14

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v0

    move/from16 v0, v43

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_13

    move/from16 v43, v0

    move/from16 v186, v15

    move/from16 v0, v44

    move-object/from16 v133, v82

    :goto_14
    move/from16 v44, v14

    goto :goto_15

    :cond_13
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v186, v15

    move-object/from16 v133, v43

    move/from16 v43, v0

    move/from16 v0, v44

    goto :goto_14

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_14

    move/from16 v45, v0

    move/from16 v0, v46

    move-object/from16 v135, v82

    goto :goto_16

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v0

    move/from16 v0, v46

    :goto_16
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_15

    move/from16 v46, v0

    move/from16 v187, v15

    move/from16 v0, v47

    move-object/from16 v136, v82

    :goto_17
    move/from16 v47, v14

    goto :goto_18

    :cond_15
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v187, v15

    move-object/from16 v136, v46

    move/from16 v46, v0

    move/from16 v0, v47

    goto :goto_17

    :goto_18
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v188, v12

    if-eqz v14, :cond_16

    move/from16 v14, v48

    const/16 v137, 0x1

    :goto_19
    move/from16 v48, v11

    goto :goto_1a

    :cond_16
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_19

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_17

    move/from16 v11, v49

    const/16 v138, 0x1

    :goto_1b
    move/from16 v49, v14

    goto :goto_1c

    :cond_17
    move/from16 v11, v49

    const/16 v138, 0x0

    goto :goto_1b

    :goto_1c
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v50

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_18

    move/from16 v12, v51

    move-object/from16 v140, v82

    goto :goto_1d

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v12, v51

    :goto_1d
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_19

    move/from16 v51, v14

    move/from16 v189, v15

    move/from16 v14, v52

    move-object/from16 v141, v82

    goto :goto_1e

    :cond_19
    move/from16 v51, v14

    move/from16 v189, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v52

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v15, v53

    move-object/from16 v142, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v142, v15

    move/from16 v15, v53

    :goto_1f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1b

    move/from16 v52, v0

    move/from16 v0, v54

    move-object/from16 v143, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v0

    move/from16 v0, v54

    :goto_20
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v54, v0

    move/from16 v0, v55

    move-object/from16 v144, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v0

    move-object/from16 v144, v53

    move/from16 v0, v55

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v55, v0

    move/from16 v0, v56

    move-object/from16 v145, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v0

    move-object/from16 v145, v53

    move/from16 v0, v56

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v56, v0

    move/from16 v0, v57

    move-object/from16 v146, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v0

    move-object/from16 v146, v53

    move/from16 v0, v57

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v57, v0

    move/from16 v0, v58

    move-object/from16 v147, v82

    goto :goto_24

    :cond_1f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v0

    move-object/from16 v147, v53

    move/from16 v0, v58

    :goto_24
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_20

    move/from16 v53, v11

    move/from16 v58, v12

    move/from16 v11, v59

    move-object/from16 v148, v82

    goto :goto_25

    :cond_20
    move/from16 v53, v11

    move/from16 v58, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v148, v11

    move/from16 v11, v59

    :goto_25
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_21

    move/from16 v12, v60

    move-object/from16 v149, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v149, v12

    move/from16 v12, v60

    :goto_26
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_22

    move/from16 v59, v0

    move/from16 v0, v61

    move-object/from16 v150, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v0

    move/from16 v0, v61

    :goto_27
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v61, v0

    move/from16 v0, v62

    move-object/from16 v151, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v0

    move-object/from16 v151, v60

    move/from16 v0, v62

    :goto_28
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v62, v0

    move/from16 v0, v63

    move-object/from16 v152, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v0

    move-object/from16 v152, v60

    move/from16 v0, v63

    :goto_29
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v63, v0

    move/from16 v0, v64

    move-object/from16 v153, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v0

    move-object/from16 v153, v60

    move/from16 v0, v64

    :goto_2a
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v64, v0

    move/from16 v0, v65

    move-object/from16 v154, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v0

    move-object/from16 v154, v60

    move/from16 v0, v65

    :goto_2b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v65, v0

    move/from16 v0, v66

    move-object/from16 v155, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v0

    move-object/from16 v155, v60

    move/from16 v0, v66

    :goto_2c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v66, v0

    move/from16 v0, v67

    move-object/from16 v156, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v0

    move-object/from16 v156, v60

    move/from16 v0, v67

    :goto_2d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v67, v0

    move/from16 v0, v68

    move-object/from16 v157, v82

    goto :goto_2e

    :cond_29
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v0

    move-object/from16 v157, v60

    move/from16 v0, v68

    :goto_2e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_2a

    move/from16 v60, v11

    move/from16 v68, v12

    move/from16 v11, v69

    move-object/from16 v158, v82

    goto :goto_2f

    :cond_2a
    move/from16 v60, v11

    move/from16 v68, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v158, v11

    move/from16 v11, v69

    :goto_2f
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2b

    move/from16 v12, v70

    move-object/from16 v159, v82

    goto :goto_30

    :cond_2b
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v159, v12

    move/from16 v12, v70

    :goto_30
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2c

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_31

    :cond_2c
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move v15, v11

    move/from16 v71, v12

    move/from16 v11, v72

    move-object/from16 v161, v82

    goto :goto_32

    :cond_2d
    move v15, v11

    move/from16 v71, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v161, v11

    move/from16 v11, v72

    :goto_32
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2e

    move v12, v14

    move/from16 v72, v15

    move/from16 v14, v73

    move-object/from16 v162, v82

    goto :goto_33

    :cond_2e
    move v12, v14

    move/from16 v72, v15

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v73

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move v15, v11

    move/from16 v73, v12

    move/from16 v11, v74

    move-object/from16 v163, v82

    goto :goto_34

    :cond_2f
    move v15, v11

    move/from16 v73, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v163, v11

    move/from16 v11, v74

    :goto_34
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_30

    move/from16 v12, v75

    move-object/from16 v164, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v164, v12

    move/from16 v12, v75

    :goto_35
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_31

    move/from16 v74, v0

    move/from16 v0, v76

    move-object/from16 v165, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v0

    move/from16 v0, v76

    :goto_36
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v76, v0

    move/from16 v0, v77

    move-object/from16 v166, v82

    goto :goto_37

    :cond_32
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v0

    move-object/from16 v166, v75

    move/from16 v0, v77

    :goto_37
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_33

    move/from16 v77, v0

    move/from16 v75, v11

    move/from16 v0, v78

    move-object/from16 v167, v82

    :goto_38
    move/from16 v78, v12

    goto :goto_39

    :cond_33
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v0

    move-object/from16 v167, v75

    move/from16 v0, v78

    move/from16 v75, v11

    goto :goto_38

    :goto_39
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_34

    move/from16 v11, v79

    const/16 v168, 0x1

    goto :goto_3a

    :cond_34
    move/from16 v11, v79

    const/16 v168, 0x0

    :goto_3a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_35

    move/from16 v12, v80

    move-object/from16 v169, v82

    goto :goto_3b

    :cond_35
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v169, v12

    move/from16 v12, v80

    :goto_3b
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_36

    :goto_3c
    move/from16 v50, v0

    move-object/from16 v170, v82

    goto :goto_3d

    :cond_36
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3c

    :goto_3d
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v0

    move/from16 v96, v3

    move/from16 v97, v4

    move/from16 v98, v5

    move/from16 v103, v6

    move/from16 v104, v8

    move/from16 v105, v10

    move/from16 v108, v13

    move/from16 v109, v25

    move/from16 v110, v26

    move/from16 v111, v27

    move/from16 v112, v34

    move/from16 v113, v33

    move/from16 v120, v48

    move/from16 v121, v41

    move/from16 v130, v44

    move/from16 v134, v47

    move/from16 v139, v51

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v79, v11

    move/from16 v80, v12

    move/from16 v8, v18

    move/from16 v10, v19

    move/from16 v12, v20

    move/from16 v20, v23

    move/from16 v33, v35

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v47, v52

    move/from16 v49, v53

    move/from16 v51, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v52, v69

    move/from16 v53, v70

    move/from16 v70, v71

    move/from16 v69, v72

    move/from16 v71, v73

    move/from16 v68, v74

    move/from16 v74, v75

    move/from16 v75, v78

    move/from16 v3, v81

    move/from16 v4, v171

    move/from16 v5, v172

    move/from16 v6, v173

    move/from16 p0, v174

    move/from16 v11, v176

    move/from16 v13, v177

    move/from16 v23, v179

    move/from16 v25, v181

    move/from16 v26, v182

    move/from16 v27, v184

    move/from16 v35, v185

    move/from16 v42, v186

    move/from16 v45, v187

    move/from16 v34, v188

    move/from16 v18, v7

    move/from16 v19, v9

    move/from16 v73, v14

    move/from16 v72, v15

    move/from16 v7, v17

    move/from16 v14, v21

    move/from16 v21, v22

    move/from16 v22, v24

    move/from16 v17, v28

    move/from16 v78, v50

    move/from16 v9, v175

    move/from16 v15, v178

    move/from16 v24, v180

    move/from16 v28, v183

    move/from16 v50, v189

    goto/16 :goto_1

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_3e
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic D0(Lz3/b;)Ljava/util/List;
    .locals 186

    const-string v0, "SELECT * FROM DOWNLOAD_TABLE WHERE (kidId IS NULL OR kidId = \'\') AND status = 5 AND fileType == 1 ORDER BY updateTimeStamp DESC"

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "resourceId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "cover"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "size"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "postId"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sizeFormat"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "path"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "updateTimeStamp"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "progress"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "supportRanges"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "status"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "type"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "readProgress"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "createAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "isRead"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "episode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "ep"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "resolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "resourcePosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "multiresolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "videoWidth"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "videoHeight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "downloadErrorCount"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "subtitleStarted"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "subjectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "pageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "lastPageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "subjectName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "lastPlayTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "fileType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "totalEpisode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "uploadBy"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "sourceUrl"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "urlCreateAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "taskId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v39, v15

    const-string v15, "sessionTime"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v40, v15

    const-string v15, "reportStatus"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v41, v15

    const-string v15, "downloadHeaderSize"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v42, v15

    const-string v15, "rootPath"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v43, v15

    const-string v15, "rootPathType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v44, v15

    const-string v15, "thumbnail"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v45, v15

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v46, v15

    const-string v15, "isTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v47, v15

    const-string v15, "isClosedTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v48, v15

    const-string v15, "subjectType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v49, v15

    const-string v15, "genre"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v50, v15

    const-string v15, "subjectDurationSeconds"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v51, v15

    const-string v15, "currentDubLanName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v52, v15

    const-string v15, "currentDubLanCode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v53, v15

    const-string v15, "ops"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v54, v15

    const-string v15, "restrictLevel"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v55, v15

    const-string v15, "releaseDate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v56, v15

    const-string v15, "countryName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v57, v15

    const-string v15, "seNum"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v58, v15

    const-string v15, "subtitles"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v59, v15

    const-string v15, "imdbRate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v60, v15

    const-string v15, "lastAdStartTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v61, v15

    const-string v15, "lastAdEndTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v62, v15

    const-string v15, "subtitleIdType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v63, v15

    const-string v15, "ugcVideoCollectionId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v64, v15

    const-string v15, "ugcVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v65, v15

    const-string v15, "ugcVideoName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v66, v15

    const-string v15, "ugcVideoCollectionName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v67, v15

    const-string v15, "ugcVideoPosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v68, v15

    const-string v15, "ugcVideoType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v69, v15

    const-string v15, "ugcCateLev1Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v70, v15

    const-string v15, "ugcCateLev2Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v71, v15

    const-string v15, "ugcCateLev3Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v72, v15

    const-string v15, "ugcCateLev4Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v73, v15

    const-string v15, "ugcVideoTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v74, v15

    const-string v15, "ugcVideoParentVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v75, v15

    const-string v15, "ugcVideoParentTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v76, v15

    const-string v15, "ugcVideoEpTitle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v77, v15

    const-string v15, "ugcVideoIsVertical"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v78, v15

    const-string v15, "originData"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v79, v15

    const-string v15, "kidId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v80, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_36

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_0

    move-object/from16 v84, v82

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_1

    move-object/from16 v85, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v86, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v87, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v88, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v89, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v90, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v91, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v92, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v93, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v2

    move/from16 v171, v3

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v172, v4

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v173, v5

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 p0, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v0

    move/from16 v174, v5

    move/from16 v0, v17

    move/from16 v17, v6

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v175, v8

    move/from16 v6, v18

    move/from16 v18, v7

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v176, v10

    move/from16 v8, v19

    move/from16 v19, v9

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v177, v12

    move/from16 v10, v20

    move/from16 v20, v11

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v178, v14

    move/from16 v12, v21

    move/from16 v21, v13

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v107, v13

    move/from16 v14, v22

    move/from16 v22, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v179, v14

    move/from16 v13, v23

    move-object/from16 v23, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v109, v14

    move/from16 v15, v24

    move/from16 v24, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v110, v13

    move/from16 v14, v25

    move/from16 v25, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v180, v14

    move/from16 v13, v26

    move/from16 v26, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v112, v14

    move/from16 v15, v27

    move/from16 v27, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v28

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v114, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v0

    move/from16 v0, v29

    :goto_b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_b

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v115, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v0

    move/from16 v0, v30

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_c

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v116, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v0

    move/from16 v0, v31

    :goto_d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_d

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v117, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v0

    move/from16 v0, v32

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v0

    move/from16 v181, v14

    move/from16 v0, v33

    move/from16 v33, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v120, v14

    move/from16 v15, v34

    move/from16 v34, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v35

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_e

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v122, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v0

    move/from16 v0, v36

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_f

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v123, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v0

    move/from16 v0, v37

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_10

    move/from16 v38, v0

    move/from16 v0, v39

    move-object/from16 v126, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v0

    move/from16 v0, v39

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_11

    move/from16 v39, v0

    move/from16 v0, v40

    move-object/from16 v127, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v0

    move/from16 v0, v40

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v0

    move/from16 v182, v14

    move/from16 v0, v41

    move/from16 v41, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v0

    move/from16 v0, v43

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_12

    move/from16 v43, v0

    move/from16 v183, v15

    move/from16 v0, v44

    move-object/from16 v133, v82

    :goto_13
    move/from16 v44, v14

    goto :goto_14

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v183, v15

    move-object/from16 v133, v43

    move/from16 v43, v0

    move/from16 v0, v44

    goto :goto_13

    :goto_14
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_13

    move/from16 v45, v0

    move/from16 v0, v46

    move-object/from16 v135, v82

    goto :goto_15

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v0

    move/from16 v0, v46

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_14

    move/from16 v46, v0

    move/from16 v184, v15

    move/from16 v0, v47

    move-object/from16 v136, v82

    :goto_16
    move/from16 v47, v14

    goto :goto_17

    :cond_14
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v184, v15

    move-object/from16 v136, v46

    move/from16 v46, v0

    move/from16 v0, v47

    goto :goto_16

    :goto_17
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    const/16 v83, 0x1

    move/from16 v121, v13

    if-eqz v14, :cond_15

    move/from16 v14, v48

    move/from16 v137, v83

    :goto_18
    move/from16 v48, v12

    goto :goto_19

    :cond_15
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_18

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    if-eqz v12, :cond_16

    move/from16 v12, v49

    move/from16 v138, v83

    :goto_1a
    move/from16 v49, v14

    goto :goto_1b

    :cond_16
    move/from16 v12, v49

    const/16 v138, 0x0

    goto :goto_1a

    :goto_1b
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v50

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_17

    move/from16 v15, v51

    move-object/from16 v140, v82

    goto :goto_1c

    :cond_17
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v15, v51

    :goto_1c
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_18

    move/from16 v51, v12

    move/from16 v139, v13

    move/from16 v12, v52

    move-object/from16 v141, v82

    goto :goto_1d

    :cond_18
    move/from16 v51, v12

    move/from16 v139, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v141, v12

    move/from16 v12, v52

    :goto_1d
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_19

    move/from16 v13, v53

    move-object/from16 v142, v82

    goto :goto_1e

    :cond_19
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v142, v13

    move/from16 v13, v53

    :goto_1e
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1a

    move/from16 v52, v0

    move/from16 v0, v54

    move-object/from16 v143, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v0

    move/from16 v0, v54

    :goto_1f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1b

    move/from16 v54, v0

    move/from16 v0, v55

    move-object/from16 v144, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v0

    move-object/from16 v144, v53

    move/from16 v0, v55

    :goto_20
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v55, v0

    move/from16 v0, v56

    move-object/from16 v145, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v0

    move-object/from16 v145, v53

    move/from16 v0, v56

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v56, v0

    move/from16 v0, v57

    move-object/from16 v146, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v0

    move-object/from16 v146, v53

    move/from16 v0, v57

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v57, v0

    move/from16 v0, v58

    move-object/from16 v147, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v0

    move-object/from16 v147, v53

    move/from16 v0, v58

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v53, v12

    move/from16 v58, v13

    move/from16 v12, v59

    move-object/from16 v148, v82

    goto :goto_24

    :cond_1f
    move/from16 v53, v12

    move/from16 v58, v13

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v148, v12

    move/from16 v12, v59

    :goto_24
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_20

    move/from16 v13, v60

    move-object/from16 v149, v82

    goto :goto_25

    :cond_20
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v149, v13

    move/from16 v13, v60

    :goto_25
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_21

    move/from16 v59, v0

    move/from16 v0, v61

    move-object/from16 v150, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v0

    move/from16 v0, v61

    :goto_26
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_22

    move/from16 v61, v0

    move/from16 v0, v62

    move-object/from16 v151, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v0

    move-object/from16 v151, v60

    move/from16 v0, v62

    :goto_27
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v62, v0

    move/from16 v0, v63

    move-object/from16 v152, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v0

    move-object/from16 v152, v60

    move/from16 v0, v63

    :goto_28
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v63, v0

    move/from16 v0, v64

    move-object/from16 v153, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v0

    move-object/from16 v153, v60

    move/from16 v0, v64

    :goto_29
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v64, v0

    move/from16 v0, v65

    move-object/from16 v154, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v0

    move-object/from16 v154, v60

    move/from16 v0, v65

    :goto_2a
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v65, v0

    move/from16 v0, v66

    move-object/from16 v155, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v0

    move-object/from16 v155, v60

    move/from16 v0, v66

    :goto_2b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v66, v0

    move/from16 v0, v67

    move-object/from16 v156, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v0

    move-object/from16 v156, v60

    move/from16 v0, v67

    :goto_2c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v67, v0

    move/from16 v0, v68

    move-object/from16 v157, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v0

    move-object/from16 v157, v60

    move/from16 v0, v68

    :goto_2d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v60, v12

    move/from16 v68, v13

    move/from16 v12, v69

    move-object/from16 v158, v82

    goto :goto_2e

    :cond_29
    move/from16 v60, v12

    move/from16 v68, v13

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v158, v12

    move/from16 v12, v69

    :goto_2e
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2a

    move/from16 v13, v70

    move-object/from16 v159, v82

    goto :goto_2f

    :cond_2a
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v159, v13

    move/from16 v13, v70

    :goto_2f
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2b

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_30

    :cond_2b
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move v15, v12

    move/from16 v71, v13

    move/from16 v12, v72

    move-object/from16 v161, v82

    goto :goto_31

    :cond_2c
    move v15, v12

    move/from16 v71, v13

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v161, v12

    move/from16 v12, v72

    :goto_31
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2d

    move/from16 v72, v14

    move/from16 v13, v73

    move-object/from16 v162, v82

    goto :goto_32

    :cond_2d
    move/from16 v72, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v162, v13

    move/from16 v13, v73

    :goto_32
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2e

    move/from16 v73, v15

    move/from16 v14, v74

    move-object/from16 v163, v82

    goto :goto_33

    :cond_2e
    move/from16 v73, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v74

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v15, v75

    move-object/from16 v164, v82

    goto :goto_34

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v164, v15

    move/from16 v15, v75

    :goto_34
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_30

    move/from16 v74, v0

    move/from16 v0, v76

    move-object/from16 v165, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v0

    move/from16 v0, v76

    :goto_35
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_31

    move/from16 v76, v0

    move/from16 v0, v77

    move-object/from16 v166, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v0

    move-object/from16 v166, v75

    move/from16 v0, v77

    :goto_36
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v77, v0

    move/from16 v75, v12

    move/from16 v0, v78

    move-object/from16 v167, v82

    :goto_37
    move/from16 v78, v13

    goto :goto_38

    :cond_32
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v0

    move-object/from16 v167, v75

    move/from16 v0, v78

    move/from16 v75, v12

    goto :goto_37

    :goto_38
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    if-eqz v12, :cond_33

    move/from16 v12, v79

    move/from16 v168, v83

    goto :goto_39

    :cond_33
    move/from16 v12, v79

    const/16 v168, 0x0

    :goto_39
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_34

    move/from16 v13, v80

    move-object/from16 v169, v82

    goto :goto_3a

    :cond_34
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v169, v13

    move/from16 v13, v80

    :goto_3a
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_35

    :goto_3b
    move/from16 v50, v0

    move-object/from16 v170, v82

    goto :goto_3c

    :cond_35
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3b

    :goto_3c
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v0

    move/from16 v96, v2

    move/from16 v97, v3

    move/from16 v98, v4

    move/from16 v103, v5

    move/from16 v104, v7

    move/from16 v105, v9

    move/from16 v106, v11

    move/from16 v108, v25

    move/from16 v111, v48

    move/from16 v113, v34

    move/from16 v130, v44

    move/from16 v134, v47

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v23

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v79, v12

    move/from16 v80, v13

    move/from16 v7, v18

    move/from16 v9, v19

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v21, v22

    move/from16 v23, v24

    move/from16 v24, v26

    move/from16 v26, v27

    move/from16 v27, v33

    move/from16 v33, v35

    move/from16 v34, v41

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v49, v51

    move/from16 v47, v52

    move/from16 v52, v53

    move/from16 v53, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v51, v70

    move/from16 v70, v71

    move/from16 v71, v72

    move/from16 v68, v74

    move/from16 v72, v75

    move/from16 v3, v171

    move/from16 v4, v172

    move/from16 v5, v173

    move/from16 p0, v174

    move/from16 v12, v177

    move/from16 v22, v179

    move/from16 v25, v180

    move/from16 v35, v182

    move/from16 v42, v183

    move/from16 v45, v184

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v74, v14

    move/from16 v75, v15

    move/from16 v6, v17

    move/from16 v17, v28

    move/from16 v8, v175

    move/from16 v10, v176

    move/from16 v14, v178

    move/from16 v28, v181

    move-object v15, v2

    move/from16 v2, v81

    move/from16 v185, v78

    move/from16 v78, v50

    move/from16 v50, v69

    move/from16 v69, v73

    move/from16 v73, v185

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3d

    :cond_36
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_3d
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic E0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 190

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE kidId = ? AND status != 5 AND fileType == 1 ORDER BY createAt ASC"

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

    goto/16 :goto_3e

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v79, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v80, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_1

    move-object/from16 v84, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v85, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v86, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v87, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v88, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v89, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v90, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v91, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v92, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_a

    move-object/from16 v93, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_b
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v3

    move/from16 v171, v4

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v172, v5

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v173, v6

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 p0, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v0

    move/from16 v174, v6

    move/from16 v0, v17

    move/from16 v17, v7

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v175, v9

    move/from16 v7, v18

    move/from16 v18, v8

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v176, v11

    move/from16 v9, v19

    move/from16 v19, v10

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v177, v13

    move/from16 v11, v20

    move/from16 v20, v12

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v178, v15

    move/from16 v13, v21

    move/from16 v21, v14

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v107, v14

    move/from16 v15, v22

    move/from16 v22, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v106, v12

    move/from16 v14, v23

    move/from16 v23, v11

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v179, v14

    move/from16 v12, v24

    move/from16 v24, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v180, v12

    move/from16 v15, v25

    move/from16 v25, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v181, v15

    move/from16 v12, v26

    move/from16 v26, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v182, v12

    move/from16 v15, v27

    move/from16 v27, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v28

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_b

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v114, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v0

    move/from16 v0, v29

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_c

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v115, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v0

    move/from16 v0, v30

    :goto_d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_d

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v116, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v0

    move/from16 v0, v31

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_e

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v117, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v0

    move/from16 v0, v32

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v0

    move/from16 v183, v12

    move/from16 v0, v33

    move/from16 v33, v11

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v184, v15

    move/from16 v12, v34

    move/from16 v34, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v35

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_f

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v122, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v0

    move/from16 v0, v36

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_10

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v123, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v0

    move/from16 v0, v37

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_11

    move/from16 v38, v0

    move/from16 v0, v39

    move-object/from16 v126, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v0

    move/from16 v0, v39

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_12

    move/from16 v39, v0

    move/from16 v0, v40

    move-object/from16 v127, v82

    goto :goto_13

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v0

    move/from16 v0, v40

    :goto_13
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v0

    move/from16 v185, v15

    move/from16 v0, v41

    move/from16 v41, v14

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v0

    move/from16 v0, v43

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_13

    move/from16 v43, v0

    move/from16 v186, v15

    move/from16 v0, v44

    move-object/from16 v133, v82

    :goto_14
    move/from16 v44, v14

    goto :goto_15

    :cond_13
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v186, v15

    move-object/from16 v133, v43

    move/from16 v43, v0

    move/from16 v0, v44

    goto :goto_14

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_14

    move/from16 v45, v0

    move/from16 v0, v46

    move-object/from16 v135, v82

    goto :goto_16

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v0

    move/from16 v0, v46

    :goto_16
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_15

    move/from16 v46, v0

    move/from16 v187, v15

    move/from16 v0, v47

    move-object/from16 v136, v82

    :goto_17
    move/from16 v47, v14

    goto :goto_18

    :cond_15
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v187, v15

    move-object/from16 v136, v46

    move/from16 v46, v0

    move/from16 v0, v47

    goto :goto_17

    :goto_18
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v188, v12

    if-eqz v14, :cond_16

    move/from16 v14, v48

    const/16 v137, 0x1

    :goto_19
    move/from16 v48, v11

    goto :goto_1a

    :cond_16
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_19

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_17

    move/from16 v11, v49

    const/16 v138, 0x1

    :goto_1b
    move/from16 v49, v14

    goto :goto_1c

    :cond_17
    move/from16 v11, v49

    const/16 v138, 0x0

    goto :goto_1b

    :goto_1c
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v50

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_18

    move/from16 v12, v51

    move-object/from16 v140, v82

    goto :goto_1d

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v12, v51

    :goto_1d
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_19

    move/from16 v51, v14

    move/from16 v189, v15

    move/from16 v14, v52

    move-object/from16 v141, v82

    goto :goto_1e

    :cond_19
    move/from16 v51, v14

    move/from16 v189, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v52

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v15, v53

    move-object/from16 v142, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v142, v15

    move/from16 v15, v53

    :goto_1f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1b

    move/from16 v52, v0

    move/from16 v0, v54

    move-object/from16 v143, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v0

    move/from16 v0, v54

    :goto_20
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v54, v0

    move/from16 v0, v55

    move-object/from16 v144, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v0

    move-object/from16 v144, v53

    move/from16 v0, v55

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v55, v0

    move/from16 v0, v56

    move-object/from16 v145, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v0

    move-object/from16 v145, v53

    move/from16 v0, v56

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v56, v0

    move/from16 v0, v57

    move-object/from16 v146, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v0

    move-object/from16 v146, v53

    move/from16 v0, v57

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v57, v0

    move/from16 v0, v58

    move-object/from16 v147, v82

    goto :goto_24

    :cond_1f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v0

    move-object/from16 v147, v53

    move/from16 v0, v58

    :goto_24
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_20

    move/from16 v53, v11

    move/from16 v58, v12

    move/from16 v11, v59

    move-object/from16 v148, v82

    goto :goto_25

    :cond_20
    move/from16 v53, v11

    move/from16 v58, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v148, v11

    move/from16 v11, v59

    :goto_25
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_21

    move/from16 v12, v60

    move-object/from16 v149, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v149, v12

    move/from16 v12, v60

    :goto_26
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_22

    move/from16 v59, v0

    move/from16 v0, v61

    move-object/from16 v150, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v0

    move/from16 v0, v61

    :goto_27
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v61, v0

    move/from16 v0, v62

    move-object/from16 v151, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v0

    move-object/from16 v151, v60

    move/from16 v0, v62

    :goto_28
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v62, v0

    move/from16 v0, v63

    move-object/from16 v152, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v0

    move-object/from16 v152, v60

    move/from16 v0, v63

    :goto_29
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v63, v0

    move/from16 v0, v64

    move-object/from16 v153, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v0

    move-object/from16 v153, v60

    move/from16 v0, v64

    :goto_2a
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v64, v0

    move/from16 v0, v65

    move-object/from16 v154, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v0

    move-object/from16 v154, v60

    move/from16 v0, v65

    :goto_2b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v65, v0

    move/from16 v0, v66

    move-object/from16 v155, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v0

    move-object/from16 v155, v60

    move/from16 v0, v66

    :goto_2c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v66, v0

    move/from16 v0, v67

    move-object/from16 v156, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v0

    move-object/from16 v156, v60

    move/from16 v0, v67

    :goto_2d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v67, v0

    move/from16 v0, v68

    move-object/from16 v157, v82

    goto :goto_2e

    :cond_29
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v0

    move-object/from16 v157, v60

    move/from16 v0, v68

    :goto_2e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_2a

    move/from16 v60, v11

    move/from16 v68, v12

    move/from16 v11, v69

    move-object/from16 v158, v82

    goto :goto_2f

    :cond_2a
    move/from16 v60, v11

    move/from16 v68, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v158, v11

    move/from16 v11, v69

    :goto_2f
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2b

    move/from16 v12, v70

    move-object/from16 v159, v82

    goto :goto_30

    :cond_2b
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v159, v12

    move/from16 v12, v70

    :goto_30
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2c

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_31

    :cond_2c
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move v15, v11

    move/from16 v71, v12

    move/from16 v11, v72

    move-object/from16 v161, v82

    goto :goto_32

    :cond_2d
    move v15, v11

    move/from16 v71, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v161, v11

    move/from16 v11, v72

    :goto_32
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2e

    move v12, v14

    move/from16 v72, v15

    move/from16 v14, v73

    move-object/from16 v162, v82

    goto :goto_33

    :cond_2e
    move v12, v14

    move/from16 v72, v15

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v73

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move v15, v11

    move/from16 v73, v12

    move/from16 v11, v74

    move-object/from16 v163, v82

    goto :goto_34

    :cond_2f
    move v15, v11

    move/from16 v73, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v163, v11

    move/from16 v11, v74

    :goto_34
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_30

    move/from16 v12, v75

    move-object/from16 v164, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v164, v12

    move/from16 v12, v75

    :goto_35
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_31

    move/from16 v74, v0

    move/from16 v0, v76

    move-object/from16 v165, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v0

    move/from16 v0, v76

    :goto_36
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v76, v0

    move/from16 v0, v77

    move-object/from16 v166, v82

    goto :goto_37

    :cond_32
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v0

    move-object/from16 v166, v75

    move/from16 v0, v77

    :goto_37
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_33

    move/from16 v77, v0

    move/from16 v75, v11

    move/from16 v0, v78

    move-object/from16 v167, v82

    :goto_38
    move/from16 v78, v12

    goto :goto_39

    :cond_33
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v0

    move-object/from16 v167, v75

    move/from16 v0, v78

    move/from16 v75, v11

    goto :goto_38

    :goto_39
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_34

    move/from16 v11, v79

    const/16 v168, 0x1

    goto :goto_3a

    :cond_34
    move/from16 v11, v79

    const/16 v168, 0x0

    :goto_3a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_35

    move/from16 v12, v80

    move-object/from16 v169, v82

    goto :goto_3b

    :cond_35
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v169, v12

    move/from16 v12, v80

    :goto_3b
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_36

    :goto_3c
    move/from16 v50, v0

    move-object/from16 v170, v82

    goto :goto_3d

    :cond_36
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3c

    :goto_3d
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v0

    move/from16 v96, v3

    move/from16 v97, v4

    move/from16 v98, v5

    move/from16 v103, v6

    move/from16 v104, v8

    move/from16 v105, v10

    move/from16 v108, v13

    move/from16 v109, v25

    move/from16 v110, v26

    move/from16 v111, v27

    move/from16 v112, v34

    move/from16 v113, v33

    move/from16 v120, v48

    move/from16 v121, v41

    move/from16 v130, v44

    move/from16 v134, v47

    move/from16 v139, v51

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v79, v11

    move/from16 v80, v12

    move/from16 v8, v18

    move/from16 v10, v19

    move/from16 v12, v20

    move/from16 v20, v23

    move/from16 v33, v35

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v47, v52

    move/from16 v49, v53

    move/from16 v51, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v52, v69

    move/from16 v53, v70

    move/from16 v70, v71

    move/from16 v69, v72

    move/from16 v71, v73

    move/from16 v68, v74

    move/from16 v74, v75

    move/from16 v75, v78

    move/from16 v3, v81

    move/from16 v4, v171

    move/from16 v5, v172

    move/from16 v6, v173

    move/from16 p0, v174

    move/from16 v11, v176

    move/from16 v13, v177

    move/from16 v23, v179

    move/from16 v25, v181

    move/from16 v26, v182

    move/from16 v27, v184

    move/from16 v35, v185

    move/from16 v42, v186

    move/from16 v45, v187

    move/from16 v34, v188

    move/from16 v18, v7

    move/from16 v19, v9

    move/from16 v73, v14

    move/from16 v72, v15

    move/from16 v7, v17

    move/from16 v14, v21

    move/from16 v21, v22

    move/from16 v22, v24

    move/from16 v17, v28

    move/from16 v78, v50

    move/from16 v9, v175

    move/from16 v15, v178

    move/from16 v24, v180

    move/from16 v28, v183

    move/from16 v50, v189

    goto/16 :goto_1

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_3e
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic F0(Lz3/b;)Ljava/util/List;
    .locals 186

    const-string v0, "SELECT * FROM DOWNLOAD_TABLE WHERE (kidId IS NULL OR kidId = \'\') AND status != 5 AND fileType == 1 ORDER BY createAt ASC"

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "resourceId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "cover"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "size"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "postId"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sizeFormat"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "path"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "updateTimeStamp"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "progress"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "supportRanges"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "status"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "type"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "readProgress"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "createAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "isRead"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "episode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "ep"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "resolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "resourcePosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "multiresolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "videoWidth"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "videoHeight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "downloadErrorCount"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "subtitleStarted"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "subjectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "pageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "lastPageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "subjectName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "lastPlayTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "fileType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "totalEpisode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "uploadBy"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "sourceUrl"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "urlCreateAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "taskId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v39, v15

    const-string v15, "sessionTime"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v40, v15

    const-string v15, "reportStatus"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v41, v15

    const-string v15, "downloadHeaderSize"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v42, v15

    const-string v15, "rootPath"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v43, v15

    const-string v15, "rootPathType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v44, v15

    const-string v15, "thumbnail"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v45, v15

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v46, v15

    const-string v15, "isTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v47, v15

    const-string v15, "isClosedTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v48, v15

    const-string v15, "subjectType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v49, v15

    const-string v15, "genre"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v50, v15

    const-string v15, "subjectDurationSeconds"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v51, v15

    const-string v15, "currentDubLanName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v52, v15

    const-string v15, "currentDubLanCode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v53, v15

    const-string v15, "ops"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v54, v15

    const-string v15, "restrictLevel"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v55, v15

    const-string v15, "releaseDate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v56, v15

    const-string v15, "countryName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v57, v15

    const-string v15, "seNum"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v58, v15

    const-string v15, "subtitles"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v59, v15

    const-string v15, "imdbRate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v60, v15

    const-string v15, "lastAdStartTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v61, v15

    const-string v15, "lastAdEndTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v62, v15

    const-string v15, "subtitleIdType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v63, v15

    const-string v15, "ugcVideoCollectionId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v64, v15

    const-string v15, "ugcVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v65, v15

    const-string v15, "ugcVideoName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v66, v15

    const-string v15, "ugcVideoCollectionName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v67, v15

    const-string v15, "ugcVideoPosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v68, v15

    const-string v15, "ugcVideoType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v69, v15

    const-string v15, "ugcCateLev1Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v70, v15

    const-string v15, "ugcCateLev2Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v71, v15

    const-string v15, "ugcCateLev3Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v72, v15

    const-string v15, "ugcCateLev4Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v73, v15

    const-string v15, "ugcVideoTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v74, v15

    const-string v15, "ugcVideoParentVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v75, v15

    const-string v15, "ugcVideoParentTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v76, v15

    const-string v15, "ugcVideoEpTitle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v77, v15

    const-string v15, "ugcVideoIsVertical"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v78, v15

    const-string v15, "originData"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v79, v15

    const-string v15, "kidId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v80, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_36

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_0

    move-object/from16 v84, v82

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_1

    move-object/from16 v85, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v86, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v87, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v88, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v89, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v90, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v91, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v92, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v93, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v2

    move/from16 v171, v3

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v172, v4

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v173, v5

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 p0, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v0

    move/from16 v174, v5

    move/from16 v0, v17

    move/from16 v17, v6

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v175, v8

    move/from16 v6, v18

    move/from16 v18, v7

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v176, v10

    move/from16 v8, v19

    move/from16 v19, v9

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v177, v12

    move/from16 v10, v20

    move/from16 v20, v11

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v178, v14

    move/from16 v12, v21

    move/from16 v21, v13

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v107, v13

    move/from16 v14, v22

    move/from16 v22, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v179, v14

    move/from16 v13, v23

    move-object/from16 v23, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v109, v14

    move/from16 v15, v24

    move/from16 v24, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v110, v13

    move/from16 v14, v25

    move/from16 v25, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v180, v14

    move/from16 v13, v26

    move/from16 v26, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v112, v14

    move/from16 v15, v27

    move/from16 v27, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v28

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v114, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v0

    move/from16 v0, v29

    :goto_b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_b

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v115, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v0

    move/from16 v0, v30

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_c

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v116, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v0

    move/from16 v0, v31

    :goto_d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_d

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v117, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v0

    move/from16 v0, v32

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v0

    move/from16 v181, v14

    move/from16 v0, v33

    move/from16 v33, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v120, v14

    move/from16 v15, v34

    move/from16 v34, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v35

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_e

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v122, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v0

    move/from16 v0, v36

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_f

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v123, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v0

    move/from16 v0, v37

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_10

    move/from16 v38, v0

    move/from16 v0, v39

    move-object/from16 v126, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v0

    move/from16 v0, v39

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_11

    move/from16 v39, v0

    move/from16 v0, v40

    move-object/from16 v127, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v0

    move/from16 v0, v40

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v0

    move/from16 v182, v14

    move/from16 v0, v41

    move/from16 v41, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v0

    move/from16 v0, v43

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_12

    move/from16 v43, v0

    move/from16 v183, v15

    move/from16 v0, v44

    move-object/from16 v133, v82

    :goto_13
    move/from16 v44, v14

    goto :goto_14

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v183, v15

    move-object/from16 v133, v43

    move/from16 v43, v0

    move/from16 v0, v44

    goto :goto_13

    :goto_14
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_13

    move/from16 v45, v0

    move/from16 v0, v46

    move-object/from16 v135, v82

    goto :goto_15

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v0

    move/from16 v0, v46

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_14

    move/from16 v46, v0

    move/from16 v184, v15

    move/from16 v0, v47

    move-object/from16 v136, v82

    :goto_16
    move/from16 v47, v14

    goto :goto_17

    :cond_14
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v184, v15

    move-object/from16 v136, v46

    move/from16 v46, v0

    move/from16 v0, v47

    goto :goto_16

    :goto_17
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    const/16 v83, 0x1

    move/from16 v121, v13

    if-eqz v14, :cond_15

    move/from16 v14, v48

    move/from16 v137, v83

    :goto_18
    move/from16 v48, v12

    goto :goto_19

    :cond_15
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_18

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    if-eqz v12, :cond_16

    move/from16 v12, v49

    move/from16 v138, v83

    :goto_1a
    move/from16 v49, v14

    goto :goto_1b

    :cond_16
    move/from16 v12, v49

    const/16 v138, 0x0

    goto :goto_1a

    :goto_1b
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v50

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_17

    move/from16 v15, v51

    move-object/from16 v140, v82

    goto :goto_1c

    :cond_17
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v15, v51

    :goto_1c
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_18

    move/from16 v51, v12

    move/from16 v139, v13

    move/from16 v12, v52

    move-object/from16 v141, v82

    goto :goto_1d

    :cond_18
    move/from16 v51, v12

    move/from16 v139, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v141, v12

    move/from16 v12, v52

    :goto_1d
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_19

    move/from16 v13, v53

    move-object/from16 v142, v82

    goto :goto_1e

    :cond_19
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v142, v13

    move/from16 v13, v53

    :goto_1e
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1a

    move/from16 v52, v0

    move/from16 v0, v54

    move-object/from16 v143, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v0

    move/from16 v0, v54

    :goto_1f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1b

    move/from16 v54, v0

    move/from16 v0, v55

    move-object/from16 v144, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v0

    move-object/from16 v144, v53

    move/from16 v0, v55

    :goto_20
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v55, v0

    move/from16 v0, v56

    move-object/from16 v145, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v0

    move-object/from16 v145, v53

    move/from16 v0, v56

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v56, v0

    move/from16 v0, v57

    move-object/from16 v146, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v0

    move-object/from16 v146, v53

    move/from16 v0, v57

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v57, v0

    move/from16 v0, v58

    move-object/from16 v147, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v0

    move-object/from16 v147, v53

    move/from16 v0, v58

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v53, v12

    move/from16 v58, v13

    move/from16 v12, v59

    move-object/from16 v148, v82

    goto :goto_24

    :cond_1f
    move/from16 v53, v12

    move/from16 v58, v13

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v148, v12

    move/from16 v12, v59

    :goto_24
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_20

    move/from16 v13, v60

    move-object/from16 v149, v82

    goto :goto_25

    :cond_20
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v149, v13

    move/from16 v13, v60

    :goto_25
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_21

    move/from16 v59, v0

    move/from16 v0, v61

    move-object/from16 v150, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v0

    move/from16 v0, v61

    :goto_26
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_22

    move/from16 v61, v0

    move/from16 v0, v62

    move-object/from16 v151, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v0

    move-object/from16 v151, v60

    move/from16 v0, v62

    :goto_27
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v62, v0

    move/from16 v0, v63

    move-object/from16 v152, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v0

    move-object/from16 v152, v60

    move/from16 v0, v63

    :goto_28
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v63, v0

    move/from16 v0, v64

    move-object/from16 v153, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v0

    move-object/from16 v153, v60

    move/from16 v0, v64

    :goto_29
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v64, v0

    move/from16 v0, v65

    move-object/from16 v154, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v0

    move-object/from16 v154, v60

    move/from16 v0, v65

    :goto_2a
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v65, v0

    move/from16 v0, v66

    move-object/from16 v155, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v0

    move-object/from16 v155, v60

    move/from16 v0, v66

    :goto_2b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v66, v0

    move/from16 v0, v67

    move-object/from16 v156, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v0

    move-object/from16 v156, v60

    move/from16 v0, v67

    :goto_2c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v67, v0

    move/from16 v0, v68

    move-object/from16 v157, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v0

    move-object/from16 v157, v60

    move/from16 v0, v68

    :goto_2d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v60, v12

    move/from16 v68, v13

    move/from16 v12, v69

    move-object/from16 v158, v82

    goto :goto_2e

    :cond_29
    move/from16 v60, v12

    move/from16 v68, v13

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v158, v12

    move/from16 v12, v69

    :goto_2e
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2a

    move/from16 v13, v70

    move-object/from16 v159, v82

    goto :goto_2f

    :cond_2a
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v159, v13

    move/from16 v13, v70

    :goto_2f
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2b

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_30

    :cond_2b
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move v15, v12

    move/from16 v71, v13

    move/from16 v12, v72

    move-object/from16 v161, v82

    goto :goto_31

    :cond_2c
    move v15, v12

    move/from16 v71, v13

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v161, v12

    move/from16 v12, v72

    :goto_31
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2d

    move/from16 v72, v14

    move/from16 v13, v73

    move-object/from16 v162, v82

    goto :goto_32

    :cond_2d
    move/from16 v72, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v162, v13

    move/from16 v13, v73

    :goto_32
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2e

    move/from16 v73, v15

    move/from16 v14, v74

    move-object/from16 v163, v82

    goto :goto_33

    :cond_2e
    move/from16 v73, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v74

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v15, v75

    move-object/from16 v164, v82

    goto :goto_34

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v164, v15

    move/from16 v15, v75

    :goto_34
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_30

    move/from16 v74, v0

    move/from16 v0, v76

    move-object/from16 v165, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v0

    move/from16 v0, v76

    :goto_35
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_31

    move/from16 v76, v0

    move/from16 v0, v77

    move-object/from16 v166, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v0

    move-object/from16 v166, v75

    move/from16 v0, v77

    :goto_36
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v77, v0

    move/from16 v75, v12

    move/from16 v0, v78

    move-object/from16 v167, v82

    :goto_37
    move/from16 v78, v13

    goto :goto_38

    :cond_32
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v0

    move-object/from16 v167, v75

    move/from16 v0, v78

    move/from16 v75, v12

    goto :goto_37

    :goto_38
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    if-eqz v12, :cond_33

    move/from16 v12, v79

    move/from16 v168, v83

    goto :goto_39

    :cond_33
    move/from16 v12, v79

    const/16 v168, 0x0

    :goto_39
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_34

    move/from16 v13, v80

    move-object/from16 v169, v82

    goto :goto_3a

    :cond_34
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v169, v13

    move/from16 v13, v80

    :goto_3a
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_35

    :goto_3b
    move/from16 v50, v0

    move-object/from16 v170, v82

    goto :goto_3c

    :cond_35
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3b

    :goto_3c
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v0

    move/from16 v96, v2

    move/from16 v97, v3

    move/from16 v98, v4

    move/from16 v103, v5

    move/from16 v104, v7

    move/from16 v105, v9

    move/from16 v106, v11

    move/from16 v108, v25

    move/from16 v111, v48

    move/from16 v113, v34

    move/from16 v130, v44

    move/from16 v134, v47

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v23

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v79, v12

    move/from16 v80, v13

    move/from16 v7, v18

    move/from16 v9, v19

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v21, v22

    move/from16 v23, v24

    move/from16 v24, v26

    move/from16 v26, v27

    move/from16 v27, v33

    move/from16 v33, v35

    move/from16 v34, v41

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v49, v51

    move/from16 v47, v52

    move/from16 v52, v53

    move/from16 v53, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v51, v70

    move/from16 v70, v71

    move/from16 v71, v72

    move/from16 v68, v74

    move/from16 v72, v75

    move/from16 v3, v171

    move/from16 v4, v172

    move/from16 v5, v173

    move/from16 p0, v174

    move/from16 v12, v177

    move/from16 v22, v179

    move/from16 v25, v180

    move/from16 v35, v182

    move/from16 v42, v183

    move/from16 v45, v184

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v74, v14

    move/from16 v75, v15

    move/from16 v6, v17

    move/from16 v17, v28

    move/from16 v8, v175

    move/from16 v10, v176

    move/from16 v14, v178

    move/from16 v28, v181

    move-object v15, v2

    move/from16 v2, v81

    move/from16 v185, v78

    move/from16 v78, v50

    move/from16 v50, v69

    move/from16 v69, v73

    move/from16 v73, v185

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3d

    :cond_36
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_3d
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic G0(Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 170

    const-string v0, "SELECT * FROM DOWNLOAD_TABLE WHERE status = 5 AND fileType == 1 Limit 1 "

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "resourceId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "cover"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "size"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "postId"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sizeFormat"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "path"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "updateTimeStamp"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "progress"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "supportRanges"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "status"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "type"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "readProgress"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "createAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "isRead"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "episode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "ep"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "resolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "resourcePosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "multiresolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "videoWidth"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "videoHeight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "downloadErrorCount"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "subtitleStarted"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "subjectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "pageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "lastPageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "subjectName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "lastPlayTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "fileType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "totalEpisode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "uploadBy"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "sourceUrl"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "urlCreateAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "taskId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v39, v15

    const-string v15, "sessionTime"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v40, v15

    const-string v15, "reportStatus"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v41, v15

    const-string v15, "downloadHeaderSize"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v42, v15

    const-string v15, "rootPath"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v43, v15

    const-string v15, "rootPathType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v44, v15

    const-string v15, "thumbnail"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v45, v15

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v46, v15

    const-string v15, "isTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v47, v15

    const-string v15, "isClosedTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v48, v15

    const-string v15, "subjectType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v49, v15

    const-string v15, "genre"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v50, v15

    const-string v15, "subjectDurationSeconds"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v51, v15

    const-string v15, "currentDubLanName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v52, v15

    const-string v15, "currentDubLanCode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v53, v15

    const-string v15, "ops"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v54, v15

    const-string v15, "restrictLevel"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v55, v15

    const-string v15, "releaseDate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v56, v15

    const-string v15, "countryName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v57, v15

    const-string v15, "seNum"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v58, v15

    const-string v15, "subtitles"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v59, v15

    const-string v15, "imdbRate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v60, v15

    const-string v15, "lastAdStartTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v61, v15

    const-string v15, "lastAdEndTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v62, v15

    const-string v15, "subtitleIdType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v63, v15

    const-string v15, "ugcVideoCollectionId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v64, v15

    const-string v15, "ugcVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v65, v15

    const-string v15, "ugcVideoName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v66, v15

    const-string v15, "ugcVideoCollectionName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v67, v15

    const-string v15, "ugcVideoPosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v68, v15

    const-string v15, "ugcVideoType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v69, v15

    const-string v15, "ugcCateLev1Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v70, v15

    const-string v15, "ugcCateLev2Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v71, v15

    const-string v15, "ugcCateLev3Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v72, v15

    const-string v15, "ugcCateLev4Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v73, v15

    const-string v15, "ugcVideoTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v74, v15

    const-string v15, "ugcVideoParentVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v75, v15

    const-string v15, "ugcVideoParentTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v76, v15

    const-string v15, "ugcVideoEpTitle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v77, v15

    const-string v15, "ugcVideoIsVertical"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v78, v15

    const-string v15, "originData"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v79, v15

    const-string v15, "kidId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v80

    const/16 v81, 0x0

    if-eqz v80, :cond_36

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v80

    if-eqz v80, :cond_0

    move-object/from16 v83, v81

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v83, v0

    :goto_0
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v84, v81

    goto :goto_1

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v84, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v85, v81

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v85, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v86, v81

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v86, v0

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v87, v81

    goto :goto_4

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v87, v0

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v88, v81

    goto :goto_5

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v88, v0

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v89, v81

    goto :goto_6

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v89, v0

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v90, v81

    goto :goto_7

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v90, v0

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v91, v81

    goto :goto_8

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v91, v0

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v92, v81

    goto :goto_9

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v92, v0

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v4, p0

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v98

    move/from16 v4, v16

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v100

    move/from16 v4, v17

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v18

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, v19

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, v20

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v21

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v9, v22

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v10, v23

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v11, v24

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v25

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v13, v26

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v16, v13

    move/from16 v14, v27

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v28

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_a

    move/from16 v14, v29

    move-object/from16 v113, v81

    goto :goto_a

    :cond_a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v113, v14

    move/from16 v14, v29

    :goto_a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v14, v30

    move-object/from16 v114, v81

    goto :goto_b

    :cond_b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v114, v14

    move/from16 v14, v30

    :goto_b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v14, v31

    move-object/from16 v115, v81

    goto :goto_c

    :cond_c
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v115, v14

    move/from16 v14, v31

    :goto_c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v14, v32

    move-object/from16 v116, v81

    goto :goto_d

    :cond_d
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v116, v14

    move/from16 v14, v32

    :goto_d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v117

    move/from16 v17, v13

    move/from16 v14, v33

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v18, v13

    move/from16 v14, v34

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v35

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_e

    move/from16 v14, v36

    move-object/from16 v121, v81

    goto :goto_e

    :cond_e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v121, v14

    move/from16 v14, v36

    :goto_e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v14, v37

    move-object/from16 v122, v81

    goto :goto_f

    :cond_f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v122, v14

    move/from16 v14, v37

    :goto_f
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v123

    move/from16 v14, v38

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v14, v39

    move-object/from16 v125, v81

    goto :goto_10

    :cond_10
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v125, v14

    move/from16 v14, v39

    :goto_10
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    move/from16 v14, v40

    move-object/from16 v126, v81

    goto :goto_11

    :cond_11
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v126, v14

    move/from16 v14, v40

    :goto_11
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v127

    move/from16 v19, v13

    move/from16 v14, v41

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v42

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v130

    move/from16 v14, v43

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_12

    move/from16 v20, v13

    move/from16 v14, v44

    move-object/from16 v132, v81

    goto :goto_12

    :cond_12
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v20, v13

    move-object/from16 v132, v14

    move/from16 v14, v44

    :goto_12
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v45

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_13

    move/from16 v14, v46

    move-object/from16 v134, v81

    goto :goto_13

    :cond_13
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v134, v14

    move/from16 v14, v46

    :goto_13
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v21, v13

    move/from16 v14, v47

    move-object/from16 v135, v81

    goto :goto_14

    :cond_14
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v21, v13

    move-object/from16 v135, v14

    move/from16 v14, v47

    :goto_14
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    const/16 v22, 0x1

    move/from16 p0, v15

    if-eqz v13, :cond_15

    move/from16 v136, v22

    move/from16 v13, v48

    goto :goto_15

    :cond_15
    move/from16 v13, v48

    const/16 v136, 0x0

    :goto_15
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v13, v14

    if-eqz v13, :cond_16

    move/from16 v137, v22

    move/from16 v13, v49

    goto :goto_16

    :cond_16
    move/from16 v13, v49

    const/16 v137, 0x0

    :goto_16
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v50

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_17

    move/from16 v14, v51

    move-object/from16 v139, v81

    goto :goto_17

    :cond_17
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v139, v14

    move/from16 v14, v51

    :goto_17
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_18

    move/from16 v14, v52

    move-object/from16 v140, v81

    goto :goto_18

    :cond_18
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v140, v14

    move/from16 v14, v52

    :goto_18
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_19

    move/from16 v14, v53

    move-object/from16 v141, v81

    goto :goto_19

    :cond_19
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v53

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v14, v54

    move-object/from16 v142, v81

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v142, v14

    move/from16 v14, v54

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    move/from16 v14, v55

    move-object/from16 v143, v81

    goto :goto_1b

    :cond_1b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v143, v14

    move/from16 v14, v55

    :goto_1b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1c

    move/from16 v14, v56

    move-object/from16 v144, v81

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v144, v14

    move/from16 v14, v56

    :goto_1c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1d

    move/from16 v14, v57

    move-object/from16 v145, v81

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v145, v14

    move/from16 v14, v57

    :goto_1d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1e

    move/from16 v14, v58

    move-object/from16 v146, v81

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v146, v14

    move/from16 v14, v58

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1f

    move/from16 v14, v59

    move-object/from16 v147, v81

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v147, v14

    move/from16 v14, v59

    :goto_1f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_20

    move/from16 v14, v60

    move-object/from16 v148, v81

    goto :goto_20

    :cond_20
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v148, v14

    move/from16 v14, v60

    :goto_20
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_21

    move/from16 v14, v61

    move-object/from16 v149, v81

    goto :goto_21

    :cond_21
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v149, v14

    move/from16 v14, v61

    :goto_21
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_22

    move/from16 v14, v62

    move-object/from16 v150, v81

    goto :goto_22

    :cond_22
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v150, v14

    move/from16 v14, v62

    :goto_22
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_23

    move/from16 v14, v63

    move-object/from16 v151, v81

    goto :goto_23

    :cond_23
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v151, v14

    move/from16 v14, v63

    :goto_23
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_24

    move/from16 v14, v64

    move-object/from16 v152, v81

    goto :goto_24

    :cond_24
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v152, v14

    move/from16 v14, v64

    :goto_24
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_25

    move/from16 v14, v65

    move-object/from16 v153, v81

    goto :goto_25

    :cond_25
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v153, v14

    move/from16 v14, v65

    :goto_25
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_26

    move/from16 v14, v66

    move-object/from16 v154, v81

    goto :goto_26

    :cond_26
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v154, v14

    move/from16 v14, v66

    :goto_26
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_27

    move/from16 v14, v67

    move-object/from16 v155, v81

    goto :goto_27

    :cond_27
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v155, v14

    move/from16 v14, v67

    :goto_27
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_28

    move/from16 v14, v68

    move-object/from16 v156, v81

    goto :goto_28

    :cond_28
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v156, v14

    move/from16 v14, v68

    :goto_28
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_29

    move/from16 v14, v69

    move-object/from16 v157, v81

    goto :goto_29

    :cond_29
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v157, v14

    move/from16 v14, v69

    :goto_29
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2a

    move/from16 v14, v70

    move-object/from16 v158, v81

    goto :goto_2a

    :cond_2a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v158, v14

    move/from16 v14, v70

    :goto_2a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2b

    move/from16 v14, v71

    move-object/from16 v159, v81

    goto :goto_2b

    :cond_2b
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v159, v14

    move/from16 v14, v71

    :goto_2b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move/from16 v14, v72

    move-object/from16 v160, v81

    goto :goto_2c

    :cond_2c
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v72

    :goto_2c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move/from16 v14, v73

    move-object/from16 v161, v81

    goto :goto_2d

    :cond_2d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v161, v14

    move/from16 v14, v73

    :goto_2d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2e

    move/from16 v14, v74

    move-object/from16 v162, v81

    goto :goto_2e

    :cond_2e
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v74

    :goto_2e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v14, v75

    move-object/from16 v163, v81

    goto :goto_2f

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v75

    :goto_2f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_30

    move/from16 v14, v76

    move-object/from16 v164, v81

    goto :goto_30

    :cond_30
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v164, v14

    move/from16 v14, v76

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_31

    move/from16 v14, v77

    move-object/from16 v165, v81

    goto :goto_31

    :cond_31
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v165, v14

    move/from16 v14, v77

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_32

    move/from16 v14, v78

    move-object/from16 v166, v81

    goto :goto_32

    :cond_32
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v166, v14

    move/from16 v14, v78

    :goto_32
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_33

    move/from16 v167, v22

    move/from16 v14, v79

    goto :goto_33

    :cond_33
    move/from16 v14, v79

    const/16 v167, 0x0

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_34

    move/from16 v14, p0

    move-object/from16 v168, v81

    goto :goto_34

    :cond_34
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v168, v14

    move/from16 v14, p0

    :goto_34
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_35

    :goto_35
    move-object/from16 v169, v81

    goto :goto_36

    :cond_35
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    goto :goto_35

    :goto_36
    new-instance v81, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v82, v81

    move/from16 v95, v0

    move/from16 v96, v2

    move/from16 v97, v3

    move/from16 v102, v4

    move/from16 v103, v5

    move/from16 v104, v6

    move/from16 v105, v7

    move/from16 v106, v8

    move/from16 v107, v9

    move/from16 v108, v10

    move/from16 v109, v11

    move/from16 v110, v12

    move/from16 v111, v16

    move/from16 v112, v17

    move/from16 v119, v18

    move/from16 v120, v19

    move/from16 v129, v20

    move/from16 v133, v21

    move/from16 v138, v13

    invoke-direct/range {v82 .. v169}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_37

    :catchall_0
    move-exception v0

    goto :goto_38

    :cond_36
    :goto_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v81

    :goto_38
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic H0(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 170

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE type = 2 AND fileType = 2 AND path = ?"

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

    goto/16 :goto_38

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v79, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v80

    const/16 v81, 0x0

    if-eqz v80, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v80

    if-eqz v80, :cond_1

    move-object/from16 v83, v81

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v83, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v84, v81

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v84, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v85, v81

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v85, v0

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v86, v81

    goto :goto_4

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v86, v0

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v87, v81

    goto :goto_5

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v87, v0

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v88, v81

    goto :goto_6

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v88, v0

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v89, v81

    goto :goto_7

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v89, v0

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v90, v81

    goto :goto_8

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v90, v0

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v91, v81

    goto :goto_9

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v91, v0

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v92, v81

    goto :goto_a

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v92, v0

    :goto_a
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v98

    move/from16 v5, v16

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v100

    move/from16 v5, v17

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, v18

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, v19

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v20

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v9, v21

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v10, v22

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v11, v23

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v24

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v13, v25

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v26

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v16, v14

    move/from16 v15, v27

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v28

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v15, v29

    move-object/from16 v113, v81

    goto :goto_b

    :cond_b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v113, v15

    move/from16 v15, v29

    :goto_b
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v15, v30

    move-object/from16 v114, v81

    goto :goto_c

    :cond_c
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v114, v15

    move/from16 v15, v30

    :goto_c
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v15, v31

    move-object/from16 v115, v81

    goto :goto_d

    :cond_d
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v115, v15

    move/from16 v15, v31

    :goto_d
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v15, v32

    move-object/from16 v116, v81

    goto :goto_e

    :cond_e
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v116, v15

    move/from16 v15, v32

    :goto_e
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v117

    move/from16 v17, v14

    move/from16 v15, v33

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v18, v14

    move/from16 v15, v34

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v35

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v15, v36

    move-object/from16 v121, v81

    goto :goto_f

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v121, v15

    move/from16 v15, v36

    :goto_f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v15, v37

    move-object/from16 v122, v81

    goto :goto_10

    :cond_10
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v122, v15

    move/from16 v15, v37

    :goto_10
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v123

    move/from16 v15, v38

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    move/from16 v15, v39

    move-object/from16 v125, v81

    goto :goto_11

    :cond_11
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v125, v15

    move/from16 v15, v39

    :goto_11
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_12

    move/from16 v15, v40

    move-object/from16 v126, v81

    goto :goto_12

    :cond_12
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v126, v15

    move/from16 v15, v40

    :goto_12
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v127

    move/from16 v19, v14

    move/from16 v15, v41

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v130

    move/from16 v15, v43

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_13

    move/from16 v20, v14

    move/from16 v15, v44

    move-object/from16 v132, v81

    goto :goto_13

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v20, v14

    move-object/from16 v132, v15

    move/from16 v15, v44

    :goto_13
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v15, v46

    move-object/from16 v134, v81

    goto :goto_14

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v134, v15

    move/from16 v15, v46

    :goto_14
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move/from16 v21, v14

    move/from16 v15, v47

    move-object/from16 v135, v81

    goto :goto_15

    :cond_15
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v21, v14

    move-object/from16 v135, v15

    move/from16 v15, v47

    :goto_15
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_16

    move/from16 v14, v48

    const/16 v136, 0x1

    goto :goto_16

    :cond_16
    move/from16 v14, v48

    const/16 v136, 0x0

    :goto_16
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_17

    move/from16 v14, v49

    const/16 v137, 0x1

    goto :goto_17

    :cond_17
    move/from16 v14, v49

    const/16 v137, 0x0

    :goto_17
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v50

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_18

    move/from16 v15, v51

    move-object/from16 v139, v81

    goto :goto_18

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v139, v15

    move/from16 v15, v51

    :goto_18
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_19

    move/from16 v22, v14

    move/from16 v14, v52

    move-object/from16 v140, v81

    goto :goto_19

    :cond_19
    move/from16 v22, v14

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v140, v14

    move/from16 v14, v52

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v14, v53

    move-object/from16 v141, v81

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v53

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    move/from16 v14, v54

    move-object/from16 v142, v81

    goto :goto_1b

    :cond_1b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v142, v14

    move/from16 v14, v54

    :goto_1b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1c

    move/from16 v14, v55

    move-object/from16 v143, v81

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v143, v14

    move/from16 v14, v55

    :goto_1c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1d

    move/from16 v14, v56

    move-object/from16 v144, v81

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v144, v14

    move/from16 v14, v56

    :goto_1d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1e

    move/from16 v14, v57

    move-object/from16 v145, v81

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v145, v14

    move/from16 v14, v57

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1f

    move/from16 v14, v58

    move-object/from16 v146, v81

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v146, v14

    move/from16 v14, v58

    :goto_1f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_20

    move/from16 v14, v59

    move-object/from16 v147, v81

    goto :goto_20

    :cond_20
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v147, v14

    move/from16 v14, v59

    :goto_20
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_21

    move/from16 v14, v60

    move-object/from16 v148, v81

    goto :goto_21

    :cond_21
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v148, v14

    move/from16 v14, v60

    :goto_21
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_22

    move/from16 v14, v61

    move-object/from16 v149, v81

    goto :goto_22

    :cond_22
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v149, v14

    move/from16 v14, v61

    :goto_22
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_23

    move/from16 v14, v62

    move-object/from16 v150, v81

    goto :goto_23

    :cond_23
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v150, v14

    move/from16 v14, v62

    :goto_23
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_24

    move/from16 v14, v63

    move-object/from16 v151, v81

    goto :goto_24

    :cond_24
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v151, v14

    move/from16 v14, v63

    :goto_24
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_25

    move/from16 v14, v64

    move-object/from16 v152, v81

    goto :goto_25

    :cond_25
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v152, v14

    move/from16 v14, v64

    :goto_25
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_26

    move/from16 v14, v65

    move-object/from16 v153, v81

    goto :goto_26

    :cond_26
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v153, v14

    move/from16 v14, v65

    :goto_26
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_27

    move/from16 v14, v66

    move-object/from16 v154, v81

    goto :goto_27

    :cond_27
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v154, v14

    move/from16 v14, v66

    :goto_27
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_28

    move/from16 v14, v67

    move-object/from16 v155, v81

    goto :goto_28

    :cond_28
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v155, v14

    move/from16 v14, v67

    :goto_28
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_29

    move/from16 v14, v68

    move-object/from16 v156, v81

    goto :goto_29

    :cond_29
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v156, v14

    move/from16 v14, v68

    :goto_29
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2a

    move/from16 v14, v69

    move-object/from16 v157, v81

    goto :goto_2a

    :cond_2a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v157, v14

    move/from16 v14, v69

    :goto_2a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2b

    move/from16 v14, v70

    move-object/from16 v158, v81

    goto :goto_2b

    :cond_2b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v158, v14

    move/from16 v14, v70

    :goto_2b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move/from16 v14, v71

    move-object/from16 v159, v81

    goto :goto_2c

    :cond_2c
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v159, v14

    move/from16 v14, v71

    :goto_2c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move/from16 v14, v72

    move-object/from16 v160, v81

    goto :goto_2d

    :cond_2d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v72

    :goto_2d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2e

    move/from16 v14, v73

    move-object/from16 v161, v81

    goto :goto_2e

    :cond_2e
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v161, v14

    move/from16 v14, v73

    :goto_2e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v14, v74

    move-object/from16 v162, v81

    goto :goto_2f

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v74

    :goto_2f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_30

    move/from16 v14, v75

    move-object/from16 v163, v81

    goto :goto_30

    :cond_30
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v75

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_31

    move/from16 v14, v76

    move-object/from16 v164, v81

    goto :goto_31

    :cond_31
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v164, v14

    move/from16 v14, v76

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_32

    move/from16 v14, v77

    move-object/from16 v165, v81

    goto :goto_32

    :cond_32
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v165, v14

    move/from16 v14, v77

    :goto_32
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_33

    move/from16 v14, v78

    move-object/from16 v166, v81

    goto :goto_33

    :cond_33
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v166, v14

    move/from16 v14, v78

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_34

    move/from16 v14, v79

    const/16 v167, 0x1

    goto :goto_34

    :cond_34
    move/from16 v14, v79

    const/16 v167, 0x0

    :goto_34
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_35

    move-object/from16 v168, v81

    goto :goto_35

    :cond_35
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v168, v14

    :goto_35
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_36

    :goto_36
    move-object/from16 v169, v81

    goto :goto_37

    :cond_36
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    goto :goto_36

    :goto_37
    new-instance v81, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v82, v81

    move/from16 v95, v0

    move/from16 v96, v3

    move/from16 v97, v4

    move/from16 v102, v5

    move/from16 v103, v6

    move/from16 v104, v7

    move/from16 v105, v8

    move/from16 v106, v9

    move/from16 v107, v10

    move/from16 v108, v11

    move/from16 v109, v12

    move/from16 v110, v13

    move/from16 v111, v16

    move/from16 v112, v17

    move/from16 v119, v18

    move/from16 v120, v19

    move/from16 v129, v20

    move/from16 v133, v21

    move/from16 v138, v22

    invoke-direct/range {v82 .. v169}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v81

    :goto_38
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic I0(ILz3/b;)Ljava/util/List;
    .locals 190

    const-string v0, "SELECT * FROM DOWNLOAD_TABLE WHERE fileType == 1 ORDER BY updateTimeStamp DESC Limit ?"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    move/from16 v0, p0

    int-to-long v2, v0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const-string v2, "url"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v0, "readProgress"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    const-string v0, "createAt"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "isRead"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "episode"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "ep"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "se"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "resolution"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "resourcePosition"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "multiresolution"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "videoWidth"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "videoHeight"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "downloadErrorCount"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    const-string v0, "subtitleStarted"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    const-string v0, "subjectId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    const-string v0, "pageFrom"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    const-string v0, "lastPageFrom"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    const-string v0, "subjectName"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v0

    const-string v0, "lastPlayTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v32, v0

    const-string v0, "fileType"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v33, v0

    const-string v0, "totalEpisode"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v34, v0

    const-string v0, "uploadBy"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v35, v0

    const-string v0, "sourceUrl"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v36, v0

    const-string v0, "urlCreateAt"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v37, v0

    const-string v0, "subtitleSelectId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v38, v0

    const-string v0, "taskId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v39, v0

    const-string v0, "sessionTime"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v40, v0

    const-string v0, "reportStatus"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v41, v0

    const-string v0, "downloadHeaderSize"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v42, v0

    const-string v0, "rootPath"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v43, v0

    const-string v0, "rootPathType"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v44, v0

    const-string v0, "thumbnail"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v45, v0

    const-string v0, "averageHueLight"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v46, v0

    const-string v0, "isTransferFailed"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v47, v0

    const-string v0, "isClosedTransferFailed"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v48, v0

    const-string v0, "subjectType"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v49, v0

    const-string v0, "genre"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v50, v0

    const-string v0, "subjectDurationSeconds"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v51, v0

    const-string v0, "currentDubLanName"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v52, v0

    const-string v0, "currentDubLanCode"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v53, v0

    const-string v0, "ops"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v54, v0

    const-string v0, "restrictLevel"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v55, v0

    const-string v0, "releaseDate"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v56, v0

    const-string v0, "countryName"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v57, v0

    const-string v0, "seNum"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v58, v0

    const-string v0, "subtitles"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v59, v0

    const-string v0, "imdbRate"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v60, v0

    const-string v0, "lastAdStartTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v61, v0

    const-string v0, "lastAdEndTimeStamp"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v62, v0

    const-string v0, "subtitleIdType"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v63, v0

    const-string v0, "ugcVideoCollectionId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v64, v0

    const-string v0, "ugcVideoId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v65, v0

    const-string v0, "ugcVideoName"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v66, v0

    const-string v0, "ugcVideoCollectionName"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v67, v0

    const-string v0, "ugcVideoPosition"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v68, v0

    const-string v0, "ugcVideoType"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v69, v0

    const-string v0, "ugcCateLev1Id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v70, v0

    const-string v0, "ugcCateLev2Id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v71, v0

    const-string v0, "ugcCateLev3Id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v72, v0

    const-string v0, "ugcCateLev4Id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v73, v0

    const-string v0, "ugcVideoTrackId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v74, v0

    const-string v0, "ugcVideoParentVideoId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v75, v0

    const-string v0, "ugcVideoParentTrackId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v76, v0

    const-string v0, "ugcVideoEpTitle"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v77, v0

    const-string v0, "ugcVideoIsVertical"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v78, v0

    const-string v0, "originData"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v79, v0

    const-string v0, "kidId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v80, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_36

    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_0

    move-object/from16 v84, v82

    goto :goto_1

    :cond_0
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_1

    move-object/from16 v85, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v86, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v87, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v88, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v89, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v90, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v91, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v92, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v93, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_a
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v2

    move/from16 v171, v3

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v172, v4

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v173, v5

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p1

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 v5, v16

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v5

    move/from16 v174, v7

    move/from16 v5, v17

    move/from16 v17, v6

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v175, v9

    move/from16 v7, v18

    move/from16 v18, v8

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v176, v11

    move/from16 v9, v19

    move/from16 v19, v10

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v177, v13

    move/from16 v11, v20

    move/from16 v20, v12

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v178, v15

    move/from16 v13, v21

    move/from16 v21, v14

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v107, v14

    move/from16 v15, v22

    move/from16 v22, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v106, v12

    move/from16 v14, v23

    move/from16 v23, v11

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v179, v14

    move/from16 v12, v24

    move/from16 v24, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v180, v12

    move/from16 v15, v25

    move/from16 v25, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v181, v15

    move/from16 v12, v26

    move/from16 v26, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v182, v12

    move/from16 v15, v27

    move/from16 v27, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v28

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    move/from16 v28, v5

    move/from16 v5, v29

    move-object/from16 v114, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v5

    move/from16 v5, v29

    :goto_b
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_b

    move/from16 v29, v5

    move/from16 v5, v30

    move-object/from16 v115, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v5

    move/from16 v5, v30

    :goto_c
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_c

    move/from16 v30, v5

    move/from16 v5, v31

    move-object/from16 v116, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v5

    move/from16 v5, v31

    :goto_d
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_d

    move/from16 v31, v5

    move/from16 v5, v32

    move-object/from16 v117, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v5

    move/from16 v5, v32

    :goto_e
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v5

    move/from16 v183, v12

    move/from16 v5, v33

    move/from16 v33, v11

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v184, v15

    move/from16 v12, v34

    move/from16 v34, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v35

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_e

    move/from16 v35, v5

    move/from16 v5, v36

    move-object/from16 v122, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v5

    move/from16 v5, v36

    :goto_f
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_f

    move/from16 v36, v5

    move/from16 v5, v37

    move-object/from16 v123, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v5

    move/from16 v5, v37

    :goto_10
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v5

    move/from16 v5, v38

    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_10

    move/from16 v38, v5

    move/from16 v5, v39

    move-object/from16 v126, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v5

    move/from16 v5, v39

    :goto_11
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_11

    move/from16 v39, v5

    move/from16 v5, v40

    move-object/from16 v127, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v5

    move/from16 v5, v40

    :goto_12
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v5

    move/from16 v185, v15

    move/from16 v5, v41

    move/from16 v41, v14

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v5

    move/from16 v5, v43

    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_12

    move/from16 v43, v5

    move/from16 v186, v15

    move/from16 v5, v44

    move-object/from16 v133, v82

    :goto_13
    move/from16 v44, v14

    goto :goto_14

    :cond_12
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v186, v15

    move-object/from16 v133, v43

    move/from16 v43, v5

    move/from16 v5, v44

    goto :goto_13

    :goto_14
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_13

    move/from16 v45, v5

    move/from16 v5, v46

    move-object/from16 v135, v82

    goto :goto_15

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v5

    move/from16 v5, v46

    :goto_15
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_14

    move/from16 v46, v5

    move/from16 v187, v15

    move/from16 v5, v47

    move-object/from16 v136, v82

    :goto_16
    move/from16 v47, v14

    goto :goto_17

    :cond_14
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v187, v15

    move-object/from16 v136, v46

    move/from16 v46, v5

    move/from16 v5, v47

    goto :goto_16

    :goto_17
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v188, v12

    if-eqz v14, :cond_15

    move/from16 v14, v48

    const/16 v137, 0x1

    :goto_18
    move/from16 v48, v11

    goto :goto_19

    :cond_15
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_18

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_16

    move/from16 v11, v49

    const/16 v138, 0x1

    :goto_1a
    move/from16 v49, v14

    goto :goto_1b

    :cond_16
    move/from16 v11, v49

    const/16 v138, 0x0

    goto :goto_1a

    :goto_1b
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v50

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_17

    move/from16 v12, v51

    move-object/from16 v140, v82

    goto :goto_1c

    :cond_17
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v12, v51

    :goto_1c
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_18

    move/from16 v51, v14

    move/from16 v189, v15

    move/from16 v14, v52

    move-object/from16 v141, v82

    goto :goto_1d

    :cond_18
    move/from16 v51, v14

    move/from16 v189, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v52

    :goto_1d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_19

    move/from16 v15, v53

    move-object/from16 v142, v82

    goto :goto_1e

    :cond_19
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v142, v15

    move/from16 v15, v53

    :goto_1e
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1a

    move/from16 v52, v5

    move/from16 v5, v54

    move-object/from16 v143, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v5

    move/from16 v5, v54

    :goto_1f
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1b

    move/from16 v54, v5

    move/from16 v5, v55

    move-object/from16 v144, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v5

    move-object/from16 v144, v53

    move/from16 v5, v55

    :goto_20
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v55, v5

    move/from16 v5, v56

    move-object/from16 v145, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v5

    move-object/from16 v145, v53

    move/from16 v5, v56

    :goto_21
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v56, v5

    move/from16 v5, v57

    move-object/from16 v146, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v5

    move-object/from16 v146, v53

    move/from16 v5, v57

    :goto_22
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v57, v5

    move/from16 v5, v58

    move-object/from16 v147, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v5

    move-object/from16 v147, v53

    move/from16 v5, v58

    :goto_23
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v53, v11

    move/from16 v58, v12

    move/from16 v11, v59

    move-object/from16 v148, v82

    goto :goto_24

    :cond_1f
    move/from16 v53, v11

    move/from16 v58, v12

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v148, v11

    move/from16 v11, v59

    :goto_24
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_20

    move/from16 v12, v60

    move-object/from16 v149, v82

    goto :goto_25

    :cond_20
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v149, v12

    move/from16 v12, v60

    :goto_25
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_21

    move/from16 v59, v5

    move/from16 v5, v61

    move-object/from16 v150, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v5

    move/from16 v5, v61

    :goto_26
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_22

    move/from16 v61, v5

    move/from16 v5, v62

    move-object/from16 v151, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v5

    move-object/from16 v151, v60

    move/from16 v5, v62

    :goto_27
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v62, v5

    move/from16 v5, v63

    move-object/from16 v152, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v5

    move-object/from16 v152, v60

    move/from16 v5, v63

    :goto_28
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v63, v5

    move/from16 v5, v64

    move-object/from16 v153, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v5

    move-object/from16 v153, v60

    move/from16 v5, v64

    :goto_29
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v64, v5

    move/from16 v5, v65

    move-object/from16 v154, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v5

    move-object/from16 v154, v60

    move/from16 v5, v65

    :goto_2a
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v65, v5

    move/from16 v5, v66

    move-object/from16 v155, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v5

    move-object/from16 v155, v60

    move/from16 v5, v66

    :goto_2b
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v66, v5

    move/from16 v5, v67

    move-object/from16 v156, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v5

    move-object/from16 v156, v60

    move/from16 v5, v67

    :goto_2c
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v67, v5

    move/from16 v5, v68

    move-object/from16 v157, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v5

    move-object/from16 v157, v60

    move/from16 v5, v68

    :goto_2d
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v60, v11

    move/from16 v68, v12

    move/from16 v11, v69

    move-object/from16 v158, v82

    goto :goto_2e

    :cond_29
    move/from16 v60, v11

    move/from16 v68, v12

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v158, v11

    move/from16 v11, v69

    :goto_2e
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2a

    move/from16 v12, v70

    move-object/from16 v159, v82

    goto :goto_2f

    :cond_2a
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v159, v12

    move/from16 v12, v70

    :goto_2f
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2b

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_30

    :cond_2b
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move v15, v11

    move/from16 v71, v12

    move/from16 v11, v72

    move-object/from16 v161, v82

    goto :goto_31

    :cond_2c
    move v15, v11

    move/from16 v71, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v161, v11

    move/from16 v11, v72

    :goto_31
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2d

    move v12, v14

    move/from16 v72, v15

    move/from16 v14, v73

    move-object/from16 v162, v82

    goto :goto_32

    :cond_2d
    move v12, v14

    move/from16 v72, v15

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v73

    :goto_32
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2e

    move v15, v11

    move/from16 v73, v12

    move/from16 v11, v74

    move-object/from16 v163, v82

    goto :goto_33

    :cond_2e
    move v15, v11

    move/from16 v73, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v163, v11

    move/from16 v11, v74

    :goto_33
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2f

    move/from16 v12, v75

    move-object/from16 v164, v82

    goto :goto_34

    :cond_2f
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v164, v12

    move/from16 v12, v75

    :goto_34
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_30

    move/from16 v74, v5

    move/from16 v5, v76

    move-object/from16 v165, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v5

    move/from16 v5, v76

    :goto_35
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_31

    move/from16 v76, v5

    move/from16 v5, v77

    move-object/from16 v166, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v5

    move-object/from16 v166, v75

    move/from16 v5, v77

    :goto_36
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v77, v5

    move/from16 v75, v11

    move/from16 v5, v78

    move-object/from16 v167, v82

    :goto_37
    move/from16 v78, v12

    goto :goto_38

    :cond_32
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v5

    move-object/from16 v167, v75

    move/from16 v5, v78

    move/from16 v75, v11

    goto :goto_37

    :goto_38
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_33

    move/from16 v11, v79

    const/16 v168, 0x1

    goto :goto_39

    :cond_33
    move/from16 v11, v79

    const/16 v168, 0x0

    :goto_39
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_34

    move/from16 v12, v80

    move-object/from16 v169, v82

    goto :goto_3a

    :cond_34
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v169, v12

    move/from16 v12, v80

    :goto_3a
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_35

    :goto_3b
    move/from16 v50, v5

    move-object/from16 v170, v82

    goto :goto_3c

    :cond_35
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3b

    :goto_3c
    new-instance v5, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v5

    move/from16 v96, v2

    move/from16 v97, v3

    move/from16 v98, v4

    move/from16 v103, v6

    move/from16 v104, v8

    move/from16 v105, v10

    move/from16 v108, v13

    move/from16 v109, v25

    move/from16 v110, v26

    move/from16 v111, v27

    move/from16 v112, v34

    move/from16 v113, v33

    move/from16 v120, v48

    move/from16 v121, v41

    move/from16 v130, v44

    move/from16 v134, v47

    move/from16 v139, v51

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v79, v11

    move/from16 v80, v12

    move/from16 v6, v17

    move/from16 v8, v18

    move/from16 v10, v19

    move/from16 v12, v20

    move/from16 v20, v23

    move/from16 v17, v28

    move/from16 v33, v35

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v47, v52

    move/from16 v49, v53

    move/from16 v51, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v52, v69

    move/from16 v53, v70

    move/from16 v70, v71

    move/from16 v69, v72

    move/from16 v71, v73

    move/from16 v68, v74

    move/from16 v74, v75

    move/from16 v75, v78

    move/from16 v2, v81

    move/from16 v3, v171

    move/from16 v4, v172

    move/from16 v5, v173

    move/from16 v11, v176

    move/from16 v13, v177

    move/from16 v23, v179

    move/from16 v25, v181

    move/from16 v26, v182

    move/from16 v28, v183

    move/from16 v27, v184

    move/from16 v35, v185

    move/from16 v42, v186

    move/from16 v45, v187

    move/from16 v34, v188

    move/from16 v18, v7

    move/from16 v19, v9

    move/from16 v73, v14

    move/from16 v72, v15

    move/from16 v14, v21

    move/from16 v21, v22

    move/from16 v22, v24

    move/from16 v78, v50

    move/from16 v7, v174

    move/from16 v9, v175

    move/from16 v15, v178

    move/from16 v24, v180

    move/from16 v50, v189

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3d

    :cond_36
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v0

    :goto_3d
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method public static synthetic J(Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    invoke-static {p0}, Llj/l0;->G0(Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic J0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 190

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ?  ORDER BY episode ASC "

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

    goto/16 :goto_3e

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v79, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v80, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_1

    move-object/from16 v84, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v85, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v86, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v87, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v88, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v89, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v90, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v91, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v92, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_a

    move-object/from16 v93, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_b
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v3

    move/from16 v171, v4

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v172, v5

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v173, v6

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 p0, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v0

    move/from16 v174, v6

    move/from16 v0, v17

    move/from16 v17, v7

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v175, v9

    move/from16 v7, v18

    move/from16 v18, v8

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v176, v11

    move/from16 v9, v19

    move/from16 v19, v10

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v177, v13

    move/from16 v11, v20

    move/from16 v20, v12

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v178, v15

    move/from16 v13, v21

    move/from16 v21, v14

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v107, v14

    move/from16 v15, v22

    move/from16 v22, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v106, v12

    move/from16 v14, v23

    move/from16 v23, v11

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v179, v14

    move/from16 v12, v24

    move/from16 v24, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v180, v12

    move/from16 v15, v25

    move/from16 v25, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v181, v15

    move/from16 v12, v26

    move/from16 v26, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v182, v12

    move/from16 v15, v27

    move/from16 v27, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v28

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_b

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v114, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v0

    move/from16 v0, v29

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_c

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v115, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v0

    move/from16 v0, v30

    :goto_d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_d

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v116, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v0

    move/from16 v0, v31

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_e

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v117, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v0

    move/from16 v0, v32

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v0

    move/from16 v183, v12

    move/from16 v0, v33

    move/from16 v33, v11

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v184, v15

    move/from16 v12, v34

    move/from16 v34, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v35

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_f

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v122, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v0

    move/from16 v0, v36

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_10

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v123, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v0

    move/from16 v0, v37

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_11

    move/from16 v38, v0

    move/from16 v0, v39

    move-object/from16 v126, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v0

    move/from16 v0, v39

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_12

    move/from16 v39, v0

    move/from16 v0, v40

    move-object/from16 v127, v82

    goto :goto_13

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v0

    move/from16 v0, v40

    :goto_13
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v0

    move/from16 v185, v15

    move/from16 v0, v41

    move/from16 v41, v14

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v0

    move/from16 v0, v43

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_13

    move/from16 v43, v0

    move/from16 v186, v15

    move/from16 v0, v44

    move-object/from16 v133, v82

    :goto_14
    move/from16 v44, v14

    goto :goto_15

    :cond_13
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v186, v15

    move-object/from16 v133, v43

    move/from16 v43, v0

    move/from16 v0, v44

    goto :goto_14

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_14

    move/from16 v45, v0

    move/from16 v0, v46

    move-object/from16 v135, v82

    goto :goto_16

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v0

    move/from16 v0, v46

    :goto_16
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_15

    move/from16 v46, v0

    move/from16 v187, v15

    move/from16 v0, v47

    move-object/from16 v136, v82

    :goto_17
    move/from16 v47, v14

    goto :goto_18

    :cond_15
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v187, v15

    move-object/from16 v136, v46

    move/from16 v46, v0

    move/from16 v0, v47

    goto :goto_17

    :goto_18
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v188, v12

    if-eqz v14, :cond_16

    move/from16 v14, v48

    const/16 v137, 0x1

    :goto_19
    move/from16 v48, v11

    goto :goto_1a

    :cond_16
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_19

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_17

    move/from16 v11, v49

    const/16 v138, 0x1

    :goto_1b
    move/from16 v49, v14

    goto :goto_1c

    :cond_17
    move/from16 v11, v49

    const/16 v138, 0x0

    goto :goto_1b

    :goto_1c
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v50

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_18

    move/from16 v12, v51

    move-object/from16 v140, v82

    goto :goto_1d

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v12, v51

    :goto_1d
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_19

    move/from16 v51, v14

    move/from16 v189, v15

    move/from16 v14, v52

    move-object/from16 v141, v82

    goto :goto_1e

    :cond_19
    move/from16 v51, v14

    move/from16 v189, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v52

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v15, v53

    move-object/from16 v142, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v142, v15

    move/from16 v15, v53

    :goto_1f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1b

    move/from16 v52, v0

    move/from16 v0, v54

    move-object/from16 v143, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v0

    move/from16 v0, v54

    :goto_20
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v54, v0

    move/from16 v0, v55

    move-object/from16 v144, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v0

    move-object/from16 v144, v53

    move/from16 v0, v55

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v55, v0

    move/from16 v0, v56

    move-object/from16 v145, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v0

    move-object/from16 v145, v53

    move/from16 v0, v56

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v56, v0

    move/from16 v0, v57

    move-object/from16 v146, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v0

    move-object/from16 v146, v53

    move/from16 v0, v57

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v57, v0

    move/from16 v0, v58

    move-object/from16 v147, v82

    goto :goto_24

    :cond_1f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v0

    move-object/from16 v147, v53

    move/from16 v0, v58

    :goto_24
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_20

    move/from16 v53, v11

    move/from16 v58, v12

    move/from16 v11, v59

    move-object/from16 v148, v82

    goto :goto_25

    :cond_20
    move/from16 v53, v11

    move/from16 v58, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v148, v11

    move/from16 v11, v59

    :goto_25
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_21

    move/from16 v12, v60

    move-object/from16 v149, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v149, v12

    move/from16 v12, v60

    :goto_26
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_22

    move/from16 v59, v0

    move/from16 v0, v61

    move-object/from16 v150, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v0

    move/from16 v0, v61

    :goto_27
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v61, v0

    move/from16 v0, v62

    move-object/from16 v151, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v0

    move-object/from16 v151, v60

    move/from16 v0, v62

    :goto_28
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v62, v0

    move/from16 v0, v63

    move-object/from16 v152, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v0

    move-object/from16 v152, v60

    move/from16 v0, v63

    :goto_29
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v63, v0

    move/from16 v0, v64

    move-object/from16 v153, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v0

    move-object/from16 v153, v60

    move/from16 v0, v64

    :goto_2a
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v64, v0

    move/from16 v0, v65

    move-object/from16 v154, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v0

    move-object/from16 v154, v60

    move/from16 v0, v65

    :goto_2b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v65, v0

    move/from16 v0, v66

    move-object/from16 v155, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v0

    move-object/from16 v155, v60

    move/from16 v0, v66

    :goto_2c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v66, v0

    move/from16 v0, v67

    move-object/from16 v156, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v0

    move-object/from16 v156, v60

    move/from16 v0, v67

    :goto_2d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v67, v0

    move/from16 v0, v68

    move-object/from16 v157, v82

    goto :goto_2e

    :cond_29
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v0

    move-object/from16 v157, v60

    move/from16 v0, v68

    :goto_2e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_2a

    move/from16 v60, v11

    move/from16 v68, v12

    move/from16 v11, v69

    move-object/from16 v158, v82

    goto :goto_2f

    :cond_2a
    move/from16 v60, v11

    move/from16 v68, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v158, v11

    move/from16 v11, v69

    :goto_2f
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2b

    move/from16 v12, v70

    move-object/from16 v159, v82

    goto :goto_30

    :cond_2b
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v159, v12

    move/from16 v12, v70

    :goto_30
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2c

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_31

    :cond_2c
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move v15, v11

    move/from16 v71, v12

    move/from16 v11, v72

    move-object/from16 v161, v82

    goto :goto_32

    :cond_2d
    move v15, v11

    move/from16 v71, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v161, v11

    move/from16 v11, v72

    :goto_32
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2e

    move v12, v14

    move/from16 v72, v15

    move/from16 v14, v73

    move-object/from16 v162, v82

    goto :goto_33

    :cond_2e
    move v12, v14

    move/from16 v72, v15

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v73

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move v15, v11

    move/from16 v73, v12

    move/from16 v11, v74

    move-object/from16 v163, v82

    goto :goto_34

    :cond_2f
    move v15, v11

    move/from16 v73, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v163, v11

    move/from16 v11, v74

    :goto_34
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_30

    move/from16 v12, v75

    move-object/from16 v164, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v164, v12

    move/from16 v12, v75

    :goto_35
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_31

    move/from16 v74, v0

    move/from16 v0, v76

    move-object/from16 v165, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v0

    move/from16 v0, v76

    :goto_36
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v76, v0

    move/from16 v0, v77

    move-object/from16 v166, v82

    goto :goto_37

    :cond_32
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v0

    move-object/from16 v166, v75

    move/from16 v0, v77

    :goto_37
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_33

    move/from16 v77, v0

    move/from16 v75, v11

    move/from16 v0, v78

    move-object/from16 v167, v82

    :goto_38
    move/from16 v78, v12

    goto :goto_39

    :cond_33
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v0

    move-object/from16 v167, v75

    move/from16 v0, v78

    move/from16 v75, v11

    goto :goto_38

    :goto_39
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_34

    move/from16 v11, v79

    const/16 v168, 0x1

    goto :goto_3a

    :cond_34
    move/from16 v11, v79

    const/16 v168, 0x0

    :goto_3a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_35

    move/from16 v12, v80

    move-object/from16 v169, v82

    goto :goto_3b

    :cond_35
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v169, v12

    move/from16 v12, v80

    :goto_3b
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_36

    :goto_3c
    move/from16 v50, v0

    move-object/from16 v170, v82

    goto :goto_3d

    :cond_36
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3c

    :goto_3d
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v0

    move/from16 v96, v3

    move/from16 v97, v4

    move/from16 v98, v5

    move/from16 v103, v6

    move/from16 v104, v8

    move/from16 v105, v10

    move/from16 v108, v13

    move/from16 v109, v25

    move/from16 v110, v26

    move/from16 v111, v27

    move/from16 v112, v34

    move/from16 v113, v33

    move/from16 v120, v48

    move/from16 v121, v41

    move/from16 v130, v44

    move/from16 v134, v47

    move/from16 v139, v51

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v79, v11

    move/from16 v80, v12

    move/from16 v8, v18

    move/from16 v10, v19

    move/from16 v12, v20

    move/from16 v20, v23

    move/from16 v33, v35

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v47, v52

    move/from16 v49, v53

    move/from16 v51, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v52, v69

    move/from16 v53, v70

    move/from16 v70, v71

    move/from16 v69, v72

    move/from16 v71, v73

    move/from16 v68, v74

    move/from16 v74, v75

    move/from16 v75, v78

    move/from16 v3, v81

    move/from16 v4, v171

    move/from16 v5, v172

    move/from16 v6, v173

    move/from16 p0, v174

    move/from16 v11, v176

    move/from16 v13, v177

    move/from16 v23, v179

    move/from16 v25, v181

    move/from16 v26, v182

    move/from16 v27, v184

    move/from16 v35, v185

    move/from16 v42, v186

    move/from16 v45, v187

    move/from16 v34, v188

    move/from16 v18, v7

    move/from16 v19, v9

    move/from16 v73, v14

    move/from16 v72, v15

    move/from16 v7, v17

    move/from16 v14, v21

    move/from16 v21, v22

    move/from16 v22, v24

    move/from16 v17, v28

    move/from16 v78, v50

    move/from16 v9, v175

    move/from16 v15, v178

    move/from16 v24, v180

    move/from16 v28, v183

    move/from16 v50, v189

    goto/16 :goto_1

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_3e
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method public static synthetic K(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->C0(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic K0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 190

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? AND status = 5  ORDER BY episode ASC "

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

    goto/16 :goto_3e

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v79, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v80, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_1

    move-object/from16 v84, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v85, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v86, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v87, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v88, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v89, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v90, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v91, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v92, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_a

    move-object/from16 v93, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_b
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v3

    move/from16 v171, v4

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v172, v5

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v173, v6

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 p0, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v0

    move/from16 v174, v6

    move/from16 v0, v17

    move/from16 v17, v7

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v175, v9

    move/from16 v7, v18

    move/from16 v18, v8

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v176, v11

    move/from16 v9, v19

    move/from16 v19, v10

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v177, v13

    move/from16 v11, v20

    move/from16 v20, v12

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v178, v15

    move/from16 v13, v21

    move/from16 v21, v14

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v107, v14

    move/from16 v15, v22

    move/from16 v22, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v106, v12

    move/from16 v14, v23

    move/from16 v23, v11

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v179, v14

    move/from16 v12, v24

    move/from16 v24, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v180, v12

    move/from16 v15, v25

    move/from16 v25, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v181, v15

    move/from16 v12, v26

    move/from16 v26, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v182, v12

    move/from16 v15, v27

    move/from16 v27, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v28

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_b

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v114, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v0

    move/from16 v0, v29

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_c

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v115, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v0

    move/from16 v0, v30

    :goto_d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_d

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v116, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v0

    move/from16 v0, v31

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_e

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v117, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v0

    move/from16 v0, v32

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v0

    move/from16 v183, v12

    move/from16 v0, v33

    move/from16 v33, v11

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v184, v15

    move/from16 v12, v34

    move/from16 v34, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v35

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_f

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v122, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v0

    move/from16 v0, v36

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_10

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v123, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v0

    move/from16 v0, v37

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_11

    move/from16 v38, v0

    move/from16 v0, v39

    move-object/from16 v126, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v0

    move/from16 v0, v39

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_12

    move/from16 v39, v0

    move/from16 v0, v40

    move-object/from16 v127, v82

    goto :goto_13

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v0

    move/from16 v0, v40

    :goto_13
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v0

    move/from16 v185, v15

    move/from16 v0, v41

    move/from16 v41, v14

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v0

    move/from16 v0, v43

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_13

    move/from16 v43, v0

    move/from16 v186, v15

    move/from16 v0, v44

    move-object/from16 v133, v82

    :goto_14
    move/from16 v44, v14

    goto :goto_15

    :cond_13
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v186, v15

    move-object/from16 v133, v43

    move/from16 v43, v0

    move/from16 v0, v44

    goto :goto_14

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_14

    move/from16 v45, v0

    move/from16 v0, v46

    move-object/from16 v135, v82

    goto :goto_16

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v0

    move/from16 v0, v46

    :goto_16
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_15

    move/from16 v46, v0

    move/from16 v187, v15

    move/from16 v0, v47

    move-object/from16 v136, v82

    :goto_17
    move/from16 v47, v14

    goto :goto_18

    :cond_15
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v187, v15

    move-object/from16 v136, v46

    move/from16 v46, v0

    move/from16 v0, v47

    goto :goto_17

    :goto_18
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v188, v12

    if-eqz v14, :cond_16

    move/from16 v14, v48

    const/16 v137, 0x1

    :goto_19
    move/from16 v48, v11

    goto :goto_1a

    :cond_16
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_19

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_17

    move/from16 v11, v49

    const/16 v138, 0x1

    :goto_1b
    move/from16 v49, v14

    goto :goto_1c

    :cond_17
    move/from16 v11, v49

    const/16 v138, 0x0

    goto :goto_1b

    :goto_1c
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v50

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_18

    move/from16 v12, v51

    move-object/from16 v140, v82

    goto :goto_1d

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v12, v51

    :goto_1d
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_19

    move/from16 v51, v14

    move/from16 v189, v15

    move/from16 v14, v52

    move-object/from16 v141, v82

    goto :goto_1e

    :cond_19
    move/from16 v51, v14

    move/from16 v189, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v52

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v15, v53

    move-object/from16 v142, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v142, v15

    move/from16 v15, v53

    :goto_1f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1b

    move/from16 v52, v0

    move/from16 v0, v54

    move-object/from16 v143, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v0

    move/from16 v0, v54

    :goto_20
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v54, v0

    move/from16 v0, v55

    move-object/from16 v144, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v0

    move-object/from16 v144, v53

    move/from16 v0, v55

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v55, v0

    move/from16 v0, v56

    move-object/from16 v145, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v0

    move-object/from16 v145, v53

    move/from16 v0, v56

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v56, v0

    move/from16 v0, v57

    move-object/from16 v146, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v0

    move-object/from16 v146, v53

    move/from16 v0, v57

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v57, v0

    move/from16 v0, v58

    move-object/from16 v147, v82

    goto :goto_24

    :cond_1f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v0

    move-object/from16 v147, v53

    move/from16 v0, v58

    :goto_24
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_20

    move/from16 v53, v11

    move/from16 v58, v12

    move/from16 v11, v59

    move-object/from16 v148, v82

    goto :goto_25

    :cond_20
    move/from16 v53, v11

    move/from16 v58, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v148, v11

    move/from16 v11, v59

    :goto_25
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_21

    move/from16 v12, v60

    move-object/from16 v149, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v149, v12

    move/from16 v12, v60

    :goto_26
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_22

    move/from16 v59, v0

    move/from16 v0, v61

    move-object/from16 v150, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v0

    move/from16 v0, v61

    :goto_27
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v61, v0

    move/from16 v0, v62

    move-object/from16 v151, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v0

    move-object/from16 v151, v60

    move/from16 v0, v62

    :goto_28
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v62, v0

    move/from16 v0, v63

    move-object/from16 v152, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v0

    move-object/from16 v152, v60

    move/from16 v0, v63

    :goto_29
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v63, v0

    move/from16 v0, v64

    move-object/from16 v153, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v0

    move-object/from16 v153, v60

    move/from16 v0, v64

    :goto_2a
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v64, v0

    move/from16 v0, v65

    move-object/from16 v154, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v0

    move-object/from16 v154, v60

    move/from16 v0, v65

    :goto_2b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v65, v0

    move/from16 v0, v66

    move-object/from16 v155, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v0

    move-object/from16 v155, v60

    move/from16 v0, v66

    :goto_2c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v66, v0

    move/from16 v0, v67

    move-object/from16 v156, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v0

    move-object/from16 v156, v60

    move/from16 v0, v67

    :goto_2d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v67, v0

    move/from16 v0, v68

    move-object/from16 v157, v82

    goto :goto_2e

    :cond_29
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v0

    move-object/from16 v157, v60

    move/from16 v0, v68

    :goto_2e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_2a

    move/from16 v60, v11

    move/from16 v68, v12

    move/from16 v11, v69

    move-object/from16 v158, v82

    goto :goto_2f

    :cond_2a
    move/from16 v60, v11

    move/from16 v68, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v158, v11

    move/from16 v11, v69

    :goto_2f
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2b

    move/from16 v12, v70

    move-object/from16 v159, v82

    goto :goto_30

    :cond_2b
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v159, v12

    move/from16 v12, v70

    :goto_30
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2c

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_31

    :cond_2c
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move v15, v11

    move/from16 v71, v12

    move/from16 v11, v72

    move-object/from16 v161, v82

    goto :goto_32

    :cond_2d
    move v15, v11

    move/from16 v71, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v161, v11

    move/from16 v11, v72

    :goto_32
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2e

    move v12, v14

    move/from16 v72, v15

    move/from16 v14, v73

    move-object/from16 v162, v82

    goto :goto_33

    :cond_2e
    move v12, v14

    move/from16 v72, v15

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v73

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move v15, v11

    move/from16 v73, v12

    move/from16 v11, v74

    move-object/from16 v163, v82

    goto :goto_34

    :cond_2f
    move v15, v11

    move/from16 v73, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v163, v11

    move/from16 v11, v74

    :goto_34
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_30

    move/from16 v12, v75

    move-object/from16 v164, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v164, v12

    move/from16 v12, v75

    :goto_35
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_31

    move/from16 v74, v0

    move/from16 v0, v76

    move-object/from16 v165, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v0

    move/from16 v0, v76

    :goto_36
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v76, v0

    move/from16 v0, v77

    move-object/from16 v166, v82

    goto :goto_37

    :cond_32
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v0

    move-object/from16 v166, v75

    move/from16 v0, v77

    :goto_37
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_33

    move/from16 v77, v0

    move/from16 v75, v11

    move/from16 v0, v78

    move-object/from16 v167, v82

    :goto_38
    move/from16 v78, v12

    goto :goto_39

    :cond_33
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v0

    move-object/from16 v167, v75

    move/from16 v0, v78

    move/from16 v75, v11

    goto :goto_38

    :goto_39
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_34

    move/from16 v11, v79

    const/16 v168, 0x1

    goto :goto_3a

    :cond_34
    move/from16 v11, v79

    const/16 v168, 0x0

    :goto_3a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_35

    move/from16 v12, v80

    move-object/from16 v169, v82

    goto :goto_3b

    :cond_35
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v169, v12

    move/from16 v12, v80

    :goto_3b
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_36

    :goto_3c
    move/from16 v50, v0

    move-object/from16 v170, v82

    goto :goto_3d

    :cond_36
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3c

    :goto_3d
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v0

    move/from16 v96, v3

    move/from16 v97, v4

    move/from16 v98, v5

    move/from16 v103, v6

    move/from16 v104, v8

    move/from16 v105, v10

    move/from16 v108, v13

    move/from16 v109, v25

    move/from16 v110, v26

    move/from16 v111, v27

    move/from16 v112, v34

    move/from16 v113, v33

    move/from16 v120, v48

    move/from16 v121, v41

    move/from16 v130, v44

    move/from16 v134, v47

    move/from16 v139, v51

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v79, v11

    move/from16 v80, v12

    move/from16 v8, v18

    move/from16 v10, v19

    move/from16 v12, v20

    move/from16 v20, v23

    move/from16 v33, v35

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v47, v52

    move/from16 v49, v53

    move/from16 v51, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v52, v69

    move/from16 v53, v70

    move/from16 v70, v71

    move/from16 v69, v72

    move/from16 v71, v73

    move/from16 v68, v74

    move/from16 v74, v75

    move/from16 v75, v78

    move/from16 v3, v81

    move/from16 v4, v171

    move/from16 v5, v172

    move/from16 v6, v173

    move/from16 p0, v174

    move/from16 v11, v176

    move/from16 v13, v177

    move/from16 v23, v179

    move/from16 v25, v181

    move/from16 v26, v182

    move/from16 v27, v184

    move/from16 v35, v185

    move/from16 v42, v186

    move/from16 v45, v187

    move/from16 v34, v188

    move/from16 v18, v7

    move/from16 v19, v9

    move/from16 v73, v14

    move/from16 v72, v15

    move/from16 v7, v17

    move/from16 v14, v21

    move/from16 v21, v22

    move/from16 v22, v24

    move/from16 v17, v28

    move/from16 v78, v50

    move/from16 v9, v175

    move/from16 v15, v178

    move/from16 v24, v180

    move/from16 v28, v183

    move/from16 v50, v189

    goto/16 :goto_1

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_3e
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method public static synthetic L(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->K0(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic L0(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 168

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ?  AND se =? AND ep =? ORDER BY resolution DESC LIMIT 1"

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

    goto/16 :goto_38

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

    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p2, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v78

    const/16 v79, 0x0

    if-eqz v78, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v78

    if-eqz v78, :cond_1

    move-object/from16 v81, v79

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v81, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v82, v79

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v82, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v83, v79

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v83, v0

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v84, v79

    goto :goto_4

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v84, v0

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v85, v79

    goto :goto_5

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v85, v0

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v86, v79

    goto :goto_6

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v86, v0

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v87, v79

    goto :goto_7

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v87, v0

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v88, v79

    goto :goto_8

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v88, v0

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v89, v79

    goto :goto_9

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v89, v0

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v90, v79

    goto :goto_a

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v90, v0

    :goto_a
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v91

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v96

    move/from16 v5, p1

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v98

    move/from16 v5, p2

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, v16

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, v17

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v18

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v9, v19

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v10, v20

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v11, v21

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v22

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v13, v23

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v24

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v16, v14

    move/from16 v15, v25

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v26

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v15, v27

    move-object/from16 v111, v79

    goto :goto_b

    :cond_b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v111, v15

    move/from16 v15, v27

    :goto_b
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v15, v28

    move-object/from16 v112, v79

    goto :goto_c

    :cond_c
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v112, v15

    move/from16 v15, v28

    :goto_c
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v15, v29

    move-object/from16 v113, v79

    goto :goto_d

    :cond_d
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v113, v15

    move/from16 v15, v29

    :goto_d
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v15, v30

    move-object/from16 v114, v79

    goto :goto_e

    :cond_e
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v114, v15

    move/from16 v15, v30

    :goto_e
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v115

    move/from16 v17, v14

    move/from16 v15, v31

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v18, v14

    move/from16 v15, v32

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v33

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v15, v34

    move-object/from16 v119, v79

    goto :goto_f

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v119, v15

    move/from16 v15, v34

    :goto_f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v15, v35

    move-object/from16 v120, v79

    goto :goto_10

    :cond_10
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v120, v15

    move/from16 v15, v35

    :goto_10
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v121

    move/from16 v15, v36

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    move/from16 v15, v37

    move-object/from16 v123, v79

    goto :goto_11

    :cond_11
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v123, v15

    move/from16 v15, v37

    :goto_11
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_12

    move/from16 v15, v38

    move-object/from16 v124, v79

    goto :goto_12

    :cond_12
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v124, v15

    move/from16 v15, v38

    :goto_12
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v125

    move/from16 v19, v14

    move/from16 v15, v39

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v40

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v15, v41

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_13

    move/from16 v20, v14

    move/from16 v15, v42

    move-object/from16 v130, v79

    goto :goto_13

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v20, v14

    move-object/from16 v130, v15

    move/from16 v15, v42

    :goto_13
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v43

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v15, v44

    move-object/from16 v132, v79

    goto :goto_14

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v132, v15

    move/from16 v15, v44

    :goto_14
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move/from16 v21, v14

    move/from16 v15, v45

    move-object/from16 v133, v79

    goto :goto_15

    :cond_15
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v21, v14

    move-object/from16 v133, v15

    move/from16 v15, v45

    :goto_15
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_16

    move/from16 v14, v46

    const/16 v134, 0x1

    goto :goto_16

    :cond_16
    move/from16 v14, v46

    const/16 v134, 0x0

    :goto_16
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_17

    move/from16 v14, v47

    const/16 v135, 0x1

    goto :goto_17

    :cond_17
    move/from16 v14, v47

    const/16 v135, 0x0

    :goto_17
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v48

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_18

    move/from16 v15, v49

    move-object/from16 v137, v79

    goto :goto_18

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v137, v15

    move/from16 v15, v49

    :goto_18
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_19

    move/from16 v22, v14

    move/from16 v14, v50

    move-object/from16 v138, v79

    goto :goto_19

    :cond_19
    move/from16 v22, v14

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v138, v14

    move/from16 v14, v50

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v14, v51

    move-object/from16 v139, v79

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v139, v14

    move/from16 v14, v51

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    move/from16 v14, v52

    move-object/from16 v140, v79

    goto :goto_1b

    :cond_1b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v140, v14

    move/from16 v14, v52

    :goto_1b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1c

    move/from16 v14, v53

    move-object/from16 v141, v79

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v53

    :goto_1c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1d

    move/from16 v14, v54

    move-object/from16 v142, v79

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v142, v14

    move/from16 v14, v54

    :goto_1d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1e

    move/from16 v14, v55

    move-object/from16 v143, v79

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v143, v14

    move/from16 v14, v55

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1f

    move/from16 v14, v56

    move-object/from16 v144, v79

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v144, v14

    move/from16 v14, v56

    :goto_1f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_20

    move/from16 v14, v57

    move-object/from16 v145, v79

    goto :goto_20

    :cond_20
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v145, v14

    move/from16 v14, v57

    :goto_20
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_21

    move/from16 v14, v58

    move-object/from16 v146, v79

    goto :goto_21

    :cond_21
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v146, v14

    move/from16 v14, v58

    :goto_21
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_22

    move/from16 v14, v59

    move-object/from16 v147, v79

    goto :goto_22

    :cond_22
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v147, v14

    move/from16 v14, v59

    :goto_22
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_23

    move/from16 v14, v60

    move-object/from16 v148, v79

    goto :goto_23

    :cond_23
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v148, v14

    move/from16 v14, v60

    :goto_23
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_24

    move/from16 v14, v61

    move-object/from16 v149, v79

    goto :goto_24

    :cond_24
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v149, v14

    move/from16 v14, v61

    :goto_24
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_25

    move/from16 v14, v62

    move-object/from16 v150, v79

    goto :goto_25

    :cond_25
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v150, v14

    move/from16 v14, v62

    :goto_25
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_26

    move/from16 v14, v63

    move-object/from16 v151, v79

    goto :goto_26

    :cond_26
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v151, v14

    move/from16 v14, v63

    :goto_26
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_27

    move/from16 v14, v64

    move-object/from16 v152, v79

    goto :goto_27

    :cond_27
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v152, v14

    move/from16 v14, v64

    :goto_27
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_28

    move/from16 v14, v65

    move-object/from16 v153, v79

    goto :goto_28

    :cond_28
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v153, v14

    move/from16 v14, v65

    :goto_28
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_29

    move/from16 v14, v66

    move-object/from16 v154, v79

    goto :goto_29

    :cond_29
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v154, v14

    move/from16 v14, v66

    :goto_29
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2a

    move/from16 v14, v67

    move-object/from16 v155, v79

    goto :goto_2a

    :cond_2a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v155, v14

    move/from16 v14, v67

    :goto_2a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2b

    move/from16 v14, v68

    move-object/from16 v156, v79

    goto :goto_2b

    :cond_2b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v156, v14

    move/from16 v14, v68

    :goto_2b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move/from16 v14, v69

    move-object/from16 v157, v79

    goto :goto_2c

    :cond_2c
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v157, v14

    move/from16 v14, v69

    :goto_2c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move/from16 v14, v70

    move-object/from16 v158, v79

    goto :goto_2d

    :cond_2d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v158, v14

    move/from16 v14, v70

    :goto_2d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2e

    move/from16 v14, v71

    move-object/from16 v159, v79

    goto :goto_2e

    :cond_2e
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v159, v14

    move/from16 v14, v71

    :goto_2e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v14, v72

    move-object/from16 v160, v79

    goto :goto_2f

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v72

    :goto_2f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_30

    move/from16 v14, v73

    move-object/from16 v161, v79

    goto :goto_30

    :cond_30
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v161, v14

    move/from16 v14, v73

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_31

    move/from16 v14, v74

    move-object/from16 v162, v79

    goto :goto_31

    :cond_31
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v74

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_32

    move/from16 v14, v75

    move-object/from16 v163, v79

    goto :goto_32

    :cond_32
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v75

    :goto_32
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_33

    move/from16 v14, v76

    move-object/from16 v164, v79

    goto :goto_33

    :cond_33
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v164, v14

    move/from16 v14, v76

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_34

    move/from16 v14, v77

    const/16 v165, 0x1

    goto :goto_34

    :cond_34
    move/from16 v14, v77

    const/16 v165, 0x0

    :goto_34
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_35

    move-object/from16 v166, v79

    goto :goto_35

    :cond_35
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v166, v14

    :goto_35
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_36

    :goto_36
    move-object/from16 v167, v79

    goto :goto_37

    :cond_36
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v79

    goto :goto_36

    :goto_37
    new-instance v79, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v80, v79

    move/from16 v93, v0

    move/from16 v94, v3

    move/from16 v95, v4

    move/from16 v100, v5

    move/from16 v101, v6

    move/from16 v102, v7

    move/from16 v103, v8

    move/from16 v104, v9

    move/from16 v105, v10

    move/from16 v106, v11

    move/from16 v107, v12

    move/from16 v108, v13

    move/from16 v109, v16

    move/from16 v110, v17

    move/from16 v117, v18

    move/from16 v118, v19

    move/from16 v127, v20

    move/from16 v131, v21

    move/from16 v136, v22

    invoke-direct/range {v80 .. v167}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v79

    :goto_38
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method public static synthetic M(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Llj/l0;->S0(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic M0(Lz3/b;)Ljava/util/List;
    .locals 186

    const-string v0, "SELECT * FROM DOWNLOAD_TABLE WHERE fileType == 1"

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "resourceId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "cover"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "size"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "postId"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sizeFormat"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "path"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "updateTimeStamp"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "progress"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "supportRanges"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "status"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "type"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "readProgress"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "createAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "isRead"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "episode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "ep"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "resolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "resourcePosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "multiresolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "videoWidth"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "videoHeight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "downloadErrorCount"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "subtitleStarted"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "subjectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "pageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "lastPageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "subjectName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "lastPlayTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "fileType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "totalEpisode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "uploadBy"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "sourceUrl"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "urlCreateAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "taskId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v39, v15

    const-string v15, "sessionTime"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v40, v15

    const-string v15, "reportStatus"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v41, v15

    const-string v15, "downloadHeaderSize"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v42, v15

    const-string v15, "rootPath"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v43, v15

    const-string v15, "rootPathType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v44, v15

    const-string v15, "thumbnail"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v45, v15

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v46, v15

    const-string v15, "isTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v47, v15

    const-string v15, "isClosedTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v48, v15

    const-string v15, "subjectType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v49, v15

    const-string v15, "genre"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v50, v15

    const-string v15, "subjectDurationSeconds"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v51, v15

    const-string v15, "currentDubLanName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v52, v15

    const-string v15, "currentDubLanCode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v53, v15

    const-string v15, "ops"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v54, v15

    const-string v15, "restrictLevel"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v55, v15

    const-string v15, "releaseDate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v56, v15

    const-string v15, "countryName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v57, v15

    const-string v15, "seNum"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v58, v15

    const-string v15, "subtitles"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v59, v15

    const-string v15, "imdbRate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v60, v15

    const-string v15, "lastAdStartTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v61, v15

    const-string v15, "lastAdEndTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v62, v15

    const-string v15, "subtitleIdType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v63, v15

    const-string v15, "ugcVideoCollectionId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v64, v15

    const-string v15, "ugcVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v65, v15

    const-string v15, "ugcVideoName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v66, v15

    const-string v15, "ugcVideoCollectionName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v67, v15

    const-string v15, "ugcVideoPosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v68, v15

    const-string v15, "ugcVideoType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v69, v15

    const-string v15, "ugcCateLev1Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v70, v15

    const-string v15, "ugcCateLev2Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v71, v15

    const-string v15, "ugcCateLev3Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v72, v15

    const-string v15, "ugcCateLev4Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v73, v15

    const-string v15, "ugcVideoTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v74, v15

    const-string v15, "ugcVideoParentVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v75, v15

    const-string v15, "ugcVideoParentTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v76, v15

    const-string v15, "ugcVideoEpTitle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v77, v15

    const-string v15, "ugcVideoIsVertical"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v78, v15

    const-string v15, "originData"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v79, v15

    const-string v15, "kidId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v80, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_36

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_0

    move-object/from16 v84, v82

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_1

    move-object/from16 v85, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v86, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v87, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v88, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v89, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v90, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v91, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v92, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v93, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v2

    move/from16 v171, v3

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v172, v4

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v173, v5

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 p0, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v0

    move/from16 v174, v5

    move/from16 v0, v17

    move/from16 v17, v6

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v175, v8

    move/from16 v6, v18

    move/from16 v18, v7

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v176, v10

    move/from16 v8, v19

    move/from16 v19, v9

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v177, v12

    move/from16 v10, v20

    move/from16 v20, v11

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v178, v14

    move/from16 v12, v21

    move/from16 v21, v13

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v107, v13

    move/from16 v14, v22

    move/from16 v22, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v179, v14

    move/from16 v13, v23

    move-object/from16 v23, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v109, v14

    move/from16 v15, v24

    move/from16 v24, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v110, v13

    move/from16 v14, v25

    move/from16 v25, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v180, v14

    move/from16 v13, v26

    move/from16 v26, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v112, v14

    move/from16 v15, v27

    move/from16 v27, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v28

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v114, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v0

    move/from16 v0, v29

    :goto_b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_b

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v115, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v0

    move/from16 v0, v30

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_c

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v116, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v0

    move/from16 v0, v31

    :goto_d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_d

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v117, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v0

    move/from16 v0, v32

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v0

    move/from16 v181, v14

    move/from16 v0, v33

    move/from16 v33, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v120, v14

    move/from16 v15, v34

    move/from16 v34, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v35

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_e

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v122, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v0

    move/from16 v0, v36

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_f

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v123, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v0

    move/from16 v0, v37

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_10

    move/from16 v38, v0

    move/from16 v0, v39

    move-object/from16 v126, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v0

    move/from16 v0, v39

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_11

    move/from16 v39, v0

    move/from16 v0, v40

    move-object/from16 v127, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v0

    move/from16 v0, v40

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v0

    move/from16 v182, v14

    move/from16 v0, v41

    move/from16 v41, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v0

    move/from16 v0, v43

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_12

    move/from16 v43, v0

    move/from16 v183, v15

    move/from16 v0, v44

    move-object/from16 v133, v82

    :goto_13
    move/from16 v44, v14

    goto :goto_14

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v183, v15

    move-object/from16 v133, v43

    move/from16 v43, v0

    move/from16 v0, v44

    goto :goto_13

    :goto_14
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_13

    move/from16 v45, v0

    move/from16 v0, v46

    move-object/from16 v135, v82

    goto :goto_15

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v0

    move/from16 v0, v46

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_14

    move/from16 v46, v0

    move/from16 v184, v15

    move/from16 v0, v47

    move-object/from16 v136, v82

    :goto_16
    move/from16 v47, v14

    goto :goto_17

    :cond_14
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v184, v15

    move-object/from16 v136, v46

    move/from16 v46, v0

    move/from16 v0, v47

    goto :goto_16

    :goto_17
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    const/16 v83, 0x1

    move/from16 v121, v13

    if-eqz v14, :cond_15

    move/from16 v14, v48

    move/from16 v137, v83

    :goto_18
    move/from16 v48, v12

    goto :goto_19

    :cond_15
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_18

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    if-eqz v12, :cond_16

    move/from16 v12, v49

    move/from16 v138, v83

    :goto_1a
    move/from16 v49, v14

    goto :goto_1b

    :cond_16
    move/from16 v12, v49

    const/16 v138, 0x0

    goto :goto_1a

    :goto_1b
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v50

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_17

    move/from16 v15, v51

    move-object/from16 v140, v82

    goto :goto_1c

    :cond_17
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v15, v51

    :goto_1c
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_18

    move/from16 v51, v12

    move/from16 v139, v13

    move/from16 v12, v52

    move-object/from16 v141, v82

    goto :goto_1d

    :cond_18
    move/from16 v51, v12

    move/from16 v139, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v141, v12

    move/from16 v12, v52

    :goto_1d
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_19

    move/from16 v13, v53

    move-object/from16 v142, v82

    goto :goto_1e

    :cond_19
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v142, v13

    move/from16 v13, v53

    :goto_1e
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1a

    move/from16 v52, v0

    move/from16 v0, v54

    move-object/from16 v143, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v0

    move/from16 v0, v54

    :goto_1f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1b

    move/from16 v54, v0

    move/from16 v0, v55

    move-object/from16 v144, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v0

    move-object/from16 v144, v53

    move/from16 v0, v55

    :goto_20
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v55, v0

    move/from16 v0, v56

    move-object/from16 v145, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v0

    move-object/from16 v145, v53

    move/from16 v0, v56

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v56, v0

    move/from16 v0, v57

    move-object/from16 v146, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v0

    move-object/from16 v146, v53

    move/from16 v0, v57

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v57, v0

    move/from16 v0, v58

    move-object/from16 v147, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v0

    move-object/from16 v147, v53

    move/from16 v0, v58

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v53, v12

    move/from16 v58, v13

    move/from16 v12, v59

    move-object/from16 v148, v82

    goto :goto_24

    :cond_1f
    move/from16 v53, v12

    move/from16 v58, v13

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v148, v12

    move/from16 v12, v59

    :goto_24
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_20

    move/from16 v13, v60

    move-object/from16 v149, v82

    goto :goto_25

    :cond_20
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v149, v13

    move/from16 v13, v60

    :goto_25
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_21

    move/from16 v59, v0

    move/from16 v0, v61

    move-object/from16 v150, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v0

    move/from16 v0, v61

    :goto_26
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_22

    move/from16 v61, v0

    move/from16 v0, v62

    move-object/from16 v151, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v0

    move-object/from16 v151, v60

    move/from16 v0, v62

    :goto_27
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v62, v0

    move/from16 v0, v63

    move-object/from16 v152, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v0

    move-object/from16 v152, v60

    move/from16 v0, v63

    :goto_28
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v63, v0

    move/from16 v0, v64

    move-object/from16 v153, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v0

    move-object/from16 v153, v60

    move/from16 v0, v64

    :goto_29
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v64, v0

    move/from16 v0, v65

    move-object/from16 v154, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v0

    move-object/from16 v154, v60

    move/from16 v0, v65

    :goto_2a
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v65, v0

    move/from16 v0, v66

    move-object/from16 v155, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v0

    move-object/from16 v155, v60

    move/from16 v0, v66

    :goto_2b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v66, v0

    move/from16 v0, v67

    move-object/from16 v156, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v0

    move-object/from16 v156, v60

    move/from16 v0, v67

    :goto_2c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v67, v0

    move/from16 v0, v68

    move-object/from16 v157, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v0

    move-object/from16 v157, v60

    move/from16 v0, v68

    :goto_2d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v60, v12

    move/from16 v68, v13

    move/from16 v12, v69

    move-object/from16 v158, v82

    goto :goto_2e

    :cond_29
    move/from16 v60, v12

    move/from16 v68, v13

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v158, v12

    move/from16 v12, v69

    :goto_2e
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2a

    move/from16 v13, v70

    move-object/from16 v159, v82

    goto :goto_2f

    :cond_2a
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v159, v13

    move/from16 v13, v70

    :goto_2f
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2b

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_30

    :cond_2b
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move v15, v12

    move/from16 v71, v13

    move/from16 v12, v72

    move-object/from16 v161, v82

    goto :goto_31

    :cond_2c
    move v15, v12

    move/from16 v71, v13

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v161, v12

    move/from16 v12, v72

    :goto_31
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2d

    move/from16 v72, v14

    move/from16 v13, v73

    move-object/from16 v162, v82

    goto :goto_32

    :cond_2d
    move/from16 v72, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v162, v13

    move/from16 v13, v73

    :goto_32
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2e

    move/from16 v73, v15

    move/from16 v14, v74

    move-object/from16 v163, v82

    goto :goto_33

    :cond_2e
    move/from16 v73, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v74

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v15, v75

    move-object/from16 v164, v82

    goto :goto_34

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v164, v15

    move/from16 v15, v75

    :goto_34
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_30

    move/from16 v74, v0

    move/from16 v0, v76

    move-object/from16 v165, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v0

    move/from16 v0, v76

    :goto_35
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_31

    move/from16 v76, v0

    move/from16 v0, v77

    move-object/from16 v166, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v0

    move-object/from16 v166, v75

    move/from16 v0, v77

    :goto_36
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v77, v0

    move/from16 v75, v12

    move/from16 v0, v78

    move-object/from16 v167, v82

    :goto_37
    move/from16 v78, v13

    goto :goto_38

    :cond_32
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v0

    move-object/from16 v167, v75

    move/from16 v0, v78

    move/from16 v75, v12

    goto :goto_37

    :goto_38
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    if-eqz v12, :cond_33

    move/from16 v12, v79

    move/from16 v168, v83

    goto :goto_39

    :cond_33
    move/from16 v12, v79

    const/16 v168, 0x0

    :goto_39
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_34

    move/from16 v13, v80

    move-object/from16 v169, v82

    goto :goto_3a

    :cond_34
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v169, v13

    move/from16 v13, v80

    :goto_3a
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_35

    :goto_3b
    move/from16 v50, v0

    move-object/from16 v170, v82

    goto :goto_3c

    :cond_35
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3b

    :goto_3c
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v0

    move/from16 v96, v2

    move/from16 v97, v3

    move/from16 v98, v4

    move/from16 v103, v5

    move/from16 v104, v7

    move/from16 v105, v9

    move/from16 v106, v11

    move/from16 v108, v25

    move/from16 v111, v48

    move/from16 v113, v34

    move/from16 v130, v44

    move/from16 v134, v47

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v23

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v79, v12

    move/from16 v80, v13

    move/from16 v7, v18

    move/from16 v9, v19

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v21, v22

    move/from16 v23, v24

    move/from16 v24, v26

    move/from16 v26, v27

    move/from16 v27, v33

    move/from16 v33, v35

    move/from16 v34, v41

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v49, v51

    move/from16 v47, v52

    move/from16 v52, v53

    move/from16 v53, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v51, v70

    move/from16 v70, v71

    move/from16 v71, v72

    move/from16 v68, v74

    move/from16 v72, v75

    move/from16 v3, v171

    move/from16 v4, v172

    move/from16 v5, v173

    move/from16 p0, v174

    move/from16 v12, v177

    move/from16 v22, v179

    move/from16 v25, v180

    move/from16 v35, v182

    move/from16 v42, v183

    move/from16 v45, v184

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v74, v14

    move/from16 v75, v15

    move/from16 v6, v17

    move/from16 v17, v28

    move/from16 v8, v175

    move/from16 v10, v176

    move/from16 v14, v178

    move/from16 v28, v181

    move-object v15, v2

    move/from16 v2, v81

    move/from16 v185, v78

    move/from16 v78, v50

    move/from16 v50, v69

    move/from16 v69, v73

    move/from16 v73, v185

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3d

    :cond_36
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_3d
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method public static synthetic N(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Llj/l0;->U0(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic N0(Lz3/b;)Ljava/util/List;
    .locals 186

    const-string v0, "SELECT * FROM DOWNLOAD_TABLE WHERE fileType = 3 ORDER BY updateTimeStamp DESC "

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "resourceId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "cover"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "size"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "postId"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sizeFormat"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "path"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "updateTimeStamp"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "progress"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "supportRanges"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "status"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "type"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "readProgress"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "createAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "isRead"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "episode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "ep"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "resolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "resourcePosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "multiresolution"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "videoWidth"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "videoHeight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "downloadErrorCount"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "subtitleStarted"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "subjectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "pageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "lastPageFrom"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "subjectName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "lastPlayTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "fileType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "totalEpisode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "uploadBy"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "sourceUrl"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "urlCreateAt"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "subtitleSelectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "taskId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v39, v15

    const-string v15, "sessionTime"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v40, v15

    const-string v15, "reportStatus"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v41, v15

    const-string v15, "downloadHeaderSize"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v42, v15

    const-string v15, "rootPath"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v43, v15

    const-string v15, "rootPathType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v44, v15

    const-string v15, "thumbnail"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v45, v15

    const-string v15, "averageHueLight"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v46, v15

    const-string v15, "isTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v47, v15

    const-string v15, "isClosedTransferFailed"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v48, v15

    const-string v15, "subjectType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v49, v15

    const-string v15, "genre"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v50, v15

    const-string v15, "subjectDurationSeconds"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v51, v15

    const-string v15, "currentDubLanName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v52, v15

    const-string v15, "currentDubLanCode"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v53, v15

    const-string v15, "ops"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v54, v15

    const-string v15, "restrictLevel"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v55, v15

    const-string v15, "releaseDate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v56, v15

    const-string v15, "countryName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v57, v15

    const-string v15, "seNum"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v58, v15

    const-string v15, "subtitles"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v59, v15

    const-string v15, "imdbRate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v60, v15

    const-string v15, "lastAdStartTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v61, v15

    const-string v15, "lastAdEndTimeStamp"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v62, v15

    const-string v15, "subtitleIdType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v63, v15

    const-string v15, "ugcVideoCollectionId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v64, v15

    const-string v15, "ugcVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v65, v15

    const-string v15, "ugcVideoName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v66, v15

    const-string v15, "ugcVideoCollectionName"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v67, v15

    const-string v15, "ugcVideoPosition"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v68, v15

    const-string v15, "ugcVideoType"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v69, v15

    const-string v15, "ugcCateLev1Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v70, v15

    const-string v15, "ugcCateLev2Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v71, v15

    const-string v15, "ugcCateLev3Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v72, v15

    const-string v15, "ugcCateLev4Id"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v73, v15

    const-string v15, "ugcVideoTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v74, v15

    const-string v15, "ugcVideoParentVideoId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v75, v15

    const-string v15, "ugcVideoParentTrackId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v76, v15

    const-string v15, "ugcVideoEpTitle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v77, v15

    const-string v15, "ugcVideoIsVertical"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v78, v15

    const-string v15, "originData"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v79, v15

    const-string v15, "kidId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v80, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_36

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_0

    move-object/from16 v84, v82

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_1

    move-object/from16 v85, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v86, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v87, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v88, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v89, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v90, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v91, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v92, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v93, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v2

    move/from16 v171, v3

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v172, v4

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v173, v5

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 p0, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v0

    move/from16 v174, v5

    move/from16 v0, v17

    move/from16 v17, v6

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v175, v8

    move/from16 v6, v18

    move/from16 v18, v7

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v176, v10

    move/from16 v8, v19

    move/from16 v19, v9

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v177, v12

    move/from16 v10, v20

    move/from16 v20, v11

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v178, v14

    move/from16 v12, v21

    move/from16 v21, v13

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v107, v13

    move/from16 v14, v22

    move/from16 v22, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v179, v14

    move/from16 v13, v23

    move-object/from16 v23, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v109, v14

    move/from16 v15, v24

    move/from16 v24, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v110, v13

    move/from16 v14, v25

    move/from16 v25, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v180, v14

    move/from16 v13, v26

    move/from16 v26, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v112, v14

    move/from16 v15, v27

    move/from16 v27, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v28

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v114, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v0

    move/from16 v0, v29

    :goto_b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_b

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v115, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v0

    move/from16 v0, v30

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_c

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v116, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v0

    move/from16 v0, v31

    :goto_d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_d

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v117, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v0

    move/from16 v0, v32

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v0

    move/from16 v181, v14

    move/from16 v0, v33

    move/from16 v33, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v120, v14

    move/from16 v15, v34

    move/from16 v34, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v35

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_e

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v122, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v0

    move/from16 v0, v36

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_f

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v123, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v0

    move/from16 v0, v37

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_10

    move/from16 v38, v0

    move/from16 v0, v39

    move-object/from16 v126, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v0

    move/from16 v0, v39

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_11

    move/from16 v39, v0

    move/from16 v0, v40

    move-object/from16 v127, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v0

    move/from16 v0, v40

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v0

    move/from16 v182, v14

    move/from16 v0, v41

    move/from16 v41, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v0

    move/from16 v0, v43

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_12

    move/from16 v43, v0

    move/from16 v183, v15

    move/from16 v0, v44

    move-object/from16 v133, v82

    :goto_13
    move/from16 v44, v14

    goto :goto_14

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v183, v15

    move-object/from16 v133, v43

    move/from16 v43, v0

    move/from16 v0, v44

    goto :goto_13

    :goto_14
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_13

    move/from16 v45, v0

    move/from16 v0, v46

    move-object/from16 v135, v82

    goto :goto_15

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v0

    move/from16 v0, v46

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_14

    move/from16 v46, v0

    move/from16 v184, v15

    move/from16 v0, v47

    move-object/from16 v136, v82

    :goto_16
    move/from16 v47, v14

    goto :goto_17

    :cond_14
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v184, v15

    move-object/from16 v136, v46

    move/from16 v46, v0

    move/from16 v0, v47

    goto :goto_16

    :goto_17
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    const/16 v83, 0x1

    move/from16 v121, v13

    if-eqz v14, :cond_15

    move/from16 v14, v48

    move/from16 v137, v83

    :goto_18
    move/from16 v48, v12

    goto :goto_19

    :cond_15
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_18

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    if-eqz v12, :cond_16

    move/from16 v12, v49

    move/from16 v138, v83

    :goto_1a
    move/from16 v49, v14

    goto :goto_1b

    :cond_16
    move/from16 v12, v49

    const/16 v138, 0x0

    goto :goto_1a

    :goto_1b
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v50

    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_17

    move/from16 v15, v51

    move-object/from16 v140, v82

    goto :goto_1c

    :cond_17
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v15, v51

    :goto_1c
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_18

    move/from16 v51, v12

    move/from16 v139, v13

    move/from16 v12, v52

    move-object/from16 v141, v82

    goto :goto_1d

    :cond_18
    move/from16 v51, v12

    move/from16 v139, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v141, v12

    move/from16 v12, v52

    :goto_1d
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_19

    move/from16 v13, v53

    move-object/from16 v142, v82

    goto :goto_1e

    :cond_19
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v142, v13

    move/from16 v13, v53

    :goto_1e
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1a

    move/from16 v52, v0

    move/from16 v0, v54

    move-object/from16 v143, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v0

    move/from16 v0, v54

    :goto_1f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1b

    move/from16 v54, v0

    move/from16 v0, v55

    move-object/from16 v144, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v0

    move-object/from16 v144, v53

    move/from16 v0, v55

    :goto_20
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v55, v0

    move/from16 v0, v56

    move-object/from16 v145, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v0

    move-object/from16 v145, v53

    move/from16 v0, v56

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v56, v0

    move/from16 v0, v57

    move-object/from16 v146, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v0

    move-object/from16 v146, v53

    move/from16 v0, v57

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v57, v0

    move/from16 v0, v58

    move-object/from16 v147, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v0

    move-object/from16 v147, v53

    move/from16 v0, v58

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v53, v12

    move/from16 v58, v13

    move/from16 v12, v59

    move-object/from16 v148, v82

    goto :goto_24

    :cond_1f
    move/from16 v53, v12

    move/from16 v58, v13

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v148, v12

    move/from16 v12, v59

    :goto_24
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_20

    move/from16 v13, v60

    move-object/from16 v149, v82

    goto :goto_25

    :cond_20
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v149, v13

    move/from16 v13, v60

    :goto_25
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_21

    move/from16 v59, v0

    move/from16 v0, v61

    move-object/from16 v150, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v0

    move/from16 v0, v61

    :goto_26
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_22

    move/from16 v61, v0

    move/from16 v0, v62

    move-object/from16 v151, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v0

    move-object/from16 v151, v60

    move/from16 v0, v62

    :goto_27
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v62, v0

    move/from16 v0, v63

    move-object/from16 v152, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v0

    move-object/from16 v152, v60

    move/from16 v0, v63

    :goto_28
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v63, v0

    move/from16 v0, v64

    move-object/from16 v153, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v0

    move-object/from16 v153, v60

    move/from16 v0, v64

    :goto_29
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v64, v0

    move/from16 v0, v65

    move-object/from16 v154, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v0

    move-object/from16 v154, v60

    move/from16 v0, v65

    :goto_2a
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v65, v0

    move/from16 v0, v66

    move-object/from16 v155, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v0

    move-object/from16 v155, v60

    move/from16 v0, v66

    :goto_2b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v66, v0

    move/from16 v0, v67

    move-object/from16 v156, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v0

    move-object/from16 v156, v60

    move/from16 v0, v67

    :goto_2c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v67, v0

    move/from16 v0, v68

    move-object/from16 v157, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v0

    move-object/from16 v157, v60

    move/from16 v0, v68

    :goto_2d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v60, v12

    move/from16 v68, v13

    move/from16 v12, v69

    move-object/from16 v158, v82

    goto :goto_2e

    :cond_29
    move/from16 v60, v12

    move/from16 v68, v13

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v158, v12

    move/from16 v12, v69

    :goto_2e
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2a

    move/from16 v13, v70

    move-object/from16 v159, v82

    goto :goto_2f

    :cond_2a
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v159, v13

    move/from16 v13, v70

    :goto_2f
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2b

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_30

    :cond_2b
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move v15, v12

    move/from16 v71, v13

    move/from16 v12, v72

    move-object/from16 v161, v82

    goto :goto_31

    :cond_2c
    move v15, v12

    move/from16 v71, v13

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v161, v12

    move/from16 v12, v72

    :goto_31
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2d

    move/from16 v72, v14

    move/from16 v13, v73

    move-object/from16 v162, v82

    goto :goto_32

    :cond_2d
    move/from16 v72, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v162, v13

    move/from16 v13, v73

    :goto_32
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2e

    move/from16 v73, v15

    move/from16 v14, v74

    move-object/from16 v163, v82

    goto :goto_33

    :cond_2e
    move/from16 v73, v15

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v74

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v15, v75

    move-object/from16 v164, v82

    goto :goto_34

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v164, v15

    move/from16 v15, v75

    :goto_34
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_30

    move/from16 v74, v0

    move/from16 v0, v76

    move-object/from16 v165, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v0

    move/from16 v0, v76

    :goto_35
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_31

    move/from16 v76, v0

    move/from16 v0, v77

    move-object/from16 v166, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v0

    move-object/from16 v166, v75

    move/from16 v0, v77

    :goto_36
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v77, v0

    move/from16 v75, v12

    move/from16 v0, v78

    move-object/from16 v167, v82

    :goto_37
    move/from16 v78, v13

    goto :goto_38

    :cond_32
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v0

    move-object/from16 v167, v75

    move/from16 v0, v78

    move/from16 v75, v12

    goto :goto_37

    :goto_38
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    if-eqz v12, :cond_33

    move/from16 v12, v79

    move/from16 v168, v83

    goto :goto_39

    :cond_33
    move/from16 v12, v79

    const/16 v168, 0x0

    :goto_39
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_34

    move/from16 v13, v80

    move-object/from16 v169, v82

    goto :goto_3a

    :cond_34
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v169, v13

    move/from16 v13, v80

    :goto_3a
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_35

    :goto_3b
    move/from16 v50, v0

    move-object/from16 v170, v82

    goto :goto_3c

    :cond_35
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3b

    :goto_3c
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v0

    move/from16 v96, v2

    move/from16 v97, v3

    move/from16 v98, v4

    move/from16 v103, v5

    move/from16 v104, v7

    move/from16 v105, v9

    move/from16 v106, v11

    move/from16 v108, v25

    move/from16 v111, v48

    move/from16 v113, v34

    move/from16 v130, v44

    move/from16 v134, v47

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v23

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v79, v12

    move/from16 v80, v13

    move/from16 v7, v18

    move/from16 v9, v19

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v21, v22

    move/from16 v23, v24

    move/from16 v24, v26

    move/from16 v26, v27

    move/from16 v27, v33

    move/from16 v33, v35

    move/from16 v34, v41

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v49, v51

    move/from16 v47, v52

    move/from16 v52, v53

    move/from16 v53, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v51, v70

    move/from16 v70, v71

    move/from16 v71, v72

    move/from16 v68, v74

    move/from16 v72, v75

    move/from16 v3, v171

    move/from16 v4, v172

    move/from16 v5, v173

    move/from16 p0, v174

    move/from16 v12, v177

    move/from16 v22, v179

    move/from16 v25, v180

    move/from16 v35, v182

    move/from16 v42, v183

    move/from16 v45, v184

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v74, v14

    move/from16 v75, v15

    move/from16 v6, v17

    move/from16 v17, v28

    move/from16 v8, v175

    move/from16 v10, v176

    move/from16 v14, v178

    move/from16 v28, v181

    move-object v15, v2

    move/from16 v2, v81

    move/from16 v185, v78

    move/from16 v78, v50

    move/from16 v50, v69

    move/from16 v69, v73

    move/from16 v73, v185

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3d

    :cond_36
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_3d
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method public static synthetic O(Llj/l0;Lcom/transsion/baselib/db/download/DownloadBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Llj/l0;->Q0(Lcom/transsion/baselib/db/download/DownloadBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic O0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 190

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE ugcVideoCollectionId = ? ORDER BY ugcVideoPosition ASC"

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

    goto/16 :goto_3e

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v79, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v80, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_1

    move-object/from16 v84, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v85, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v86, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v87, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v88, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v89, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v90, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v91, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v92, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_a

    move-object/from16 v93, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_b
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v3

    move/from16 v171, v4

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v172, v5

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v173, v6

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 p0, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v0

    move/from16 v174, v6

    move/from16 v0, v17

    move/from16 v17, v7

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v175, v9

    move/from16 v7, v18

    move/from16 v18, v8

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v176, v11

    move/from16 v9, v19

    move/from16 v19, v10

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v177, v13

    move/from16 v11, v20

    move/from16 v20, v12

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v178, v15

    move/from16 v13, v21

    move/from16 v21, v14

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v107, v14

    move/from16 v15, v22

    move/from16 v22, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v106, v12

    move/from16 v14, v23

    move/from16 v23, v11

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v179, v14

    move/from16 v12, v24

    move/from16 v24, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v180, v12

    move/from16 v15, v25

    move/from16 v25, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v181, v15

    move/from16 v12, v26

    move/from16 v26, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v182, v12

    move/from16 v15, v27

    move/from16 v27, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v28

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_b

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v114, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v0

    move/from16 v0, v29

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_c

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v115, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v0

    move/from16 v0, v30

    :goto_d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_d

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v116, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v0

    move/from16 v0, v31

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_e

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v117, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v0

    move/from16 v0, v32

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v0

    move/from16 v183, v12

    move/from16 v0, v33

    move/from16 v33, v11

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v184, v15

    move/from16 v12, v34

    move/from16 v34, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v35

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_f

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v122, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v0

    move/from16 v0, v36

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_10

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v123, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v0

    move/from16 v0, v37

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_11

    move/from16 v38, v0

    move/from16 v0, v39

    move-object/from16 v126, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v0

    move/from16 v0, v39

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_12

    move/from16 v39, v0

    move/from16 v0, v40

    move-object/from16 v127, v82

    goto :goto_13

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v0

    move/from16 v0, v40

    :goto_13
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v0

    move/from16 v185, v15

    move/from16 v0, v41

    move/from16 v41, v14

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v0

    move/from16 v0, v43

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_13

    move/from16 v43, v0

    move/from16 v186, v15

    move/from16 v0, v44

    move-object/from16 v133, v82

    :goto_14
    move/from16 v44, v14

    goto :goto_15

    :cond_13
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v186, v15

    move-object/from16 v133, v43

    move/from16 v43, v0

    move/from16 v0, v44

    goto :goto_14

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_14

    move/from16 v45, v0

    move/from16 v0, v46

    move-object/from16 v135, v82

    goto :goto_16

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v0

    move/from16 v0, v46

    :goto_16
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_15

    move/from16 v46, v0

    move/from16 v187, v15

    move/from16 v0, v47

    move-object/from16 v136, v82

    :goto_17
    move/from16 v47, v14

    goto :goto_18

    :cond_15
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v187, v15

    move-object/from16 v136, v46

    move/from16 v46, v0

    move/from16 v0, v47

    goto :goto_17

    :goto_18
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v188, v12

    if-eqz v14, :cond_16

    move/from16 v14, v48

    const/16 v137, 0x1

    :goto_19
    move/from16 v48, v11

    goto :goto_1a

    :cond_16
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_19

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_17

    move/from16 v11, v49

    const/16 v138, 0x1

    :goto_1b
    move/from16 v49, v14

    goto :goto_1c

    :cond_17
    move/from16 v11, v49

    const/16 v138, 0x0

    goto :goto_1b

    :goto_1c
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v50

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_18

    move/from16 v12, v51

    move-object/from16 v140, v82

    goto :goto_1d

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v12, v51

    :goto_1d
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_19

    move/from16 v51, v14

    move/from16 v189, v15

    move/from16 v14, v52

    move-object/from16 v141, v82

    goto :goto_1e

    :cond_19
    move/from16 v51, v14

    move/from16 v189, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v52

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v15, v53

    move-object/from16 v142, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v142, v15

    move/from16 v15, v53

    :goto_1f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1b

    move/from16 v52, v0

    move/from16 v0, v54

    move-object/from16 v143, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v0

    move/from16 v0, v54

    :goto_20
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v54, v0

    move/from16 v0, v55

    move-object/from16 v144, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v0

    move-object/from16 v144, v53

    move/from16 v0, v55

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v55, v0

    move/from16 v0, v56

    move-object/from16 v145, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v0

    move-object/from16 v145, v53

    move/from16 v0, v56

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v56, v0

    move/from16 v0, v57

    move-object/from16 v146, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v0

    move-object/from16 v146, v53

    move/from16 v0, v57

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v57, v0

    move/from16 v0, v58

    move-object/from16 v147, v82

    goto :goto_24

    :cond_1f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v0

    move-object/from16 v147, v53

    move/from16 v0, v58

    :goto_24
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_20

    move/from16 v53, v11

    move/from16 v58, v12

    move/from16 v11, v59

    move-object/from16 v148, v82

    goto :goto_25

    :cond_20
    move/from16 v53, v11

    move/from16 v58, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v148, v11

    move/from16 v11, v59

    :goto_25
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_21

    move/from16 v12, v60

    move-object/from16 v149, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v149, v12

    move/from16 v12, v60

    :goto_26
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_22

    move/from16 v59, v0

    move/from16 v0, v61

    move-object/from16 v150, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v0

    move/from16 v0, v61

    :goto_27
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v61, v0

    move/from16 v0, v62

    move-object/from16 v151, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v0

    move-object/from16 v151, v60

    move/from16 v0, v62

    :goto_28
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v62, v0

    move/from16 v0, v63

    move-object/from16 v152, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v0

    move-object/from16 v152, v60

    move/from16 v0, v63

    :goto_29
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v63, v0

    move/from16 v0, v64

    move-object/from16 v153, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v0

    move-object/from16 v153, v60

    move/from16 v0, v64

    :goto_2a
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v64, v0

    move/from16 v0, v65

    move-object/from16 v154, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v0

    move-object/from16 v154, v60

    move/from16 v0, v65

    :goto_2b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v65, v0

    move/from16 v0, v66

    move-object/from16 v155, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v0

    move-object/from16 v155, v60

    move/from16 v0, v66

    :goto_2c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v66, v0

    move/from16 v0, v67

    move-object/from16 v156, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v0

    move-object/from16 v156, v60

    move/from16 v0, v67

    :goto_2d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v67, v0

    move/from16 v0, v68

    move-object/from16 v157, v82

    goto :goto_2e

    :cond_29
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v0

    move-object/from16 v157, v60

    move/from16 v0, v68

    :goto_2e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_2a

    move/from16 v60, v11

    move/from16 v68, v12

    move/from16 v11, v69

    move-object/from16 v158, v82

    goto :goto_2f

    :cond_2a
    move/from16 v60, v11

    move/from16 v68, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v158, v11

    move/from16 v11, v69

    :goto_2f
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2b

    move/from16 v12, v70

    move-object/from16 v159, v82

    goto :goto_30

    :cond_2b
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v159, v12

    move/from16 v12, v70

    :goto_30
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2c

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_31

    :cond_2c
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move v15, v11

    move/from16 v71, v12

    move/from16 v11, v72

    move-object/from16 v161, v82

    goto :goto_32

    :cond_2d
    move v15, v11

    move/from16 v71, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v161, v11

    move/from16 v11, v72

    :goto_32
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2e

    move v12, v14

    move/from16 v72, v15

    move/from16 v14, v73

    move-object/from16 v162, v82

    goto :goto_33

    :cond_2e
    move v12, v14

    move/from16 v72, v15

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v73

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move v15, v11

    move/from16 v73, v12

    move/from16 v11, v74

    move-object/from16 v163, v82

    goto :goto_34

    :cond_2f
    move v15, v11

    move/from16 v73, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v163, v11

    move/from16 v11, v74

    :goto_34
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_30

    move/from16 v12, v75

    move-object/from16 v164, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v164, v12

    move/from16 v12, v75

    :goto_35
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_31

    move/from16 v74, v0

    move/from16 v0, v76

    move-object/from16 v165, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v0

    move/from16 v0, v76

    :goto_36
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v76, v0

    move/from16 v0, v77

    move-object/from16 v166, v82

    goto :goto_37

    :cond_32
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v0

    move-object/from16 v166, v75

    move/from16 v0, v77

    :goto_37
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_33

    move/from16 v77, v0

    move/from16 v75, v11

    move/from16 v0, v78

    move-object/from16 v167, v82

    :goto_38
    move/from16 v78, v12

    goto :goto_39

    :cond_33
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v0

    move-object/from16 v167, v75

    move/from16 v0, v78

    move/from16 v75, v11

    goto :goto_38

    :goto_39
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_34

    move/from16 v11, v79

    const/16 v168, 0x1

    goto :goto_3a

    :cond_34
    move/from16 v11, v79

    const/16 v168, 0x0

    :goto_3a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_35

    move/from16 v12, v80

    move-object/from16 v169, v82

    goto :goto_3b

    :cond_35
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v169, v12

    move/from16 v12, v80

    :goto_3b
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_36

    :goto_3c
    move/from16 v50, v0

    move-object/from16 v170, v82

    goto :goto_3d

    :cond_36
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3c

    :goto_3d
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v0

    move/from16 v96, v3

    move/from16 v97, v4

    move/from16 v98, v5

    move/from16 v103, v6

    move/from16 v104, v8

    move/from16 v105, v10

    move/from16 v108, v13

    move/from16 v109, v25

    move/from16 v110, v26

    move/from16 v111, v27

    move/from16 v112, v34

    move/from16 v113, v33

    move/from16 v120, v48

    move/from16 v121, v41

    move/from16 v130, v44

    move/from16 v134, v47

    move/from16 v139, v51

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v79, v11

    move/from16 v80, v12

    move/from16 v8, v18

    move/from16 v10, v19

    move/from16 v12, v20

    move/from16 v20, v23

    move/from16 v33, v35

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v47, v52

    move/from16 v49, v53

    move/from16 v51, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v52, v69

    move/from16 v53, v70

    move/from16 v70, v71

    move/from16 v69, v72

    move/from16 v71, v73

    move/from16 v68, v74

    move/from16 v74, v75

    move/from16 v75, v78

    move/from16 v3, v81

    move/from16 v4, v171

    move/from16 v5, v172

    move/from16 v6, v173

    move/from16 p0, v174

    move/from16 v11, v176

    move/from16 v13, v177

    move/from16 v23, v179

    move/from16 v25, v181

    move/from16 v26, v182

    move/from16 v27, v184

    move/from16 v35, v185

    move/from16 v42, v186

    move/from16 v45, v187

    move/from16 v34, v188

    move/from16 v18, v7

    move/from16 v19, v9

    move/from16 v73, v14

    move/from16 v72, v15

    move/from16 v7, v17

    move/from16 v14, v21

    move/from16 v21, v22

    move/from16 v22, v24

    move/from16 v17, v28

    move/from16 v78, v50

    move/from16 v9, v175

    move/from16 v15, v178

    move/from16 v24, v180

    move/from16 v28, v183

    move/from16 v50, v189

    goto/16 :goto_1

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_3e
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method public static synthetic P(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Llj/l0;->N0(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic P0(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 170

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE ugcVideoId = ?  ORDER BY resolution DESC LIMIT 1"

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

    goto/16 :goto_38

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v79, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v80

    const/16 v81, 0x0

    if-eqz v80, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v80

    if-eqz v80, :cond_1

    move-object/from16 v83, v81

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v83, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v84, v81

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v84, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v85, v81

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v85, v0

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v86, v81

    goto :goto_4

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v86, v0

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v87, v81

    goto :goto_5

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v87, v0

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v88, v81

    goto :goto_6

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v88, v0

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v89, v81

    goto :goto_7

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v89, v0

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v90, v81

    goto :goto_8

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v90, v0

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v91, v81

    goto :goto_9

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v91, v0

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v92, v81

    goto :goto_a

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v92, v0

    :goto_a
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v98

    move/from16 v5, v16

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v100

    move/from16 v5, v17

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, v18

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, v19

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v20

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v9, v21

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v10, v22

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v11, v23

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v24

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v13, v25

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v26

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v16, v14

    move/from16 v15, v27

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v28

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v15, v29

    move-object/from16 v113, v81

    goto :goto_b

    :cond_b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v113, v15

    move/from16 v15, v29

    :goto_b
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v15, v30

    move-object/from16 v114, v81

    goto :goto_c

    :cond_c
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v114, v15

    move/from16 v15, v30

    :goto_c
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v15, v31

    move-object/from16 v115, v81

    goto :goto_d

    :cond_d
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v115, v15

    move/from16 v15, v31

    :goto_d
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v15, v32

    move-object/from16 v116, v81

    goto :goto_e

    :cond_e
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v116, v15

    move/from16 v15, v32

    :goto_e
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v117

    move/from16 v17, v14

    move/from16 v15, v33

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v18, v14

    move/from16 v15, v34

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v35

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v15, v36

    move-object/from16 v121, v81

    goto :goto_f

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v121, v15

    move/from16 v15, v36

    :goto_f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v15, v37

    move-object/from16 v122, v81

    goto :goto_10

    :cond_10
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v122, v15

    move/from16 v15, v37

    :goto_10
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v123

    move/from16 v15, v38

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    move/from16 v15, v39

    move-object/from16 v125, v81

    goto :goto_11

    :cond_11
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v125, v15

    move/from16 v15, v39

    :goto_11
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_12

    move/from16 v15, v40

    move-object/from16 v126, v81

    goto :goto_12

    :cond_12
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v126, v15

    move/from16 v15, v40

    :goto_12
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v127

    move/from16 v19, v14

    move/from16 v15, v41

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v130

    move/from16 v15, v43

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_13

    move/from16 v20, v14

    move/from16 v15, v44

    move-object/from16 v132, v81

    goto :goto_13

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v20, v14

    move-object/from16 v132, v15

    move/from16 v15, v44

    :goto_13
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v15, v46

    move-object/from16 v134, v81

    goto :goto_14

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v134, v15

    move/from16 v15, v46

    :goto_14
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move/from16 v21, v14

    move/from16 v15, v47

    move-object/from16 v135, v81

    goto :goto_15

    :cond_15
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v21, v14

    move-object/from16 v135, v15

    move/from16 v15, v47

    :goto_15
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_16

    move/from16 v14, v48

    const/16 v136, 0x1

    goto :goto_16

    :cond_16
    move/from16 v14, v48

    const/16 v136, 0x0

    :goto_16
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_17

    move/from16 v14, v49

    const/16 v137, 0x1

    goto :goto_17

    :cond_17
    move/from16 v14, v49

    const/16 v137, 0x0

    :goto_17
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v50

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_18

    move/from16 v15, v51

    move-object/from16 v139, v81

    goto :goto_18

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v139, v15

    move/from16 v15, v51

    :goto_18
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_19

    move/from16 v22, v14

    move/from16 v14, v52

    move-object/from16 v140, v81

    goto :goto_19

    :cond_19
    move/from16 v22, v14

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v140, v14

    move/from16 v14, v52

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v14, v53

    move-object/from16 v141, v81

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v53

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    move/from16 v14, v54

    move-object/from16 v142, v81

    goto :goto_1b

    :cond_1b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v142, v14

    move/from16 v14, v54

    :goto_1b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1c

    move/from16 v14, v55

    move-object/from16 v143, v81

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v143, v14

    move/from16 v14, v55

    :goto_1c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1d

    move/from16 v14, v56

    move-object/from16 v144, v81

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v144, v14

    move/from16 v14, v56

    :goto_1d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1e

    move/from16 v14, v57

    move-object/from16 v145, v81

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v145, v14

    move/from16 v14, v57

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1f

    move/from16 v14, v58

    move-object/from16 v146, v81

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v146, v14

    move/from16 v14, v58

    :goto_1f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_20

    move/from16 v14, v59

    move-object/from16 v147, v81

    goto :goto_20

    :cond_20
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v147, v14

    move/from16 v14, v59

    :goto_20
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_21

    move/from16 v14, v60

    move-object/from16 v148, v81

    goto :goto_21

    :cond_21
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v148, v14

    move/from16 v14, v60

    :goto_21
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_22

    move/from16 v14, v61

    move-object/from16 v149, v81

    goto :goto_22

    :cond_22
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v149, v14

    move/from16 v14, v61

    :goto_22
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_23

    move/from16 v14, v62

    move-object/from16 v150, v81

    goto :goto_23

    :cond_23
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v150, v14

    move/from16 v14, v62

    :goto_23
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_24

    move/from16 v14, v63

    move-object/from16 v151, v81

    goto :goto_24

    :cond_24
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v151, v14

    move/from16 v14, v63

    :goto_24
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_25

    move/from16 v14, v64

    move-object/from16 v152, v81

    goto :goto_25

    :cond_25
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v152, v14

    move/from16 v14, v64

    :goto_25
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_26

    move/from16 v14, v65

    move-object/from16 v153, v81

    goto :goto_26

    :cond_26
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v153, v14

    move/from16 v14, v65

    :goto_26
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_27

    move/from16 v14, v66

    move-object/from16 v154, v81

    goto :goto_27

    :cond_27
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v154, v14

    move/from16 v14, v66

    :goto_27
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_28

    move/from16 v14, v67

    move-object/from16 v155, v81

    goto :goto_28

    :cond_28
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v155, v14

    move/from16 v14, v67

    :goto_28
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_29

    move/from16 v14, v68

    move-object/from16 v156, v81

    goto :goto_29

    :cond_29
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v156, v14

    move/from16 v14, v68

    :goto_29
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2a

    move/from16 v14, v69

    move-object/from16 v157, v81

    goto :goto_2a

    :cond_2a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v157, v14

    move/from16 v14, v69

    :goto_2a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2b

    move/from16 v14, v70

    move-object/from16 v158, v81

    goto :goto_2b

    :cond_2b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v158, v14

    move/from16 v14, v70

    :goto_2b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move/from16 v14, v71

    move-object/from16 v159, v81

    goto :goto_2c

    :cond_2c
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v159, v14

    move/from16 v14, v71

    :goto_2c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move/from16 v14, v72

    move-object/from16 v160, v81

    goto :goto_2d

    :cond_2d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v72

    :goto_2d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2e

    move/from16 v14, v73

    move-object/from16 v161, v81

    goto :goto_2e

    :cond_2e
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v161, v14

    move/from16 v14, v73

    :goto_2e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v14, v74

    move-object/from16 v162, v81

    goto :goto_2f

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v74

    :goto_2f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_30

    move/from16 v14, v75

    move-object/from16 v163, v81

    goto :goto_30

    :cond_30
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v75

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_31

    move/from16 v14, v76

    move-object/from16 v164, v81

    goto :goto_31

    :cond_31
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v164, v14

    move/from16 v14, v76

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_32

    move/from16 v14, v77

    move-object/from16 v165, v81

    goto :goto_32

    :cond_32
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v165, v14

    move/from16 v14, v77

    :goto_32
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_33

    move/from16 v14, v78

    move-object/from16 v166, v81

    goto :goto_33

    :cond_33
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v166, v14

    move/from16 v14, v78

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_34

    move/from16 v14, v79

    const/16 v167, 0x1

    goto :goto_34

    :cond_34
    move/from16 v14, v79

    const/16 v167, 0x0

    :goto_34
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_35

    move-object/from16 v168, v81

    goto :goto_35

    :cond_35
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v168, v14

    :goto_35
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_36

    :goto_36
    move-object/from16 v169, v81

    goto :goto_37

    :cond_36
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    goto :goto_36

    :goto_37
    new-instance v81, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v82, v81

    move/from16 v95, v0

    move/from16 v96, v3

    move/from16 v97, v4

    move/from16 v102, v5

    move/from16 v103, v6

    move/from16 v104, v7

    move/from16 v105, v8

    move/from16 v106, v9

    move/from16 v107, v10

    move/from16 v108, v11

    move/from16 v109, v12

    move/from16 v110, v13

    move/from16 v111, v16

    move/from16 v112, v17

    move/from16 v119, v18

    move/from16 v120, v19

    move/from16 v129, v20

    move/from16 v133, v21

    move/from16 v138, v22

    invoke-direct/range {v82 .. v169}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v81

    :goto_38
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method public static synthetic Q(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->J0(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic Q0(Lcom/transsion/baselib/db/download/DownloadBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Llj/l0;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public static synthetic R(ILjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Llj/l0;->V0(ILjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic R0(Lcom/transsion/baselib/db/download/DownloadBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Llj/l0;->d:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public static synthetic S(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->t0(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic S0(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "UPDATE DOWNLOAD_TABLE SET duration = ? WHERE resourceId = ? "

    invoke-interface {p3, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p3

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p3, v0, p0, p1}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    if-nez p2, :cond_0

    invoke-interface {p3, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p3, p0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p3}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p3}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {p3}, Lz3/e;->close()V

    throw p0
.end method

.method public static synthetic T(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Llj/l0;->M0(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic T0(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "UPDATE DOWNLOAD_TABLE SET lastPlayTimeStamp = ? WHERE resourceId = ? "

    invoke-interface {p3, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p3

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p3, v0, p0, p1}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    if-nez p2, :cond_0

    invoke-interface {p3, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p3, p0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p3}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p3}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {p3}, Lz3/e;->close()V

    throw p0
.end method

.method public static synthetic U(ILz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->I0(ILz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic U0(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "UPDATE DOWNLOAD_TABLE SET readProgress = ? WHERE resourceId = ? "

    invoke-interface {p3, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p3

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p3, v0, p0, p1}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    if-nez p2, :cond_0

    invoke-interface {p3, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p3, p0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p3}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p3}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {p3}, Lz3/e;->close()V

    throw p0
.end method

.method public static synthetic V(Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    invoke-static {p0}, Llj/l0;->B0(Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic V0(ILjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 3

    const-string v0, "UPDATE DOWNLOAD_TABLE SET status = ? WHERE resourceId = ? "

    invoke-interface {p2, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p2

    const/4 v0, 0x1

    int-to-long v1, p0

    :try_start_0
    invoke-interface {p2, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    if-nez p1, :cond_0

    invoke-interface {p2, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p2, p0, p1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p2}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {p2}, Lz3/e;->close()V

    throw p0
.end method

.method public static synthetic W(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Llj/l0;->L0(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic W0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "UPDATE DOWNLOAD_TABLE SET restrictLevel = ?, releaseDate = ?, countryName = ?, subtitles = ?, seNum = ?, genre = ?, imdbRate = ? WHERE resourceId = ?"

    invoke-interface {p8, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p8

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {p8, v0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_0
    invoke-interface {p8, v0, p0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x2

    if-nez p1, :cond_1

    invoke-interface {p8, p0}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p8, p0, p1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    const/4 p0, 0x3

    if-nez p2, :cond_2

    invoke-interface {p8, p0}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p8, p0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2
    const/4 p0, 0x4

    if-nez p3, :cond_3

    invoke-interface {p8, p0}, Lz3/e;->g(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p8, p0, p3}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_3
    const/4 p0, 0x5

    if-nez p4, :cond_4

    invoke-interface {p8, p0}, Lz3/e;->g(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-interface {p8, p0, p1, p2}, Lz3/e;->c(IJ)V

    :goto_4
    const/4 p0, 0x6

    if-nez p5, :cond_5

    invoke-interface {p8, p0}, Lz3/e;->g(I)V

    goto :goto_5

    :cond_5
    invoke-interface {p8, p0, p5}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_5
    const/4 p0, 0x7

    if-nez p6, :cond_6

    invoke-interface {p8, p0}, Lz3/e;->g(I)V

    goto :goto_6

    :cond_6
    invoke-interface {p8, p0, p6}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_6
    const/16 p0, 0x8

    if-nez p7, :cond_7

    invoke-interface {p8, p0}, Lz3/e;->g(I)V

    goto :goto_7

    :cond_7
    invoke-interface {p8, p0, p7}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_7
    invoke-interface {p8}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p8}, Lz3/e;->close()V

    return-object p0

    :goto_8
    invoke-interface {p8}, Lz3/e;->close()V

    throw p0
.end method

.method public static synthetic X(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Llj/l0;->D0(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic X0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "UPDATE DOWNLOAD_TABLE SET subtitleSelectId = ? WHERE resourceId = ? "

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

.method public static synthetic Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p8}, Llj/l0;->W0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic Y0(IILjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 3

    const-string v0, "UPDATE DOWNLOAD_TABLE SET videoWidth = ?, videoHeight = ? WHERE resourceId = ? "

    invoke-interface {p3, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p3

    const/4 v0, 0x1

    int-to-long v1, p0

    :try_start_0
    invoke-interface {p3, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    int-to-long v0, p1

    invoke-interface {p3, p0, v0, v1}, Lz3/e;->c(IJ)V

    const/4 p0, 0x3

    if-nez p2, :cond_0

    invoke-interface {p3, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p3, p0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p3}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p3}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {p3}, Lz3/e;->close()V

    throw p0
.end method

.method public static synthetic Z(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Llj/l0;->T0(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->r0(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Ljava/lang/String;ILz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    invoke-static {p0, p1, p2}, Llj/l0;->w0(Ljava/lang/String;ILz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->x0(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->v0(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->E0(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Ljava/lang/String;ILz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    invoke-static {p0, p1, p2}, Llj/l0;->z0(Ljava/lang/String;ILz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->O0(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->s0(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->y0(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Llj/l0;Lcom/transsion/baselib/db/download/DownloadBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Llj/l0;->R0(Lcom/transsion/baselib/db/download/DownloadBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(IILjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Llj/l0;->Y0(IILjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->P0(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Llj/l0;->X0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m0(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->H0(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Llj/l0;->F0(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Llj/l0;->A0(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Llj/l0;->u0(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static q0()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic r0(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM DOWNLOAD_TABLE WHERE url=?"

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

.method private static synthetic s0(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM DOWNLOAD_TABLE WHERE resourceId=?"

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

.method private static synthetic t0(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM DOWNLOAD_TABLE WHERE resourceId=? AND fileType =  3 "

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

.method private static synthetic u0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 190

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? ORDER BY createAt DESC"

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

    goto/16 :goto_3e

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v79, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v80, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_1

    move-object/from16 v84, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v85, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v86, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v87, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v88, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v89, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v90, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v91, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v92, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_a

    move-object/from16 v93, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_b
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v3

    move/from16 v171, v4

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v172, v5

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v173, v6

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 p0, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v0

    move/from16 v174, v6

    move/from16 v0, v17

    move/from16 v17, v7

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v175, v9

    move/from16 v7, v18

    move/from16 v18, v8

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v176, v11

    move/from16 v9, v19

    move/from16 v19, v10

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v177, v13

    move/from16 v11, v20

    move/from16 v20, v12

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v178, v15

    move/from16 v13, v21

    move/from16 v21, v14

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v107, v14

    move/from16 v15, v22

    move/from16 v22, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v106, v12

    move/from16 v14, v23

    move/from16 v23, v11

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v179, v14

    move/from16 v12, v24

    move/from16 v24, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v180, v12

    move/from16 v15, v25

    move/from16 v25, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v181, v15

    move/from16 v12, v26

    move/from16 v26, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v182, v12

    move/from16 v15, v27

    move/from16 v27, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v28

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_b

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v114, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v0

    move/from16 v0, v29

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_c

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v115, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v0

    move/from16 v0, v30

    :goto_d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_d

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v116, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v0

    move/from16 v0, v31

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_e

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v117, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v0

    move/from16 v0, v32

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v0

    move/from16 v183, v12

    move/from16 v0, v33

    move/from16 v33, v11

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v184, v15

    move/from16 v12, v34

    move/from16 v34, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v35

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_f

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v122, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v0

    move/from16 v0, v36

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_10

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v123, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v0

    move/from16 v0, v37

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_11

    move/from16 v38, v0

    move/from16 v0, v39

    move-object/from16 v126, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v0

    move/from16 v0, v39

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_12

    move/from16 v39, v0

    move/from16 v0, v40

    move-object/from16 v127, v82

    goto :goto_13

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v0

    move/from16 v0, v40

    :goto_13
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v0

    move/from16 v185, v15

    move/from16 v0, v41

    move/from16 v41, v14

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v0

    move/from16 v0, v43

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_13

    move/from16 v43, v0

    move/from16 v186, v15

    move/from16 v0, v44

    move-object/from16 v133, v82

    :goto_14
    move/from16 v44, v14

    goto :goto_15

    :cond_13
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v186, v15

    move-object/from16 v133, v43

    move/from16 v43, v0

    move/from16 v0, v44

    goto :goto_14

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_14

    move/from16 v45, v0

    move/from16 v0, v46

    move-object/from16 v135, v82

    goto :goto_16

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v0

    move/from16 v0, v46

    :goto_16
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_15

    move/from16 v46, v0

    move/from16 v187, v15

    move/from16 v0, v47

    move-object/from16 v136, v82

    :goto_17
    move/from16 v47, v14

    goto :goto_18

    :cond_15
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v187, v15

    move-object/from16 v136, v46

    move/from16 v46, v0

    move/from16 v0, v47

    goto :goto_17

    :goto_18
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v188, v12

    if-eqz v14, :cond_16

    move/from16 v14, v48

    const/16 v137, 0x1

    :goto_19
    move/from16 v48, v11

    goto :goto_1a

    :cond_16
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_19

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_17

    move/from16 v11, v49

    const/16 v138, 0x1

    :goto_1b
    move/from16 v49, v14

    goto :goto_1c

    :cond_17
    move/from16 v11, v49

    const/16 v138, 0x0

    goto :goto_1b

    :goto_1c
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v50

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_18

    move/from16 v12, v51

    move-object/from16 v140, v82

    goto :goto_1d

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v12, v51

    :goto_1d
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_19

    move/from16 v51, v14

    move/from16 v189, v15

    move/from16 v14, v52

    move-object/from16 v141, v82

    goto :goto_1e

    :cond_19
    move/from16 v51, v14

    move/from16 v189, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v52

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v15, v53

    move-object/from16 v142, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v142, v15

    move/from16 v15, v53

    :goto_1f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1b

    move/from16 v52, v0

    move/from16 v0, v54

    move-object/from16 v143, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v0

    move/from16 v0, v54

    :goto_20
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v54, v0

    move/from16 v0, v55

    move-object/from16 v144, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v0

    move-object/from16 v144, v53

    move/from16 v0, v55

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v55, v0

    move/from16 v0, v56

    move-object/from16 v145, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v0

    move-object/from16 v145, v53

    move/from16 v0, v56

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v56, v0

    move/from16 v0, v57

    move-object/from16 v146, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v0

    move-object/from16 v146, v53

    move/from16 v0, v57

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v57, v0

    move/from16 v0, v58

    move-object/from16 v147, v82

    goto :goto_24

    :cond_1f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v0

    move-object/from16 v147, v53

    move/from16 v0, v58

    :goto_24
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_20

    move/from16 v53, v11

    move/from16 v58, v12

    move/from16 v11, v59

    move-object/from16 v148, v82

    goto :goto_25

    :cond_20
    move/from16 v53, v11

    move/from16 v58, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v148, v11

    move/from16 v11, v59

    :goto_25
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_21

    move/from16 v12, v60

    move-object/from16 v149, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v149, v12

    move/from16 v12, v60

    :goto_26
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_22

    move/from16 v59, v0

    move/from16 v0, v61

    move-object/from16 v150, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v0

    move/from16 v0, v61

    :goto_27
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v61, v0

    move/from16 v0, v62

    move-object/from16 v151, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v0

    move-object/from16 v151, v60

    move/from16 v0, v62

    :goto_28
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v62, v0

    move/from16 v0, v63

    move-object/from16 v152, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v0

    move-object/from16 v152, v60

    move/from16 v0, v63

    :goto_29
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v63, v0

    move/from16 v0, v64

    move-object/from16 v153, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v0

    move-object/from16 v153, v60

    move/from16 v0, v64

    :goto_2a
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v64, v0

    move/from16 v0, v65

    move-object/from16 v154, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v0

    move-object/from16 v154, v60

    move/from16 v0, v65

    :goto_2b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v65, v0

    move/from16 v0, v66

    move-object/from16 v155, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v0

    move-object/from16 v155, v60

    move/from16 v0, v66

    :goto_2c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v66, v0

    move/from16 v0, v67

    move-object/from16 v156, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v0

    move-object/from16 v156, v60

    move/from16 v0, v67

    :goto_2d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v67, v0

    move/from16 v0, v68

    move-object/from16 v157, v82

    goto :goto_2e

    :cond_29
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v0

    move-object/from16 v157, v60

    move/from16 v0, v68

    :goto_2e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_2a

    move/from16 v60, v11

    move/from16 v68, v12

    move/from16 v11, v69

    move-object/from16 v158, v82

    goto :goto_2f

    :cond_2a
    move/from16 v60, v11

    move/from16 v68, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v158, v11

    move/from16 v11, v69

    :goto_2f
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2b

    move/from16 v12, v70

    move-object/from16 v159, v82

    goto :goto_30

    :cond_2b
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v159, v12

    move/from16 v12, v70

    :goto_30
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2c

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_31

    :cond_2c
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move v15, v11

    move/from16 v71, v12

    move/from16 v11, v72

    move-object/from16 v161, v82

    goto :goto_32

    :cond_2d
    move v15, v11

    move/from16 v71, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v161, v11

    move/from16 v11, v72

    :goto_32
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2e

    move v12, v14

    move/from16 v72, v15

    move/from16 v14, v73

    move-object/from16 v162, v82

    goto :goto_33

    :cond_2e
    move v12, v14

    move/from16 v72, v15

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v73

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move v15, v11

    move/from16 v73, v12

    move/from16 v11, v74

    move-object/from16 v163, v82

    goto :goto_34

    :cond_2f
    move v15, v11

    move/from16 v73, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v163, v11

    move/from16 v11, v74

    :goto_34
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_30

    move/from16 v12, v75

    move-object/from16 v164, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v164, v12

    move/from16 v12, v75

    :goto_35
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_31

    move/from16 v74, v0

    move/from16 v0, v76

    move-object/from16 v165, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v0

    move/from16 v0, v76

    :goto_36
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v76, v0

    move/from16 v0, v77

    move-object/from16 v166, v82

    goto :goto_37

    :cond_32
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v0

    move-object/from16 v166, v75

    move/from16 v0, v77

    :goto_37
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_33

    move/from16 v77, v0

    move/from16 v75, v11

    move/from16 v0, v78

    move-object/from16 v167, v82

    :goto_38
    move/from16 v78, v12

    goto :goto_39

    :cond_33
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v0

    move-object/from16 v167, v75

    move/from16 v0, v78

    move/from16 v75, v11

    goto :goto_38

    :goto_39
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_34

    move/from16 v11, v79

    const/16 v168, 0x1

    goto :goto_3a

    :cond_34
    move/from16 v11, v79

    const/16 v168, 0x0

    :goto_3a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_35

    move/from16 v12, v80

    move-object/from16 v169, v82

    goto :goto_3b

    :cond_35
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v169, v12

    move/from16 v12, v80

    :goto_3b
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_36

    :goto_3c
    move/from16 v50, v0

    move-object/from16 v170, v82

    goto :goto_3d

    :cond_36
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3c

    :goto_3d
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v0

    move/from16 v96, v3

    move/from16 v97, v4

    move/from16 v98, v5

    move/from16 v103, v6

    move/from16 v104, v8

    move/from16 v105, v10

    move/from16 v108, v13

    move/from16 v109, v25

    move/from16 v110, v26

    move/from16 v111, v27

    move/from16 v112, v34

    move/from16 v113, v33

    move/from16 v120, v48

    move/from16 v121, v41

    move/from16 v130, v44

    move/from16 v134, v47

    move/from16 v139, v51

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v79, v11

    move/from16 v80, v12

    move/from16 v8, v18

    move/from16 v10, v19

    move/from16 v12, v20

    move/from16 v20, v23

    move/from16 v33, v35

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v47, v52

    move/from16 v49, v53

    move/from16 v51, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v52, v69

    move/from16 v53, v70

    move/from16 v70, v71

    move/from16 v69, v72

    move/from16 v71, v73

    move/from16 v68, v74

    move/from16 v74, v75

    move/from16 v75, v78

    move/from16 v3, v81

    move/from16 v4, v171

    move/from16 v5, v172

    move/from16 v6, v173

    move/from16 p0, v174

    move/from16 v11, v176

    move/from16 v13, v177

    move/from16 v23, v179

    move/from16 v25, v181

    move/from16 v26, v182

    move/from16 v27, v184

    move/from16 v35, v185

    move/from16 v42, v186

    move/from16 v45, v187

    move/from16 v34, v188

    move/from16 v18, v7

    move/from16 v19, v9

    move/from16 v73, v14

    move/from16 v72, v15

    move/from16 v7, v17

    move/from16 v14, v21

    move/from16 v21, v22

    move/from16 v22, v24

    move/from16 v17, v28

    move/from16 v78, v50

    move/from16 v9, v175

    move/from16 v15, v178

    move/from16 v24, v180

    move/from16 v28, v183

    move/from16 v50, v189

    goto/16 :goto_1

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_3e
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic v0(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 170

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE resourceId = ? ORDER BY createAt DESC"

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

    goto/16 :goto_38

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v79, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v80

    const/16 v81, 0x0

    if-eqz v80, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v80

    if-eqz v80, :cond_1

    move-object/from16 v83, v81

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v83, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v84, v81

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v84, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v85, v81

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v85, v0

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v86, v81

    goto :goto_4

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v86, v0

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v87, v81

    goto :goto_5

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v87, v0

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v88, v81

    goto :goto_6

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v88, v0

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v89, v81

    goto :goto_7

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v89, v0

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v90, v81

    goto :goto_8

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v90, v0

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v91, v81

    goto :goto_9

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v91, v0

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v92, v81

    goto :goto_a

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v92, v0

    :goto_a
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v98

    move/from16 v5, v16

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v100

    move/from16 v5, v17

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, v18

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, v19

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v20

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v9, v21

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v10, v22

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v11, v23

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v24

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v13, v25

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v26

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v16, v14

    move/from16 v15, v27

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v28

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v15, v29

    move-object/from16 v113, v81

    goto :goto_b

    :cond_b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v113, v15

    move/from16 v15, v29

    :goto_b
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v15, v30

    move-object/from16 v114, v81

    goto :goto_c

    :cond_c
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v114, v15

    move/from16 v15, v30

    :goto_c
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v15, v31

    move-object/from16 v115, v81

    goto :goto_d

    :cond_d
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v115, v15

    move/from16 v15, v31

    :goto_d
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v15, v32

    move-object/from16 v116, v81

    goto :goto_e

    :cond_e
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v116, v15

    move/from16 v15, v32

    :goto_e
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v117

    move/from16 v17, v14

    move/from16 v15, v33

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v18, v14

    move/from16 v15, v34

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v35

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v15, v36

    move-object/from16 v121, v81

    goto :goto_f

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v121, v15

    move/from16 v15, v36

    :goto_f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v15, v37

    move-object/from16 v122, v81

    goto :goto_10

    :cond_10
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v122, v15

    move/from16 v15, v37

    :goto_10
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v123

    move/from16 v15, v38

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    move/from16 v15, v39

    move-object/from16 v125, v81

    goto :goto_11

    :cond_11
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v125, v15

    move/from16 v15, v39

    :goto_11
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_12

    move/from16 v15, v40

    move-object/from16 v126, v81

    goto :goto_12

    :cond_12
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v126, v15

    move/from16 v15, v40

    :goto_12
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v127

    move/from16 v19, v14

    move/from16 v15, v41

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v130

    move/from16 v15, v43

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_13

    move/from16 v20, v14

    move/from16 v15, v44

    move-object/from16 v132, v81

    goto :goto_13

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v20, v14

    move-object/from16 v132, v15

    move/from16 v15, v44

    :goto_13
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v15, v46

    move-object/from16 v134, v81

    goto :goto_14

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v134, v15

    move/from16 v15, v46

    :goto_14
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move/from16 v21, v14

    move/from16 v15, v47

    move-object/from16 v135, v81

    goto :goto_15

    :cond_15
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v21, v14

    move-object/from16 v135, v15

    move/from16 v15, v47

    :goto_15
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_16

    move/from16 v14, v48

    const/16 v136, 0x1

    goto :goto_16

    :cond_16
    move/from16 v14, v48

    const/16 v136, 0x0

    :goto_16
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_17

    move/from16 v14, v49

    const/16 v137, 0x1

    goto :goto_17

    :cond_17
    move/from16 v14, v49

    const/16 v137, 0x0

    :goto_17
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v50

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_18

    move/from16 v15, v51

    move-object/from16 v139, v81

    goto :goto_18

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v139, v15

    move/from16 v15, v51

    :goto_18
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_19

    move/from16 v22, v14

    move/from16 v14, v52

    move-object/from16 v140, v81

    goto :goto_19

    :cond_19
    move/from16 v22, v14

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v140, v14

    move/from16 v14, v52

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v14, v53

    move-object/from16 v141, v81

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v53

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    move/from16 v14, v54

    move-object/from16 v142, v81

    goto :goto_1b

    :cond_1b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v142, v14

    move/from16 v14, v54

    :goto_1b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1c

    move/from16 v14, v55

    move-object/from16 v143, v81

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v143, v14

    move/from16 v14, v55

    :goto_1c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1d

    move/from16 v14, v56

    move-object/from16 v144, v81

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v144, v14

    move/from16 v14, v56

    :goto_1d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1e

    move/from16 v14, v57

    move-object/from16 v145, v81

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v145, v14

    move/from16 v14, v57

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1f

    move/from16 v14, v58

    move-object/from16 v146, v81

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v146, v14

    move/from16 v14, v58

    :goto_1f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_20

    move/from16 v14, v59

    move-object/from16 v147, v81

    goto :goto_20

    :cond_20
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v147, v14

    move/from16 v14, v59

    :goto_20
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_21

    move/from16 v14, v60

    move-object/from16 v148, v81

    goto :goto_21

    :cond_21
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v148, v14

    move/from16 v14, v60

    :goto_21
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_22

    move/from16 v14, v61

    move-object/from16 v149, v81

    goto :goto_22

    :cond_22
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v149, v14

    move/from16 v14, v61

    :goto_22
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_23

    move/from16 v14, v62

    move-object/from16 v150, v81

    goto :goto_23

    :cond_23
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v150, v14

    move/from16 v14, v62

    :goto_23
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_24

    move/from16 v14, v63

    move-object/from16 v151, v81

    goto :goto_24

    :cond_24
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v151, v14

    move/from16 v14, v63

    :goto_24
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_25

    move/from16 v14, v64

    move-object/from16 v152, v81

    goto :goto_25

    :cond_25
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v152, v14

    move/from16 v14, v64

    :goto_25
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_26

    move/from16 v14, v65

    move-object/from16 v153, v81

    goto :goto_26

    :cond_26
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v153, v14

    move/from16 v14, v65

    :goto_26
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_27

    move/from16 v14, v66

    move-object/from16 v154, v81

    goto :goto_27

    :cond_27
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v154, v14

    move/from16 v14, v66

    :goto_27
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_28

    move/from16 v14, v67

    move-object/from16 v155, v81

    goto :goto_28

    :cond_28
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v155, v14

    move/from16 v14, v67

    :goto_28
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_29

    move/from16 v14, v68

    move-object/from16 v156, v81

    goto :goto_29

    :cond_29
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v156, v14

    move/from16 v14, v68

    :goto_29
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2a

    move/from16 v14, v69

    move-object/from16 v157, v81

    goto :goto_2a

    :cond_2a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v157, v14

    move/from16 v14, v69

    :goto_2a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2b

    move/from16 v14, v70

    move-object/from16 v158, v81

    goto :goto_2b

    :cond_2b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v158, v14

    move/from16 v14, v70

    :goto_2b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move/from16 v14, v71

    move-object/from16 v159, v81

    goto :goto_2c

    :cond_2c
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v159, v14

    move/from16 v14, v71

    :goto_2c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move/from16 v14, v72

    move-object/from16 v160, v81

    goto :goto_2d

    :cond_2d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v72

    :goto_2d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2e

    move/from16 v14, v73

    move-object/from16 v161, v81

    goto :goto_2e

    :cond_2e
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v161, v14

    move/from16 v14, v73

    :goto_2e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v14, v74

    move-object/from16 v162, v81

    goto :goto_2f

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v74

    :goto_2f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_30

    move/from16 v14, v75

    move-object/from16 v163, v81

    goto :goto_30

    :cond_30
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v75

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_31

    move/from16 v14, v76

    move-object/from16 v164, v81

    goto :goto_31

    :cond_31
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v164, v14

    move/from16 v14, v76

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_32

    move/from16 v14, v77

    move-object/from16 v165, v81

    goto :goto_32

    :cond_32
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v165, v14

    move/from16 v14, v77

    :goto_32
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_33

    move/from16 v14, v78

    move-object/from16 v166, v81

    goto :goto_33

    :cond_33
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v166, v14

    move/from16 v14, v78

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_34

    move/from16 v14, v79

    const/16 v167, 0x1

    goto :goto_34

    :cond_34
    move/from16 v14, v79

    const/16 v167, 0x0

    :goto_34
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_35

    move-object/from16 v168, v81

    goto :goto_35

    :cond_35
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v168, v14

    :goto_35
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_36

    :goto_36
    move-object/from16 v169, v81

    goto :goto_37

    :cond_36
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    goto :goto_36

    :goto_37
    new-instance v81, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v82, v81

    move/from16 v95, v0

    move/from16 v96, v3

    move/from16 v97, v4

    move/from16 v102, v5

    move/from16 v103, v6

    move/from16 v104, v7

    move/from16 v105, v8

    move/from16 v106, v9

    move/from16 v107, v10

    move/from16 v108, v11

    move/from16 v109, v12

    move/from16 v110, v13

    move/from16 v111, v16

    move/from16 v112, v17

    move/from16 v119, v18

    move/from16 v120, v19

    move/from16 v129, v20

    move/from16 v133, v21

    move/from16 v138, v22

    invoke-direct/range {v82 .. v169}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v81

    :goto_38
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic w0(Ljava/lang/String;ILz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 169

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? AND ep = ?"

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

    goto/16 :goto_38

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    move/from16 v3, p1

    int-to-long v3, v3

    invoke-interface {v1, v0, v3, v4}, Lz3/e;->c(IJ)V

    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v79

    const/16 v80, 0x0

    if-eqz v79, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v79

    if-eqz v79, :cond_1

    move-object/from16 v82, v80

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v82, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v83, v80

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v83, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v84, v80

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v84, v0

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v85, v80

    goto :goto_4

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v85, v0

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v86, v80

    goto :goto_5

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v86, v0

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v87, v80

    goto :goto_6

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v87, v0

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v88, v80

    goto :goto_7

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v88, v0

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v89, v80

    goto :goto_8

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v89, v0

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v90, v80

    goto :goto_9

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v90, v0

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v91, v80

    goto :goto_a

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v91, v0

    :goto_a
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v97

    move/from16 v5, p1

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 v5, v16

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, v17

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, v18

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v19

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v9, v20

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v10, v21

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v11, v22

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v23

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v13, v24

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v25

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v16, v14

    move/from16 v15, v26

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v27

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v15, v28

    move-object/from16 v112, v80

    goto :goto_b

    :cond_b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v112, v15

    move/from16 v15, v28

    :goto_b
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v15, v29

    move-object/from16 v113, v80

    goto :goto_c

    :cond_c
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v113, v15

    move/from16 v15, v29

    :goto_c
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v15, v30

    move-object/from16 v114, v80

    goto :goto_d

    :cond_d
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v114, v15

    move/from16 v15, v30

    :goto_d
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v15, v31

    move-object/from16 v115, v80

    goto :goto_e

    :cond_e
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v115, v15

    move/from16 v15, v31

    :goto_e
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v116

    move/from16 v17, v14

    move/from16 v15, v32

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v18, v14

    move/from16 v15, v33

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v34

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v15, v35

    move-object/from16 v120, v80

    goto :goto_f

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v120, v15

    move/from16 v15, v35

    :goto_f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v15, v36

    move-object/from16 v121, v80

    goto :goto_10

    :cond_10
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v121, v15

    move/from16 v15, v36

    :goto_10
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v122

    move/from16 v15, v37

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    move/from16 v15, v38

    move-object/from16 v124, v80

    goto :goto_11

    :cond_11
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v124, v15

    move/from16 v15, v38

    :goto_11
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_12

    move/from16 v15, v39

    move-object/from16 v125, v80

    goto :goto_12

    :cond_12
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v125, v15

    move/from16 v15, v39

    :goto_12
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v126

    move/from16 v19, v14

    move/from16 v15, v40

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v41

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v129

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_13

    move/from16 v20, v14

    move/from16 v15, v43

    move-object/from16 v131, v80

    goto :goto_13

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v20, v14

    move-object/from16 v131, v15

    move/from16 v15, v43

    :goto_13
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v44

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v15, v45

    move-object/from16 v133, v80

    goto :goto_14

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v133, v15

    move/from16 v15, v45

    :goto_14
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move/from16 v21, v14

    move/from16 v15, v46

    move-object/from16 v134, v80

    goto :goto_15

    :cond_15
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v21, v14

    move-object/from16 v134, v15

    move/from16 v15, v46

    :goto_15
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_16

    move/from16 v14, v47

    const/16 v135, 0x1

    goto :goto_16

    :cond_16
    move/from16 v14, v47

    const/16 v135, 0x0

    :goto_16
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_17

    move/from16 v14, v48

    const/16 v136, 0x1

    goto :goto_17

    :cond_17
    move/from16 v14, v48

    const/16 v136, 0x0

    :goto_17
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v49

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_18

    move/from16 v15, v50

    move-object/from16 v138, v80

    goto :goto_18

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v138, v15

    move/from16 v15, v50

    :goto_18
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_19

    move/from16 v22, v14

    move/from16 v14, v51

    move-object/from16 v139, v80

    goto :goto_19

    :cond_19
    move/from16 v22, v14

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v139, v14

    move/from16 v14, v51

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v14, v52

    move-object/from16 v140, v80

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v140, v14

    move/from16 v14, v52

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    move/from16 v14, v53

    move-object/from16 v141, v80

    goto :goto_1b

    :cond_1b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v53

    :goto_1b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1c

    move/from16 v14, v54

    move-object/from16 v142, v80

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v142, v14

    move/from16 v14, v54

    :goto_1c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1d

    move/from16 v14, v55

    move-object/from16 v143, v80

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v143, v14

    move/from16 v14, v55

    :goto_1d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1e

    move/from16 v14, v56

    move-object/from16 v144, v80

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v144, v14

    move/from16 v14, v56

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1f

    move/from16 v14, v57

    move-object/from16 v145, v80

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v145, v14

    move/from16 v14, v57

    :goto_1f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_20

    move/from16 v14, v58

    move-object/from16 v146, v80

    goto :goto_20

    :cond_20
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v146, v14

    move/from16 v14, v58

    :goto_20
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_21

    move/from16 v14, v59

    move-object/from16 v147, v80

    goto :goto_21

    :cond_21
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v147, v14

    move/from16 v14, v59

    :goto_21
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_22

    move/from16 v14, v60

    move-object/from16 v148, v80

    goto :goto_22

    :cond_22
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v148, v14

    move/from16 v14, v60

    :goto_22
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_23

    move/from16 v14, v61

    move-object/from16 v149, v80

    goto :goto_23

    :cond_23
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v149, v14

    move/from16 v14, v61

    :goto_23
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_24

    move/from16 v14, v62

    move-object/from16 v150, v80

    goto :goto_24

    :cond_24
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v150, v14

    move/from16 v14, v62

    :goto_24
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_25

    move/from16 v14, v63

    move-object/from16 v151, v80

    goto :goto_25

    :cond_25
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v151, v14

    move/from16 v14, v63

    :goto_25
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_26

    move/from16 v14, v64

    move-object/from16 v152, v80

    goto :goto_26

    :cond_26
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v152, v14

    move/from16 v14, v64

    :goto_26
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_27

    move/from16 v14, v65

    move-object/from16 v153, v80

    goto :goto_27

    :cond_27
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v153, v14

    move/from16 v14, v65

    :goto_27
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_28

    move/from16 v14, v66

    move-object/from16 v154, v80

    goto :goto_28

    :cond_28
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v154, v14

    move/from16 v14, v66

    :goto_28
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_29

    move/from16 v14, v67

    move-object/from16 v155, v80

    goto :goto_29

    :cond_29
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v155, v14

    move/from16 v14, v67

    :goto_29
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2a

    move/from16 v14, v68

    move-object/from16 v156, v80

    goto :goto_2a

    :cond_2a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v156, v14

    move/from16 v14, v68

    :goto_2a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2b

    move/from16 v14, v69

    move-object/from16 v157, v80

    goto :goto_2b

    :cond_2b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v157, v14

    move/from16 v14, v69

    :goto_2b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move/from16 v14, v70

    move-object/from16 v158, v80

    goto :goto_2c

    :cond_2c
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v158, v14

    move/from16 v14, v70

    :goto_2c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move/from16 v14, v71

    move-object/from16 v159, v80

    goto :goto_2d

    :cond_2d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v159, v14

    move/from16 v14, v71

    :goto_2d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2e

    move/from16 v14, v72

    move-object/from16 v160, v80

    goto :goto_2e

    :cond_2e
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v72

    :goto_2e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v14, v73

    move-object/from16 v161, v80

    goto :goto_2f

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v161, v14

    move/from16 v14, v73

    :goto_2f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_30

    move/from16 v14, v74

    move-object/from16 v162, v80

    goto :goto_30

    :cond_30
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v74

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_31

    move/from16 v14, v75

    move-object/from16 v163, v80

    goto :goto_31

    :cond_31
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v75

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_32

    move/from16 v14, v76

    move-object/from16 v164, v80

    goto :goto_32

    :cond_32
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v164, v14

    move/from16 v14, v76

    :goto_32
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_33

    move/from16 v14, v77

    move-object/from16 v165, v80

    goto :goto_33

    :cond_33
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v165, v14

    move/from16 v14, v77

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_34

    move/from16 v14, v78

    const/16 v166, 0x1

    goto :goto_34

    :cond_34
    move/from16 v14, v78

    const/16 v166, 0x0

    :goto_34
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_35

    move-object/from16 v167, v80

    goto :goto_35

    :cond_35
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v167, v14

    :goto_35
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_36

    :goto_36
    move-object/from16 v168, v80

    goto :goto_37

    :cond_36
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v80

    goto :goto_36

    :goto_37
    new-instance v80, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v81, v80

    move/from16 v94, v0

    move/from16 v95, v3

    move/from16 v96, v4

    move/from16 v101, v5

    move/from16 v102, v6

    move/from16 v103, v7

    move/from16 v104, v8

    move/from16 v105, v9

    move/from16 v106, v10

    move/from16 v107, v11

    move/from16 v108, v12

    move/from16 v109, v13

    move/from16 v110, v16

    move/from16 v111, v17

    move/from16 v118, v18

    move/from16 v119, v19

    move/from16 v128, v20

    move/from16 v132, v21

    move/from16 v137, v22

    invoke-direct/range {v81 .. v168}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v80

    :goto_38
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic x0(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 170

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ?"

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

    goto/16 :goto_38

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v79, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v80

    const/16 v81, 0x0

    if-eqz v80, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v80

    if-eqz v80, :cond_1

    move-object/from16 v83, v81

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v83, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v84, v81

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v84, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v85, v81

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v85, v0

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v86, v81

    goto :goto_4

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v86, v0

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v87, v81

    goto :goto_5

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v87, v0

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v88, v81

    goto :goto_6

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v88, v0

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v89, v81

    goto :goto_7

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v89, v0

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v90, v81

    goto :goto_8

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v90, v0

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v91, v81

    goto :goto_9

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v91, v0

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v92, v81

    goto :goto_a

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v92, v0

    :goto_a
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v98

    move/from16 v5, v16

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v100

    move/from16 v5, v17

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, v18

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, v19

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v20

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v9, v21

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v10, v22

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v11, v23

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v24

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v13, v25

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v26

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v16, v14

    move/from16 v15, v27

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v28

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v15, v29

    move-object/from16 v113, v81

    goto :goto_b

    :cond_b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v113, v15

    move/from16 v15, v29

    :goto_b
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v15, v30

    move-object/from16 v114, v81

    goto :goto_c

    :cond_c
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v114, v15

    move/from16 v15, v30

    :goto_c
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v15, v31

    move-object/from16 v115, v81

    goto :goto_d

    :cond_d
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v115, v15

    move/from16 v15, v31

    :goto_d
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v15, v32

    move-object/from16 v116, v81

    goto :goto_e

    :cond_e
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v116, v15

    move/from16 v15, v32

    :goto_e
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v117

    move/from16 v17, v14

    move/from16 v15, v33

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v18, v14

    move/from16 v15, v34

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v35

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v15, v36

    move-object/from16 v121, v81

    goto :goto_f

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v121, v15

    move/from16 v15, v36

    :goto_f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v15, v37

    move-object/from16 v122, v81

    goto :goto_10

    :cond_10
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v122, v15

    move/from16 v15, v37

    :goto_10
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v123

    move/from16 v15, v38

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    move/from16 v15, v39

    move-object/from16 v125, v81

    goto :goto_11

    :cond_11
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v125, v15

    move/from16 v15, v39

    :goto_11
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_12

    move/from16 v15, v40

    move-object/from16 v126, v81

    goto :goto_12

    :cond_12
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v126, v15

    move/from16 v15, v40

    :goto_12
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v127

    move/from16 v19, v14

    move/from16 v15, v41

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v130

    move/from16 v15, v43

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_13

    move/from16 v20, v14

    move/from16 v15, v44

    move-object/from16 v132, v81

    goto :goto_13

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v20, v14

    move-object/from16 v132, v15

    move/from16 v15, v44

    :goto_13
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v15, v46

    move-object/from16 v134, v81

    goto :goto_14

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v134, v15

    move/from16 v15, v46

    :goto_14
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move/from16 v21, v14

    move/from16 v15, v47

    move-object/from16 v135, v81

    goto :goto_15

    :cond_15
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v21, v14

    move-object/from16 v135, v15

    move/from16 v15, v47

    :goto_15
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_16

    move/from16 v14, v48

    const/16 v136, 0x1

    goto :goto_16

    :cond_16
    move/from16 v14, v48

    const/16 v136, 0x0

    :goto_16
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_17

    move/from16 v14, v49

    const/16 v137, 0x1

    goto :goto_17

    :cond_17
    move/from16 v14, v49

    const/16 v137, 0x0

    :goto_17
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v50

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_18

    move/from16 v15, v51

    move-object/from16 v139, v81

    goto :goto_18

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v139, v15

    move/from16 v15, v51

    :goto_18
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_19

    move/from16 v22, v14

    move/from16 v14, v52

    move-object/from16 v140, v81

    goto :goto_19

    :cond_19
    move/from16 v22, v14

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v140, v14

    move/from16 v14, v52

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v14, v53

    move-object/from16 v141, v81

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v53

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    move/from16 v14, v54

    move-object/from16 v142, v81

    goto :goto_1b

    :cond_1b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v142, v14

    move/from16 v14, v54

    :goto_1b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1c

    move/from16 v14, v55

    move-object/from16 v143, v81

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v143, v14

    move/from16 v14, v55

    :goto_1c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1d

    move/from16 v14, v56

    move-object/from16 v144, v81

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v144, v14

    move/from16 v14, v56

    :goto_1d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1e

    move/from16 v14, v57

    move-object/from16 v145, v81

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v145, v14

    move/from16 v14, v57

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1f

    move/from16 v14, v58

    move-object/from16 v146, v81

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v146, v14

    move/from16 v14, v58

    :goto_1f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_20

    move/from16 v14, v59

    move-object/from16 v147, v81

    goto :goto_20

    :cond_20
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v147, v14

    move/from16 v14, v59

    :goto_20
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_21

    move/from16 v14, v60

    move-object/from16 v148, v81

    goto :goto_21

    :cond_21
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v148, v14

    move/from16 v14, v60

    :goto_21
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_22

    move/from16 v14, v61

    move-object/from16 v149, v81

    goto :goto_22

    :cond_22
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v149, v14

    move/from16 v14, v61

    :goto_22
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_23

    move/from16 v14, v62

    move-object/from16 v150, v81

    goto :goto_23

    :cond_23
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v150, v14

    move/from16 v14, v62

    :goto_23
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_24

    move/from16 v14, v63

    move-object/from16 v151, v81

    goto :goto_24

    :cond_24
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v151, v14

    move/from16 v14, v63

    :goto_24
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_25

    move/from16 v14, v64

    move-object/from16 v152, v81

    goto :goto_25

    :cond_25
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v152, v14

    move/from16 v14, v64

    :goto_25
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_26

    move/from16 v14, v65

    move-object/from16 v153, v81

    goto :goto_26

    :cond_26
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v153, v14

    move/from16 v14, v65

    :goto_26
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_27

    move/from16 v14, v66

    move-object/from16 v154, v81

    goto :goto_27

    :cond_27
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v154, v14

    move/from16 v14, v66

    :goto_27
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_28

    move/from16 v14, v67

    move-object/from16 v155, v81

    goto :goto_28

    :cond_28
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v155, v14

    move/from16 v14, v67

    :goto_28
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_29

    move/from16 v14, v68

    move-object/from16 v156, v81

    goto :goto_29

    :cond_29
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v156, v14

    move/from16 v14, v68

    :goto_29
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2a

    move/from16 v14, v69

    move-object/from16 v157, v81

    goto :goto_2a

    :cond_2a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v157, v14

    move/from16 v14, v69

    :goto_2a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2b

    move/from16 v14, v70

    move-object/from16 v158, v81

    goto :goto_2b

    :cond_2b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v158, v14

    move/from16 v14, v70

    :goto_2b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move/from16 v14, v71

    move-object/from16 v159, v81

    goto :goto_2c

    :cond_2c
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v159, v14

    move/from16 v14, v71

    :goto_2c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move/from16 v14, v72

    move-object/from16 v160, v81

    goto :goto_2d

    :cond_2d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v72

    :goto_2d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2e

    move/from16 v14, v73

    move-object/from16 v161, v81

    goto :goto_2e

    :cond_2e
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v161, v14

    move/from16 v14, v73

    :goto_2e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v14, v74

    move-object/from16 v162, v81

    goto :goto_2f

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v74

    :goto_2f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_30

    move/from16 v14, v75

    move-object/from16 v163, v81

    goto :goto_30

    :cond_30
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v75

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_31

    move/from16 v14, v76

    move-object/from16 v164, v81

    goto :goto_31

    :cond_31
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v164, v14

    move/from16 v14, v76

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_32

    move/from16 v14, v77

    move-object/from16 v165, v81

    goto :goto_32

    :cond_32
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v165, v14

    move/from16 v14, v77

    :goto_32
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_33

    move/from16 v14, v78

    move-object/from16 v166, v81

    goto :goto_33

    :cond_33
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v166, v14

    move/from16 v14, v78

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_34

    move/from16 v14, v79

    const/16 v167, 0x1

    goto :goto_34

    :cond_34
    move/from16 v14, v79

    const/16 v167, 0x0

    :goto_34
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_35

    move-object/from16 v168, v81

    goto :goto_35

    :cond_35
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v168, v14

    :goto_35
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_36

    :goto_36
    move-object/from16 v169, v81

    goto :goto_37

    :cond_36
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    goto :goto_36

    :goto_37
    new-instance v81, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v82, v81

    move/from16 v95, v0

    move/from16 v96, v3

    move/from16 v97, v4

    move/from16 v102, v5

    move/from16 v103, v6

    move/from16 v104, v7

    move/from16 v105, v8

    move/from16 v106, v9

    move/from16 v107, v10

    move/from16 v108, v11

    move/from16 v109, v12

    move/from16 v110, v13

    move/from16 v111, v16

    move/from16 v112, v17

    move/from16 v119, v18

    move/from16 v120, v19

    move/from16 v129, v20

    move/from16 v133, v21

    move/from16 v138, v22

    invoke-direct/range {v82 .. v169}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v81

    :goto_38
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic y0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 190

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? ORDER BY ep ASC "

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

    goto/16 :goto_3e

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v79, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v80, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v81

    if-eqz v81, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v81

    const/16 v82, 0x0

    if-eqz v81, :cond_1

    move-object/from16 v84, v82

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v84, v81

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_2

    move-object/from16 v85, v82

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v85, v81

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_3

    move-object/from16 v86, v82

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v86, v81

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_4

    move-object/from16 v87, v82

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v87, v81

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_5

    move-object/from16 v88, v82

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v88

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v88, v81

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_6

    move-object/from16 v89, v82

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v89, v81

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_7

    move-object/from16 v90, v82

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v90, v81

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_8

    move-object/from16 v91, v82

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v81

    move-object/from16 v91, v81

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_9

    move-object/from16 v92, v82

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v92, v81

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_a

    move-object/from16 v93, v82

    goto :goto_b

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v93

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    move-object/from16 v93, v81

    :goto_b
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v94

    move/from16 v81, v3

    move/from16 v171, v4

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v172, v5

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v173, v6

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 p0, v0

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v101

    move/from16 v16, v0

    move/from16 v174, v6

    move/from16 v0, v17

    move/from16 v17, v7

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v175, v9

    move/from16 v7, v18

    move/from16 v18, v8

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v176, v11

    move/from16 v9, v19

    move/from16 v19, v10

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v177, v13

    move/from16 v11, v20

    move/from16 v20, v12

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v178, v15

    move/from16 v13, v21

    move/from16 v21, v14

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v107, v14

    move/from16 v15, v22

    move/from16 v22, v13

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v106, v12

    move/from16 v14, v23

    move/from16 v23, v11

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v179, v14

    move/from16 v12, v24

    move/from16 v24, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v180, v12

    move/from16 v15, v25

    move/from16 v25, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v181, v15

    move/from16 v12, v26

    move/from16 v26, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v182, v12

    move/from16 v15, v27

    move/from16 v27, v11

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v28

    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_b

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v114, v82

    goto :goto_c

    :cond_b
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v114, v28

    move/from16 v28, v0

    move/from16 v0, v29

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_c

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v115, v82

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v115, v29

    move/from16 v29, v0

    move/from16 v0, v30

    :goto_d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_d

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v116, v82

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v116, v30

    move/from16 v30, v0

    move/from16 v0, v31

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_e

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v117, v82

    goto :goto_f

    :cond_e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v117, v31

    move/from16 v31, v0

    move/from16 v0, v32

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v118

    move/from16 v32, v0

    move/from16 v183, v12

    move/from16 v0, v33

    move/from16 v33, v11

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v184, v15

    move/from16 v12, v34

    move/from16 v34, v14

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v35

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_f

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v122, v82

    goto :goto_10

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v122, v35

    move/from16 v35, v0

    move/from16 v0, v36

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_10

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v123, v82

    goto :goto_11

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v123, v36

    move/from16 v36, v0

    move/from16 v0, v37

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v124

    move/from16 v37, v0

    move/from16 v0, v38

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_11

    move/from16 v38, v0

    move/from16 v0, v39

    move-object/from16 v126, v82

    goto :goto_12

    :cond_11
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v126, v38

    move/from16 v38, v0

    move/from16 v0, v39

    :goto_12
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_12

    move/from16 v39, v0

    move/from16 v0, v40

    move-object/from16 v127, v82

    goto :goto_13

    :cond_12
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v127, v39

    move/from16 v39, v0

    move/from16 v0, v40

    :goto_13
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v128

    move/from16 v40, v0

    move/from16 v185, v15

    move/from16 v0, v41

    move/from16 v41, v14

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v131

    move/from16 v42, v0

    move/from16 v0, v43

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_13

    move/from16 v43, v0

    move/from16 v186, v15

    move/from16 v0, v44

    move-object/from16 v133, v82

    :goto_14
    move/from16 v44, v14

    goto :goto_15

    :cond_13
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v186, v15

    move-object/from16 v133, v43

    move/from16 v43, v0

    move/from16 v0, v44

    goto :goto_14

    :goto_15
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v45

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_14

    move/from16 v45, v0

    move/from16 v0, v46

    move-object/from16 v135, v82

    goto :goto_16

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v135, v45

    move/from16 v45, v0

    move/from16 v0, v46

    :goto_16
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_15

    move/from16 v46, v0

    move/from16 v187, v15

    move/from16 v0, v47

    move-object/from16 v136, v82

    :goto_17
    move/from16 v47, v14

    goto :goto_18

    :cond_15
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v187, v15

    move-object/from16 v136, v46

    move/from16 v46, v0

    move/from16 v0, v47

    goto :goto_17

    :goto_18
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v188, v12

    if-eqz v14, :cond_16

    move/from16 v14, v48

    const/16 v137, 0x1

    :goto_19
    move/from16 v48, v11

    goto :goto_1a

    :cond_16
    move/from16 v14, v48

    const/16 v137, 0x0

    goto :goto_19

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_17

    move/from16 v11, v49

    const/16 v138, 0x1

    :goto_1b
    move/from16 v49, v14

    goto :goto_1c

    :cond_17
    move/from16 v11, v49

    const/16 v138, 0x0

    goto :goto_1b

    :goto_1c
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v50

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_18

    move/from16 v12, v51

    move-object/from16 v140, v82

    goto :goto_1d

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v140, v50

    move/from16 v12, v51

    :goto_1d
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_19

    move/from16 v51, v14

    move/from16 v189, v15

    move/from16 v14, v52

    move-object/from16 v141, v82

    goto :goto_1e

    :cond_19
    move/from16 v51, v14

    move/from16 v189, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v52

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v15, v53

    move-object/from16 v142, v82

    goto :goto_1f

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v142, v15

    move/from16 v15, v53

    :goto_1f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_1b

    move/from16 v52, v0

    move/from16 v0, v54

    move-object/from16 v143, v82

    goto :goto_20

    :cond_1b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v143, v52

    move/from16 v52, v0

    move/from16 v0, v54

    :goto_20
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1c

    move/from16 v54, v0

    move/from16 v0, v55

    move-object/from16 v144, v82

    goto :goto_21

    :cond_1c
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v0

    move-object/from16 v144, v53

    move/from16 v0, v55

    :goto_21
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1d

    move/from16 v55, v0

    move/from16 v0, v56

    move-object/from16 v145, v82

    goto :goto_22

    :cond_1d
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v55, v0

    move-object/from16 v145, v53

    move/from16 v0, v56

    :goto_22
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1e

    move/from16 v56, v0

    move/from16 v0, v57

    move-object/from16 v146, v82

    goto :goto_23

    :cond_1e
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v56, v0

    move-object/from16 v146, v53

    move/from16 v0, v57

    :goto_23
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_1f

    move/from16 v57, v0

    move/from16 v0, v58

    move-object/from16 v147, v82

    goto :goto_24

    :cond_1f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v57, v0

    move-object/from16 v147, v53

    move/from16 v0, v58

    :goto_24
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_20

    move/from16 v53, v11

    move/from16 v58, v12

    move/from16 v11, v59

    move-object/from16 v148, v82

    goto :goto_25

    :cond_20
    move/from16 v53, v11

    move/from16 v58, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v148, v11

    move/from16 v11, v59

    :goto_25
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_21

    move/from16 v12, v60

    move-object/from16 v149, v82

    goto :goto_26

    :cond_21
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v149, v12

    move/from16 v12, v60

    :goto_26
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_22

    move/from16 v59, v0

    move/from16 v0, v61

    move-object/from16 v150, v82

    goto :goto_27

    :cond_22
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v150, v59

    move/from16 v59, v0

    move/from16 v0, v61

    :goto_27
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_23

    move/from16 v61, v0

    move/from16 v0, v62

    move-object/from16 v151, v82

    goto :goto_28

    :cond_23
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v61, v0

    move-object/from16 v151, v60

    move/from16 v0, v62

    :goto_28
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_24

    move/from16 v62, v0

    move/from16 v0, v63

    move-object/from16 v152, v82

    goto :goto_29

    :cond_24
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v96

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    move/from16 v62, v0

    move-object/from16 v152, v60

    move/from16 v0, v63

    :goto_29
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_25

    move/from16 v63, v0

    move/from16 v0, v64

    move-object/from16 v153, v82

    goto :goto_2a

    :cond_25
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v63, v0

    move-object/from16 v153, v60

    move/from16 v0, v64

    :goto_2a
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_26

    move/from16 v64, v0

    move/from16 v0, v65

    move-object/from16 v154, v82

    goto :goto_2b

    :cond_26
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v64, v0

    move-object/from16 v154, v60

    move/from16 v0, v65

    :goto_2b
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_27

    move/from16 v65, v0

    move/from16 v0, v66

    move-object/from16 v155, v82

    goto :goto_2c

    :cond_27
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v65, v0

    move-object/from16 v155, v60

    move/from16 v0, v66

    :goto_2c
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_28

    move/from16 v66, v0

    move/from16 v0, v67

    move-object/from16 v156, v82

    goto :goto_2d

    :cond_28
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v66, v0

    move-object/from16 v156, v60

    move/from16 v0, v67

    :goto_2d
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_29

    move/from16 v67, v0

    move/from16 v0, v68

    move-object/from16 v157, v82

    goto :goto_2e

    :cond_29
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v67, v0

    move-object/from16 v157, v60

    move/from16 v0, v68

    :goto_2e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_2a

    move/from16 v60, v11

    move/from16 v68, v12

    move/from16 v11, v69

    move-object/from16 v158, v82

    goto :goto_2f

    :cond_2a
    move/from16 v60, v11

    move/from16 v68, v12

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v158, v11

    move/from16 v11, v69

    :goto_2f
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2b

    move/from16 v12, v70

    move-object/from16 v159, v82

    goto :goto_30

    :cond_2b
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v159, v12

    move/from16 v12, v70

    :goto_30
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_2c

    move/from16 v69, v14

    move/from16 v70, v15

    move/from16 v14, v71

    move-object/from16 v160, v82

    goto :goto_31

    :cond_2c
    move/from16 v69, v14

    move/from16 v70, v15

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v71

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move v15, v11

    move/from16 v71, v12

    move/from16 v11, v72

    move-object/from16 v161, v82

    goto :goto_32

    :cond_2d
    move v15, v11

    move/from16 v71, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v161, v11

    move/from16 v11, v72

    :goto_32
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2e

    move v12, v14

    move/from16 v72, v15

    move/from16 v14, v73

    move-object/from16 v162, v82

    goto :goto_33

    :cond_2e
    move v12, v14

    move/from16 v72, v15

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v73

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move v15, v11

    move/from16 v73, v12

    move/from16 v11, v74

    move-object/from16 v163, v82

    goto :goto_34

    :cond_2f
    move v15, v11

    move/from16 v73, v12

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v163, v11

    move/from16 v11, v74

    :goto_34
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_30

    move/from16 v12, v75

    move-object/from16 v164, v82

    goto :goto_35

    :cond_30
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v164, v12

    move/from16 v12, v75

    :goto_35
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_31

    move/from16 v74, v0

    move/from16 v0, v76

    move-object/from16 v165, v82

    goto :goto_36

    :cond_31
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v165, v74

    move/from16 v74, v0

    move/from16 v0, v76

    :goto_36
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_32

    move/from16 v76, v0

    move/from16 v0, v77

    move-object/from16 v166, v82

    goto :goto_37

    :cond_32
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v76, v0

    move-object/from16 v166, v75

    move/from16 v0, v77

    :goto_37
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_33

    move/from16 v77, v0

    move/from16 v75, v11

    move/from16 v0, v78

    move-object/from16 v167, v82

    :goto_38
    move/from16 v78, v12

    goto :goto_39

    :cond_33
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v75

    move/from16 v77, v0

    move-object/from16 v167, v75

    move/from16 v0, v78

    move/from16 v75, v11

    goto :goto_38

    :goto_39
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    if-eqz v11, :cond_34

    move/from16 v11, v79

    const/16 v168, 0x1

    goto :goto_3a

    :cond_34
    move/from16 v11, v79

    const/16 v168, 0x0

    :goto_3a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_35

    move/from16 v12, v80

    move-object/from16 v169, v82

    goto :goto_3b

    :cond_35
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v169, v12

    move/from16 v12, v80

    :goto_3b
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_36

    :goto_3c
    move/from16 v50, v0

    move-object/from16 v170, v82

    goto :goto_3d

    :cond_36
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_3c

    :goto_3d
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v83, v0

    move/from16 v96, v3

    move/from16 v97, v4

    move/from16 v98, v5

    move/from16 v103, v6

    move/from16 v104, v8

    move/from16 v105, v10

    move/from16 v108, v13

    move/from16 v109, v25

    move/from16 v110, v26

    move/from16 v111, v27

    move/from16 v112, v34

    move/from16 v113, v33

    move/from16 v120, v48

    move/from16 v121, v41

    move/from16 v130, v44

    move/from16 v134, v47

    move/from16 v139, v51

    invoke-direct/range {v83 .. v170}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v79, v11

    move/from16 v80, v12

    move/from16 v8, v18

    move/from16 v10, v19

    move/from16 v12, v20

    move/from16 v20, v23

    move/from16 v33, v35

    move/from16 v41, v42

    move/from16 v44, v45

    move/from16 v48, v49

    move/from16 v47, v52

    move/from16 v49, v53

    move/from16 v51, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v68

    move/from16 v52, v69

    move/from16 v53, v70

    move/from16 v70, v71

    move/from16 v69, v72

    move/from16 v71, v73

    move/from16 v68, v74

    move/from16 v74, v75

    move/from16 v75, v78

    move/from16 v3, v81

    move/from16 v4, v171

    move/from16 v5, v172

    move/from16 v6, v173

    move/from16 p0, v174

    move/from16 v11, v176

    move/from16 v13, v177

    move/from16 v23, v179

    move/from16 v25, v181

    move/from16 v26, v182

    move/from16 v27, v184

    move/from16 v35, v185

    move/from16 v42, v186

    move/from16 v45, v187

    move/from16 v34, v188

    move/from16 v18, v7

    move/from16 v19, v9

    move/from16 v73, v14

    move/from16 v72, v15

    move/from16 v7, v17

    move/from16 v14, v21

    move/from16 v21, v22

    move/from16 v22, v24

    move/from16 v17, v28

    move/from16 v78, v50

    move/from16 v9, v175

    move/from16 v15, v178

    move/from16 v24, v180

    move/from16 v28, v183

    move/from16 v50, v189

    goto/16 :goto_1

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_3e
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic z0(Ljava/lang/String;ILz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 169

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? AND ep =? "

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

    goto/16 :goto_38

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    move/from16 v3, p1

    int-to-long v3, v3

    invoke-interface {v1, v0, v3, v4}, Lz3/e;->c(IJ)V

    const-string v0, "url"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "resourceId"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cover"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "postId"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sizeFormat"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateTimeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "progress"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "supportRanges"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "status"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "readProgress"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "createAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "isRead"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "episode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "ep"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "se"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "resolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "resourcePosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "multiresolution"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "downloadErrorCount"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "subtitleStarted"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "subjectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "pageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "lastPageFrom"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "subjectName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "lastPlayTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "fileType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "totalEpisode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "uploadBy"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "sourceUrl"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "urlCreateAt"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "subtitleSelectId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "taskId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "sessionTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "reportStatus"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "downloadHeaderSize"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "rootPath"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "rootPathType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "thumbnail"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "averageHueLight"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "isTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "isClosedTransferFailed"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "subjectType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "genre"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "subjectDurationSeconds"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "currentDubLanName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "currentDubLanCode"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "ops"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "restrictLevel"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "releaseDate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "countryName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "seNum"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "subtitles"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "imdbRate"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "lastAdStartTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "lastAdEndTimeStamp"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "subtitleIdType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v62, v2

    const-string v2, "ugcVideoCollectionId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v63, v2

    const-string v2, "ugcVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v64, v2

    const-string v2, "ugcVideoName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v65, v2

    const-string v2, "ugcVideoCollectionName"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v66, v2

    const-string v2, "ugcVideoPosition"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v67, v2

    const-string v2, "ugcVideoType"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v68, v2

    const-string v2, "ugcCateLev1Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v69, v2

    const-string v2, "ugcCateLev2Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v70, v2

    const-string v2, "ugcCateLev3Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v71, v2

    const-string v2, "ugcCateLev4Id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v72, v2

    const-string v2, "ugcVideoTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v73, v2

    const-string v2, "ugcVideoParentVideoId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v74, v2

    const-string v2, "ugcVideoParentTrackId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v75, v2

    const-string v2, "ugcVideoEpTitle"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v76, v2

    const-string v2, "ugcVideoIsVertical"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v77, v2

    const-string v2, "originData"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v78, v2

    const-string v2, "kidId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v79

    const/16 v80, 0x0

    if-eqz v79, :cond_37

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v79

    if-eqz v79, :cond_1

    move-object/from16 v82, v80

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v82, v0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v83, v80

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v83, v0

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v84, v80

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v84, v0

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v85, v80

    goto :goto_4

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v85, v0

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v86, v80

    goto :goto_5

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v86, v0

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v87, v80

    goto :goto_6

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v87, v0

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v88, v80

    goto :goto_7

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v88, v0

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v89, v80

    goto :goto_8

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v89, v0

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v90, v80

    goto :goto_9

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v90, v0

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v91, v80

    goto :goto_a

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v91, v0

    :goto_a
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v92

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v97

    move/from16 v5, p1

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v99

    move/from16 v5, v16

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, v17

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, v18

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v19

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v9, v20

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v10, v21

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v11, v22

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v23

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v13, v24

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v25

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v16, v14

    move/from16 v15, v26

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v27

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v15, v28

    move-object/from16 v112, v80

    goto :goto_b

    :cond_b
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v112, v15

    move/from16 v15, v28

    :goto_b
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v15, v29

    move-object/from16 v113, v80

    goto :goto_c

    :cond_c
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v113, v15

    move/from16 v15, v29

    :goto_c
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v15, v30

    move-object/from16 v114, v80

    goto :goto_d

    :cond_d
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v114, v15

    move/from16 v15, v30

    :goto_d
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v15, v31

    move-object/from16 v115, v80

    goto :goto_e

    :cond_e
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v115, v15

    move/from16 v15, v31

    :goto_e
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v116

    move/from16 v17, v14

    move/from16 v15, v32

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v18, v14

    move/from16 v15, v33

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v34

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v15, v35

    move-object/from16 v120, v80

    goto :goto_f

    :cond_f
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v120, v15

    move/from16 v15, v35

    :goto_f
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move/from16 v15, v36

    move-object/from16 v121, v80

    goto :goto_10

    :cond_10
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v121, v15

    move/from16 v15, v36

    :goto_10
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v122

    move/from16 v15, v37

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    move/from16 v15, v38

    move-object/from16 v124, v80

    goto :goto_11

    :cond_11
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v124, v15

    move/from16 v15, v38

    :goto_11
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_12

    move/from16 v15, v39

    move-object/from16 v125, v80

    goto :goto_12

    :cond_12
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v125, v15

    move/from16 v15, v39

    :goto_12
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v126

    move/from16 v19, v14

    move/from16 v15, v40

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v41

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v129

    move/from16 v15, v42

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_13

    move/from16 v20, v14

    move/from16 v15, v43

    move-object/from16 v131, v80

    goto :goto_13

    :cond_13
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v20, v14

    move-object/from16 v131, v15

    move/from16 v15, v43

    :goto_13
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v44

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v15, v45

    move-object/from16 v133, v80

    goto :goto_14

    :cond_14
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v133, v15

    move/from16 v15, v45

    :goto_14
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move/from16 v21, v14

    move/from16 v15, v46

    move-object/from16 v134, v80

    goto :goto_15

    :cond_15
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v21, v14

    move-object/from16 v134, v15

    move/from16 v15, v46

    :goto_15
    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_16

    move/from16 v14, v47

    const/16 v135, 0x1

    goto :goto_16

    :cond_16
    move/from16 v14, v47

    const/16 v135, 0x0

    :goto_16
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_17

    move/from16 v14, v48

    const/16 v136, 0x1

    goto :goto_17

    :cond_17
    move/from16 v14, v48

    const/16 v136, 0x0

    :goto_17
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v49

    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_18

    move/from16 v15, v50

    move-object/from16 v138, v80

    goto :goto_18

    :cond_18
    invoke-interface {v1, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v138, v15

    move/from16 v15, v50

    :goto_18
    invoke-interface {v1, v15}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_19

    move/from16 v22, v14

    move/from16 v14, v51

    move-object/from16 v139, v80

    goto :goto_19

    :cond_19
    move/from16 v22, v14

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v139, v14

    move/from16 v14, v51

    :goto_19
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    move/from16 v14, v52

    move-object/from16 v140, v80

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v140, v14

    move/from16 v14, v52

    :goto_1a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    move/from16 v14, v53

    move-object/from16 v141, v80

    goto :goto_1b

    :cond_1b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v141, v14

    move/from16 v14, v53

    :goto_1b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1c

    move/from16 v14, v54

    move-object/from16 v142, v80

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v142, v14

    move/from16 v14, v54

    :goto_1c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1d

    move/from16 v14, v55

    move-object/from16 v143, v80

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v143, v14

    move/from16 v14, v55

    :goto_1d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1e

    move/from16 v14, v56

    move-object/from16 v144, v80

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v144, v14

    move/from16 v14, v56

    :goto_1e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1f

    move/from16 v14, v57

    move-object/from16 v145, v80

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v145, v14

    move/from16 v14, v57

    :goto_1f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_20

    move/from16 v14, v58

    move-object/from16 v146, v80

    goto :goto_20

    :cond_20
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v146, v14

    move/from16 v14, v58

    :goto_20
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_21

    move/from16 v14, v59

    move-object/from16 v147, v80

    goto :goto_21

    :cond_21
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v147, v14

    move/from16 v14, v59

    :goto_21
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_22

    move/from16 v14, v60

    move-object/from16 v148, v80

    goto :goto_22

    :cond_22
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v148, v14

    move/from16 v14, v60

    :goto_22
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_23

    move/from16 v14, v61

    move-object/from16 v149, v80

    goto :goto_23

    :cond_23
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v149, v14

    move/from16 v14, v61

    :goto_23
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_24

    move/from16 v14, v62

    move-object/from16 v150, v80

    goto :goto_24

    :cond_24
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v150, v14

    move/from16 v14, v62

    :goto_24
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_25

    move/from16 v14, v63

    move-object/from16 v151, v80

    goto :goto_25

    :cond_25
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v151, v14

    move/from16 v14, v63

    :goto_25
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_26

    move/from16 v14, v64

    move-object/from16 v152, v80

    goto :goto_26

    :cond_26
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v152, v14

    move/from16 v14, v64

    :goto_26
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_27

    move/from16 v14, v65

    move-object/from16 v153, v80

    goto :goto_27

    :cond_27
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v153, v14

    move/from16 v14, v65

    :goto_27
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_28

    move/from16 v14, v66

    move-object/from16 v154, v80

    goto :goto_28

    :cond_28
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v154, v14

    move/from16 v14, v66

    :goto_28
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_29

    move/from16 v14, v67

    move-object/from16 v155, v80

    goto :goto_29

    :cond_29
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v155, v14

    move/from16 v14, v67

    :goto_29
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2a

    move/from16 v14, v68

    move-object/from16 v156, v80

    goto :goto_2a

    :cond_2a
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v156, v14

    move/from16 v14, v68

    :goto_2a
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2b

    move/from16 v14, v69

    move-object/from16 v157, v80

    goto :goto_2b

    :cond_2b
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v157, v14

    move/from16 v14, v69

    :goto_2b
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    move/from16 v14, v70

    move-object/from16 v158, v80

    goto :goto_2c

    :cond_2c
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v158, v14

    move/from16 v14, v70

    :goto_2c
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move/from16 v14, v71

    move-object/from16 v159, v80

    goto :goto_2d

    :cond_2d
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v159, v14

    move/from16 v14, v71

    :goto_2d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2e

    move/from16 v14, v72

    move-object/from16 v160, v80

    goto :goto_2e

    :cond_2e
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v160, v14

    move/from16 v14, v72

    :goto_2e
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2f

    move/from16 v14, v73

    move-object/from16 v161, v80

    goto :goto_2f

    :cond_2f
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v161, v14

    move/from16 v14, v73

    :goto_2f
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_30

    move/from16 v14, v74

    move-object/from16 v162, v80

    goto :goto_30

    :cond_30
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v162, v14

    move/from16 v14, v74

    :goto_30
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_31

    move/from16 v14, v75

    move-object/from16 v163, v80

    goto :goto_31

    :cond_31
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v163, v14

    move/from16 v14, v75

    :goto_31
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_32

    move/from16 v14, v76

    move-object/from16 v164, v80

    goto :goto_32

    :cond_32
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v164, v14

    move/from16 v14, v76

    :goto_32
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_33

    move/from16 v14, v77

    move-object/from16 v165, v80

    goto :goto_33

    :cond_33
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v165, v14

    move/from16 v14, v77

    :goto_33
    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_34

    move/from16 v14, v78

    const/16 v166, 0x1

    goto :goto_34

    :cond_34
    move/from16 v14, v78

    const/16 v166, 0x0

    :goto_34
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_35

    move-object/from16 v167, v80

    goto :goto_35

    :cond_35
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v167, v14

    :goto_35
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_36

    :goto_36
    move-object/from16 v168, v80

    goto :goto_37

    :cond_36
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v80

    goto :goto_36

    :goto_37
    new-instance v80, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v81, v80

    move/from16 v94, v0

    move/from16 v95, v3

    move/from16 v96, v4

    move/from16 v101, v5

    move/from16 v102, v6

    move/from16 v103, v7

    move/from16 v104, v8

    move/from16 v105, v9

    move/from16 v106, v10

    move/from16 v107, v11

    move/from16 v108, v12

    move/from16 v109, v13

    move/from16 v110, v16

    move/from16 v111, v17

    move/from16 v118, v18

    move/from16 v119, v19

    move/from16 v128, v20

    move/from16 v132, v21

    move/from16 v137, v22

    invoke-direct/range {v81 .. v168}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_37
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v80

    :goto_38
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method


# virtual methods
.method public A(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/o;

    invoke-direct {v1, p1}, Llj/o;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public B(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/e0;

    invoke-direct {v1, p1, p2}, Llj/e0;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public C(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/m;

    invoke-direct {v1}, Llj/m;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public D(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/w;

    invoke-direct {v1, p2, p3, p1}, Llj/w;-><init>(JLjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/z;

    invoke-direct {v1, p1}, Llj/z;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public F(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/h;

    invoke-direct {v1, p1, p2, p3}, Llj/h;-><init>(Ljava/lang/String;II)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public G(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/j0;

    invoke-direct {v1, p1}, Llj/j0;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/u;

    invoke-direct {v1, p1}, Llj/u;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v11, Llj/n;

    move-object v2, v11

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p7

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object v10, p1

    invoke-direct/range {v2 .. v10}, Llj/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p9

    invoke-static {v1, v2, v3, v11, v4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/d0;

    invoke-direct {v1, p2, p1}, Llj/d0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/v;

    invoke-direct {v1, p2, p1}, Llj/v;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/c0;

    invoke-direct {v1, p1}, Llj/c0;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/l;

    invoke-direct {v1, p1}, Llj/l;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/h0;

    invoke-direct {v1, p1}, Llj/h0;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/p;

    invoke-direct {v1, p1}, Llj/p;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/y;

    invoke-direct {v1, p1, p2}, Llj/y;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/f0;

    invoke-direct {v1}, Llj/f0;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/x;

    invoke-direct {v1, p2, p3, p1}, Llj/x;-><init>(IILjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/g0;

    invoke-direct {v1, p1}, Llj/g0;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/j;

    invoke-direct {v1}, Llj/j;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/q;

    invoke-direct {v1}, Llj/q;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/t;

    invoke-direct {v1, p1}, Llj/t;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/b0;

    invoke-direct {v1, p1}, Llj/b0;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/i;

    invoke-direct {v1}, Llj/i;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/k;

    invoke-direct {v1, p1}, Llj/k;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/e;

    invoke-direct {v1, p1}, Llj/e;-><init>(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/a0;

    invoke-direct {v1}, Llj/a0;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/f;

    invoke-direct {v1, p2, p3, p1}, Llj/f;-><init>(JLjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/d;

    invoke-direct {v1, p1}, Llj/d;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public v(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/g;

    invoke-direct {v1, p0, p1}, Llj/g;-><init>(Llj/l0;Lcom/transsion/baselib/db/download/DownloadBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/s;

    invoke-direct {v1, p1}, Llj/s;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/k0;

    invoke-direct {v1, p2, p3, p1}, Llj/k0;-><init>(JLjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/r;

    invoke-direct {v1}, Llj/r;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Llj/l0;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/i0;

    invoke-direct {v1, p0, p1}, Llj/i0;-><init>(Llj/l0;Lcom/transsion/baselib/db/download/DownloadBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
