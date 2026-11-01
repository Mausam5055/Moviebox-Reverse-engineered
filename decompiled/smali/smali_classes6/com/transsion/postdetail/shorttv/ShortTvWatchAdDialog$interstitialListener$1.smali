.class public final Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    move-result-object p1

    const-string v0, "ad_load_fail"

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1$onBiddingLoad$1;

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    const/4 v2, 0x0

    invoke-direct {v4, v0, p1, v2}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1$onBiddingLoad$1;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    move-result-object p1

    const-string v0, "ad_success"

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    move-result-object p1

    const-string v0, "ad_load_fail"

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
