.class public final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g2(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

.field final synthetic e:Lkotlin/jvm/functions/Function0;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->e:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->g:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 6

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v0()Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingError$1;

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->g:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingError$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v0()Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;

    iget-object v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->e:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    iget-object v5, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->f:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method public l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P()V

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;)V

    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v0()Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingWrapperAdClose$1;

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingWrapperAdClose$1;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->d:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v0()Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingWrapperAdShowError$1;

    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;->g:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1$onBiddingWrapperAdShowError$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method
