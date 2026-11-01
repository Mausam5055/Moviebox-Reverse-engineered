.class public final Lmi/f;
.super Ljava/lang/Object;

# interfaces
.implements Lmi/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;

.field private final d:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi/f;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lmi/f$a;

    invoke-direct {p1, p0}, Lmi/f$a;-><init>(Lmi/f;)V

    iput-object p1, p0, Lmi/f;->b:Landroidx/room/g;

    new-instance p1, Lmi/f$b;

    invoke-direct {p1, p0}, Lmi/f$b;-><init>(Lmi/f;)V

    iput-object p1, p0, Lmi/f;->c:Landroidx/room/e;

    new-instance p1, Lmi/f$c;

    invoke-direct {p1, p0}, Lmi/f$c;-><init>(Lmi/f;)V

    iput-object p1, p0, Lmi/f;->d:Landroidx/room/e;

    return-void
.end method

.method public static synthetic e(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmi/f;->m(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lmi/f;Lcom/transsion/ad/db/pslink/AppInstalledBean;Lz3/b;)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2}, Lmi/f;->l(Lcom/transsion/ad/db/pslink/AppInstalledBean;Lz3/b;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(JLz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lmi/f;->j(JLz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/pslink/AppInstalledBean;
    .locals 0

    invoke-static {p0, p1}, Lmi/f;->k(Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/pslink/AppInstalledBean;

    move-result-object p0

    return-object p0
.end method

.method public static i()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic j(JLz3/b;)Ljava/util/List;
    .locals 23

    const-string v0, "\n        SELECT * FROM app_installed\n        WHERE lastOpenTime IS NOT NULL\n        AND lastOpenTime >= ?\n    "

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v0, 0x1

    move-wide/from16 v2, p0

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const-string v0, "packageName"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "source"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "appName"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "versionName"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "versionCode"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "horizontalImageUrl"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "eCPM"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "installTime"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "lastOpenTime"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    move-object v14, v12

    goto :goto_1

    :cond_0
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v15, v12

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v16, v12

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v11

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v17, v12

    goto :goto_4

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v11

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v18, v12

    goto :goto_5

    :cond_4
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v11

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v19, v12

    goto :goto_6

    :cond_5
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v11

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v20, v12

    goto :goto_7

    :cond_6
    invoke-interface {v1, v7}, Lz3/e;->getDouble(I)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    move-object/from16 v20, v11

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v21, v12

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v21, v11

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_8

    :goto_9
    move-object/from16 v22, v12

    goto :goto_a

    :cond_8
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_9

    :goto_a
    new-instance v11, Lcom/transsion/ad/db/pslink/AppInstalledBean;

    move-object v13, v11

    invoke-direct/range {v13 .. v22}, Lcom/transsion/ad/db/pslink/AppInstalledBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_b

    :cond_9
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v10

    :goto_b
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic k(Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/pslink/AppInstalledBean;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM app_installed WHERE packageName = ? LIMIT 1"

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
    const-string v0, "packageName"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "source"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "appName"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "versionName"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "versionCode"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "horizontalImageUrl"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "eCPM"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "installTime"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "lastOpenTime"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_a

    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v13, v11

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    :goto_1
    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v14, v11

    goto :goto_2

    :cond_2
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v15, v11

    goto :goto_3

    :cond_3
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    :goto_3
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v16, v11

    goto :goto_4

    :cond_4
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    :goto_4
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v17, v11

    goto :goto_5

    :cond_5
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    :goto_5
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v18, v11

    goto :goto_6

    :cond_6
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    :goto_6
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v19, v11

    goto :goto_7

    :cond_7
    invoke-interface {v1, v7}, Lz3/e;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v19, v0

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v20, v11

    goto :goto_8

    :cond_8
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v20, v0

    :goto_8
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_9
    move-object/from16 v21, v11

    goto :goto_a

    :cond_9
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_9

    :goto_a
    new-instance v11, Lcom/transsion/ad/db/pslink/AppInstalledBean;

    move-object v12, v11

    invoke-direct/range {v12 .. v21}, Lcom/transsion/ad/db/pslink/AppInstalledBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v11

    :goto_b
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic l(Lcom/transsion/ad/db/pslink/AppInstalledBean;Lz3/b;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lmi/f;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->e(Lz3/b;Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic m(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "\n        UPDATE app_installed \n        SET lastOpenTime = ? \n        WHERE packageName = ?\n    "

    invoke-interface {p3, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p3

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p3, v0, p0, p1}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    if-nez p2, :cond_0

    invoke-interface {p3, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p3, p0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p3}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p3}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {p3}, Lz3/e;->close()V

    throw p0
.end method


# virtual methods
.method public a(Lcom/transsion/ad/db/pslink/AppInstalledBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmi/f;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmi/b;

    invoke-direct {v1, p0, p1}, Lmi/b;-><init>(Lmi/f;Lcom/transsion/ad/db/pslink/AppInstalledBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmi/f;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmi/c;

    invoke-direct {v1, p1}, Lmi/c;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmi/f;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmi/d;

    invoke-direct {v1, p2, p3, p1}, Lmi/d;-><init>(JLjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmi/f;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmi/e;

    invoke-direct {v1, p1, p2}, Lmi/e;-><init>(J)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
