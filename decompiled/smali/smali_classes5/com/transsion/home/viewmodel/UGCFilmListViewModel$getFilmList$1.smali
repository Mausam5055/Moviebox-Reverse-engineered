.class final Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->i(I)V
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
    c = "com.transsion.home.viewmodel.UGCFilmListViewModel$getFilmList$1"
    f = "UGCFilmListViewModel.kt"
    l = {
        0x7f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $currentPage:I

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/viewmodel/UGCFilmListViewModel;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    iput p2, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->$currentPage:I

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

    new-instance p1, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    iget v1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->$currentPage:I

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;-><init>(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const-string v0, ", msg="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Lcom/transsion/home/bean/FilmListRequest;

    iget-object v2, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    invoke-static {v2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->c(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->$currentPage:I

    const/16 v6, 0x14

    invoke-direct {p1, v2, v5, v6}, Lcom/transsion/home/bean/FilmListRequest;-><init>(Ljava/lang/String;II)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Llg/a;->a:Llg/a$a;

    const-string v6, "FilmListViewModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFilmList: request params="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    invoke-static {v2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->f(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Lol/b;

    move-result-object v5

    sget-object v2, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v2}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/home/bean/FilmListRequest;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/transsion/home/bean/FilmListRequest;->getPage()I

    move-result v8

    invoke-virtual {p1}, Lcom/transsion/home/bean/FilmListRequest;->getPerPage()I

    move-result v9

    iput v3, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->label:I

    move-object v10, p0

    invoke-interface/range {v5 .. v10}, Lol/b;->b(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v6, "FilmListViewModel"

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFilmList: response code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/FilmListResponse;

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/home/bean/FilmListResponse;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v4

    :goto_1
    invoke-static {v0, v1}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->h(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;Lcom/transsion/moviedetailapi/bean/Pager;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/home/bean/FilmListResponse;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_5
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/transsion/home/bean/UgcGenreTopRespGenreItem;

    invoke-virtual {v5}, Lcom/transsion/home/bean/UgcGenreTopRespGenreItem;->getUgcContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_7
    move-object v6, v4

    :goto_3
    const-string v7, "UGC_VIDEO"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v6, "FilmListViewModel"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v5, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    invoke-static {v5}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_4

    :cond_9
    move-object v5, v4

    :goto_4
    iget-object v7, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    invoke-static {v7}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_a
    move-object v7, v4

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFilmList success, size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hasMore="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", nextPage="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    invoke-virtual {v2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->k()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/transsion/home/bean/FilmListResponse;->getDesc()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_b
    move-object p1, v4

    :goto_6
    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    invoke-static {v1}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->d(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Z

    move-result v1

    if-nez v1, :cond_e

    iget v1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->$currentPage:I

    if-ne v1, v3, :cond_e

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_8

    :cond_c
    const-string v6, "FilmListViewModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilmList: emit title desc=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for first load"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    invoke-static {p1, v3}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->g(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;Z)V

    goto :goto_8

    :cond_d
    iget-object v2, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    invoke-virtual {v2}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->k()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    const-string v6, "FilmListViewModel"

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFilmList failed: code="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    invoke-static/range {v5 .. v10}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilmList exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FilmListViewModel"

    invoke-virtual {v0, v1, p1, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilmListViewModel;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->k()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_e
    :goto_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
