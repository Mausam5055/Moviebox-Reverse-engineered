.class public final Lcom/cloud/tmc/miniapp/base/ShowPageData;
.super Ljava/lang/Object;


# instance fields
.field private isRedirect:Z

.field private loadFail:Z

.field private originalUrl:Ljava/lang/String;

.field private pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

.field private pageRandomIdByGAID:Ljava/lang/String;

.field private progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field private progressStartTime:J

.field private requestUrl:Ljava/lang/String;

.field private status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

.field private url:Ljava/lang/String;

.field private virtual_h5PageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/base/ShowPageStatus;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
            "Z",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;",
            "J)V"
        }
    .end annotation

    const-string v0, "originalUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageRandomIdByGAID"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressCollectList"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    iput-boolean p6, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    iput-object p7, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    iput-object p8, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    iput-boolean p9, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    iput-object p10, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p11, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    iput-wide p12, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->SHOULDOVERRIDEURKLOADING:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    const-string v1, ""

    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move-object v10, v3

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    move/from16 v11, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v12, v1

    goto :goto_5

    :cond_5
    move-object/from16 v12, p10

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    move-object v13, v3

    goto :goto_6

    :cond_6
    move-object/from16 v13, p11

    :goto_6
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v14, v0

    goto :goto_7

    :cond_7
    move-wide/from16 v14, p12

    :goto_7
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v15}, Lcom/cloud/tmc/miniapp/base/ShowPageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/base/ShowPageData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JILjava/lang/Object;)Lcom/cloud/tmc/miniapp/base/ShowPageData;
    .locals 15

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget-wide v13, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    goto :goto_b

    :cond_b
    move-wide/from16 v13, p12

    :goto_b
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-wide/from16 p12, v13

    invoke-virtual/range {p0 .. p13}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;J)Lcom/cloud/tmc/miniapp/base/ShowPageData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final component11()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    return-object v0
.end method

.method public final component12()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/cloud/tmc/integration/chain/page/PageChainContext;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;J)Lcom/cloud/tmc/miniapp/base/ShowPageData;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/base/ShowPageStatus;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
            "Z",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;",
            "J)",
            "Lcom/cloud/tmc/miniapp/base/ShowPageData;"
        }
    .end annotation

    const-string v0, "originalUrl"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestUrl"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageRandomIdByGAID"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressCollectList"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    move-object v1, v0

    move/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p11

    move-wide/from16 v13, p12

    invoke-direct/range {v1 .. v14}, Lcom/cloud/tmc/miniapp/base/ShowPageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getLoadFail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    return v0
.end method

.method public final getOriginalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    return-object v0
.end method

.method public final getPageRandomIdByGAID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final getProgressCurrentStep()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    return-object v0
.end method

.method public final getProgressStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    return-wide v0
.end method

.method public final getRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getVirtual_h5PageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final isRedirect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    return v0
.end method

.method public final setLoadFail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    return-void
.end method

.method public final setOriginalUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPageChainContext(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    return-void
.end method

.method public final setPageRandomIdByGAID(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    return-void
.end method

.method public final setProgressCollectList(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public final setProgressCurrentStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    return-void
.end method

.method public final setProgressStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    return-void
.end method

.method public final setRedirect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    return-void
.end method

.method public final setRequestUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Lcom/cloud/tmc/miniapp/base/ShowPageStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    return-void
.end method

.method public final setVirtual_h5PageId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    iget-boolean v8, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    iget-object v9, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v10, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    iget-wide v11, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ShowPageData(originalUrl="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", requestUrl="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", virtual_h5PageId="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", loadFail="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pageRandomIdByGAID="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pageChainContext="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isRedirect="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", progressCollectList="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", progressCurrentStep="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", progressStartTime="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
