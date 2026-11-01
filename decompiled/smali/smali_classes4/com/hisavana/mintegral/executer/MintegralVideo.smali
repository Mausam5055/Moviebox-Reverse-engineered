.class public Lcom/hisavana/mintegral/executer/MintegralVideo;
.super Lcom/hisavana/common/base/BaseVideo;


# instance fields
.field private d:Z

.field private e:Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;

.field private f:Lcom/mbridge/msdk/out/RewardVideoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/hisavana/mintegral/executer/MintegralVideo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->onReward()V

    return-void
.end method

.method static synthetic b(Lcom/hisavana/mintegral/executer/MintegralVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic c(Lcom/hisavana/mintegral/executer/MintegralVideo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method static synthetic d(Lcom/hisavana/mintegral/executer/MintegralVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseVideo;->destroyAd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->e:Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;

    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->f:Lcom/mbridge/msdk/out/RewardVideoListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->d:Z

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mintegral_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initVideo()V
    .locals 1

    new-instance v0, Lcom/hisavana/mintegral/executer/MintegralVideo$1;

    invoke-direct {v0, p0}, Lcom/hisavana/mintegral/executer/MintegralVideo$1;-><init>(Lcom/hisavana/mintegral/executer/MintegralVideo;)V

    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->f:Lcom/mbridge/msdk/out/RewardVideoListener;

    return-void
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->d:Z

    return v0
.end method

.method protected onVideoShow(Landroid/app/Activity;)V
    .locals 2

    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->e:Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isBidReady()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->e:Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->showFromBid()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "mintegral_log"

    const-string v1, "Mintergral Ads failed to show"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onVideoStartLoad()V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->f:Lcom/mbridge/msdk/out/RewardVideoListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v3, v2}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->e:Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;

    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->f:Lcom/mbridge/msdk/out/RewardVideoListener;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->setRewardVideoListener(Lcom/mbridge/msdk/video/bt/module/orglistener/g;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->e:Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->loadFromBid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->e:Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;

    sget-boolean v1, Lcom/hisavana/common/bean/AdMuteStatus;->MUTE_ALL:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->playVideoMute(I)V

    iput-boolean v2, p0, Lcom/hisavana/mintegral/executer/MintegralVideo;->d:Z

    return-void

    :cond_3
    :goto_2
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x7533

    const-string v2, "Mintegral Ads failed to load ad error with params empty"

    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
