.class Lcom/hisavana/pangle/executer/PangleInterstitial$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/executer/PangleInterstitial;->onInterstitialStartLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/pangle/executer/PangleInterstitial;


# direct methods
.method constructor <init>(Lcom/hisavana/pangle/executer/PangleInterstitial;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$3;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$3;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

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

    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleInterstitial;->f(Lcom/hisavana/pangle/executer/PangleInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init onError code\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0cmessage\uff1a"

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

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$3;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleInterstitial;->i(Lcom/hisavana/pangle/executer/PangleInterstitial;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$3;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleInterstitial;->j(Lcom/hisavana/pangle/executer/PangleInterstitial;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$3;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleInterstitial;->k(Lcom/hisavana/pangle/executer/PangleInterstitial;)Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$3;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleInterstitial;->l(Lcom/hisavana/pangle/executer/PangleInterstitial;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;-><init>()V

    iget-object v2, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$3;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-static {v2}, Lcom/hisavana/pangle/executer/PangleInterstitial;->k(Lcom/hisavana/pangle/executer/PangleInterstitial;)Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;->loadAd(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$3;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleInterstitial;->d(Lcom/hisavana/pangle/executer/PangleInterstitial;Z)Z

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$3;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

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

    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleInterstitial;->h(Lcom/hisavana/pangle/executer/PangleInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
