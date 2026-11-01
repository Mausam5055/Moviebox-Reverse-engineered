.class Lcom/hisavana/pangle/executer/PangleVideo$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/executer/PangleVideo;->onVideoStartLoad()V
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

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleVideo$3;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo$3;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->isInitSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleVideo;->f(Lcom/hisavana/pangle/executer/PangleVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init onError code\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0cmessage"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "pangle_log"

    invoke-virtual {v0, p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success()V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo$3;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleVideo;->j(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo$3;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleVideo;->k(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo$3;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleVideo;->l(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo$3;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleVideo;->m(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;-><init>()V

    iget-object v2, p0, Lcom/hisavana/pangle/executer/PangleVideo$3;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {v2}, Lcom/hisavana/pangle/executer/PangleVideo;->l(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;->loadAd(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo$3;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleVideo;->d(Lcom/hisavana/pangle/executer/PangleVideo;Z)Z

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo$3;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->isInitSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7533

    invoke-direct {v1, v3, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleVideo;->h(Lcom/hisavana/pangle/executer/PangleVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
