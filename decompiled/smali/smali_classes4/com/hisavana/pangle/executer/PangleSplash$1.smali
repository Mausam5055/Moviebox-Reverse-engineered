.class Lcom/hisavana/pangle/executer/PangleSplash$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/executer/PangleSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/pangle/executer/PangleSplash;


# direct methods
.method constructor <init>(Lcom/hisavana/pangle/executer/PangleSplash;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleSplash$1;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;)V
    .locals 6

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$1;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-static {v0, p1}, Lcom/hisavana/pangle/executer/PangleSplash;->b(Lcom/hisavana/pangle/executer/PangleSplash;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$1;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleSplash;->d(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;

    move-result-object v0

    const-string v1, "pangle_log"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$1;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleSplash;->a(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$1;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleSplash;->a(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    move-result-object v0

    iget-object v2, p0, Lcom/hisavana/pangle/executer/PangleSplash$1;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-static {v2}, Lcom/hisavana/pangle/executer/PangleSplash;->d(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;)V

    :try_start_0
    const-string v0, "price"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/PangleAd;->getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pangle onAdLoad\uff0cprice"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleSplash$1;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/hisavana/common/base/BaseAd;->setEcpmPrice(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleSplash$1;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "onAdLoad"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    invoke-virtual {p0, p1}, Lcom/hisavana/pangle/executer/PangleSplash$1;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$1;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pangle Ads failed to load ad with error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleSplash;->c(Lcom/hisavana/pangle/executer/PangleSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError code "

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
