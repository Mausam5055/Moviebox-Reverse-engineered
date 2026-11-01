.class Lcom/hisavana/pangle/executer/PangleVideo$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/executer/PangleVideo;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/pangle/executer/PangleVideo;


# direct methods
.method constructor <init>(Lcom/hisavana/pangle/executer/PangleVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleVideo$2;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo$2;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

    const-string v2, "Pangle Ads onAdClick"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdDismissed()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo$2;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleVideo;->i(Lcom/hisavana/pangle/executer/PangleVideo;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

    const-string v2, "Pangle Ads onAdDismissed"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdShowed()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo$2;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

    const-string v2, "Pangle Ads onAdShowed"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserEarnedReward(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardItem;)V
    .locals 2

    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleVideo$2;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {p1}, Lcom/hisavana/pangle/executer/PangleVideo;->g(Lcom/hisavana/pangle/executer/PangleVideo;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "pangle_log"

    const-string v1, "Pangle Ads onUserEarnedReward"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserEarnedRewardFail(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
