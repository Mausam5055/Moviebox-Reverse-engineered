.class final Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.room.viewmodel.RoomViewModel$getCommunityRooms$1$4"
    f = "RoomViewModel.kt"
    l = {
        0xbf,
        0xc1,
        0xc3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $page:Ljava/lang/String;

.field final synthetic $perPage:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/room/viewmodel/RoomViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/transsion/room/viewmodel/RoomViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->$page:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->$perPage:I

    iput-object p3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

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

    new-instance v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;

    iget-object v1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->$page:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->$perPage:I

    iget-object v3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;-><init>(Ljava/lang/String;ILcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->label:I

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

    goto/16 :goto_2

    :cond_2
    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/c;

    sget-object v6, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    new-instance v16, Lcom/transsion/room/api/bean/RoomRequestEntity;

    iget-object v8, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->$page:Ljava/lang/String;

    iget v9, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->$perPage:I

    const/16 v14, 0x38

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, v16

    invoke-direct/range {v7 .. v15}, Lcom/transsion/room/api/bean/RoomRequestEntity;-><init>(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {v16 .. v16}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "toJson(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v9, "application/json"

    invoke-virtual {v8, v9}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v6

    iget-object v7, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    invoke-static {v7}, Lcom/transsion/room/viewmodel/RoomViewModel;->o(Lcom/transsion/room/viewmodel/RoomViewModel;)Leq/a;

    move-result-object v7

    sget-object v8, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v8}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v2, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->label:I

    invoke-interface {v7, v8, v6, v0}, Leq/a;->h(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    iput-object v7, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->label:I

    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_5
    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    iput-object v7, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;->label:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
