.class public final Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

.field final synthetic e:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;->e:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;->e:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->q(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;->e:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->u(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;->d:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;->e:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->q(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->R0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;->e:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->q(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;->e:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->u(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;->e:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->q(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1$a;->e:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->u(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V

    return-void
.end method
