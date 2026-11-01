.class final Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/MovieViewModel;->k(IILjava/lang/String;Ljava/util/Map;Z)V
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
    c = "com.transsion.home.viewmodel.MovieViewModel$getMovieList$2"
    f = "MovieViewModel.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $channelId:Ljava/lang/String;

.field final synthetic $isRefresh:Z

.field final synthetic $jsonObject:Lcom/google/gson/JsonObject;

.field final synthetic $selectItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/MovieViewModel;


# direct methods
.method constructor <init>(Lcom/google/gson/JsonObject;Lcom/transsion/home/viewmodel/MovieViewModel;ZLjava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lcom/transsion/home/viewmodel/MovieViewModel;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$jsonObject:Lcom/google/gson/JsonObject;

    iput-object p2, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->this$0:Lcom/transsion/home/viewmodel/MovieViewModel;

    iput-boolean p3, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$isRefresh:Z

    iput-object p4, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$channelId:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$selectItems:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$jsonObject:Lcom/google/gson/JsonObject;

    iget-object v2, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->this$0:Lcom/transsion/home/viewmodel/MovieViewModel;

    iget-boolean v3, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$isRefresh:Z

    iget-object v4, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$channelId:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$selectItems:Ljava/util/Map;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;-><init>(Lcom/google/gson/JsonObject;Lcom/transsion/home/viewmodel/MovieViewModel;ZLjava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->Z$0:Z

    iget-object v1, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v3, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/home/viewmodel/MovieViewModel;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lbh/b;->a:Lbh/b$a;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$jsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "toString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v4, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->this$0:Lcom/transsion/home/viewmodel/MovieViewModel;

    iget-boolean v1, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$isRefresh:Z

    iget-object v3, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$channelId:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$selectItems:Ljava/util/Map;

    invoke-static {v4}, Lcom/transsion/home/viewmodel/MovieViewModel;->f(Lcom/transsion/home/viewmodel/MovieViewModel;)Lol/c;

    move-result-object v6

    sget-object v7, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v7}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v7

    iput-object v4, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->L$2:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->Z$0:Z

    iput v2, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->label:I

    invoke-interface {v6, v7, p1, p0}, Lol/c;->a(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move v0, v1

    move-object v1, v5

    :goto_0
    check-cast p1, Lcom/transsion/home/bean/RefreshBaseDto;

    invoke-virtual {p1, v0}, Lcom/transsion/home/bean/RefreshBaseDto;->setRefresh(Z)V

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/MovieBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/home/bean/MovieBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/MovieItem;

    invoke-virtual {v0, v3}, Lcom/transsion/home/bean/MovieItem;->setChannelId(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/MovieItem;->setSelectItems(Ljava/util/Map;)V

    :cond_3
    invoke-virtual {v4}, Lcom/transsion/home/viewmodel/MovieViewModel;->m()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->this$0:Lcom/transsion/home/viewmodel/MovieViewModel;

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/MovieViewModel;->m()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v7, Lcom/transsion/home/bean/RefreshBaseDto;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_4

    move-object v3, v2

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    move-object v5, v2

    goto :goto_3

    :cond_5
    move-object v5, p1

    :goto_3
    iget-boolean v6, p0, Lcom/transsion/home/viewmodel/MovieViewModel$getMovieList$2;->$isRefresh:Z

    const-string p1, "-1"

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, v3

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/home/bean/RefreshBaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
