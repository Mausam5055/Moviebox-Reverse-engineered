.class public final Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/subroom/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/transsion/subroom/activity/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 6

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1$onBiddingError$1;

    iget-object p1, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1$onBiddingError$1;-><init>(Lcom/transsion/subroom/activity/SplashActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1$onBiddingLoad$1;

    iget-object v0, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    const/4 v2, 0x0

    invoke-direct {v4, v0, p1, v2}, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1$onBiddingLoad$1;-><init>(Lcom/transsion/subroom/activity/SplashActivity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object p1, Lcom/transsion/startup/pref/consume/AppStartReport;->a:Lcom/transsion/startup/pref/consume/AppStartReport;

    new-instance v6, Lcom/transsion/startup/pref/consume/AppStartDotState;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v1, "ad_end"

    const-wide/16 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/startup/pref/consume/AppStartDotState;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v6}, Lcom/transsion/startup/pref/consume/AppStartReport;->f(Lcom/transsion/startup/pref/consume/AppStartDotState;)V

    sget-object p1, Lcom/transsion/startup/pref/consume/c;->a:Lcom/transsion/startup/pref/consume/c;

    invoke-virtual {p1}, Lcom/transsion/startup/pref/consume/c;->q()V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1$onBiddingWrapperAdShowError$1;

    iget-object p1, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1$onBiddingWrapperAdShowError$1;-><init>(Lcom/transsion/subroom/activity/SplashActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
