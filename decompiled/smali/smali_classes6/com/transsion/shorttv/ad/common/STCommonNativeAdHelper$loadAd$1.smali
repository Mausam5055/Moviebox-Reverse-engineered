.class final Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->q(Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.shorttv.ad.common.STCommonNativeAdHelper$loadAd$1"
    f = "STCommonNativeAdHelper.kt"
    l = {
        0x86
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    iput-object p2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->$callback:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->$callback:Lkotlin/jvm/functions/Function1;

    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->m(I)V

    sget-object v3, Lur/a;->a:Lur/a;

    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    move-result-object v4

    const-string v5, "trigger load ad"

    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/shorttv/ad/AdLoadState;->LOADING:Lcom/transsion/shorttv/ad/AdLoadState;

    invoke-static {p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    invoke-static {p1, v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-direct {v1}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;-><init>()V

    invoke-static {p1, v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->k(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_2
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->M0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_3
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Landroid/content/Context;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_4
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    :cond_5
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    if-eqz v1, :cond_7

    iput v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->w0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_0
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_7
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/transsion/shorttv/ad/AdLoadState;->IDLE:Lcom/transsion/shorttv/ad/AdLoadState;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
