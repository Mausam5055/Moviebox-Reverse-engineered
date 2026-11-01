.class final Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->W(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1"
    f = "HistoricalPlayRecordViewModel.kt"
    l = {
        0x6f,
        0x71,
        0xac,
        0xae
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $isRefreshAll:Z

.field final synthetic $isWhole:Z

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;


# direct methods
.method constructor <init>(ZLcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->$isRefreshAll:Z

    iput-object p2, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    iput-boolean p3, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->$isWhole:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;

    iget-boolean v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->$isRefreshAll:Z

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    iget-boolean v2, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->$isWhole:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;-><init>(ZLcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_7

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_6

    :cond_2
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v8, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->$isRefreshAll:Z

    if-eqz v8, :cond_6

    iget-object v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-static {v5}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->w(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v5

    iget-object v8, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-virtual {v8}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->M()I

    move-result v8

    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->label:I

    invoke-interface {v5, v6, v8, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_5

    return-object v1

    :cond_5
    :goto_0
    check-cast v5, Ljava/util/List;

    goto :goto_2

    :cond_6
    iget-object v8, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-static {v8}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->w(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v8

    iget-object v9, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-virtual {v9}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->M()I

    move-result v9

    iget-object v10, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-static {v10}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->r(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)I

    move-result v10

    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->label:I

    invoke-interface {v8, v9, v10, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_7

    return-object v1

    :cond_7
    :goto_1
    check-cast v5, Ljava/util/List;

    :goto_2
    if-eqz v5, :cond_a

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_9

    move v10, v9

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v8, 0x7

    move v10, v8

    :goto_5
    new-instance v8, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTimeStamp()J

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTimeStamp()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/transsion/baseui/util/TimeUtilKt;->m(J)Ljava/lang/String;

    move-result-object v12

    sget-object v9, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTimeStamp()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Lcom/transsnet/downloader/viewmodel/a0;->z(J)Ljava/lang/String;

    move-result-object v13

    const/16 v19, 0x140

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v9, v8

    invoke-direct/range {v9 .. v20}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    iget-boolean v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->$isRefreshAll:Z

    if-eqz v5, :cond_c

    iget-object v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-static {v3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->v(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v3

    iget-object v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-virtual {v5}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->M()I

    move-result v5

    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->label:I

    invoke-interface {v3, v6, v5, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_b

    return-object v1

    :cond_b
    move-object v1, v2

    :goto_6
    check-cast v3, Ljava/util/List;

    goto :goto_8

    :cond_c
    iget-object v4, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-static {v4}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->v(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v4

    iget-object v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-virtual {v5}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->M()I

    move-result v5

    iget-object v8, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-static {v8}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->r(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)I

    move-result v8

    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->label:I

    invoke-interface {v4, v5, v8, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_d

    return-object v1

    :cond_d
    move-object v1, v2

    :goto_7
    check-cast v3, Ljava/util/List;

    :goto_8
    if-eqz v3, :cond_e

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    new-instance v3, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTimeStamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTimeStamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/transsion/baseui/util/TimeUtilKt;->m(J)Ljava/lang/String;

    move-result-object v11

    sget-object v4, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTimeStamp()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/transsnet/downloader/viewmodel/a0;->z(J)Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0xc0

    const/16 v19, 0x0

    const/4 v9, 0x7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v19}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    iget-boolean v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->$isRefreshAll:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-virtual {v2, v6}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->i0(I)V

    :cond_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v7, :cond_10

    new-instance v2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1$invokeSuspend$$inlined$sortByDescending$1;

    invoke-direct {v2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1$invokeSuspend$$inlined$sortByDescending$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_10
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-virtual {v2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->M()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->i0(I)V

    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    iget-boolean v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->$isWhole:Z

    invoke-static {v2, v1, v3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->m(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-virtual {v2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->I()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
