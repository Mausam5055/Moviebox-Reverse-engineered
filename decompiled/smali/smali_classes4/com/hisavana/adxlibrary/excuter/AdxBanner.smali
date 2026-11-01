.class public Lcom/hisavana/adxlibrary/excuter/AdxBanner;
.super Lcom/hisavana/common/base/BaseBanner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/base/BaseBanner<",
        "Lcom/cloud/hisavana/sdk/api/adx/TBannerView;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bannerSize:="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AdxBanner"

    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)Lcom/cloud/hisavana/sdk/api/adx/TBannerView;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/adxlibrary/excuter/AdxBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 5

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdReadyStatusWithoutTracking()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canShow failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AdxBanner"

    invoke-virtual {v2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseBanner;->canShow()Z

    move-result v0

    return v0
.end method

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

    const-string v2, "AdxBanner"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getBanner()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->getBanner()Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    move-result-object v0

    return-object v0
.end method

.method public getBanner()Lcom/cloud/hisavana/sdk/api/adx/TBannerView;
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBanner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxBanner"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La7/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;

    invoke-direct {v0, p0}, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-static {}, Lb7/a;->a()Lb7/a$b;

    move-result-object v2

    invoke-virtual {v2}, Lb7/a$b;->a()Lb7/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setRequest(Lb7/a;)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setListener(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setPlacementId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseBanner;->isHideAdCloseView:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->setHideAdCloseView(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseBanner;->isCloseDirectly:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->setCloseDirectlyWithoutJumping(Z)V

    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    return-object v0
.end method

.method public isAdxAd()Z
    .locals 3

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdSource()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isEwAd()Z
    .locals 3

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdSource()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isExpired()Z
    .locals 6

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    const/16 v2, 0x45b

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdReadyStatusWithoutTracking()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExpired failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdxBanner"

    invoke-virtual {v3, v4, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V

    return v1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V

    return v1
.end method

.method public isInternalAd()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isDefaultAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isMatchVulgarBrand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOfflineAd()Z
    .locals 2

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getFillAdType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onBannerDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    :cond_0
    return-void
.end method

.method public onBannerLoad()V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Lb7/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBannerLoad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Lb7/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxBanner"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Lb7/a;

    move-result-object v0

    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    invoke-virtual {v0, v1}, Lb7/a;->k(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hisa-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getSupportHisavanaFlag()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lb7/a;->i(Z)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setRequest(Lb7/a;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setContainVulgarContent(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->mCurrActivityFullscreen:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setCurrActivityFullscreen(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->loadAd()V

    :cond_1
    return-void
.end method

.method public showBanner()V
    .locals 5

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Lb7/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Lb7/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    invoke-virtual {v0, v1, v2}, Lb7/a;->h(D)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setRequest(Lb7/a;)V

    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->show()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdxBanner"

    const-string v2, "showBanner show error"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
