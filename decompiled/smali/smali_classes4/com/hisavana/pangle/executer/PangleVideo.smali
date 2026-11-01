.class public Lcom/hisavana/pangle/executer/PangleVideo;
.super Lcom/hisavana/common/base/BaseVideo;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

.field private e:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;

.field private f:Z

.field private g:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hisavana/pangle/executer/PangleVideo;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->g:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    return-object p0
.end method

.method static synthetic b(Lcom/hisavana/pangle/executer/PangleVideo;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleVideo;->g:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    return-object p1
.end method

.method static synthetic c(Lcom/hisavana/pangle/executer/PangleVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic d(Lcom/hisavana/pangle/executer/PangleVideo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/pangle/executer/PangleVideo;->f:Z

    return p1
.end method

.method static synthetic e(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->e:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;

    return-object p0
.end method

.method static synthetic f(Lcom/hisavana/pangle/executer/PangleVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic g(Lcom/hisavana/pangle/executer/PangleVideo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->onReward()V

    return-void
.end method

.method static synthetic h(Lcom/hisavana/pangle/executer/PangleVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic i(Lcom/hisavana/pangle/executer/PangleVideo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method static synthetic j(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method static synthetic k(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method static synthetic l(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->d:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    return-object p0
.end method

.method static synthetic m(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseVideo;->destroyAd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->d:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->e:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;

    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->g:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->f:Z

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

    const-string v2, "pangle_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initVideo()V
    .locals 1

    new-instance v0, Lcom/hisavana/pangle/executer/PangleVideo$1;

    invoke-direct {v0, p0}, Lcom/hisavana/pangle/executer/PangleVideo$1;-><init>(Lcom/hisavana/pangle/executer/PangleVideo;)V

    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->d:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    new-instance v0, Lcom/hisavana/pangle/executer/PangleVideo$2;

    invoke-direct {v0, p0}, Lcom/hisavana/pangle/executer/PangleVideo$2;-><init>(Lcom/hisavana/pangle/executer/PangleVideo;)V

    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->e:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;

    return-void
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->f:Z

    return v0
.end method

.method protected onVideoShow(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->g:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;->show(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hisavana/common/bean/TAdErrorCode;

    const v0, 0xc351

    const-string v1, "Pangle Ads failed to show,activity or pageRewardedAd is null"

    invoke-direct {p1, v0, v1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "pangle_log"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onVideoStartLoad()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x7533

    const-string v2, "Pangle Ads failed to load ad error with mNetwork == null"

    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hisavana/pangle/executer/PangleVideo$3;

    invoke-direct {v1, p0}, Lcom/hisavana/pangle/executer/PangleVideo$3;-><init>(Lcom/hisavana/pangle/executer/PangleVideo;)V

    invoke-static {v0, v1}, Lcom/hisavana/pangle/check/ExistsCheck;->initAdSource(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V

    return-void
.end method
