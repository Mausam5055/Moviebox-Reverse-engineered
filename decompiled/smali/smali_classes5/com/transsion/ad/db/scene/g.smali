.class public final Lcom/transsion/ad/db/scene/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/ad/db/scene/AdSceneLimitDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/transsion/ad/db/scene/g$a;

    invoke-direct {p1, p0}, Lcom/transsion/ad/db/scene/g$a;-><init>(Lcom/transsion/ad/db/scene/g;)V

    iput-object p1, p0, Lcom/transsion/ad/db/scene/g;->b:Landroidx/room/g;

    new-instance p1, Lcom/transsion/ad/db/scene/g$b;

    invoke-direct {p1, p0}, Lcom/transsion/ad/db/scene/g$b;-><init>(Lcom/transsion/ad/db/scene/g;)V

    iput-object p1, p0, Lcom/transsion/ad/db/scene/g;->c:Landroidx/room/e;

    return-void
.end method

.method public static synthetic g(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/db/scene/g;->o(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/ad/db/scene/g;Lcom/transsion/ad/db/scene/AdSceneLimit;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/db/scene/g;->s(Lcom/transsion/ad/db/scene/AdSceneLimit;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/ad/db/scene/g;->r(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/transsion/ad/db/scene/g;->n(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/ad/db/scene/g;Lcom/transsion/ad/db/scene/AdSceneLimit;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/db/scene/g;->q(Lcom/transsion/ad/db/scene/AdSceneLimit;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/scene/AdSceneLimit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/db/scene/g;->p(Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/scene/AdSceneLimit;

    move-result-object p0

    return-object p0
.end method

.method public static m()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic n(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/transsion/ad/db/scene/AdSceneLimitDao$DefaultImpls;->a(Lcom/transsion/ad/db/scene/AdSceneLimitDao;Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic o(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/ad/db/scene/AdSceneLimitDao$DefaultImpls;->b(Lcom/transsion/ad/db/scene/AdSceneLimitDao;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic p(Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/scene/AdSceneLimit;
    .locals 11

    const-string v0, "SELECT * FROM ad_scene_limit_table WHERE sceneId = ? LIMIT 1"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    invoke-interface {p1, v0, p0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string p0, "sceneId"

    invoke-static {p1, p0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result p0

    const-string v0, "lastDisplayAdDate"

    invoke-static {p1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v1, "lastDisplayAdTimestamp"

    invoke-static {p1, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v2, "displayTimes"

    invoke-static {p1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1}, Lz3/e;->A0()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {p1, p0}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v6, v4

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object p0

    move-object v6, p0

    :goto_1
    invoke-interface {p1, v0}, Lz3/e;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_2
    move-object v7, v4

    goto :goto_3

    :cond_2
    invoke-interface {p1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :goto_3
    invoke-interface {p1, v1}, Lz3/e;->getLong(I)J

    move-result-wide v8

    invoke-interface {p1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int v10, v0

    new-instance v4, Lcom/transsion/ad/db/scene/AdSceneLimit;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/transsion/ad/db/scene/AdSceneLimit;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-interface {p1}, Lz3/e;->close()V

    return-object v4

    :goto_4
    invoke-interface {p1}, Lz3/e;->close()V

    throw p0
.end method

.method private synthetic q(Lcom/transsion/ad/db/scene/AdSceneLimit;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic r(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/ad/db/scene/AdSceneLimitDao$DefaultImpls;->c(Lcom/transsion/ad/db/scene/AdSceneLimitDao;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic s(Lcom/transsion/ad/db/scene/AdSceneLimit;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->c:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/ad/db/scene/e;

    invoke-direct {v1, p1}, Lcom/transsion/ad/db/scene/e;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    move-object v9, p0

    iget-object v10, v9, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    new-instance v11, Lcom/transsion/ad/db/scene/a;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/transsion/ad/db/scene/a;-><init>(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;JJI)V

    move-object/from16 v0, p8

    invoke-static {v10, v11, v0}, Landroidx/room/util/b;->e(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    new-instance v7, Lcom/transsion/ad/db/scene/b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/db/scene/b;-><init>(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0, v7, p5}, Landroidx/room/util/b;->e(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/ad/db/scene/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/ad/db/scene/d;-><init>(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, p3}, Landroidx/room/util/b;->e(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/transsion/ad/db/scene/AdSceneLimit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/ad/db/scene/f;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/db/scene/f;-><init>(Lcom/transsion/ad/db/scene/g;Lcom/transsion/ad/db/scene/AdSceneLimit;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/transsion/ad/db/scene/AdSceneLimit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/ad/db/scene/c;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/db/scene/c;-><init>(Lcom/transsion/ad/db/scene/g;Lcom/transsion/ad/db/scene/AdSceneLimit;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
