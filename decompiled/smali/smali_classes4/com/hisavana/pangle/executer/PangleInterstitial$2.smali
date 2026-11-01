.class Lcom/hisavana/pangle/executer/PangleInterstitial$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;


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

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$2;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$2;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

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

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$2;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleInterstitial;->g(Lcom/hisavana/pangle/executer/PangleInterstitial;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

    const-string v2, "Pangle Ads onAdDismissed"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdShowed()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$2;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

    const-string v2, "Pangle Ads onAdShowed"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
