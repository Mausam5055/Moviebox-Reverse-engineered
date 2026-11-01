.class final Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/RoomDetailViewModel;->v(Lcom/transsion/moviedetailapi/bean/RoomItem;)V
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
    c = "com.transsion.room.viewmodel.RoomDetailViewModel$insertRecentlyRoom$1"
    f = "RoomDetailViewModel.kt"
    l = {
        0x8e,
        0x8f,
        0x92
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $roomItem:Lcom/transsion/moviedetailapi/bean/RoomItem;

.field label:I

.field final synthetic this$0:Lcom/transsion/room/viewmodel/RoomDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/bean/RoomItem;Lcom/transsion/room/viewmodel/RoomDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            "Lcom/transsion/room/viewmodel/RoomDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->$roomItem:Lcom/transsion/moviedetailapi/bean/RoomItem;

    iput-object p2, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->this$0:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

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

    new-instance p1, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->$roomItem:Lcom/transsion/moviedetailapi/bean/RoomItem;

    iget-object v1, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->this$0:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;-><init>(Lcom/transsion/moviedetailapi/bean/RoomItem;Lcom/transsion/room/viewmodel/RoomDetailViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->$roomItem:Lcom/transsion/moviedetailapi/bean/RoomItem;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->$roomItem:Lcom/transsion/moviedetailapi/bean/RoomItem;

    new-instance v19, Lcom/transsion/baselib/db/room/RoomItemBean;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getAvatar()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getHasJoin()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getNewPostCount()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getPostCount()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getUserCount()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getLevel()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v7, v19

    invoke-direct/range {v7 .. v18}, Lcom/transsion/baselib/db/room/RoomItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;J)V

    move-object/from16 v2, v19

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_5

    iget-object v7, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->this$0:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    invoke-static {v7}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->i(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Lrj/a;

    move-result-object v7

    if-eqz v7, :cond_5

    iput v6, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->label:I

    invoke-interface {v7, v2, v0}, Lrj/a;->b(Lcom/transsion/baselib/db/room/RoomItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->this$0:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    invoke-static {v2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->i(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Lrj/a;

    move-result-object v2

    if-eqz v2, :cond_7

    iput v5, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->label:I

    invoke-interface {v2, v0}, Lrj/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x5

    if-le v2, v5, :cond_8

    iget-object v2, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->this$0:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    invoke-static {v2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->i(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Lrj/a;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/baselib/db/room/RoomItemBean;

    iput v4, v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;->label:I

    invoke-interface {v2, v3, v0}, Lrj/a;->c(Lcom/transsion/baselib/db/room/RoomItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
