.class public Lcom/mbridge/msdk/interstitialvideo/listener/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;


# instance fields
.field private a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    iput-object p2, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->c:Z

    return-void
.end method


# virtual methods
.method public onAdClose(Lcom/mbridge/msdk/out/MBridgeIds;Lcom/mbridge/msdk/out/RewardInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onAdClose(Lcom/mbridge/msdk/out/MBridgeIds;Lcom/mbridge/msdk/out/RewardInfo;)V

    :cond_0
    return-void
.end method

.method public onAdCloseWithIVReward(Lcom/mbridge/msdk/out/MBridgeIds;Lcom/mbridge/msdk/out/RewardInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onAdCloseWithIVReward(Lcom/mbridge/msdk/out/MBridgeIds;Lcom/mbridge/msdk/out/RewardInfo;)V

    :cond_0
    return-void
.end method

.method public onAdShow(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onAdShow(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method

.method public onEndcardShow(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onEndcardShow(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method

.method public onLoadSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onLoadSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method

.method public onShowFail(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onShowFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoAdClicked(ZLcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onVideoAdClicked(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method

.method public onVideoComplete(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onVideoComplete(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method

.method public onVideoLoadFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onVideoLoadFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoLoadSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitialvideo/listener/a;->a:Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onVideoLoadSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    return-void
.end method
