.class final Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->J()V
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
    c = "com.transsion.home.viewmodel.TrendingUGCViewModel$requestFeedsList$1"
    f = "TrendingUGCViewModel.kt"
    l = {
        0x112
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/bean/TrendingRequestEntity;",
            "Lcom/transsion/home/viewmodel/TrendingUGCViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    iput-object p2, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

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

    new-instance v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    iget-object v2, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;-><init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/n0;

    :try_start_1
    sget-object p1, Lbh/b;->a:Lbh/b$a;

    iget-object v5, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    invoke-static {v5}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toJson(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object v5, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    invoke-static {v5}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->l(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)Lol/e;

    move-result-object v6

    sget-object v7, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v7}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v7

    iput-object v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->label:I

    invoke-interface {v6, v7, p1, p0}, Lol/e;->i(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v5

    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/home/bean/TrendingRespData;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v6, Llg/a;->a:Llg/a$a;

    const-string v7, "TrendingUGCFragment"

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespData;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v4

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "success "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "@PostListViewModel"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v4

    :goto_2
    if-eqz p1, :cond_9

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    :cond_5
    const-string p1, "1"

    :cond_6
    invoke-static {v0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->r(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getPerPage()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_7
    const/16 p1, 0xe

    :goto_3
    invoke-static {v0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->q(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;I)V

    goto :goto_4

    :cond_8
    sget-object v5, Llg/a;->a:Llg/a$a;

    const-string v6, "TrendingUGCFragment"

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " message "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_9
    :goto_4
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespData;->getItems()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    :cond_a
    invoke-static {v0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->j(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/transsion/home/bean/TrendingRespData;->setTransferData(Ljava/util/List;)V

    :cond_b
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->E()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    invoke-static {p1, v3}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->p(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Z)V

    goto :goto_7

    :goto_6
    :try_start_2
    sget-object v5, Llg/a;->a:Llg/a$a;

    const-string v6, "TrendingUGCFragment"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->E()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :goto_8
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    invoke-static {v0, v3}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->p(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Z)V

    throw p1
.end method
