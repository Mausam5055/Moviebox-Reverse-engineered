.class public final Lcom/transsion/baselib/db/video/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/db/video/PlaybackRecordDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;

.field private final d:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/h;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/transsion/baselib/db/video/h$a;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/h$a;-><init>(Lcom/transsion/baselib/db/video/h;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/h;->b:Landroidx/room/g;

    new-instance p1, Lcom/transsion/baselib/db/video/h$b;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/h$b;-><init>(Lcom/transsion/baselib/db/video/h;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/h;->c:Landroidx/room/e;

    new-instance p1, Lcom/transsion/baselib/db/video/h$c;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/h$c;-><init>(Lcom/transsion/baselib/db/video/h;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/h;->d:Landroidx/room/e;

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/video/PlaybackRecordTable;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/h;->i(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/baselib/db/video/h;Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/h;->k(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/baselib/db/video/h;Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/h;->j(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static h()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic i(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/video/PlaybackRecordTable;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM playback_record_table WHERE subjectId = ? AND se = ? AND ep = ? LIMIT 1"

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

    goto/16 :goto_5

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

    const-string v0, "subjectId"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "se"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ep"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "lastAdStartTimeStamp"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "lastAdEndTimeStamp"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "rewardUnlock"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_1
    move-object v11, v9

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v12, v8

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v13, v3

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v16

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    if-eqz v0, :cond_2

    :goto_3
    move/from16 v18, v2

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :goto_4
    new-instance v9, Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    move-object v10, v9

    invoke-direct/range {v10 .. v18}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;-><init>(Ljava/lang/String;IIJJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v9

    :goto_5
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic j(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/h;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic k(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/h;->d:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/h;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/f;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/baselib/db/video/f;-><init>(Ljava/lang/String;II)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/PlaybackRecordDao$DefaultImpls;->a(Lcom/transsion/baselib/db/video/PlaybackRecordDao;Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/baselib/db/video/h;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/g;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/g;-><init>(Lcom/transsion/baselib/db/video/h;Lcom/transsion/baselib/db/video/PlaybackRecordTable;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/baselib/db/video/h;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/video/e;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/e;-><init>(Lcom/transsion/baselib/db/video/h;Lcom/transsion/baselib/db/video/PlaybackRecordTable;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
