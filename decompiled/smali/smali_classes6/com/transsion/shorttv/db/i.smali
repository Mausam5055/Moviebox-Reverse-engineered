.class public final Lcom/transsion/shorttv/db/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/shorttv/db/ShortTvFavoriteDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/db/i;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/transsion/shorttv/db/i$a;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/db/i$a;-><init>(Lcom/transsion/shorttv/db/i;)V

    iput-object p1, p0, Lcom/transsion/shorttv/db/i;->b:Landroidx/room/g;

    new-instance p1, Lcom/transsion/shorttv/db/i$b;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/db/i$b;-><init>(Lcom/transsion/shorttv/db/i;)V

    iput-object p1, p0, Lcom/transsion/shorttv/db/i;->c:Landroidx/room/e;

    return-void
.end method

.method public static synthetic e(Lcom/transsion/shorttv/db/i;Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/db/i;->i(Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/shorttv/db/i;Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/db/i;->k(Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;Lz3/b;)Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/db/i;->j(Ljava/lang/String;Lz3/b;)Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;

    move-result-object p0

    return-object p0
.end method

.method public static h()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic i(Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/db/i;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic j(Ljava/lang/String;Lz3/b;)Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;
    .locals 8

    const-string v0, "SELECT * FROM short_tv_favorite_state WHERE subjectId=?"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    invoke-interface {p1, v0, p0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string p0, "subjectId"

    invoke-static {p1, p0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result p0

    const-string v1, "favoriteNum"

    invoke-static {p1, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v2, "hasFavorite"

    invoke-static {p1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "favoriteTime"

    invoke-static {p1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1}, Lz3/e;->A0()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {p1, p0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p0, v5

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-interface {p1, v1}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v5

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-interface {p1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v2, v6

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-interface {p1, v3}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    new-instance v2, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;

    invoke-direct {v2, p0, v1, v0, v5}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v2

    :cond_5
    invoke-interface {p1}, Lz3/e;->close()V

    return-object v5

    :goto_5
    invoke-interface {p1}, Lz3/e;->close()V

    throw p0
.end method

.method private synthetic k(Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/db/i;->c:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/db/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/shorttv/db/f;

    invoke-direct {v1, p1}, Lcom/transsion/shorttv/db/f;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/shorttv/db/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/shorttv/db/g;

    invoke-direct {v1, p0, p1}, Lcom/transsion/shorttv/db/g;-><init>(Lcom/transsion/shorttv/db/i;Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/shorttv/db/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/shorttv/db/h;

    invoke-direct {v1, p0, p1}, Lcom/transsion/shorttv/db/h;-><init>(Lcom/transsion/shorttv/db/i;Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/db/ShortTvFavoriteDao$DefaultImpls;->a(Lcom/transsion/shorttv/db/ShortTvFavoriteDao;Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
