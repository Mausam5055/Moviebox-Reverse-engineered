.class final Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/publish/api/bean/LocationPlaceBean;",
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
    c = "com.transsion.publish.viewmodel.LocationPlaceViewModel$getLocationPlaceList$1$1"
    f = "LocationPlaceViewModel.kt"
    l = {
        0x32,
        0x34,
        0x3e
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $lat:Ljava/lang/Double;

.field final synthetic $lon:Ljava/lang/Double;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    iput-object p2, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lat:Ljava/lang/Double;

    iput-object p3, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lon:Ljava/lang/Double;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;

    iget-object v1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    iget-object v2, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lat:Ljava/lang/Double;

    iget-object v3, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lon:Ljava/lang/Double;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;-><init>(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v2, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/c;

    iget-object v6, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    invoke-static {v6}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->g(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)Llp/a;

    move-result-object v6

    sget-object v7, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v7}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lat:Ljava/lang/Double;

    iget-object v9, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lon:Ljava/lang/Double;

    iput-object v2, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->label:I

    invoke-interface {v6, v7, v8, v9, v0}, Llp/a;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast v5, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_5

    iput-object v7, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->label:I

    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_5
    iget-object v4, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lat:Ljava/lang/Double;

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lon:Ljava/lang/Double;

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/publish/api/bean/LocationPlaceBean;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/publish/api/bean/LocationPlaceBean;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    check-cast v4, Ljava/lang/Iterable;

    iget-object v6, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lat:Ljava/lang/Double;

    iget-object v8, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->$lon:Ljava/lang/Double;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/room/api/bean/LocationPlace;

    invoke-virtual {v9}, Lcom/transsion/room/api/bean/LocationPlace;->getLat()Ljava/lang/Double;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Lcom/transsion/room/api/bean/LocationPlace;->getLon()Ljava/lang/Double;

    move-result-object v10

    if-eqz v10, :cond_6

    sget-object v11, Lak/s;->a:Lak/s;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v9}, Lcom/transsion/room/api/bean/LocationPlace;->getLat()Ljava/lang/Double;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-virtual {v9}, Lcom/transsion/room/api/bean/LocationPlace;->getLon()Ljava/lang/Double;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-virtual/range {v11 .. v19}, Lak/s;->a(DDDD)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/transsion/room/api/bean/LocationPlace;->setDistance(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    iput-object v7, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$1;->label:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
