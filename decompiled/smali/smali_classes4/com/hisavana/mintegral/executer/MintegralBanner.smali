.class public Lcom/hisavana/mintegral/executer/MintegralBanner;
.super Lcom/hisavana/common/base/BaseBanner;


# instance fields
.field private d:Lcom/mbridge/msdk/out/MBBannerView;

.field private e:Lcom/mbridge/msdk/out/BannerAdListener;

.field private f:Lcom/mbridge/msdk/out/BannerSize;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    new-instance p1, Lcom/hisavana/mintegral/executer/MintegralBanner$1;

    invoke-direct {p1, p0}, Lcom/hisavana/mintegral/executer/MintegralBanner$1;-><init>(Lcom/hisavana/mintegral/executer/MintegralBanner;)V

    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->e:Lcom/mbridge/msdk/out/BannerAdListener;

    const/4 p1, 0x4

    const/4 p2, 0x0

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    new-instance p3, Lcom/mbridge/msdk/out/BannerSize;

    invoke-direct {p3, p1, p2, p2}, Lcom/mbridge/msdk/out/BannerSize;-><init>(III)V

    iput-object p3, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->f:Lcom/mbridge/msdk/out/BannerSize;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/mbridge/msdk/out/BannerSize;

    invoke-direct {p1, v0, p2, p2}, Lcom/mbridge/msdk/out/BannerSize;-><init>(III)V

    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->f:Lcom/mbridge/msdk/out/BannerSize;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/mbridge/msdk/out/BannerSize;

    invoke-direct {p1, v0, p2, p2}, Lcom/mbridge/msdk/out/BannerSize;-><init>(III)V

    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->f:Lcom/mbridge/msdk/out/BannerSize;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/mbridge/msdk/out/BannerSize;

    const/16 p2, 0x140

    const/16 p3, 0x64

    const/4 v0, 0x5

    invoke-direct {p1, v0, p2, p3}, Lcom/mbridge/msdk/out/BannerSize;-><init>(III)V

    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->f:Lcom/mbridge/msdk/out/BannerSize;

    goto :goto_0

    :cond_3
    new-instance p3, Lcom/mbridge/msdk/out/BannerSize;

    invoke-direct {p3, p1, p2, p2}, Lcom/mbridge/msdk/out/BannerSize;-><init>(III)V

    iput-object p3, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->f:Lcom/mbridge/msdk/out/BannerSize;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/hisavana/mintegral/executer/MintegralBanner;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method static synthetic b(Lcom/hisavana/mintegral/executer/MintegralBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
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

    const-string v2, "mintegral_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dpToPx(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method protected getBanner()Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBanner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mintegral_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/out/MBBannerView;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/out/MBBannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    return-object v0
.end method

.method protected onBannerDestroy()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "mintegral_log"

    const-string v2, "onBannerDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBBannerView;->release()V

    iput-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    :cond_0
    iput-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->e:Lcom/mbridge/msdk/out/BannerAdListener;

    return-void
.end method

.method protected onBannerLoad()V
    .locals 4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "onBannerLoad"

    const-string v2, "mintegral_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->getInstance()Lcom/hisavana/mintegral/check/MBridgeSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->getCurrentState()Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    move-result-object v0

    sget-object v1, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZE_SUCCESS:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->e:Lcom/mbridge/msdk/out/BannerAdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->f:Lcom/mbridge/msdk/out/BannerSize;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lcom/mbridge/msdk/out/MBBannerView;->init(Lcom/mbridge/msdk/out/BannerSize;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->e:Lcom/mbridge/msdk/out/BannerAdListener;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBBannerView;->setBannerAdListener(Lcom/mbridge/msdk/out/BannerAdListener;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBBannerView;->loadFromBid(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x7533

    const-string v2, "Mintegral Ads failed to load ad error with param is empty"

    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_3
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x7531

    const-string v3, "Mintegral Ads failed to load ad error with param empty"

    invoke-direct {v0, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "init onError "

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public pauseAd()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBBannerView;->onPause()V

    :cond_0
    return-void
.end method

.method public resumeAd()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBBannerView;->onResume()V

    :cond_0
    return-void
.end method

.method protected showBanner()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "showBanner"

    const-string v2, "mintegral_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->f:Lcom/mbridge/msdk/out/BannerSize;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/BannerSize;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/hisavana/mintegral/executer/MintegralBanner;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->f:Lcom/mbridge/msdk/out/BannerSize;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/BannerSize;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/hisavana/mintegral/executer/MintegralBanner;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralBanner;->d:Lcom/mbridge/msdk/out/MBBannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "showBanner show error,mbBannerView is null"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
