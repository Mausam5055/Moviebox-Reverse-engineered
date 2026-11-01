.class final Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/moviedetailapi/bean/LikeBean;",
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
    c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$like$1$1"
    f = "RoomPostViewModel.kt"
    l = {
        0x236,
        0x238
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $postId:Ljava/lang/String;

.field final synthetic $reqType:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/transsion/postdetail/viewmodel/RoomPostViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->$postId:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->$reqType:I

    iput-object p3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

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

    new-instance v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;

    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->$postId:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->$reqType:I

    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;-><init>(Ljava/lang/String;ILcom/transsion/postdetail/viewmodel/RoomPostViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/c;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/c;

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v4, "postId"

    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->$postId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->$reqType:I

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "reqType"

    invoke-virtual {v1, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->$postId:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lty/b;->a:Lty/b$a;

    invoke-virtual {v4}, Lty/b$a;->a()Lty/b;

    move-result-object v4

    iget v5, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->$reqType:I

    iget-object v6, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->$postId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lty/b;->g(ILjava/lang/String;)V

    :cond_3
    sget-object v4, Lbh/b;->a:Lbh/b$a;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "toString(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->$postId:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->h(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Lkn/a;

    move-result-object v4

    sget-object v6, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v6}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v6

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->label:I

    invoke-interface {v4, v6, v1, p0}, Lkn/a;->c(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v3, p1

    move-object p1, v1

    move-object v1, v5

    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/moviedetailapi/bean/LikeBean;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v1}, Lcom/transsion/moviedetailapi/bean/LikeBean;->setPostId(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1$1;->label:I

    invoke-interface {v3, p1, p0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
