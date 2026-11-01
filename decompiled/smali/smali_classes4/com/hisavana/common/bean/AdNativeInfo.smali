.class public Lcom/hisavana/common/bean/AdNativeInfo;
.super Lcom/hisavana/common/bean/TAdNativeInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/common/bean/AdNativeInfo$Image;
    }
.end annotation


# instance fields
.field private FillSource:I

.field private adCallToAction:Ljava/lang/String;

.field private adCreateId:Ljava/lang/String;

.field private adFormat:I

.field private adId:Ljava/lang/String;

.field private adSource:I

.field private adType:I

.field private appInfo:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private cId:Ljava/lang/String;

.field private deepLink:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private description2:Ljava/lang/String;

.field private display:Ljava/lang/String;

.field private ecpmPrice:D

.field private ext:Ljava/lang/String;

.field private hisavanaSource:I

.field private icon:Lcom/hisavana/common/bean/AdNativeInfo$Image;

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo$Image;",
            ">;"
        }
    .end annotation
.end field

.field private isFromLocal:Z

.field private isIconAd:Z

.field private isInternalAd:Z

.field private isOfflineAd:Z

.field private mIsRelease:Z

.field private materialStyle:Ljava/lang/String;

.field private maxPrice:D

.field private mediatorSourceName:Ljava/lang/String;

.field private mediatorSourceUnitId:Ljava/lang/String;

.field public mime:I

.field private nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

.field private packageName:Ljava/lang/String;

.field private pkgs:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private pullNewestLive:I

.field private rating:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private saleprice:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;

.field private sceneToken:Ljava/lang/String;

.field private sdkTypeSetStoreMark:I

.field private secondPrice:D

.field private showId:Ljava/lang/String;

.field private socialContext:Ljava/lang/String;

.field private sourceSize:Ljava/lang/String;

.field private sponsoredTranslation:Ljava/lang/String;

.field private sspWebRecommendInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private startCacheTime:J

.field private storeMarkTextColor:I

.field private storeMarkTextSize:I

.field private title:Ljava/lang/String;

.field private triggerId:Ljava/lang/String;

.field private triggerTs:Ljava/lang/Long;

.field private ttl:I

.field private useRecommendStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/hisavana/common/bean/TAdNativeInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->hisavanaSource:I

    iput v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->FillSource:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adType:I

    iput-boolean v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->useRecommendStatus:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sspWebRecommendInfos:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->pullNewestLive:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->startCacheTime:J

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/common/bean/AdNativeInfo;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->icon:Lcom/hisavana/common/bean/AdNativeInfo$Image;

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->imageList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public detachContext()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->detachContext()V

    :cond_0
    return-void
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCreateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adCreateId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdFormat()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adFormat:I

    return v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSource()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adSource:I

    return v0
.end method

.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adType:I

    return v0
.end method

.method public getAppInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->appInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->deepLink:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->description2:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getEcpmPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->ecpmPrice:D

    return-wide v0
.end method

.method public getExpireReason()I
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getExpireReason()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getFillSource()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->FillSource:I

    return v0
.end method

.method public getFilterSource()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/hisavana/common/bean/AdNativeInfo;->isIconAd()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->packageName:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->icon:Lcom/hisavana/common/bean/AdNativeInfo$Image;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getIcon()Lcom/hisavana/common/bean/AdNativeInfo$Image;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->icon:Lcom/hisavana/common/bean/AdNativeInfo$Image;

    return-object v0
.end method

.method public bridge synthetic getIcon()Lcom/hisavana/common/bean/TAdNativeInfo$Image;
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/common/bean/AdNativeInfo;->getIcon()Lcom/hisavana/common/bean/AdNativeInfo$Image;

    move-result-object v0

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public getMaterialStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->materialStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->maxPrice:D

    return-wide v0
.end method

.method public getMediatorSourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->mediatorSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediatorSourceUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->mediatorSourceUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getMime()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->mime:I

    return v0
.end method

.method public getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    return-object v0
.end method

.method public getNetwork()Lcom/hisavana/common/bean/Network;
    .locals 2

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->pkgs:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getPullNewestLive()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->pullNewestLive:I

    return v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sspWebRecommendInfos:Ljava/util/List;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSaleprice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->saleprice:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sceneToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkTypeSetStoreMark()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sdkTypeSetStoreMark:I

    return v0
.end method

.method public getSecondPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->secondPrice:D

    return-wide v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->showId:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->socialContext:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sourceSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsoredTranslation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sponsoredTranslation:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreMarkTextColor()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->storeMarkTextColor:I

    return v0
.end method

.method public getStoreMarkTextSize()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->storeMarkTextSize:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->triggerId:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerTs()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->triggerTs:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->ttl:I

    return v0
.end method

.method public getValidTimeLimit()J
    .locals 6

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->ttl:I

    if-gtz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hisavana/common/bean/AdNativeInfo;->startCacheTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isAdxAd()Z
    .locals 2

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->hisavanaSource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEwAd()Z
    .locals 2

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->hisavanaSource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isExpired()Z
    .locals 6

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getExpireReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/bean/AdNativeInfo;->setExpireReason(I)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/common/bean/AdNativeInfo;->getValidTimeLimit()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hisavana/common/bean/AdNativeInfo;->setExpireReason(I)V

    :cond_2
    return v1
.end method

.method public isFromLocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->isFromLocal:Z

    return v0
.end method

.method public isIconAd()Z
    .locals 2

    iget v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIconValid()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->isIconValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImageValid()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->isImageValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInternalAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->isInternalAd:Z

    return v0
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->isMatchVulgarBrand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMaterielValid()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->isMaterielValid()Z

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
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->isOfflineAd:Z

    return v0
