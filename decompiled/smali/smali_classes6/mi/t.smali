.class public final Lmi/t;
.super Ljava/lang/Object;

# interfaces
.implements Lmi/l;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi/t;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lmi/t$a;

    invoke-direct {p1, p0}, Lmi/t$a;-><init>(Lmi/t;)V

    iput-object p1, p0, Lmi/t;->b:Landroidx/room/g;

    new-instance p1, Lmi/t$b;

    invoke-direct {p1, p0}, Lmi/t$b;-><init>(Lmi/t;)V

    iput-object p1, p0, Lmi/t;->c:Landroidx/room/e;

    return-void
.end method

.method public static synthetic h(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lmi/t;->q(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Lz3/b;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lmi/t;->r(Ljava/lang/String;Lz3/b;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
    .locals 0

    invoke-static {p0, p1}, Lmi/t;->t(Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lmi/t;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lmi/t;->v(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lmi/t;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lmi/t;->u(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmi/t;->p(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(ILz3/b;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
    .locals 0

    invoke-static {p0, p1}, Lmi/t;->s(ILz3/b;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    move-result-object p0

    return-object p0
.end method

.method public static o()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic p(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lz3/b;)Lkotlin/Unit;
    .locals 2

    invoke-interface {p3, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p3, 0x1

    if-nez p1, :cond_0

    :try_start_0
    invoke-interface {p0, p3}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-interface {p0, p3, p1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_1

    invoke-interface {p0, p2}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v0, p3

    invoke-interface {p0, p2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lz3/e;->A0()Z

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    return-object p1

    :goto_3
    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method private static synthetic q(Lz3/b;)Ljava/util/List;
    .locals 41

    const-string v0, "SELECT * FROM ps_link_ad"

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "nonId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "adSource"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "extAdSlot"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "rank"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "psPlanId"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "psLinkAdInfoStr"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "psInfoJson"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "updateTimestamp"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "showMax"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "clickMax"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "showHours"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "showedTimes"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "clickedTimes"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "showDate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "isOffer"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v17, v14

    move-object/from16 v18, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v15

    const/16 v19, 0x0

    if-eqz v15, :cond_0

    move-object/from16 v21, v19

    goto :goto_1

    :cond_0
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v15

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v22, v19

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v15

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move v15, v2

    move/from16 v36, v3

    move-object/from16 v23, v19

    goto :goto_3

    :cond_2
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v36, v3

    move-object/from16 v23, v15

    move v15, v2

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v25, v19

    goto :goto_4

    :cond_3
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    :goto_4
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v26, v19

    goto :goto_5

    :cond_4
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    :goto_5
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v27, v19

    goto :goto_6

    :cond_5
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v3

    :goto_6
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v28, v19

    goto :goto_7

    :cond_6
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_7
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v37, v4

    move-object/from16 v29, v19

    goto :goto_8

    :cond_7
    move/from16 v37, v4

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v29, v3

    :goto_8
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v30, v19

    goto :goto_9

    :cond_8
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v30, v3

    :goto_9
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v31, v19

    goto :goto_a

    :cond_9
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v31, v3

    :goto_a
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v38, v6

    move/from16 v4, v17

    move/from16 v17, v5

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, p0

    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_a

    :goto_b
    move/from16 p0, v0

    move/from16 v39, v6

    move/from16 v0, v16

    move-object/from16 v34, v19

    move/from16 v16, v7

    goto :goto_c

    :cond_a
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_b

    :goto_c
    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    new-instance v7, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    move-object/from16 v19, v7

    move/from16 v20, v14

    move/from16 v24, v2

    move/from16 v32, v3

    move/from16 v33, v5

    move/from16 v35, v6

    invoke-direct/range {v19 .. v35}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;I)V

    move-object/from16 v2, v18

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v14, v4

    move/from16 v7, v16

    move/from16 v5, v17

    move/from16 v3, v36

    move/from16 v4, v37

    move/from16 v6, v38

    move/from16 v16, v0

    move/from16 v0, p0

    move/from16 p0, v39

    move/from16 v40, v15

    move-object v15, v2

    move/from16 v2, v40

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_b
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_d
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic r(Ljava/lang/String;Lz3/b;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "SELECT COUNT(*) FROM ps_link_ad WHERE extAdSlot = ?"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {p1, v0, p0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lz3/e;->A0()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-interface {p1}, Lz3/e;->close()V

    return-object v0

    :goto_2
    invoke-interface {p1}, Lz3/e;->close()V

    throw p0
.end method

.method private static synthetic s(ILz3/b;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
    .locals 35

    const-string v0, "SELECT * FROM ps_link_ad WHERE id =?"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v0, 0x1

    move/from16 v2, p0

    int-to-long v2, v2

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "nonId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "adSource"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "extAdSlot"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "rank"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "psPlanId"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "psLinkAdInfoStr"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "psInfoJson"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "updateTimestamp"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "showMax"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "clickMax"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "showHours"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "showedTimes"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "clickedTimes"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "showDate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "isOffer"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_b

    move/from16 p1, v14

    move/from16 v16, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v0, v14

    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v20, v17

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    :goto_0
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v21, v17

    goto :goto_1

    :cond_1
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    :goto_1
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v22, v17

    goto :goto_2

    :cond_2
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v2

    :goto_2
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v24, v17

    goto :goto_3

    :cond_3
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    :goto_3
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v25, v17

    goto :goto_4

    :cond_4
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    :goto_4
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v26, v17

    goto :goto_5

    :cond_5
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    :goto_5
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v27, v17

    goto :goto_6

    :cond_6
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v27, v3

    :goto_6
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v28, v17

    goto :goto_7

    :cond_7
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_7
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v29, v17

    goto :goto_8

    :cond_8
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v29, v3

    :goto_8
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v30, v17

    goto :goto_9

    :cond_9
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v3

    :goto_9
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v4, p1

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_a
    move/from16 v5, v16

    move-object/from16 v33, v17

    goto :goto_b

    :cond_a
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_a

    :goto_b
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    new-instance v17, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    move-object/from16 v18, v17

    move/from16 v19, v0

    move/from16 v23, v2

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v34, v5

    invoke-direct/range {v18 .. v34}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_b
    :goto_c
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v17

    :goto_d
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic t(Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
    .locals 35

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM ps_link_ad WHERE extAdSlot = ? ORDER BY updateTimestamp ASC LIMIT 1"

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

    goto/16 :goto_d

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "nonId"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "adSource"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "extAdSlot"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "rank"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "psPlanId"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "psLinkAdInfoStr"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "psInfoJson"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "updateTimestamp"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "showMax"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "clickMax"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "showHours"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "showedTimes"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "clickedTimes"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "showDate"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "isOffer"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_c

    move/from16 p1, v14

    move/from16 v16, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v0, v14

    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v20, v17

    goto :goto_1

    :cond_1
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v21, v17

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v22, v17

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v2

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v24, v17

    goto :goto_4

    :cond_4
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    :goto_4
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v25, v17

    goto :goto_5

    :cond_5
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    :goto_5
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v26, v17

    goto :goto_6

    :cond_6
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    :goto_6
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v27, v17

    goto :goto_7

    :cond_7
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v27, v3

    :goto_7
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v28, v17

    goto :goto_8

    :cond_8
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_8
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v29, v17

    goto :goto_9

    :cond_9
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v29, v3

    :goto_9
    invoke-interface {v1, v12}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v30, v17

    goto :goto_a

    :cond_a
    invoke-interface {v1, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v3

    :goto_a
    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v4, p1

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, p0

    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_b

    :goto_b
    move/from16 v5, v16

    move-object/from16 v33, v17

    goto :goto_c

    :cond_b
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_b

    :goto_c
    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    new-instance v17, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    move-object/from16 v18, v17

    move/from16 v19, v0

    move/from16 v23, v2

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v34, v5

    invoke-direct/range {v18 .. v34}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v17

    :goto_d
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic u(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lmi/t;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic v(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lmi/t;->c:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lmi/t;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmi/n;

    invoke-direct {v1}, Lmi/n;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmi/t;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmi/o;

    invoke-direct {v1, p0, p1}, Lmi/o;-><init>(Lmi/t;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmi/t;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmi/s;

    invoke-direct {v1, p1}, Lmi/s;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    DELETE FROM ps_link_ad "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    WHERE extAdSlot = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "      AND id NOT IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/room/util/n;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmi/t;->a:Landroidx/room/RoomDatabase;

    new-instance v2, Lmi/m;

    invoke-direct {v2, v0, p1, p2}, Lmi/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v1, p1, p2, v2, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmi/t;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmi/r;

    invoke-direct {v1, p0, p1}, Lmi/r;-><init>(Lmi/t;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmi/t;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmi/p;

    invoke-direct {v1, p1}, Lmi/p;-><init>(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmi/t;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmi/q;

    invoke-direct {v1, p1}, Lmi/q;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
