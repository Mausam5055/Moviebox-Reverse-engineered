.class final Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->Y()V
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
    c = "com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel$loadVideoCover$1"
    f = "HistoricalPlayRecordViewModel.kt"
    l = {
        0x109,
        0x10d,
        0x114
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v7, p0

    const/4 v0, 0x1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v8

    iget v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->label:I

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    if-eq v1, v11, :cond_1

    if-ne v1, v10, :cond_0

    iget v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->I$0:I

    iget-object v2, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v4, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v2, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_2
    iget-object v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v1

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->this$0:Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    :try_start_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/a;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v12, v1

    move-object v13, v2

    :cond_4
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsnet/downloader/viewmodel/j0;

    sget-object v2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/transsnet/downloader/viewmodel/a0;->m(Lcom/transsnet/downloader/viewmodel/j0;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v5, ""

    if-nez v4, :cond_5

    move-object v4, v5

    :cond_5
    :try_start_4
    invoke-virtual {v2, v4}, Lcom/transsnet/downloader/viewmodel/a0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/transsnet/downloader/viewmodel/a0;->w(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v14

    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move-object v5, v1

    :goto_1
    iput-object v12, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$0:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$1:Ljava/lang/Object;

    iput-object v14, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$2:Ljava/lang/Object;

    iput-object v9, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$3:Ljava/lang/Object;

    iput v0, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->label:I

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v15, 0x0

    move-object v1, v2

    move-object v2, v5

    move-object/from16 v4, p0

    move v5, v6

    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->F(Lcom/transsnet/downloader/manager/DownloadEsHelper;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_7

    return-object v8

    :cond_7
    move-object v3, v12

    move-object v2, v13

    :goto_2
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v14}, Lcom/transsion/baselib/db/download/DownloadBean;->setCover(Ljava/lang/String;)V

    sget-object v4, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v4

    iput-object v3, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$0:Ljava/lang/Object;

    iput-object v2, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$1:Ljava/lang/Object;

    iput-object v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$2:Ljava/lang/Object;

    iput v11, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->label:I

    invoke-virtual {v4, v1, v7}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v8, :cond_8

    return-object v8

    :cond_8
    :goto_3
    invoke-virtual {v3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->J()Landroidx/lifecycle/b0;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_f

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v12, v5, 0x1

    if-gez v5, :cond_9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_9
    check-cast v6, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    invoke-virtual {v6}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_a
    move-object v13, v9

    :goto_5
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v6}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6, v3}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->setVideo(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_b
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->P()Lkotlinx/coroutines/flow/y0;

    move-result-object v6

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v1, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$0:Ljava/lang/Object;

    iput-object v4, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$1:Ljava/lang/Object;

    iput-object v3, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$2:Ljava/lang/Object;

    iput-object v2, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->L$3:Ljava/lang/Object;

    iput v12, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->I$0:I

    iput v10, v7, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;->label:I

    invoke-interface {v6, v5, v7}, Lkotlinx/coroutines/flow/x0;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v8, :cond_c

    return-object v8

    :cond_c
    move-object v5, v1

    move v1, v12

    :goto_6
    move-object/from16 v16, v5

    move v5, v1

    move-object/from16 v1, v16

    goto :goto_4

    :cond_d
    move v5, v12

    goto :goto_4

    :cond_e
    move-object v3, v1

    move-object v2, v4

    :cond_f
    move-object v13, v2

    move-object v12, v3

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :goto_7
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_9

    :cond_11
    sget-object v1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoCover --> it = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
