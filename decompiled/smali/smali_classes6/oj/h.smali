.class public final Loj/h;
.super Ljava/lang/Object;

# interfaces
.implements Loj/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loj/h;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Loj/h$a;

    invoke-direct {p1, p0}, Loj/h$a;-><init>(Loj/h;)V

    iput-object p1, p0, Loj/h;->b:Landroidx/room/g;

    new-instance p1, Loj/h$b;

    invoke-direct {p1, p0}, Loj/h$b;-><init>(Loj/h;)V

    iput-object p1, p0, Loj/h;->c:Landroidx/room/e;

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Loj/h;->n(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/music/MusicLikedDbBean;
    .locals 0

    invoke-static {p0, p1}, Loj/h;->q(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Loj/h;->o(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lz3/b;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Loj/h;->p(Lz3/b;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Loj/h;Lcom/transsion/baselib/db/music/MusicLikedDbBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Loj/h;->r(Lcom/transsion/baselib/db/music/MusicLikedDbBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Loj/h;Ljava/util/List;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Loj/h;->s(Ljava/util/List;Lz3/b;)Lkotlin/Unit;

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

    const-string v0, "DELETE FROM music_liked WHERE subjectId = ?"

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
    .locals 28

    const-string v0, "SELECT * FROM music_liked ORDER BY timeStamp DESC"

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "subjectId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "title"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "coverUrl"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "countryName"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "genre"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "releaseDate"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "durationSeconds"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "singerName"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "singerAvatar"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "path"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v16, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v17, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v13

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v18, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v13

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v19, 0x0

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v13

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v20, 0x0

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v13

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v21, 0x0

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v13

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v13, v14

    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    const/16 v23, 0x0

    goto :goto_7

    :cond_6
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v23, v14

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    const/16 v24, 0x0

    goto :goto_8

    :cond_7
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v24, v14

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v25, 0x0

    goto :goto_9

    :cond_8
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v25, v14

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v26

    new-instance v14, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    move-object v15, v14

    move/from16 v22, v13

    invoke-direct/range {v15 .. v27}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_9
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v12

    :goto_a
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic p(Lz3/b;)Ljava/lang/Integer;
    .locals 3

    const-string v0, "SELECT COUNT(*) FROM music_liked"

    invoke-interface {p0, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lz3/e;->close()V

    return-object v1

    :goto_1
    invoke-interface {p0}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic q(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/music/MusicLikedDbBean;
    .locals 27

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM music_liked WHERE subjectId = ?"

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

    const-string v2, "title"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "coverUrl"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "countryName"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "genre"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "releaseDate"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "durationSeconds"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "singerName"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "singerAvatar"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "path"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "timeStamp"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_a

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v15, v13

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v16, v13

    goto :goto_2

    :cond_2
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v17, v13

    goto :goto_3

    :cond_3
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v18, v13

    goto :goto_4

    :cond_4
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v19, v13

    goto :goto_5

    :cond_5
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v20, v13

    goto :goto_6

    :cond_6
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v22, v13

    goto :goto_7

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v2

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v23, v13

    goto :goto_8

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_9
    move-object/from16 v24, v13

    goto :goto_a

    :cond_9
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    :goto_a
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v25

    new-instance v13, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    move-object v14, v13

    move/from16 v21, v0

    invoke-direct/range {v14 .. v26}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v13

    :goto_b
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic r(Lcom/transsion/baselib/db/music/MusicLikedDbBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Loj/h;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic s(Ljava/util/List;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Loj/h;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->c(Lz3/b;Ljava/lang/Iterable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Loj/h;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Loj/d;

    invoke-direct {v1}, Loj/d;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Loj/h;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Loj/f;

    invoke-direct {v1, p0, p1}, Loj/f;-><init>(Loj/h;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Loj/h;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Loj/c;

    invoke-direct {v1}, Loj/c;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Loj/h;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Loj/g;

    invoke-direct {v1, p1}, Loj/g;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Loj/h;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Loj/b;

    invoke-direct {v1, p1}, Loj/b;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/transsion/baselib/db/music/MusicLikedDbBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Loj/h;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Loj/e;

    invoke-direct {v1, p0, p1}, Loj/e;-><init>(Loj/h;Lcom/transsion/baselib/db/music/MusicLikedDbBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
