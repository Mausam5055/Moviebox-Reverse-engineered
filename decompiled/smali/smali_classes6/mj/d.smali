.class public final Lmj/d;
.super Ljava/lang/Object;

# interfaces
.implements Lmj/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmj/d;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lmj/d$a;

    invoke-direct {p1, p0}, Lmj/d$a;-><init>(Lmj/d;)V

    iput-object p1, p0, Lmj/d;->b:Landroidx/room/g;

    return-void
.end method

.method public static synthetic c(Lmj/d;Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lmj/d;->f(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;
    .locals 0

    invoke-static {p0, p1}, Lmj/d;->g(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    move-result-object p0

    return-object p0
.end method

.method public static e()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic f(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lmj/d;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic g(Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "\n        SELECT * FROM home_preferences_interval_time\n        WHERE id = ?\n        LIMIT 1\n    "

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

    goto :goto_3

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "showTime"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "closeTime"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "chooseTime"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "showIntervalSeconds"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "closeIntervalSeconds"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "chooseIntervalSeconds"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

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
    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v12

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v14

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v16

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v18

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v20

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v22

    new-instance v9, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    move-object v10, v9

    invoke-direct/range {v10 .. v23}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;-><init>(Ljava/lang/String;JJJJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v9

    :goto_3
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method


# virtual methods
.method public a(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmj/d;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmj/b;

    invoke-direct {v1, p0, p1}, Lmj/b;-><init>(Lmj/d;Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmj/d;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmj/c;

    invoke-direct {v1, p1}, Lmj/c;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
