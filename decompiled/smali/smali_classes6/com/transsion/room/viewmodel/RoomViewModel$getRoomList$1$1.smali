.class final Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.room.viewmodel.RoomViewModel$getRoomList$1$1"
    f = "RoomViewModel.kt"
    l = {
        0x105,
        0x107,
        0x109
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $address:Landroid/location/Address;

.field final synthetic $cid:I

.field final synthetic $lat:Ljava/lang/Double;

.field final synthetic $lon:Ljava/lang/Double;

.field final synthetic $page:Ljava/lang/String;

.field final synthetic $perPage:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/room/viewmodel/RoomViewModel;


# direct methods
.method constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Landroid/location/Address;Ljava/lang/String;IILcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Landroid/location/Address;",
            "Ljava/lang/String;",
            "II",
            "Lcom/transsion/room/viewmodel/RoomViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lon:Ljava/lang/Double;

    iput-object p2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lat:Ljava/lang/Double;

    iput-object p3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$address:Landroid/location/Address;

    iput-object p4, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$page:Ljava/lang/String;

    iput p5, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$perPage:I

    iput p6, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$cid:I

    iput-object p7, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v9, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;

    iget-object v1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lon:Ljava/lang/Double;

    iget-object v2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lat:Ljava/lang/Double;

    iget-object v3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$address:Landroid/location/Address;

    iget-object v4, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$page:Ljava/lang/String;

    iget v5, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$perPage:I

    iget v6, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$cid:I

    iget-object v7, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    move-object v0, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;-><init>(Ljava/lang/Double;Ljava/lang/Double;Landroid/location/Address;Ljava/lang/String;IILcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v9, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->L$0:Ljava/lang/Object;

    return-object v9
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->label:I

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

    goto/16 :goto_6

    :cond_2
    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto/16 :goto_5

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/c;

    iget-object v7, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lon:Ljava/lang/Double;

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lat:Ljava/lang/Double;

    if-eqz v7, :cond_7

    new-instance v7, Lcom/transsion/room/api/bean/RoomGeo;

    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lon:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$lat:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$address:Landroid/location/Address;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    goto :goto_1

    :cond_4
    move-object v13, v6

    :goto_1
    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$address:Landroid/location/Address;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    goto :goto_2

    :cond_5
    move-object v14, v6

    :goto_2
    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$address:Landroid/location/Address;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    goto :goto_3

    :cond_6
    move-object v15, v6

    :goto_3
    const/16 v18, 0x60

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v19}, Lcom/transsion/room/api/bean/RoomGeo;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v25, v7

    goto :goto_4

    :cond_7
    move-object/from16 v25, v6

    :goto_4
    sget-object v7, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    new-instance v8, Lcom/transsion/room/api/bean/RoomRequestEntity;

    iget-object v9, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$page:Ljava/lang/String;

    iget v10, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$perPage:I

    iget v11, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->$cid:I

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v27, 0x20

    const/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v22, v10

    invoke-direct/range {v20 .. v28}, Lcom/transsion/room/api/bean/RoomRequestEntity;-><init>(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v8}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "toJson(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v10, "application/json"

    invoke-virtual {v9, v10}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v7

    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    invoke-static {v8}, Lcom/transsion/room/viewmodel/RoomViewModel;->o(Lcom/transsion/room/viewmodel/RoomViewModel;)Leq/a;

    move-result-object v8

    sget-object v9, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v9}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v9

    iput-object v2, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->label:I

    invoke-interface {v8, v9, v7, v0}, Leq/a;->l(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8

    return-object v1

    :cond_8
    :goto_5
    check-cast v5, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    iput-object v6, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->label:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    :cond_9
    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    iput-object v6, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1$1;->label:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    :cond_a
    :goto_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
