.class final Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->S0(Lcom/transsnet/downloader/bean/DownloadUrlBean;)V
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
    c = "com.transsnet.downloader.fragment.DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2"
    f = "DownloadBottomAnalyzeFragment.kt"
    l = {
        0x17f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $item:Lcom/transsion/moviedetailapi/DownloadItem;

.field final synthetic $totalEpisode:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $urlBean:Lcom/transsnet/downloader/bean/DownloadUrlBean;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsnet/downloader/bean/DownloadUrlBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            "Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/transsnet/downloader/bean/DownloadUrlBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    iput-object p3, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$totalEpisode:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$urlBean:Lcom/transsnet/downloader/bean/DownloadUrlBean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->d()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method private static final d()Lkotlin/Unit;
    .locals 2

    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/transsnet/downloader/R$string;->already_in_downloads:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    iget-object v3, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$totalEpisode:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$urlBean:Lcom/transsnet/downloader/bean/DownloadUrlBean;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;-><init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsnet/downloader/bean/DownloadUrlBean;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 99

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->label:I

    const-string v5, ""

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    if-ne v4, v2, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v4, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v4

    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_2
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    move-object v7, v6

    :goto_0
    if-nez v7, :cond_4

    move-object v7, v5

    :cond_4
    iput v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->label:I

    invoke-virtual {v4, v7, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->p(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    return-object v3

    :cond_5
    :goto_1
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_6

    sget-object v7, Llg/a;->a:Llg/a$a;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "downloadAna"

    const-string v9, "url start download, is downloading"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    new-instance v2, Lcom/transsnet/downloader/fragment/w;

    invoke-direct {v2}, Lcom/transsnet/downloader/fragment/w;-><init>()V

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->Q0(Lkotlin/jvm/functions/Function0;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_1a

    :cond_6
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    new-instance v4, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    move-object v8, v7

    goto :goto_3

    :cond_8
    :goto_2
    move-object v8, v5

    :goto_3
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    move-object v9, v7

    goto :goto_5

    :cond_a
    :goto_4
    move-object v9, v5

    :goto_5
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    goto :goto_6

    :cond_b
    move-object v10, v7

    goto :goto_7

    :cond_c
    :goto_6
    move-object v10, v5

    :goto_7
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v7}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    goto :goto_8

    :cond_d
    move-object v11, v6

    :goto_8
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getSize()Ljava/lang/Long;

    move-result-object v7

    move-object v12, v7

    goto :goto_9

    :cond_e
    move-object v12, v6

    :goto_9
    const v97, 0xffff

    const/16 v98, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, -0x20

    const/16 v96, -0x1

    move-object v7, v4

    invoke-direct/range {v7 .. v98}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3, v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->F0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getUploadBy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    :cond_f
    move-object v4, v5

    :cond_10
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_11
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getSourceUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    :cond_12
    move-object v4, v5

    :cond_13
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_14
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_15
    move-object v4, v6

    :goto_a
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_16
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getEpse()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_b

    :cond_17
    move v4, v1

    :goto_b
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setEpse(I)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_18
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getEp()I

    move-result v4

    goto :goto_c

    :cond_19
    move v4, v1

    :goto_c
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setEp(I)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1a
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_1c

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getSe()I

    move-result v4

    goto :goto_d

    :cond_1b
    move v4, v1

    :goto_d
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setSe(I)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1c
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getResolution()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_e

    :cond_1d
    move v4, v1

    :goto_e
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1e
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_20

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_1f
    move-object v4, v6

    :goto_f
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_20
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_22

    sget-object v4, Lcom/transsion/baselib/db/download/DownloadBean;->Companion:Lcom/transsion/baselib/db/download/DownloadBean$a;

    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v7}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v7

    if-eqz v7, :cond_21

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_10

    :cond_21
    move-object v7, v6

    :goto_10
    invoke-virtual {v4, v7}, Lcom/transsion/baselib/db/download/DownloadBean$a;->c(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_22
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$totalEpisode:Lkotlin/jvm/internal/Ref$IntRef;

    iget v4, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setTotalEpisode(I)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_23
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_24
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_25
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    :cond_26
    move-object v4, v6

    :goto_11
    if-eqz v4, :cond_29

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_27

    goto :goto_12

    :cond_27
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_28
    move-object v4, v6

    goto :goto_13

    :cond_29
    :goto_12
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$urlBean:Lcom/transsnet/downloader/bean/DownloadUrlBean;

    invoke-virtual {v4}, Lcom/transsnet/downloader/bean/DownloadUrlBean;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_13
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_2a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/DownloadItem;->getExtSubtitle()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2d

    check-cast v4, Ljava/lang/Iterable;

    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/transsion/moviedetailapi/bean/SubtitleItem;

    sget-object v9, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->Companion:Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2b

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2b

    move-object v11, v5

    goto :goto_15

    :cond_2b
    move-object v11, v8

    :goto_15
    const/16 v15, 0x1c

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;->b(Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;Lcom/transsion/moviedetailapi/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/transsion/baselib/db/download/SubtitleBean;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2c
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_2d
    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_2e
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->A0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_2f
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_30

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->x0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_30
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_31

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v4, v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->G0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_31
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_32

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->z0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_32
    sget-object v7, Llg/a;->a:Llg/a$a;

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/DownloadItem;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    :cond_33
    move-object v3, v6

    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url start download, name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "downloadAna"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v3, "toString(...)"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v3, v14}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_34
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_36

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_35

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceAboutDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_17

    :cond_35
    move-object v4, v6

    :goto_17
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_36
    iget-object v7, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v7}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->A0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->x0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_18

    :cond_37
    move-object v10, v6

    :goto_18
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v3, :cond_38

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_19

    :cond_38
    move-object v11, v6

    :goto_19
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->z0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v12

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->$item:Lcom/transsion/moviedetailapi/DownloadItem;

    if-eqz v3, :cond_39

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v6

    :cond_39
    move-object v13, v6

    invoke-static/range {v7 .. v14}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->s0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->v0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsnet/downloader/manager/g;

    move-result-object v3

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lcom/transsnet/downloader/manager/g;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    if-eqz v3, :cond_3a

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v4}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->B0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsnet/downloader/manager/StartDownloadHelper;

    move-result-object v4

    new-array v2, v2, [Lcom/transsion/baselib/db/download/DownloadBean;

    aput-object v3, v2, v1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->f(Ljava/util/List;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_3a
    :goto_1a
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