.end method

.method public isRelease()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->mIsRelease:Z

    return v0
.end method

.method public isUseRecommend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->useRecommendStatus:Z

    return v0
.end method

.method public registerView(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->mIsRelease:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/hisavana/common/bean/AdNativeInfo;->getIcon()Lcom/hisavana/common/bean/AdNativeInfo$Image;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hisavana/common/bean/AdNativeInfo;->getIcon()Lcom/hisavana/common/bean/AdNativeInfo$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->release()V

    :cond_2
    invoke-virtual {p0}, Lcom/hisavana/common/bean/AdNativeInfo;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->release()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/hisavana/common/utils/BitmapUtil;->recycle(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->iconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->mIsRelease:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public setAdCallToAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adCallToAction:Ljava/lang/String;

    return-void
.end method

.method public setAdCreateId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adCreateId:Ljava/lang/String;

    return-void
.end method

.method public setAdFormat(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adFormat:I

    return-void
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adId:Ljava/lang/String;

    return-void
.end method

.method public setAdSource(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adSource:I

    return-void
.end method

.method public setAdType(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adType:I

    return-void
.end method

.method public setAppInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->appInfo:Ljava/lang/String;

    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->brand:Ljava/lang/String;

    return-void
.end method

.method public setDeepLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->deepLink:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setDescription2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->description2:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->display:Ljava/lang/String;

    return-void
.end method

.method public setEcpmPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->ecpmPrice:D

    return-void
.end method

.method public setExpireReason(I)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/NativeAdWrapper;->setExpireReason(I)V

    :cond_0
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->ext:Ljava/lang/String;

    return-void
.end method

.method public setFillSource(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->FillSource:I

    return-void
.end method

.method public setFromLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->isFromLocal:Z

    return-void
.end method

.method public setHisavanaSource(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->hisavanaSource:I

    return-void
.end method

.method public setIcon(Lcom/hisavana/common/bean/AdNativeInfo$Image;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->icon:Lcom/hisavana/common/bean/AdNativeInfo$Image;

    return-void
.end method

.method public setIconAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->isIconAd:Z

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setImageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo$Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->imageList:Ljava/util/List;

    return-void
.end method

.method public setInternalAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->isInternalAd:Z

    return-void
.end method

.method public setMaterialStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->materialStyle:Ljava/lang/String;

    return-void
.end method

.method public setMaxPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->maxPrice:D

    return-void
.end method

.method public setMediatorSourceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->mediatorSourceName:Ljava/lang/String;

    return-void
.end method

.method public setMediatorSourceUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->mediatorSourceUnitId:Ljava/lang/String;

    return-void
.end method

.method public setMime(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->mime:I

    return-void
.end method

.method public setNativeAdWrapper(Lcom/hisavana/common/bean/NativeAdWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    return-void
.end method

.method public setOfflineAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->isOfflineAd:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPkgs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->pkgs:Ljava/lang/String;

    return-void
.end method

.method public setPreload(Z)V
    .locals 0

    return-void
.end method

.method public setPullNewestLive(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->pullNewestLive:I

    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->rating:Ljava/lang/String;

    return-void
.end method

.method public setRequestType(I)V
    .locals 0

    return-void
.end method

.method public setSaleprice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->saleprice:Ljava/lang/String;

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sceneId:Ljava/lang/String;

    return-void
.end method

.method public setSceneToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sceneToken:Ljava/lang/String;

    return-void
.end method

.method public setSdkTypeSetStoreMark(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sdkTypeSetStoreMark:I

    return-void
.end method

.method public setSecondPrice(D)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*----> AdNativeInfo setSecondPrice price"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssp_second_price"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->secondPrice:D

    return-void
.end method

.method public setShowId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->showId:Ljava/lang/String;

    return-void
.end method

.method public setSocialContext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->socialContext:Ljava/lang/String;

    return-void
.end method

.method public setSourceSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sourceSize:Ljava/lang/String;

    return-void
.end method

.method public setSponsoredTranslation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sponsoredTranslation:Ljava/lang/String;

    return-void
.end method

.method public setSspWebRecommendInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sspWebRecommendInfos:Ljava/util/List;

    return-void
.end method

.method public setStoreMarkTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->storeMarkTextColor:I

    return-void
.end method

.method public setStoreMarkTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->storeMarkTextSize:I

    return-void
.end method

.method public setTimeOut(Z)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTriggerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->triggerId:Ljava/lang/String;

    return-void
.end method

.method public setTriggerTs(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->triggerTs:Ljava/lang/Long;

    return-void
.end method

.method public setTtl(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->ttl:I

    return-void
.end method

.method public setUseRecommend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->useRecommendStatus:Z

    return-void
.end method

.method public setcId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->cId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAdNativeInfo{adId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->cId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->description2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imageList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->imageList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", icon="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->icon:Lcom/hisavana/common/bean/AdNativeInfo$Image;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", nativeAdWrapper="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", adCallToAction=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adCallToAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rating=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->rating:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pkgs=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->pkgs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adSource:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", socialContext=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->socialContext:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sponsoredTranslation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->sponsoredTranslation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", price=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->price:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", saleprice=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->saleprice:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", display=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->display:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", brand=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/bean/AdNativeInfo;->brand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->ttl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsRelease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->mIsRelease:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adCreateId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->adCreateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDefaultAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->isInternalAd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mediatorSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->mediatorSourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediatorSourceUnitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/bean/AdNativeInfo;->mediatorSourceUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterView()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/AdNativeInfo;->nativeAdWrapper:Lcom/hisavana/common/bean/NativeAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V

    :cond_0
    return-void
.end method
