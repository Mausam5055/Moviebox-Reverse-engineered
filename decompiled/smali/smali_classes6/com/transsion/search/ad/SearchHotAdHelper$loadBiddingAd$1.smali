.class final Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/ad/SearchHotAdHelper;->t()V
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
    c = "com.transsion.search.ad.SearchHotAdHelper$loadBiddingAd$1"
    f = "SearchHotAdHelper.kt"
    l = {
        0x8a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/search/ad/SearchHotAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/search/ad/SearchHotAdHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/search/ad/SearchHotAdHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;->this$0:Lcom/transsion/search/ad/SearchHotAdHelper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;

    iget-object v0, p0, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;->this$0:Lcom/transsion/search/ad/SearchHotAdHelper;

    invoke-direct {p1, v0, p2}, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;-><init>(Lcom/transsion/search/ad/SearchHotAdHelper;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;->this$0:Lcom/transsion/search/ad/SearchHotAdHelper;

    new-instance v1, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-direct {v1}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;-><init>()V

    invoke-static {p1, v1}, Lcom/transsion/search/ad/SearchHotAdHelper;->i(Lcom/transsion/search/ad/SearchHotAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    iget-object p1, p0, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;->this$0:Lcom/transsion/search/ad/SearchHotAdHelper;

    invoke-static {p1}, Lcom/transsion/search/ad/SearchHotAdHelper;->f(Lcom/transsion/search/ad/SearchHotAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;->this$0:Lcom/transsion/search/ad/SearchHotAdHelper;

    const-string v1, "SearchHotNativeScene"

    invoke-virtual {v3, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-static {p1}, Lcom/transsion/search/ad/SearchHotAdHelper;->d(Lcom/transsion/search/ad/SearchHotAdHelper;)Lcom/transsion/search/ad/SearchHotAdHelper$b;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iput-object v3, p0, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/search/ad/SearchHotAdHelper$loadBiddingAd$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->w0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
