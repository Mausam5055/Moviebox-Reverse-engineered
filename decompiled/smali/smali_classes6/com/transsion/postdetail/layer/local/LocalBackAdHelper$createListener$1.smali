.class public final Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->n()Ldi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->j(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->l(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->a(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)V

    sget-object p1, Lii/b;->a:Lii/b;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {v1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->h(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lii/b;->e(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->g(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->j(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->a(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)V

    sget-object v0, Lii/b;->a:Lii/b;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {v1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->h(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lii/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->c(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {v1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->d(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {v1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->e(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->R0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->h(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lii/b;->g(Lii/b;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    invoke-super {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->l(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;Z)V

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->h(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_timestamp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->e(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    sget-object p1, Lii/b;->a:Lii/b;

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->h(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lii/b;->e(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->f(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lox/e;->a:Lox/e$a;

    invoke-virtual {p1}, Lox/e$a;->b()Lox/e;

    move-result-object p1

    invoke-interface {p1}, Lox/e;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->i(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1$onBiddingWrapperAdClose$1;

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1$onBiddingWrapperAdClose$1;-><init>(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->g(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->j(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->l(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->a(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)V

    sget-object p1, Lii/b;->a:Lii/b;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {v1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->h(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lii/b;->e(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper$createListener$1;->d:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->g(Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
