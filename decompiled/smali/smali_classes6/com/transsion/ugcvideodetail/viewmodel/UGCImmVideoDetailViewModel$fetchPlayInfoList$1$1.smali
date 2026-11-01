.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/c;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/c;",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/c;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1"
    f = "UGCImmVideoDetailViewModel.kt"
    l = {
        0x21d,
        0x21f,
        0x224,
        0x241
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $videoData:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->$videoData:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->$videoData:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v6, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v7

    iget v0, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->label:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v11, :cond_3

    if-eq v0, v10, :cond_0

    if-eq v0, v9, :cond_2

    if-ne v0, v8, :cond_1

    :cond_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    iget-object v1, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v2, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    iget-object v3, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/tn/lib/net/bean/BaseDto;

    iget-object v4, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto/16 :goto_5

    :cond_3
    iget-object v0, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v0

    move-object/from16 v0, p1

    goto :goto_2

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lkotlinx/coroutines/flow/c;

    iget-object v0, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->t0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Lrv/a;

    move-result-object v0

    iget-object v1, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->$videoData:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-array v1, v12, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_1

    :cond_7
    move-object v1, v13

    :goto_1
    iput-object v14, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    iput v11, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->label:I

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v0 .. v5}, Lrv/a$a;->a(Lrv/a;[Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_8

    return-object v7

    :cond_8
    :goto_2
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;->getItems()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_9
    move-object v1, v13

    :goto_3
    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_19

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_e

    :cond_a
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v0

    move-object v4, v14

    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    sget-object v14, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v14}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v14

    iput-object v4, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$1:Ljava/lang/Object;

    iput-object v2, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$2:Ljava/lang/Object;

    iput-object v1, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$3:Ljava/lang/Object;

    iput-object v0, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$4:Ljava/lang/Object;

    iput v9, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->label:I

    invoke-virtual {v14, v5, v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->R(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_c

    return-object v7

    :cond_c
    :goto_5
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v14

    goto :goto_6

    :cond_d
    move v14, v12

    :goto_6
    invoke-virtual {v0, v14}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->setDownloadStatus(I)V

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_12

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_12

    new-instance v14, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    if-nez v15, :cond_f

    move-object/from16 v18, v16

    goto :goto_7

    :cond_f
    move-object/from16 v18, v15

    :goto_7
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_10

    move-object/from16 v19, v16

    goto :goto_8

    :cond_10
    move-object/from16 v19, v15

    :goto_8
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    const-string v5, "ResourceId"

    :cond_11
    move-object/from16 v25, v5

    const-string v17, "Mp4"

    const-string v23, ""

    const-string v24, ""

    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v25}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->setResources(Ljava/util/List;)V

    :cond_12
    :goto_9
    invoke-static {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->v0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I

    move-result v5

    div-int/2addr v5, v10

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    move-result-object v14

    if-eqz v14, :cond_13

    invoke-virtual {v14}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getWidth()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_13

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_a

    :cond_13
    move v14, v12

    :goto_a
    if-gtz v14, :cond_14

    move/from16 v19, v5

    goto :goto_d

    :cond_14
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    move-result-object v14

    if-eqz v14, :cond_15

    invoke-virtual {v14}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getHeight()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_b

    :cond_15
    move v14, v12

    :goto_b
    mul-int/2addr v14, v5

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    move-result-object v15

    if-eqz v15, :cond_16

    invoke-virtual {v15}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getWidth()Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_16

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_c

    :cond_16
    move v15, v11

    :goto_c
    div-int/2addr v14, v15

    move/from16 v19, v14

    :goto_d
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v14, Lej/g;->a:Lej/g;

    const/16 v23, 0xac

    const/16 v24, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v15, v0

    move/from16 v16, v5

    invoke-static/range {v14 .. v24}, Lej/g;->e(Lej/g;Ljava/lang/String;IZZIZZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sget-object v14, Lej/f;->a:Lej/f$a;

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v5

    invoke-static/range {v14 .. v20}, Lej/f$a;->j(Lej/f$a;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_17
    move-object v0, v3

    move-object v14, v4

    :cond_18
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v13, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    iput-object v13, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$1:Ljava/lang/Object;

    iput-object v13, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$2:Ljava/lang/Object;

    iput-object v13, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$3:Ljava/lang/Object;

    iput-object v13, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$4:Ljava/lang/Object;

    iput v8, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->label:I

    invoke-interface {v14, v0, v6}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_1a

    return-object v7

    :cond_19
    :goto_e
    iput-object v13, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    iput v10, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->label:I

    invoke-interface {v14, v13, v6}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_1a

    return-object v7

    :cond_1a
    :goto_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
