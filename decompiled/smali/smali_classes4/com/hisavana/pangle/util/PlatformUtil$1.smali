.class Lcom/hisavana/pangle/util/PlatformUtil$1;
.super Lcom/hisavana/common/bean/NativeAdWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/util/PlatformUtil;->getTAdNativeInfo(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/bean/NativeAdWrapper<",
        "Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/common/base/BaseNative;

.field final synthetic b:Lcom/hisavana/common/bean/AdNativeInfo;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;)V
    .locals 0

    iput-object p3, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->a:Lcom/hisavana/common/base/BaseNative;

    iput-object p4, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    iput-object p5, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->c:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/bean/NativeAdWrapper;-><init>(Ljava/lang/Object;Lcom/hisavana/common/base/BaseNative;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->a:Lcom/hisavana/common/base/BaseNative;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseNative;->destroySingleAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :cond_0
    return-void
.end method

.method public getTrackBundle()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isIconValid()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->c:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getIcon()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->c:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getIcon()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImageValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMaterielValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
