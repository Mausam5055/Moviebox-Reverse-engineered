.class final Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/UGCRankingViewModel;->p(Z)V
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
    c = "com.transsion.home.viewmodel.UGCRankingViewModel$startRequest$1"
    f = "UGCRankingViewModel.kt"
    l = {
        0x34
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isLoadMore:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/home/viewmodel/UGCRankingViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsion/home/viewmodel/UGCRankingViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->$isLoadMore:Z

    iput-object p2, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

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

    new-instance p1, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;

    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->$isLoadMore:Z

    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;-><init>(ZLcom/transsion/home/viewmodel/UGCRankingViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v4, Llg/a;->a:Llg/a$a;

    const-string v5, "UGCRankingViewModel"

    iget-boolean p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->$isLoadMore:Z

    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-static {v1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->d(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-static {v6}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->c(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-static {v7}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->f(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startRequest: isLoadMore="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", page="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", category="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", tabId="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->e(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Lol/d;

    move-result-object v4

    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->c(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->f(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->d(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Ljava/lang/String;

    move-result-object v8

    iput v2, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->label:I

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x11

    const/4 v12, 0x0

    move-object v10, p0

    invoke-static/range {v4 .. v12}, Lol/d$a;->b(Lol/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v5, "UGCRankingViewModel"

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/UGCRankAllData;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/home/bean/UGCRankAllData;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/home/bean/UGCRankAllData;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/transsion/home/bean/UGCRankAllData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startRequest: received data, items size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasMore="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/home/bean/UGCRankAllData;

    invoke-static {v1, v4}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->g(Lcom/transsion/home/viewmodel/UGCRankingViewModel;Lcom/transsion/home/bean/UGCRankAllData;)V

    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/home/bean/UGCRankAllData;

    invoke-static {v1, v4}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->b(Lcom/transsion/home/viewmodel/UGCRankingViewModel;Lcom/transsion/home/bean/UGCRankAllData;)V

    iget-boolean v1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->$isLoadMore:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/home/bean/UGCRankAllData;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/home/bean/UGCRankAllData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_5
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/UGCRankAllData;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/home/bean/UGCRankAllData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getPage()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_3

    :cond_6
    move-object v4, v3

    :goto_3
    if-nez v4, :cond_7

    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->d(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-static {v1, v4}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->h(Lcom/transsion/home/viewmodel/UGCRankingViewModel;Ljava/lang/String;)V

    const-string v5, "UGCRankingViewModel"

    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->d(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRequest: loadMore completed, nextPage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_5

    :cond_8
    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->k()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/UGCRankAllData;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/home/bean/UGCRankAllData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    :cond_9
    const-string p1, "1"

    :cond_a
    invoke-static {v1, p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->h(Lcom/transsion/home/viewmodel/UGCRankingViewModel;Ljava/lang/String;)V

    const-string v5, "UGCRankingViewModel"

    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->d(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRequest: initial load completed, nextPage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRequest: exception "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UGCRankingViewModel"

    invoke-virtual {v0, v1, p1, v2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->$isLoadMore:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/UGCRankingViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->k()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
