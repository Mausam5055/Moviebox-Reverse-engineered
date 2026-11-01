.class final Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/moviedetailapi/bean/RoomBean;",
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
    c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$getRecommendRooms$1$1"
    f = "RoomPostViewModel.kt"
    l = {
        0x26a,
        0x26c,
        0x26e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $address:Landroid/location/Address;

.field final synthetic $lat:D

.field final synthetic $lon:D

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;DDLandroid/location/Address;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;",
            "DD",
            "Landroid/location/Address;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    iput-wide p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$lat:D

    iput-wide p4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$lon:D

    iput-object p6, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$address:Landroid/location/Address;

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

    new-instance v8, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;

    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    iget-wide v2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$lat:D

    iget-wide v4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$lon:D

    iget-object v6, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$address:Landroid/location/Address;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;DDLandroid/location/Address;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

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

    goto/16 :goto_5

    :cond_2
    iget-object v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_4

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/c;

    sget-object v7, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    new-instance v15, Lcom/transsion/room/api/bean/RoomRequestEntity;

    const/16 v16, 0x38

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v15

    move-object v3, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v8 .. v16}, Lcom/transsion/room/api/bean/RoomRequestEntity;-><init>(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-wide v8, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$lat:D

    iget-wide v10, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$lon:D

    iget-object v12, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->$address:Landroid/location/Address;

    new-instance v13, Lcom/transsion/room/api/bean/RoomGeo;

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v23, v14

    goto :goto_1

    :cond_4
    move-object/from16 v23, v6

    :goto_1
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v24, v14

    goto :goto_2

    :cond_5
    move-object/from16 v24, v6

    :goto_2
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v25, v12

    goto :goto_3

    :cond_6
    move-object/from16 v25, v6

    :goto_3
    const/16 v28, 0x60

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, v13

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-direct/range {v18 .. v29}, Lcom/transsion/room/api/bean/RoomGeo;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v13}, Lcom/transsion/room/api/bean/RoomRequestEntity;->setGeo(Lcom/transsion/room/api/bean/RoomGeo;)V

    invoke-static {v3}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "toJson(...)"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v9, "application/json"

    invoke-virtual {v8, v9}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v3

    iget-object v7, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-static {v7}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->p(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Lxo/c;

    move-result-object v7

    sget-object v8, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v8}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->label:I

    invoke-interface {v7, v8, v3, v0}, Lxo/c;->b(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_7

    return-object v1

    :cond_7
    :goto_4
    check-cast v3, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v7, "0"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iput-object v6, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->label:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    return-object v1

    :cond_8
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v3

    iput-object v6, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;->label:I

    invoke-interface {v2, v3, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
