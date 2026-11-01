.class final Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/search_pugc/bean/SecondTab;)V
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
    c = "com.transsion.search_pugc.fragment.result.SearchResultViewModel$requestUGCSearchResult$1"
    f = "SearchResultViewModel.kt"
    l = {
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isLoadMore:Z

.field final synthetic $keyword:Ljava/lang/String;

.field final synthetic $pageFrom:Ljava/lang/String;

.field final synthetic $secondTab:Lcom/transsion/search_pugc/bean/SecondTab;

.field final synthetic $tabId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/search_pugc/bean/SecondTab;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/search_pugc/bean/SecondTab;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->this$0:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    iput-object p2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$keyword:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$pageFrom:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$tabId:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$secondTab:Lcom/transsion/search_pugc/bean/SecondTab;

    iput-boolean p6, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$isLoadMore:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;

    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->this$0:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$keyword:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$pageFrom:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$tabId:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$secondTab:Lcom/transsion/search_pugc/bean/SecondTab;

    iget-boolean v6, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$isLoadMore:Z

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;-><init>(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/search_pugc/bean/SecondTab;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->label:I

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->Z$0:Z

    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->this$0:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    iget-object v3, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$keyword:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$pageFrom:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$tabId:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$secondTab:Lcom/transsion/search_pugc/bean/SecondTab;

    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->d(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;)I

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "page"

    invoke-virtual {p1, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const/16 v7, 0x14

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "perPage"

    invoke-virtual {p1, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v7, "keyword"

    invoke-virtual {p1, v7, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pageFrom"

    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "tabId"

    invoke-virtual {p1, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "ugcVideoId"

    invoke-virtual {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    if-eqz v6, :cond_6

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "tagType"

    invoke-virtual {v6}, Lcom/transsion/search_pugc/bean/SecondTab;->getTagType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "tagValue"

    invoke-virtual {v6}, Lcom/transsion/search_pugc/bean/SecondTab;->getTagValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "secondTab"

    invoke-virtual {p1, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_6
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "toString(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v4, "application/json"

    invoke-virtual {v3, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->this$0:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    iget-boolean v3, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$isLoadMore:Z

    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->e(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;)Lfr/a;

    move-result-object v4

    sget-object v5, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v5}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->L$0:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->Z$0:Z

    iput v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->label:I

    invoke-interface {v4, v5, p1, p0}, Lfr/a;->b(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move v1, v3

    :goto_2
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->k()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->l()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_3
    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->d(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;)I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {v2, v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->f(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;I)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    iget-boolean v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->$isLoadMore:Z

    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;->this$0:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->k()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->l()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUGCSearchResult error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultViewModel"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
