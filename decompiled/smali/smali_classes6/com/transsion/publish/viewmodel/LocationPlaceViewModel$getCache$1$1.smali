.class final Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/c;",
        "",
        "Lcom/transsion/room/api/bean/LocationPlace;",
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
    c = "com.transsion.publish.viewmodel.LocationPlaceViewModel$getCache$1$1"
    f = "LocationPlaceViewModel.kt"
    l = {
        0x52,
        0x54,
        0x63
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;

    iget-object v1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    invoke-direct {v0, v1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;-><init>(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/c;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/c;

    iget-object p1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    invoke-static {p1}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->f(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)Lcom/transsion/baselib/db/place/PlaceDao;

    move-result-object p1

    iput-object v1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->label:I

    invoke-interface {p1, p0}, Lcom/transsion/baselib/db/place/PlaceDao;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/baselib/db/place/PlaceDBBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v4}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getAddress()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/transsion/room/api/bean/LocationPlace;

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->b(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->b(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v12, v10, v11, v6, v7}, Lcom/transsion/room/api/bean/LocationPlace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {v4}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getDistance()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/transsion/room/api/bean/LocationPlace;->setDistance(Ljava/lang/String;)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iput-object v5, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->label:I

    invoke-interface {v1, v3, p0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_7
    :goto_2
    iput-object v5, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1$1;->label:I

    invoke-interface {v1, v5, p0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
