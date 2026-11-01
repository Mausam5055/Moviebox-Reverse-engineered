.class public final Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 10

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->FAILED:Lcom/transsion/shorttv/ad/AdLoadState;

    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    sget-object v0, Lur/a;->a:Lur/a;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBiddingError, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-static {v2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Lur/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlinx/coroutines/n0;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v5

    new-instance v7, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingError$1;

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-direct {v7, p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingError$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->SUCCEED:Lcom/transsion/shorttv/ad/AdLoadState;

    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    sget-object v0, Lur/a;->a:Lur/a;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-static {v2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "onBiddingLoad"

    invoke-virtual {v0, v1, v4, v2}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->i(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlinx/coroutines/n0;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v5

    new-instance v7, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingLoad$1;

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-direct {v7, p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingLoad$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    invoke-super {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    sget-object v0, Lcom/transsion/shorttv/ad/AdLoadState;->CLOSED:Lcom/transsion/shorttv/ad/AdLoadState;

    invoke-static {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-static {v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "onBiddingWrapperAdClose"

    invoke-virtual {p1, v0, v2, v1}, Lur/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->m(I)V

    return-void
.end method

.method public n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 9

    invoke-super {p0, p1}, Ldi/a;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-static {v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "onBiddingWrapperAdDisplay"

    invoke-virtual {p1, v0, v3, v1}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlinx/coroutines/n0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v4

    new-instance v6, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingWrapperAdDisplay$1;

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-direct {v6, p1, v2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingWrapperAdDisplay$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 9

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-static {v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "onBiddingWrapperAdShowError"

    invoke-virtual {p1, v0, v3, v1}, Lur/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lkotlinx/coroutines/n0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v4

    new-instance v6, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingWrapperAdShowError$1;

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-direct {v6, p1, v2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1$onBiddingWrapperAdShowError$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
