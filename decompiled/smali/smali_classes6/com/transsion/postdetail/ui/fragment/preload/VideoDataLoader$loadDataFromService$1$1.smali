.class final Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.postdetail.ui.fragment.preload.VideoDataLoader$loadDataFromService$1$1"
    f = "VideoDataLoader.kt"
    l = {
        0x19,
        0x1b,
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

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

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    invoke-direct {v0, v1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;-><init>(Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->label:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v3, :cond_3

    if-eq v3, v1, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/c;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/flow/c;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;->l(Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;)Lxo/b;

    move-result-object p1

    sget-object v6, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v6}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    invoke-virtual {v7}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;->m()Ljava/lang/String;

    move-result-object v7

    iput-object v3, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    iput v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->label:I

    invoke-interface {p1, v6, v7, p0}, Lxo/b;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_5

    iput-object v7, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->label:I

    invoke-interface {v3, v7, p0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    return-object v2

    :cond_5
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    const-string v5, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.PostSubjectItem"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    new-instance v5, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    new-array v6, v1, [Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    aput-object p1, v6, v0

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v6, Lcom/transsion/moviedetailapi/bean/Pager;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v10, "1"

    const-string v11, "1"

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/transsion/moviedetailapi/bean/Pager;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-direct {v5, p1, v6, v7, v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Group;)V

    iput-object v7, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->label:I

    invoke-interface {v3, v5, p0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    return-object v2

    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
