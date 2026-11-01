.class public final Lki/f;
.super Ljava/lang/Object;

# interfaces
.implements Lki/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lki/f;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lki/f$a;

    invoke-direct {p1, p0}, Lki/f$a;-><init>(Lki/f;)V

    iput-object p1, p0, Lki/f;->b:Landroidx/room/g;

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lki/f;->l(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lki/f;Ljava/util/List;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lki/f;->m(Ljava/util/List;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lki/f;->j(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lz3/b;)Lcom/transsion/ad/db/mcc/LocalMcc;
    .locals 0

    invoke-static {p0}, Lki/f;->k(Lz3/b;)Lcom/transsion/ad/db/mcc/LocalMcc;

    move-result-object p0

    return-object p0
.end method

.method public static i()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic j(Lz3/b;)Ljava/util/List;
    .locals 14

    const-string v0, "SELECT * FROM local_mcc"

    invoke-interface {p0, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p0, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Country"

    invoke-static {p0, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v2, "Mcc"

    invoke-static {p0, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "Iso"

    invoke-static {p0, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "CountryCode"

    invoke-static {p0, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p0, v0}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v9, v6

    invoke-interface {p0, v1}, Lz3/e;->isNull(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v10, v7

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    :goto_1
    invoke-interface {p0, v2}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v11, v7

    goto :goto_2

    :cond_1
    invoke-interface {p0, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    :goto_2
    invoke-interface {p0, v3}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v12, v7

    goto :goto_3

    :cond_2
    invoke-interface {p0, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    :goto_3
    invoke-interface {p0, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v13, v7

    goto :goto_4

    :cond_3
    invoke-interface {p0, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    :goto_4
    new-instance v6, Lcom/transsion/ad/db/mcc/LocalMcc;

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/transsion/ad/db/mcc/LocalMcc;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_4
    invoke-interface {p0}, Lz3/e;->close()V

    return-object v5

    :goto_5
    invoke-interface {p0}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic k(Lz3/b;)Lcom/transsion/ad/db/mcc/LocalMcc;
    .locals 15

    const-string v0, "SELECT * FROM local_mcc LIMIT 1"

    invoke-interface {p0, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p0, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Country"

    invoke-static {p0, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v2, "Mcc"

    invoke-static {p0, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "Iso"

    invoke-static {p0, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "CountryCode"

    invoke-static {p0, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {p0, v0}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v10, v7

    invoke-interface {p0, v1}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v11, v6

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_0
    invoke-interface {p0, v2}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v12, v6

    goto :goto_1

    :cond_1
    invoke-interface {p0, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    :goto_1
    invoke-interface {p0, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v13, v6

    goto :goto_2

    :cond_2
    invoke-interface {p0, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    :goto_2
    invoke-interface {p0, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    move-object v14, v6

    goto :goto_4

    :cond_3
    invoke-interface {p0, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :goto_4
    new-instance v6, Lcom/transsion/ad/db/mcc/LocalMcc;

    move-object v9, v6

    invoke-direct/range {v9 .. v14}, Lcom/transsion/ad/db/mcc/LocalMcc;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_4
    :goto_5
    invoke-interface {p0}, Lz3/e;->close()V

    return-object v6

    :goto_6
    invoke-interface {p0}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic l(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 13

    const-string v0, "SELECT * FROM local_mcc WHERE Iso = ?"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    invoke-interface {p1, v0, p0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string p0, "id"

    invoke-static {p1, p0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result p0

    const-string v0, "Country"

    invoke-static {p1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Mcc"

    invoke-static {p1, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v2, "Iso"

    invoke-static {p1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "CountryCode"

    invoke-static {p1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Lz3/e;->A0()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1, p0}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v8, v5

    invoke-interface {p1, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move-object v9, v6

    goto :goto_2

    :cond_1
    invoke-interface {p1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    :goto_2
    invoke-interface {p1, v1}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v10, v6

    goto :goto_3

    :cond_2
    invoke-interface {p1, v1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    :goto_3
    invoke-interface {p1, v2}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v11, v6

    goto :goto_4

    :cond_3
    invoke-interface {p1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    :goto_4
    invoke-interface {p1, v3}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v12, v6

    goto :goto_5

    :cond_4
    invoke-interface {p1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    :goto_5
    new-instance v5, Lcom/transsion/ad/db/mcc/LocalMcc;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/transsion/ad/db/mcc/LocalMcc;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lz3/e;->close()V

    return-object v4

    :goto_6
    invoke-interface {p1}, Lz3/e;->close()V

    throw p0
.end method

.method private synthetic m(Ljava/util/List;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lki/f;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->c(Lz3/b;Ljava/lang/Iterable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lki/f;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lki/e;

    invoke-direct {v1, p0, p1}, Lki/e;-><init>(Lki/f;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lki/f;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lki/c;

    invoke-direct {v1, p1}, Lki/c;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lki/f;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lki/b;

    invoke-direct {v1}, Lki/b;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lki/f;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lki/d;

    invoke-direct {v1}, Lki/d;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
