.class public Lae/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;IILcom/hisavana/common/base/BaseNative;Lz6/d;)Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p3, :cond_5

    :try_start_0
    new-instance v8, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-direct {v8}, Lcom/hisavana/common/bean/AdNativeInfo;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getCtatext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCallToAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getHisavanaSource()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setHisavanaSource(I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    invoke-direct {v2}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getW()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setWidth(I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getH()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setHeight(I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setCached(Z)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v8, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setIcon(Lcom/hisavana/common/bean/AdNativeInfo$Image;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    invoke-direct {v2}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getW()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setWidth(I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getH()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setHeight(I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setCached(Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v8, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setImageList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getRating()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setRating(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getBidPrice()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_2

    invoke-virtual {v8, v1, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setEcpmPrice(D)V

    :cond_2
    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdType(I)V

    invoke-virtual {v8, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setTtl(I)V

    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getAdSource()I

    move-result p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdSource(I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setMaterialStyle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdCreateId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "0"

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdCreateId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCreateId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isOfflineAd()Z

    move-result p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setOfflineAd(Z)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getPullNewestLive()I

    move-result p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setPullNewestLive(I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAppInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAppInfo(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->isIconAd()Z

    move-result p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setIconAd(Z)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getPullNewestLive()I

    move-result p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setPullNewestLive(I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDeepLinkUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setDeepLink(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseNative;->getTriggerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setTriggerId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isDefaultAd()Z

    move-result p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setInternalAd(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getSourceSize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setSourceSize(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdFormat()I

    move-result p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdFormat(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isUseRecommend()Z

    move-result p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setUseRecommend(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :try_start_4
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getRecommendInfos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setSspWebRecommendInfos(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :try_start_5
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setFromLocal(Z)V

    new-instance p1, Lae/a$a;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move-object v4, p3

    move-object v5, v8

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lae/a$a;-><init>(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;Lz6/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-virtual {v8, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setNativeAdWrapper(Lcom/hisavana/common/bean/NativeAdWrapper;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v8

    :goto_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "PlatformUtil"

    invoke-virtual {p1, p2, p0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method
