.class final Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->j(Ljava/lang/String;Z)V
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
    c = "com.transsion.room.sub.viewmodel.likes.UgcLikesViewModel$postLikeUgcVideo$1"
    f = "UgcLikesViewModel.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isLike:Z

.field final synthetic $ugcVideoId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->$ugcVideoId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->$isLike:Z

    iput-object p3, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->this$0:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;

    iget-object v0, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->$ugcVideoId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->$isLike:Z

    iget-object v2, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->this$0:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;-><init>(Ljava/lang/String;ZLcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "ugcVideoId"

    iget-object v3, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->$ugcVideoId:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->$isLike:Z

    xor-int/2addr v1, v2

    const-string v3, "reqType"

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v1, Lbh/b;->a:Lbh/b$a;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "toString(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->this$0:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    invoke-static {v1}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->d(Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;)Lkq/a;

    move-result-object v3

    sget-object v4, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v4}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v1, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel$postLikeUgcVideo$1;->label:I

    invoke-interface {v3, v4, p1, p0}, Lkq/a;->a(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v0}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->e()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-class v1, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getSimpleName(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exceptionHandler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
