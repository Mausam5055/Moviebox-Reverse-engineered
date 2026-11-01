.class Lcom/hisavana/pangle/executer/PangleNative$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/executer/PangleNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/pangle/executer/PangleNative;


# direct methods
.method constructor <init>(Lcom/hisavana/pangle/executer/PangleNative;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "onAdLoad"

    const-string v2, "pangle_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    invoke-static {v0, p1}, Lcom/hisavana/pangle/executer/PangleNative;->c(Lcom/hisavana/pangle/executer/PangleNative;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleNative;->b(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleNative;->b(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;->getNativeAdData()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleNative;->l(Lcom/hisavana/pangle/executer/PangleNative;)I

    move-result v0

    iget-object v1, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    invoke-virtual {v1}, Lcom/hisavana/common/base/BaseAd;->getTtl()I

    move-result v1

    iget-object v3, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    invoke-static {p1, v0, v1, v3}, Lcom/hisavana/pangle/util/PlatformUtil;->getTAdNativeInfo(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    invoke-static {v0, p1}, Lcom/hisavana/pangle/executer/PangleNative;->a(Lcom/hisavana/pangle/executer/PangleNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    invoke-static {v1}, Lcom/hisavana/pangle/executer/PangleNative;->m(Lcom/hisavana/pangle/executer/PangleNative;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/hisavana/common/utils/AdUtil;->release(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :goto_0
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    invoke-static {p1}, Lcom/hisavana/pangle/executer/PangleNative;->n(Lcom/hisavana/pangle/executer/PangleNative;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    invoke-static {p1}, Lcom/hisavana/pangle/executer/PangleNative;->o(Lcom/hisavana/pangle/executer/PangleNative;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseNative;->adLoaded(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v3, "ad filter"

    invoke-direct {v1, v0, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v1}, Lcom/hisavana/pangle/executer/PangleNative;->j(Lcom/hisavana/pangle/executer/PangleNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad not pass sensitive check or no icon or image filter:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    invoke-virtual {p0, p1}, Lcom/hisavana/pangle/executer/PangleNative$1;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$1;->a:Lcom/hisavana/pangle/executer/PangleNative;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pangle Ads failed to load ad with error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleNative;->d(Lcom/hisavana/pangle/executer/PangleNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

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
