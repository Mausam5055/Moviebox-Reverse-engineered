.class public final Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lst/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->B1()Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->a(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public b(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 57

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;

    iget v2, v1, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->label:I

    move-object/from16 v2, p0

    :goto_0
    move-object v11, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;-><init>(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v3, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->label:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "getApp(...)"

    const/4 v12, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v12, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget-wide v8, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->J$0:J

    iget-object v3, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v10, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v13, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v3

    move-wide/from16 v17, v8

    move-object/from16 v16, v10

    goto :goto_4

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v7

    :goto_3
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    :cond_6
    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_8

    :cond_7
    sget-object v8, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v8

    move-object/from16 v9, p1

    iput-object v9, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$0:Ljava/lang/Object;

    iput-object v0, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$1:Ljava/lang/Object;

    iput-object v3, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$2:Ljava/lang/Object;

    move-wide/from16 v13, p2

    iput-wide v13, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->J$0:J

    iput v12, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->label:I

    invoke-interface {v8, v3, v11}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_8

    return-object v1

    :cond_8
    move-object/from16 v16, v0

    move-object v15, v3

    move-object v0, v8

    move-wide/from16 v17, v13

    move-object v13, v9

    :goto_4
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    if-nez v0, :cond_b

    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getDurationMillis()J

    move-result-wide v3

    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_5

    :cond_9
    move-object/from16 v20, v7

    :goto_5
    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_6

    :cond_a
    move-object/from16 v21, v7

    :goto_6
    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v23

    sget-object v0, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    invoke-virtual {v0}, Lcom/transsion/baselib/utils/PlayMode;->getValue()Ljava/lang/String;

    move-result-object v36

    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getOps()Ljava/lang/String;

    move-result-object v47

    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result v22

    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->d()Ljava/lang/String;

    move-result-object v53

    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object v14, v0

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v31

    const/16 v55, 0x7

    const/16 v56, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const v54, -0x20085100

    invoke-direct/range {v14 .. v56}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v3

    iput-object v7, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$0:Ljava/lang/Object;

    iput-object v7, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$1:Ljava/lang/Object;

    iput-object v7, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$2:Ljava/lang/Object;

    iput v5, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->label:I

    invoke-interface {v3, v0, v11}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->n(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    return-object v1

    :cond_b
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result v10

    iput-object v7, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$0:Ljava/lang/Object;

    iput-object v7, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$1:Ljava/lang/Object;

    iput-object v7, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$2:Ljava/lang/Object;

    iput v4, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->label:I

    move-object v4, v15

    move-object/from16 v5, v16

    move-wide v6, v8

    move-wide/from16 v8, v17

    invoke-interface/range {v3 .. v11}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->e(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    return-object v1

    :cond_c
    :goto_7
    new-instance v0, Lmy/e;

    const/4 v1, 0x0

    invoke-direct {v0, v12, v1}, Lmy/e;-><init>(ZZ)V

    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v3, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v1, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v1

    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v3, Lmy/e;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_d
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 39

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;

    iget v3, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;-><init>(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v4

    iget v5, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/baselib/db/AppDatabase;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/baselib/db/AppDatabase;

    iget-object v5, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v38, v1

    move-object v1, v0

    move-object v0, v5

    move-object/from16 v5, v38

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-nez v0, :cond_5

    return-object v9

    :cond_5
    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v5

    const-string v10, "getApp(...)"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v5

    iput-object v0, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$1:Ljava/lang/Object;

    iput v8, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->label:I

    invoke-interface {v5, v0, v2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->r(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6

    return-object v4

    :cond_6
    :goto_1
    check-cast v5, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    if-nez v5, :cond_a

    invoke-virtual {v1}, Lcom/transsion/baselib/db/AppDatabase;->B1()Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    move-result-object v5

    iput-object v1, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$1:Ljava/lang/Object;

    iput v7, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->label:I

    invoke-interface {v5, v0, v2}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_7

    return-object v4

    :cond_7
    move-object/from16 v38, v1

    move-object v1, v0

    move-object/from16 v0, v38

    :goto_2
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    iput-object v9, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$0:Ljava/lang/Object;

    iput v6, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->label:I

    invoke-interface {v0, v1, v2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_8

    return-object v4

    :cond_8
    :goto_3
    move-object v5, v1

    check-cast v5, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    goto :goto_4

    :cond_9
    move-object v5, v9

    :cond_a
    :goto_4
    if-eqz v5, :cond_b

    new-instance v9, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;

    move-object v10, v9

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCollectionId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getProgress()J

    move-result-wide v13

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getThumbnail()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getPosition()I

    move-result v18

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTimeStamp()J

    move-result-wide v20

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    move-result-object v23

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubjectDurationSeconds()Ljava/lang/Long;

    move-result-object v24

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getAverageHueLight()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getHasDelete()Z

    move-result v27

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadResid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadSize()J

    move-result-wide v31

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    move-result-object v33

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    move-result-object v34

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getRewardPlayed()Z

    move-result v35

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getRewardUnlock()Z

    move-result v36

    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getRewardFree()Z

    move-result v37

    invoke-direct/range {v10 .. v37}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZ)V

    :cond_b
    return-object v9
.end method
