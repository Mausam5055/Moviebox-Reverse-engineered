.class public final Llj/h1;
.super Ljava/lang/Object;

# interfaces
.implements Llj/d1;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj/h1;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Llj/h1$a;

    invoke-direct {p1, p0}, Llj/h1$a;-><init>(Llj/h1;)V

    iput-object p1, p0, Llj/h1;->b:Landroidx/room/g;

    return-void
.end method

.method public static synthetic d(Llj/h1;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Llj/h1;->i(Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(ZLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Llj/h1;->j(ZLjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Llj/h1;->h(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static g()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic h(Lz3/b;)Ljava/util/List;
    .locals 10

    const-string v0, "SELECT * FROM SUBTITLE_LANGUAGE_MAP_TABLE "

    invoke-interface {p0, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    const-string v0, "lan"

    invoke-static {p0, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v1, "lanIOS3"

    invoke-static {p0, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v2, "lanName"

    invoke-static {p0, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "inSearch"

    invoke-static {p0, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p0, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move-object v5, v6

    goto :goto_1

    :cond_0
    invoke-interface {p0, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-interface {p0, v1}, Lz3/e;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v6

    goto :goto_2

    :cond_1
    invoke-interface {p0, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-interface {p0, v2}, Lz3/e;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p0, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-interface {p0, v3}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    new-instance v9, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    invoke-direct {v9, v5, v7, v6, v8}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_4
    invoke-interface {p0}, Lz3/e;->close()V

    return-object v4

    :goto_5
    invoke-interface {p0}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic i(Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Llj/h1;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic j(ZLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 3

    const-string v0, "UPDATE SUBTITLE_LANGUAGE_MAP_TABLE SET inSearch = ?  WHERE lan = ?"

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


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Llj/h1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/e1;

    invoke-direct {v1}, Llj/e1;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/h1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/f1;

    invoke-direct {v1, p2, p1}, Llj/f1;-><init>(ZLjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Llj/h1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Llj/g1;

    invoke-direct {v1, p0, p1}, Llj/g1;-><init>(Llj/h1;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
