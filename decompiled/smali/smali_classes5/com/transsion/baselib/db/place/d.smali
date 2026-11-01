.class public final Lcom/transsion/baselib/db/place/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/db/place/PlaceDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/place/d;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/transsion/baselib/db/place/d$a;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/place/d$a;-><init>(Lcom/transsion/baselib/db/place/d;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/place/d;->b:Landroidx/room/g;

    new-instance p1, Lcom/transsion/baselib/db/place/d$b;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/place/d$b;-><init>(Lcom/transsion/baselib/db/place/d;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/place/d;->c:Landroidx/room/e;

    return-void
.end method

.method public static synthetic e(Lcom/transsion/baselib/db/place/d;Ljava/util/List;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/place/d;->k(Ljava/util/List;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/baselib/db/place/d;->i(Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/transsion/baselib/db/place/d;->j(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static h()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic i(Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM place_list"

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

.method private static synthetic j(Lz3/b;)Ljava/util/List;
    .locals 15

    const-string v0, "SELECT * FROM place_list"

    invoke-interface {p0, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    const-string v0, "latitude"

    invoke-static {p0, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v1, "longitude"

    invoke-static {p0, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-static {p0, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "address"

    invoke-static {p0, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "distance"

    invoke-static {p0, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p0, v0}, Lz3/e;->getDouble(I)D

    move-result-wide v8

    invoke-interface {p0, v1}, Lz3/e;->getDouble(I)D

    move-result-wide v10

    invoke-interface {p0, v2}, Lz3/e;->isNull(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v12, v7

    goto :goto_1

    :cond_0
    invoke-interface {p0, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    :goto_1
    invoke-interface {p0, v3}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v13, v7

    goto :goto_2

    :cond_1
    invoke-interface {p0, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    :goto_2
    invoke-interface {p0, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v14, v7

    goto :goto_3

    :cond_2
    invoke-interface {p0, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    :goto_3
    new-instance v6, Lcom/transsion/baselib/db/place/PlaceDBBean;

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Lcom/transsion/baselib/db/place/PlaceDBBean;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    invoke-interface {p0}, Lz3/e;->close()V

    return-object v5

    :goto_4
    invoke-interface {p0}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic k(Ljava/util/List;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/place/d;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->c(Lz3/b;Ljava/lang/Iterable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/baselib/db/place/d;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/place/a;

    invoke-direct {v1}, Lcom/transsion/baselib/db/place/a;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/baselib/db/place/d;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/place/c;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/place/c;-><init>(Lcom/transsion/baselib/db/place/d;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/place/PlaceDao$DefaultImpls;->a(Lcom/transsion/baselib/db/place/PlaceDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/baselib/db/place/d;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/place/b;

    invoke-direct {v1}, Lcom/transsion/baselib/db/place/b;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
