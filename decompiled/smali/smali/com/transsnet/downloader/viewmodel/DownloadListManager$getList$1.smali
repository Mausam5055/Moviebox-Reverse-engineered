.class final Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/DownloadListManager;->H(ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
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
    c = "com.transsnet.downloader.viewmodel.DownloadListManager$getList$1"
    f = "DownloadListManager.kt"
    l = {
        0x52,
        0x55,
        0x58,
        0x5b,
        0x5c,
        0x61,
        0x9b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $hide:Z

.field final synthetic $isCompletedRefresh:Z

.field final synthetic $wrapNativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;


# direct methods
.method constructor <init>(ZLcom/transsnet/downloader/viewmodel/DownloadListManager;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsnet/downloader/viewmodel/DownloadListManager;",
            "Z",
            "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$isCompletedRefresh:Z

    iput-object p2, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    iput-boolean p3, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$hide:Z

    iput-object p4, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$wrapNativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance p1, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;

    iget-boolean v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$isCompletedRefresh:Z

    iget-object v2, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    iget-boolean v3, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$hide:Z

    iget-object v4, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$wrapNativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;-><init>(ZLcom/transsnet/downloader/viewmodel/DownloadListManager;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 111

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_1
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v8, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    goto/16 :goto_5

    :pswitch_2
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v8, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    goto :goto_3

    :pswitch_4
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_1

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$isCompletedRefresh:Z

    if-eqz v2, :cond_0

    iput v7, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->label:I

    const-wide/16 v8, 0x320

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    return-object v1

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    iget-boolean v8, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$hide:Z

    invoke-virtual {v2, v8}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->a0(Z)V

    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    iput v3, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->label:I

    invoke-static {v2, v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->k(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    check-cast v2, Ljava/util/List;

    iget-object v8, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    invoke-virtual {v8}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->G()Landroidx/lifecycle/b0;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v8

    new-instance v9, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1$1;

    iget-object v10, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    invoke-direct {v9, v10, v2, v6}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->label:I

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_2

    return-object v1

    :cond_2
    :goto_2
    sget-object v8, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v8}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v8

    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$0:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->label:I

    invoke-static {v8, v4, v0, v7, v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->B(Lcom/transsnet/downloader/manager/DownloadEsHelper;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_3

    return-object v1

    :cond_3
    :goto_3
    check-cast v8, Ljava/util/List;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v9

    new-instance v10, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1$2;

    iget-object v11, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    invoke-direct {v10, v11, v8, v6}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1$2;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$1:Ljava/lang/Object;

    const/4 v11, 0x5

    iput v11, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->label:I

    invoke-static {v9, v10, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_4

    return-object v1

    :cond_4
    move-object/from16 v110, v8

    move-object v8, v2

    move-object/from16 v2, v110

    :goto_4
    iget-object v9, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    iput-object v8, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$1:Ljava/lang/Object;

    const/4 v10, 0x6

    iput v10, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->label:I

    invoke-static {v9, v2, v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->j(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_5

    return-object v1

    :cond_5
    :goto_5
    check-cast v9, Ljava/util/List;

    move-object v10, v8

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    iget-object v12, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$wrapNativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-static {v11, v8, v12}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->o(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    goto :goto_6

    :cond_6
    move-object v11, v9

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    iget-object v12, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$wrapNativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-static {v11, v9, v12}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->o(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    :cond_7
    :goto_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    const/16 v12, 0xb

    const-wide/16 v13, 0x0

    const-string v15, "getString(...)"

    if-nez v10, :cond_10

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v3, Lcom/transsnet/downloader/R$string;->str_downloading_title:I

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v16, v3

    invoke-static {v13, v14}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v21

    const v106, 0xffff

    const/16 v107, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const-wide/16 v61, 0x0

    const/16 v63, 0x0

    const-wide/16 v64, 0x0

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

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, -0x20

    const/16 v105, -0x1

    const-string v17, "title1"

    const-string v18, "titleRes1"

    const-string v20, ""

    invoke-direct/range {v16 .. v107}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v12}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    invoke-virtual {v3, v7}, Lcom/transsion/baselib/db/download/DownloadBean;->setMore(Z)V

    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->getAdProvide()Lcom/hisavana/common/interfacz/TAdListener;

    move-result-object v18

    if-eqz v18, :cond_8

    iput-boolean v7, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v18, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->getWrapNativeManager()Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object v17

    if-eqz v17, :cond_9

    iput-boolean v7, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v17, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_9
    iget-boolean v6, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v6, :cond_a

    goto :goto_8

    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    :cond_b
    :goto_8
    iget-boolean v6, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v6, :cond_c

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    goto :goto_9

    :cond_c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    :goto_9
    invoke-virtual {v3, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setCount(I)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_f

    iget-boolean v3, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$hide:Z

    if-eqz v3, :cond_d

    invoke-interface {v8, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    :cond_d
    check-cast v8, Ljava/util/Collection;

    invoke-interface {v11, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v5, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$hide:Z

    if-eqz v5, :cond_e

    sget v5, Lcom/tn/lib/widget/R$string;->player_more:I

    goto :goto_a

    :cond_e
    sget v5, Lcom/tn/lib/widget/R$string;->player_hide:I

    :goto_a
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v18, v3

    invoke-static {v13, v14}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v23

    const v108, 0xffff

    const/16 v109, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const-wide/16 v59, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const-wide/16 v63, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

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

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, -0x20

    const/16 v107, -0x1

    const-string v19, "title1"

    const-string v20, "titleRes3"

    const-string v22, ""

    invoke-direct/range {v18 .. v109}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    iget-boolean v5, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->$hide:Z

    invoke-virtual {v3, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setMore(Z)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    check-cast v8, Ljava/util/Collection;

    invoke-interface {v11, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_10
    :goto_b
    move-object v3, v9

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsnet/downloader/R$string;->str_downloaded_title:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v21, v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v18, v5

    invoke-static {v13, v14}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v23

    const v108, 0xffff

    const/16 v109, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const-wide/16 v59, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const-wide/16 v63, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

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

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, -0x20

    const/16 v107, -0x1

    const-string v19, "title2"

    const-string v20, "titleRes2"

    const-string v22, ""

    invoke-direct/range {v18 .. v109}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v12}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_c

    :cond_11
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    :goto_c
    invoke-virtual {v5, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setCount(I)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get getListByStatus success"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    invoke-static {v2, v11}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->i(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v2

    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1$5;

    iget-object v4, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    invoke-direct {v3, v4, v11, v6}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1$5;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object v11, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x7

    iput v4, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->label:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_13

    return-object v1

    :cond_13
    move-object v1, v11

    :goto_d
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    invoke-virtual {v2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->B()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
