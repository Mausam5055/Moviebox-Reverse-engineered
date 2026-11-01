.class final Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;",
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
    c = "com.transsion.postdetail.ui.fragment.preload.VideoImmersiveDataLoader$loadDataFromService$1$1"
    f = "VideoImmersiveDataLoader.kt"
    l = {
        0x1c,
        0x1e,
        0x20,
        0x22
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;

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

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;

    invoke-direct {v0, v1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;-><init>(Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/c;

    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/c;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/c;

    sget-object p1, Lbh/b;->a:Lbh/b$a;

    iget-object v7, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;

    invoke-virtual {v7}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;->m()Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;

    move-result-object v7

    invoke-static {v7}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "toJson(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;

    invoke-static {v2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;->l(Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;)Lxo/b;

    move-result-object v2

    sget-object v7, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v7}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v7

    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->label:I

    invoke-interface {v2, v7, p1, p0}, Lxo/b;->d(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->label:I

    invoke-interface {v1, v6, p0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_5
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_6
    iput-object v6, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1$1;->label:I

    invoke-interface {v1, v6, p0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
