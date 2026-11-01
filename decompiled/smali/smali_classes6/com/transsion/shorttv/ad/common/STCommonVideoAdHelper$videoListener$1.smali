.class public final Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 11

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->FAILED:Lcom/transsion/shorttv/ad/AdLoadState;

    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->k(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    sget-object v0, Lur/a;->a:Lur/a;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->r()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBiddingError, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-static {v3}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lur/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-static {v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lkotlinx/coroutines/n0;

    move-result-object v5

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v6

    new-instance v8, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingError$1;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-direct {v8, v0, p1, v4}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingError$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/hisavana/common/bean/TAdErrorCode;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    sget-object v1, Lcom/transsion/shorttv/ad/AdLoadState;->SUCCEED:Lcom/transsion/shorttv/ad/AdLoadState;

    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->k(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    sget-object v0, Lur/a;->a:Lur/a;

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->r()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-static {v2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

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

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->l(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lkotlinx/coroutines/n0;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v5

    new-instance v7, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingLoad$1;

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-direct {v7, p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingLoad$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    invoke-super {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    sget-object v0, Lcom/transsion/shorttv/ad/AdLoadState;->CLOSED:Lcom/transsion/shorttv/ad/AdLoadState;

    invoke-static {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->k(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->r()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-static {v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBiddingWrapperAdClose, isRewarded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-static {v2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-static {v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lkotlinx/coroutines/n0;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v5

    new-instance v7, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingWrapperAdClose$1;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-direct {v7, v0, p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingWrapperAdClose$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;ZLkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 9

    invoke-super {p0, p1}, Ldi/a;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object p1, Lur/a;->a:Lur/a;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->r()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-static {v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "onBiddingWrapperAdRewarded"

    invoke-virtual {p1, v0, v3, v1}, Lur/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->m(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Z)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->e(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lkotlinx/coroutines/n0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v4

    new-instance v6, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingWrapperAdRewarded$1;

    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;->d:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-direct {v6, p1, v2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1$onBiddingWrapperAdRewarded$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
