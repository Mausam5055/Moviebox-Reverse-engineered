.class public Lcom/hisavana/pangle/executer/PangleBanner;
.super Lcom/hisavana/common/base/BaseBanner;


# instance fields
.field private d:Landroid/view/View;

.field private e:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

.field private f:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;

.field private g:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

.field private h:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    new-instance p1, Lcom/hisavana/pangle/executer/PangleBanner$1;

    invoke-direct {p1, p0}, Lcom/hisavana/pangle/executer/PangleBanner$1;-><init>(Lcom/hisavana/pangle/executer/PangleBanner;)V

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->e:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    new-instance p1, Lcom/hisavana/pangle/executer/PangleBanner$2;

    invoke-direct {p1, p0}, Lcom/hisavana/pangle/executer/PangleBanner$2;-><init>(Lcom/hisavana/pangle/executer/PangleBanner;)V

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->f:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;

    const/4 p1, 0x1

    const/16 p2, 0x140

    if-eq p3, p1, :cond_2

    const/4 p1, 0x2

    if-eq p3, p1, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    sget-object p1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->BANNER_W_320_H_50:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    const/16 p3, 0x5a

    invoke-direct {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;-><init>(II)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->BANNER_W_300_H_250:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    const/16 p3, 0x64

    invoke-direct {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;-><init>(II)V

    :goto_0
    new-instance p2, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;)V

    iput-object p2, p0, Lcom/hisavana/pangle/executer/PangleBanner;->h:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    return-void
.end method

.method static synthetic a(Lcom/hisavana/pangle/executer/PangleBanner;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->g:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    return-object p0
.end method

.method static synthetic c(Lcom/hisavana/pangle/executer/PangleBanner;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->g:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    return-object p1
.end method

.method static synthetic d(Lcom/hisavana/pangle/executer/PangleBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic e(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->h:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    return-object p0
.end method

.method static synthetic f(Lcom/hisavana/pangle/executer/PangleBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic g(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->f:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;

    return-object p0
.end method

.method static synthetic h(Lcom/hisavana/pangle/executer/PangleBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic i(Lcom/hisavana/pangle/executer/PangleBanner;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method static synthetic j(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method static synthetic k(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method static synthetic l(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->e:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    return-object p0
.end method

.method static synthetic m(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseBanner;->destroyAd()V

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

.method protected getBanner()Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBanner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pangle_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    return-object v0
.end method

.method protected onBannerDestroy()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

    const-string v2, "onBannerDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->g:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;->destroy()V

    :cond_1
    iput-object v1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->f:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;

    iput-object v1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->e:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    return-void
.end method

.method protected onBannerLoad()V
    .locals 4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

    const-string v2, "onBannerLoad"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x7533

    const-string v2, "Pangle Ads failed to load ad error with mNetwork == null"

    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hisavana/pangle/executer/PangleBanner$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/hisavana/pangle/executer/PangleBanner$3;-><init>(Lcom/hisavana/pangle/executer/PangleBanner;J)V

    invoke-static {v2, v3}, Lcom/hisavana/pangle/check/ExistsCheck;->initAdSource(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V

    return-void
.end method

.method public show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "showBanner"

    const-string v2, "pangle_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p2, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p3, 0xd

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p2, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "showBanner show error,adView is null"

    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected showBanner()V
    .locals 0

    return-void
.end method
