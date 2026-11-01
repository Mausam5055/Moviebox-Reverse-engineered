.class public final Ljj/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljj/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;

.field private final d:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj/j;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Ljj/j$a;

    invoke-direct {p1, p0}, Ljj/j$a;-><init>(Ljj/j;)V

    iput-object p1, p0, Ljj/j;->b:Landroidx/room/g;

    new-instance p1, Ljj/j$b;

    invoke-direct {p1, p0}, Ljj/j$b;-><init>(Ljj/j;)V

    iput-object p1, p0, Ljj/j;->c:Landroidx/room/e;

    new-instance p1, Ljj/j$c;

    invoke-direct {p1, p0}, Ljj/j$c;-><init>(Ljj/j;)V

    iput-object p1, p0, Ljj/j;->d:Landroidx/room/e;

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 0

    invoke-static {p0, p1}, Ljj/j;->t(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Ljj/j;->r(Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljj/j;Lcom/transsion/baselib/db/audio/AudioBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Ljj/j;->y(Lcom/transsion/baselib/db/audio/AudioBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 0

    invoke-static {p0, p1, p2}, Ljj/j;->u(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 0

    invoke-static {p0, p1}, Ljj/j;->v(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Ljj/j;->w(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljj/j;Lcom/transsion/baselib/db/audio/AudioBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Ljj/j;->x(Lcom/transsion/baselib/db/audio/AudioBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Ljj/j;Lcom/transsion/baselib/db/audio/AudioBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Ljj/j;->s(Lcom/transsion/baselib/db/audio/AudioBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static q()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic r(Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM Audio"

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

.method private synthetic s(Lcom/transsion/baselib/db/audio/AudioBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Ljj/j;->c:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic t(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 42

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM Audio WHERE audioId = ?"

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

    goto/16 :goto_13

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "audioId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "cover"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "duration"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "size"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "url"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "desc"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "bitrate"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "updateTimeStamp"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "readProcess"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "localPath"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "ops"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "resourceId"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "postId"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subjectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "groupId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "status"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "subjectTitle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "ep"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v19

    const/16 v20, 0x0

    if-eqz v19, :cond_12

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v22, v20

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v23, v20

    goto :goto_2

    :cond_2
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v24, v20

    goto :goto_3

    :cond_3
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v24, v0

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v25, v20

    goto :goto_4

    :cond_4
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v25, v0

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v26, v20

    goto :goto_5

    :cond_5
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v0

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v27, v20

    goto :goto_6

    :cond_6
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v0

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v28, v20

    goto :goto_7

    :cond_7
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v0

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v29, v20

    goto :goto_8

    :cond_8
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v29, v0

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v30, v20

    goto :goto_9

    :cond_9
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v30, v0

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v31, v20

    goto :goto_a

    :cond_a
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v31, v0

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v32, v20

    goto :goto_b

    :cond_b
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    :goto_b
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object/from16 v33, v20

    goto :goto_c

    :cond_c
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v0

    :goto_c
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v34, v20

    goto :goto_d

    :cond_d
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v34, v0

    :goto_d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move/from16 v0, p0

    move-object/from16 v35, v20

    goto :goto_e

    :cond_e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v35, v0

    move/from16 v0, p0

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_f

    move/from16 v0, p1

    move-object/from16 v36, v20

    goto :goto_f

    :cond_f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v36, v0

    move/from16 v0, p1

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_10

    move/from16 v0, v16

    move-object/from16 v37, v20

    goto :goto_10

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v37, v0

    move/from16 v0, v16

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v2, v17

    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_11

    :goto_11
    move/from16 v2, v18

    move-object/from16 v39, v20

    goto :goto_12

    :cond_11
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_11

    :goto_12
    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    new-instance v20, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object/from16 v21, v20

    move/from16 v38, v0

    move/from16 v40, v2

    move/from16 v41, v3

    invoke-direct/range {v21 .. v41}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v20

    :goto_13
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic u(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM Audio WHERE postId = ? AND subjectId =?"

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

    goto/16 :goto_14

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
    const-string v0, "audioId"

    invoke-static {v2, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v1, "cover"

    invoke-static {v2, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v3, "duration"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "size"

    invoke-static {v2, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "url"

    invoke-static {v2, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    invoke-static {v2, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "desc"

    invoke-static {v2, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "bitrate"

    invoke-static {v2, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "updateTimeStamp"

    invoke-static {v2, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "readProcess"

    invoke-static {v2, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "localPath"

    invoke-static {v2, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "ops"

    invoke-static {v2, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "resourceId"

    invoke-static {v2, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "postId"

    invoke-static {v2, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subjectId"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "groupId"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "status"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p2, v15

    const-string v15, "subjectTitle"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "se"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "ep"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2}, Lz3/e;->A0()Z

    move-result v18

    const/16 v19, 0x0

    if-eqz v18, :cond_13

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v21, v19

    goto :goto_2

    :cond_2
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    :goto_2
    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v22, v19

    goto :goto_3

    :cond_3
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    :goto_3
    invoke-interface {v2, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v23, v19

    goto :goto_4

    :cond_4
    invoke-interface {v2, v3}, Lz3/e;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v23, v0

    :goto_4
    invoke-interface {v2, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v24, v19

    goto :goto_5

    :cond_5
    invoke-interface {v2, v4}, Lz3/e;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v24, v0

    :goto_5
    invoke-interface {v2, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v25, v19

    goto :goto_6

    :cond_6
    invoke-interface {v2, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    :goto_6
    invoke-interface {v2, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v26, v19

    goto :goto_7

    :cond_7
    invoke-interface {v2, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v0

    :goto_7
    invoke-interface {v2, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v27, v19

    goto :goto_8

    :cond_8
    invoke-interface {v2, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v0

    :goto_8
    invoke-interface {v2, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v28, v19

    goto :goto_9

    :cond_9
    invoke-interface {v2, v8}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v28, v0

    :goto_9
    invoke-interface {v2, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v29, v19

    goto :goto_a

    :cond_a
    invoke-interface {v2, v9}, Lz3/e;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v29, v0

    :goto_a
    invoke-interface {v2, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v30, v19

    goto :goto_b

    :cond_b
    invoke-interface {v2, v10}, Lz3/e;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v30, v0

    :goto_b
    invoke-interface {v2, v11}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object/from16 v31, v19

    goto :goto_c

    :cond_c
    invoke-interface {v2, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v31, v0

    :goto_c
    invoke-interface {v2, v12}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v32, v19

    goto :goto_d

    :cond_d
    invoke-interface {v2, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    :goto_d
    invoke-interface {v2, v13}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object/from16 v33, v19

    goto :goto_e

    :cond_e
    invoke-interface {v2, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v0

    :goto_e
    invoke-interface {v2, v14}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move/from16 v0, p0

    move-object/from16 v34, v19

    goto :goto_f

    :cond_f
    invoke-interface {v2, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v34, v0

    move/from16 v0, p0

    :goto_f
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move/from16 v0, p1

    move-object/from16 v35, v19

    goto :goto_10

    :cond_10
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v35, v0

    move/from16 v0, p1

    :goto_10
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_11

    move/from16 v0, p2

    move-object/from16 v36, v19

    goto :goto_11

    :cond_11
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v36, v0

    move/from16 v0, p2

    :goto_11
    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    move/from16 v1, v16

    invoke-interface {v2, v1}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_12

    :goto_12
    move/from16 v1, v17

    move-object/from16 v38, v19

    goto :goto_13

    :cond_12
    invoke-interface {v2, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_12

    :goto_13
    invoke-interface {v2, v1}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-interface {v2, v15}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    new-instance v19, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object/from16 v20, v19

    move/from16 v37, v0

    move/from16 v39, v1

    move/from16 v40, v3

    invoke-direct/range {v20 .. v40}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_13
    invoke-interface {v2}, Lz3/e;->close()V

    return-object v19

    :goto_14
    invoke-interface {v2}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic v(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 42

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM Audio WHERE resourceId = ?"

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

    goto/16 :goto_13

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "audioId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "cover"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "duration"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "size"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "url"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "desc"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "bitrate"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "updateTimeStamp"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "readProcess"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "localPath"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "ops"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "resourceId"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "postId"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subjectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "groupId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "status"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "subjectTitle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "ep"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v19

    const/16 v20, 0x0

    if-eqz v19, :cond_12

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v22, v20

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v23, v20

    goto :goto_2

    :cond_2
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v24, v20

    goto :goto_3

    :cond_3
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v24, v0

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v25, v20

    goto :goto_4

    :cond_4
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v25, v0

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v26, v20

    goto :goto_5

    :cond_5
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v0

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v27, v20

    goto :goto_6

    :cond_6
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v0

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v28, v20

    goto :goto_7

    :cond_7
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v0

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v29, v20

    goto :goto_8

    :cond_8
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v29, v0

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v30, v20

    goto :goto_9

    :cond_9
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v30, v0

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v31, v20

    goto :goto_a

    :cond_a
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v31, v0

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v32, v20

    goto :goto_b

    :cond_b
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    :goto_b
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object/from16 v33, v20

    goto :goto_c

    :cond_c
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v0

    :goto_c
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v34, v20

    goto :goto_d

    :cond_d
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v34, v0

    :goto_d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move/from16 v0, p0

    move-object/from16 v35, v20

    goto :goto_e

    :cond_e
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v35, v0

    move/from16 v0, p0

    :goto_e
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_f

    move/from16 v0, p1

    move-object/from16 v36, v20

    goto :goto_f

    :cond_f
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v36, v0

    move/from16 v0, p1

    :goto_f
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_10

    move/from16 v0, v16

    move-object/from16 v37, v20

    goto :goto_10

    :cond_10
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v37, v0

    move/from16 v0, v16

    :goto_10
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v2, v17

    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_11

    :goto_11
    move/from16 v2, v18

    move-object/from16 v39, v20

    goto :goto_12

    :cond_11
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_11

    :goto_12
    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    new-instance v20, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object/from16 v21, v20

    move/from16 v38, v0

    move/from16 v40, v2

    move/from16 v41, v3

    invoke-direct/range {v21 .. v41}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v20

    :goto_13
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic w(Lz3/b;)Ljava/util/List;
    .locals 46

    const-string v0, "SELECT * FROM Audio ORDER BY updateTimeStamp DESC"

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "audioId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "cover"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "duration"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "size"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "url"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "desc"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "bitrate"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "updateTimeStamp"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "readProcess"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "localPath"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "ops"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "resourceId"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "postId"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subjectId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "groupId"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "status"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "subjectTitle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "se"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "ep"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    const/16 v22, 0x0

    if-eqz v21, :cond_0

    move-object/from16 v24, v22

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v24, v21

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v25, v22

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v25, v21

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v26, v22

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v26, v21

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v27, v22

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v27, v21

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v28, v22

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v28, v21

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v29, v22

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v29, v21

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v30, v22

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v30, v21

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_7

    move/from16 v21, v2

    move/from16 v44, v3

    move-object/from16 v31, v22

    goto :goto_8

    :cond_7
    move/from16 v21, v2

    move/from16 v44, v3

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v31, v2

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v32, v22

    goto :goto_9

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v32, v2

    :goto_9
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v33, v22

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v33, v2

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v34, v22

    goto :goto_b

    :cond_a
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v34, v2

    :goto_b
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v35, v22

    goto :goto_c

    :cond_b
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v35, v2

    :goto_c
    invoke-interface {v1, v13}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v36, v22

    goto :goto_d

    :cond_c
    invoke-interface {v1, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v36, v2

    :goto_d
    invoke-interface {v1, v14}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_d

    move/from16 v2, p0

    move-object/from16 v37, v22

    goto :goto_e

    :cond_d
    invoke-interface {v1, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v37, v2

    move/from16 v2, p0

    :goto_e
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_e

    move/from16 v3, v16

    move-object/from16 v38, v22

    goto :goto_f

    :cond_e
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v38, v3

    move/from16 v3, v16

    :goto_f
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_f

    move/from16 p0, v0

    move/from16 v16, v2

    move/from16 v0, v17

    move-object/from16 v39, v22

    :goto_10
    move/from16 v17, v3

    goto :goto_11

    :cond_f
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v16

    move/from16 p0, v0

    move-object/from16 v39, v16

    move/from16 v0, v17

    move/from16 v16, v2

    goto :goto_10

    :goto_11
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v3, v18

    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_10

    :goto_12
    move/from16 v18, v0

    move/from16 v0, v19

    move-object/from16 v41, v22

    move/from16 v22, v3

    move/from16 v19, v4

    goto :goto_13

    :cond_10
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_12

    :goto_13
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v45, v6

    move/from16 v4, v20

    move/from16 v20, v5

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    new-instance v6, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object/from16 v23, v6

    move/from16 v40, v2

    move/from16 v42, v3

    move/from16 v43, v5

    invoke-direct/range {v23 .. v43}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v5, v20

    move/from16 v2, v21

    move/from16 v3, v44

    move/from16 v6, v45

    move/from16 v20, v4

    move/from16 v4, v19

    move/from16 v19, v0

    move/from16 v0, p0

    move/from16 p0, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v22

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_14

    :cond_11
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v15

    :goto_14
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic x(Lcom/transsion/baselib/db/audio/AudioBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Ljj/j;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic y(Lcom/transsion/baselib/db/audio/AudioBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Ljj/j;->d:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ljj/j;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Ljj/f;

    invoke-direct {v1}, Ljj/f;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ljj/j;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Ljj/i;

    invoke-direct {v1, p0, p1}, Ljj/i;-><init>(Ljj/j;Lcom/transsion/baselib/db/audio/AudioBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ljj/j;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Ljj/d;

    invoke-direct {v1, p1}, Ljj/d;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ljj/j;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Ljj/g;

    invoke-direct {v1, p1}, Ljj/g;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ljj/j;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Ljj/h;

    invoke-direct {v1}, Ljj/h;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ljj/j;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Ljj/e;

    invoke-direct {v1, p0, p1}, Ljj/e;-><init>(Ljj/j;Lcom/transsion/baselib/db/audio/AudioBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljj/j;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Ljj/b;

    invoke-direct {v1, p1, p2}, Ljj/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ljj/j;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Ljj/c;

    invoke-direct {v1, p0, p1}, Ljj/c;-><init>(Ljj/j;Lcom/transsion/baselib/db/audio/AudioBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
