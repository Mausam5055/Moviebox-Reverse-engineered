.class public final Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lqs/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;

    iget v2, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;-><init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/baselib/db/video/ShortTVPlayBean;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    if-nez v4, :cond_3

    move-object v7, v6

    goto :goto_1

    :cond_3
    move-object v7, v4

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v8, v6

    goto :goto_2

    :cond_4
    move-object v8, v4

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getSe()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_3

    :cond_5
    move-object/from16 v16, v6

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_4

    :cond_6
    move-object/from16 v17, v6

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideoId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v4

    goto :goto_5

    :cond_7
    move-object/from16 v19, v6

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/16 v23, 0x2000

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object v6, v0

    move-wide/from16 v12, p3

    invoke-direct/range {v6 .. v24}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v4, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v6

    const-string v7, "getApp(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/baselib/db/AppDatabase;->x1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object v4

    iput v5, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;->label:I

    invoke-interface {v4, v0, v1}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->g(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    :goto_6
    new-instance v0, Lmy/e;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1}, Lmy/e;-><init>(ZZ)V

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
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->x1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;

    iget v2, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;-><init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    const-string v6, "getApp(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->x1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object v0

    iput v5, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;->label:I

    move-object/from16 v4, p1

    invoke-interface {v0, v4, v1}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v0, Lcom/transsion/baselib/db/video/ShortTVPlayBean;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v1, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

    move-object v3, v1

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getEp()I

    move-result v6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSe()I

    move-result v7

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getTotalEp()I

    move-result v8

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getProgress()J

    move-result-wide v9

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getThumbnail()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getVideoId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getTimeStamp()J

    move-result-wide v17

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v1
.end method
