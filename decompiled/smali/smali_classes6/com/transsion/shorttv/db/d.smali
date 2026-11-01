.class public final Lcom/transsion/shorttv/db/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/db/d;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/transsion/shorttv/db/d$a;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/db/d$a;-><init>(Lcom/transsion/shorttv/db/d;)V

    iput-object p1, p0, Lcom/transsion/shorttv/db/d;->b:Landroidx/room/g;

    new-instance p1, Lcom/transsion/shorttv/db/d$b;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/db/d$b;-><init>(Lcom/transsion/shorttv/db/d;)V

    iput-object p1, p0, Lcom/transsion/shorttv/db/d;->c:Landroidx/room/e;

    return-void
.end method

.method public static synthetic e(Lcom/transsion/shorttv/db/d;Lcom/transsion/shorttv/db/e;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/db/d;->k(Lcom/transsion/shorttv/db/e;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Lz3/b;)Lcom/transsion/shorttv/db/e;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/db/d;->j(Ljava/lang/String;Lz3/b;)Lcom/transsion/shorttv/db/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/shorttv/db/d;Lcom/transsion/shorttv/db/e;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/db/d;->i(Lcom/transsion/shorttv/db/e;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static h()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic i(Lcom/transsion/shorttv/db/e;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/db/d;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic j(Ljava/lang/String;Lz3/b;)Lcom/transsion/shorttv/db/e;
    .locals 3

    const-string v0, "SELECT * FROM short_tv_ad_unlock_state WHERE subjectId=?"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    invoke-interface {p1, v0, p0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string p0, "subjectId"

    invoke-static {p1, p0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result p0

    const-string v0, "unlockedEps"

    invoke-static {p1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Lz3/e;->A0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1, p0}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-interface {p1, v0}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v0, Lcom/transsion/shorttv/db/e;

    invoke-direct {v0, p0, v2}, Lcom/transsion/shorttv/db/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    :cond_3
    invoke-interface {p1}, Lz3/e;->close()V

    return-object v2

    :goto_3
    invoke-interface {p1}, Lz3/e;->close()V

    throw p0
.end method

.method private synthetic k(Lcom/transsion/shorttv/db/e;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/db/d;->c:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/db/d;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/shorttv/db/a;

    invoke-direct {v1, p1}, Lcom/transsion/shorttv/db/a;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/transsion/shorttv/db/e;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao$DefaultImpls;->a(Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;Lcom/transsion/shorttv/db/e;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/transsion/shorttv/db/e;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/shorttv/db/d;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/shorttv/db/b;

    invoke-direct {v1, p0, p1}, Lcom/transsion/shorttv/db/b;-><init>(Lcom/transsion/shorttv/db/d;Lcom/transsion/shorttv/db/e;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/transsion/shorttv/db/e;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/shorttv/db/d;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/shorttv/db/c;

    invoke-direct {v1, p0, p1}, Lcom/transsion/shorttv/db/c;-><init>(Lcom/transsion/shorttv/db/d;Lcom/transsion/shorttv/db/e;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
