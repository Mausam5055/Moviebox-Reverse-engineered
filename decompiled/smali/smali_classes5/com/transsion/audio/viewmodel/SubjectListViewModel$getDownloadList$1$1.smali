.class final Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsnet/downloader/bean/DownloadListBean;",
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
    c = "com.transsion.audio.viewmodel.SubjectListViewModel$getDownloadList$1$1"
    f = "SubjectListViewModel.kt"
    l = {
        0x23,
        0x2d,
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $endPosition:I

.field final synthetic $loadMore:Z

.field final synthetic $nextPage:Ljava/lang/String;

.field final synthetic $pagerMode:I

.field final synthetic $perPage:I

.field final synthetic $startPosition:I

.field final synthetic $subjectId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/audio/viewmodel/SubjectListViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/audio/viewmodel/SubjectListViewModel;Ljava/lang/String;Ljava/lang/String;IIIIZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audio/viewmodel/SubjectListViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->this$0:Lcom/transsion/audio/viewmodel/SubjectListViewModel;

    iput-object p2, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$subjectId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$nextPage:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$perPage:I

    iput p5, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$startPosition:I

    iput p6, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$endPosition:I

    iput p7, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$pagerMode:I

    iput-boolean p8, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$loadMore:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v10, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;

    iget-object v1, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->this$0:Lcom/transsion/audio/viewmodel/SubjectListViewModel;

    iget-object v2, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$subjectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$nextPage:Ljava/lang/String;

    iget v4, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$perPage:I

    iget v5, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$startPosition:I

    iget v6, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$endPosition:I

    iget v7, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$pagerMode:I

    iget-boolean v8, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$loadMore:Z

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;-><init>(Lcom/transsion/audio/viewmodel/SubjectListViewModel;Ljava/lang/String;Ljava/lang/String;IIIIZLkotlin/coroutines/Continuation;)V

    iput-object p1, v10, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    return-object v10
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v15, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v14

    iget v0, v15, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->label:I

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v12, :cond_1

    if-ne v0, v13, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v3, v15

    goto/16 :goto_2

    :cond_2
    iget-object v0, v15, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v1, v14

    move-object/from16 v0, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v15, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lkotlinx/coroutines/flow/c;

    iget-object v0, v15, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->this$0:Lcom/transsion/audio/viewmodel/SubjectListViewModel;

    invoke-static {v0}, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->d(Lcom/transsion/audio/viewmodel/SubjectListViewModel;)Lqy/a;

    move-result-object v0

    sget-object v2, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v2}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v15, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$subjectId:Ljava/lang/String;

    iget-object v4, v15, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$nextPage:Ljava/lang/String;

    iget v5, v15, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$perPage:I

    iget v6, v15, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$startPosition:I

    iget v7, v15, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$endPosition:I

    iget v8, v15, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$pagerMode:I

    iput-object v11, v15, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    iput v1, v15, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->label:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xf10

    const/16 v20, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v9

    move-object v9, v10

    move/from16 v10, v16

    move-object/from16 v16, v11

    move/from16 v11, v17

    move/from16 v12, v18

    move-object/from16 v13, p0

    move-object/from16 v21, v14

    move/from16 v14, v19

    move-object/from16 v15, v20

    invoke-static/range {v0 .. v15}, Lqy/a$a;->c(Lqy/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/Integer;IIILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    return-object v1

    :cond_4
    move-object/from16 v2, v16

    :goto_1
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    move-object/from16 v3, p0

    iput-object v4, v3, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v3, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->label:I

    invoke-interface {v2, v4, v3}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_5
    move-object/from16 v3, p0

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsnet/downloader/bean/DownloadListBean;

    if-eqz v5, :cond_6

    iget-boolean v6, v3, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->$loadMore:Z

    invoke-virtual {v5, v6}, Lcom/transsnet/downloader/bean/DownloadListBean;->setLoadMore(Z)V

    :cond_6
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v4, v3, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v3, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1$1;->label:I

    invoke-interface {v2, v0, v3}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
