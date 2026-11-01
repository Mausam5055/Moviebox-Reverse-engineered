.class final Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->M0()V
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
    c = "com.transsnet.downloader.fragment.DownloadBottomAnalyzeFragment$initData$3$1"
    f = "DownloadBottomAnalyzeFragment.kt"
    l = {
        0xe2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lcom/transsion/moviedetailapi/bean/Subject;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            "Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 98

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v2

    iget v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->label:I

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    if-ne v3, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v3, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v3

    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    :cond_2
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    move-object v6, v5

    :goto_0
    if-nez v6, :cond_4

    move-object v6, v4

    :cond_4
    iput v1, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->label:I

    invoke-virtual {v3, v6, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->p(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_5

    return-object v2

    :cond_5
    :goto_1
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_6

    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "downloadAna"

    const-string v8, "single\uff0c get download bean from database"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v2, v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->F0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto/16 :goto_c

    :cond_6
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    new-instance v3, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    move-object v7, v6

    goto :goto_3

    :cond_8
    :goto_2
    move-object v7, v4

    :goto_3
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    goto :goto_4

    :cond_9
    move-object v8, v6

    goto :goto_5

    :cond_a
    :goto_4
    move-object v8, v4

    :goto_5
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    move-object v9, v4

    goto :goto_6

    :cond_b
    move-object v9, v6

    :goto_6
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    goto :goto_7

    :cond_c
    move-object v10, v5

    :goto_7
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getTotalSize()Ljava/lang/Long;

    move-result-object v6

    move-object v11, v6

    goto :goto_8

    :cond_d
    move-object v11, v5

    :goto_8
    const v96, 0xffff

    const/16 v97, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

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

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const-wide/16 v54, 0x0

    const/16 v56, 0x0

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

    const/16 v94, -0x20

    const/16 v95, -0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v97}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->F0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getPostId()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_e
    move-object v3, v5

    :goto_9
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    :cond_f
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    :cond_10
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->w0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setGroupId(Ljava/lang/String;)V

    :cond_11
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    :cond_12
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_13

    sget-object v3, Lcom/transsion/baselib/db/download/DownloadBean;->Companion:Lcom/transsion/baselib/db/download/DownloadBean$a;

    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/transsion/baselib/db/download/DownloadBean$a;->c(Ljava/lang/Integer;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    :cond_13
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getUploadBy()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_14
    move-object v3, v5

    :goto_a
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    :cond_15
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    goto :goto_b

    :cond_16
    move-object v4, v3

    :cond_17
    :goto_b
    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    :cond_18
    :goto_c
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    iget-object v4, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    sget-object v6, Llg/a;->a:Llg/a$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "single\uff0c add download task\uff0c "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "downloadAna"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v3, v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->G0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->A0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->x0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->z0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v6, "toString(...)"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceAboutDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->A0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->x0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->z0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    move-result-object v5

    :cond_19
    move-object v12, v5

    move-object v6, v3

    invoke-static/range {v6 .. v13}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->s0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->v0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsnet/downloader/manager/g;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/transsnet/downloader/manager/g;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->B0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsnet/downloader/manager/StartDownloadHelper;

    move-result-object v3

    new-array v1, v1, [Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->f(Ljava/util/List;)V

    :cond_1a
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;

    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getLogViewConfig()Lhj/b;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;->$it:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subject_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
