.class public final Lmn/o;
.super Ljava/lang/Object;

# interfaces
.implements Lmn/j;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmn/o;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lmn/o$a;

    invoke-direct {p1, p0}, Lmn/o$a;-><init>(Lmn/o;)V

    iput-object p1, p0, Lmn/o;->b:Landroidx/room/g;

    new-instance p1, Lmn/o$b;

    invoke-direct {p1, p0}, Lmn/o$b;-><init>(Lmn/o;)V

    iput-object p1, p0, Lmn/o;->c:Landroidx/room/e;

    return-void
.end method

.method public static synthetic c(Lmn/o;Ljava/util/List;Lz3/b;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lmn/o;->k(Ljava/util/List;Lz3/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lz3/b;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lmn/o;->h(Lz3/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lmn/o;->j(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lmn/o;Lcom/transsion/mpush/api/PermanentPushMessage;Lz3/b;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lmn/o;->i(Lcom/transsion/mpush/api/PermanentPushMessage;Lz3/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic h(Lz3/b;)Ljava/lang/Object;
    .locals 1

    const-string v0, "DELETE FROM permanent_push_message"

    invoke-interface {p0, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lz3/e;->A0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic i(Lcom/transsion/mpush/api/PermanentPushMessage;Lz3/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmn/o;->c:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic j(Lz3/b;)Ljava/util/List;
    .locals 14

    const-string v0, "SELECT * FROM permanent_push_message"

    invoke-interface {p0, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p0, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v1, "deeplink"

    invoke-static {p0, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v2, "subject_id"

    invoke-static {p0, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "image"

    invoke-static {p0, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "title"

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
    new-instance v6, Lcom/transsion/mpush/api/PermanentPushMessage;

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/transsion/mpush/api/PermanentPushMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

.method private synthetic k(Ljava/util/List;Lz3/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmn/o;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->c(Lz3/b;Ljava/lang/Iterable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcom/transsion/mpush/api/PermanentPushMessage;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmn/o;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmn/l;

    invoke-direct {v1, p0, p1}, Lmn/l;-><init>(Lmn/o;Lcom/transsion/mpush/api/PermanentPushMessage;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmn/o;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmn/m;

    invoke-direct {v1, p0, p1}, Lmn/m;-><init>(Lmn/o;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lmn/o;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmn/n;

    invoke-direct {v1}, Lmn/n;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lmn/o;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmn/k;

    invoke-direct {v1}, Lmn/k;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
