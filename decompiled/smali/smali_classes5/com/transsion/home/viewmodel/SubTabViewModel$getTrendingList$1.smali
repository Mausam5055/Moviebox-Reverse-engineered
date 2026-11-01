.class final Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/SubTabViewModel;->t(ILjava/lang/String;Z)V
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
    c = "com.transsion.home.viewmodel.SubTabViewModel$getTrendingList$1"
    f = "SubTabViewModel.kt"
    l = {
        0xd7,
        0xd9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

.field final synthetic $tabCode:Ljava/lang/String;

.field final synthetic $tabId:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/bean/TrendingRequestEntity;",
            "Lcom/transsion/home/viewmodel/SubTabViewModel;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    iput-object p2, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    iput-object p3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$tabCode:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$tabId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    iget-object v2, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    iget-object v3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$tabCode:Ljava/lang/String;

    iget v4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$tabId:I

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;-><init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/home/viewmodel/SubTabViewModel;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/home/viewmodel/SubTabViewModel;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/n0;

    :try_start_2
    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    invoke-static {v5}, Lcom/transsion/home/viewmodel/SubTabViewModel;->j(Lcom/transsion/home/viewmodel/SubTabViewModel;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$tabCode:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string v5, ""

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$tabId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-virtual {p1, v5}, Lcom/transsion/home/bean/TrendingRequestEntity;->setTabId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    const/4 v5, 0x0

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/transsion/home/bean/TrendingRequestEntity;->setDisablePlaylist(Ljava/lang/Boolean;)V

    sget-object p1, Lbh/b;->a:Lbh/b$a;

    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->$requestEntity:Lcom/transsion/home/bean/TrendingRequestEntity;

    invoke-static {v5}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toJson(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    invoke-static {v5}, Lcom/transsion/home/viewmodel/SubTabViewModel;->j(Lcom/transsion/home/viewmodel/SubTabViewModel;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5}, Lcom/transsion/home/viewmodel/SubTabViewModel;->g(Lcom/transsion/home/viewmodel/SubTabViewModel;)Lol/e;

    move-result-object v3

    sget-object v6, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v6}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->label:I

    invoke-interface {v3, v6, p1, p0}, Lol/e;->d(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, v5

    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    goto :goto_3

    :cond_6
    invoke-static {v5}, Lcom/transsion/home/viewmodel/SubTabViewModel;->g(Lcom/transsion/home/viewmodel/SubTabViewModel;)Lol/e;

    move-result-object v4

    sget-object v6, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v6}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->label:I

    invoke-interface {v4, v6, p1, p0}, Lol/e;->b(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, v5

    :goto_2
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    :goto_3
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v4, Llg/a;->a:Llg/a$a;

    const-string v5, "SubTabViewModel"

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/home/bean/TrendingRespData;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsion/home/bean/TrendingRespData;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_8
    move-object v3, v2

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "success "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "@PostListViewModel"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v0}, Lcom/transsion/home/viewmodel/SubTabViewModel;->j(Lcom/transsion/home/viewmodel/SubTabViewModel;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/TrendingRespData;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/home/bean/TrendingRespData;->getItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    :cond_a
    invoke-static {v0, v1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->e(Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/TrendingRespData;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/transsion/home/bean/TrendingRespData;->getItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d

    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    :cond_d
    invoke-static {v0, v1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->d(Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_5
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/home/bean/TrendingRespData;

    if-eqz v3, :cond_e

    invoke-virtual {v3, v1}, Lcom/transsion/home/bean/TrendingRespData;->setTransferData(Ljava/util/List;)V

    :cond_e
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/SubTabViewModel;->s()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    sget-object v3, Llg/a;->a:Llg/a$a;

    const-string v4, "SubTabViewModel"

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " message "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :goto_6
    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "SubTabViewModel"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;->this$0:Lcom/transsion/home/viewmodel/SubTabViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->s()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_10
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
