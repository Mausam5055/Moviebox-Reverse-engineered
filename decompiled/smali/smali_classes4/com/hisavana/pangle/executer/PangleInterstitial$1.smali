.class Lcom/hisavana/pangle/executer/PangleInterstitial$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/executer/PangleInterstitial;->initInterstitial()V
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

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$1;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V
    .locals 5

    const-string v0, "pangle_log"

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$1;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-static {v1, p1}, Lcom/hisavana/pangle/executer/PangleInterstitial;->b(Lcom/hisavana/pangle/executer/PangleInterstitial;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$1;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-static {p1}, Lcom/hisavana/pangle/executer/PangleInterstitial;->e(Lcom/hisavana/pangle/executer/PangleInterstitial;)Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$1;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-static {p1}, Lcom/hisavana/pangle/executer/PangleInterstitial;->a(Lcom/hisavana/pangle/executer/PangleInterstitial;)Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    move-result-object p1

    iget-object v1, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$1;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-static {v1}, Lcom/hisavana/pangle/executer/PangleInterstitial;->e(Lcom/hisavana/pangle/executer/PangleInterstitial;)Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;)V

    :try_start_0
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$1;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-static {p1}, Lcom/hisavana/pangle/executer/PangleInterstitial;->a(Lcom/hisavana/pangle/executer/PangleInterstitial;)Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    move-result-object p1

    const-string v1, "price"

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/api/PangleAd;->getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$1;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/hisavana/common/base/BaseAd;->setEcpmPrice(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$1;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseInterstitial;->adLoaded()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v1, "onAdLoad"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    invoke-virtual {p0, p1}, Lcom/hisavana/pangle/executer/PangleInterstitial$1;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$1;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pangle Ads failed to load ad with error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleInterstitial;->c(Lcom/hisavana/pangle/executer/PangleInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pangle Ads failed to load ad with error code\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0cmessage: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "pangle_log"

    invoke-virtual {v0, p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
