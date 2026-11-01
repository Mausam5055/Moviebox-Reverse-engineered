.class public Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field abTest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/AbTestDTO;",
            ">;"
        }
    .end annotation
.end field

.field adChoiceClickUrl:Ljava/lang/String;

.field adChoiceImageUrl:Ljava/lang/String;

.field adChoiceLegalText:Ljava/lang/String;

.field adCreativeId:Ljava/lang/Long;

.field adGroupId:Ljava/lang/Long;

.field adSeatType:Ljava/lang/String;

.field adm:Ljava/lang/String;

.field advSeatType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field advertiserId:Ljava/lang/Long;

.field applicationTitle:Ljava/lang/String;

.field auctionSecondPrice:Ljava/lang/Double;

.field bidPrice:Ljava/lang/Double;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field cacheTime:I

.field clickTrackingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field clickUrl:Ljava/lang/String;

.field codeSeatId:Ljava/lang/String;

.field codeSeatType:Ljava/lang/Integer;

.field commissionRatio:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field cost:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field deepLinkUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field dspType:Ljava/lang/Integer;

.field extInfo:Ljava/lang/String;

.field firstPrice:Ljava/lang/Double;

.field gaid:Ljava/lang/String;

.field id:Ljava/lang/Integer;

.field imageHeight:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field imageUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field imageWidth:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field materialStyle:Ljava/lang/String;

.field nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

.field offlineAd:Z

.field offlineAdLaunchDate:Ljava/lang/Long;

.field offlineAdStartDate:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field planId:Ljava/lang/Long;

.field planType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field psApplicationTitle:Ljava/lang/String;

.field psPackageName:Ljava/lang/String;

.field requestId:Ljava/lang/String;

.field scale:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private scales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field secondPrice:Ljava/lang/Double;

.field settlementRatio:Ljava/math/BigDecimal;

.field showTime:I

.field showTrackingSecretKey:Ljava/lang/String;

.field showTrackingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field storeDeeplink:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clickUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field viewJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbTest()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/AbTestDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->abTest:Ljava/util/List;

    return-object v0
.end method

.method public getAdChoiceClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adChoiceClickUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAdChoiceImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adChoiceImageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAdChoiceLegalText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adChoiceLegalText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAdCreativeId()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/Long;

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

.method public getAdGroupId()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/Long;

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

.method public getAdImageHeight()Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    invoke-virtual {v2}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    invoke-virtual {v1}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getAdImageWidth()Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    invoke-virtual {v2}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    invoke-virtual {v1}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getAdImgUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getAdSeatType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adSeatType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adm:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvSeatType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->advSeatType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertiserId()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/Long;

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

.method public getApplicationTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->applicationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAuctionSecondPrice()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTime()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->cacheTime:I

    return v0
.end method

.method public getClickTrackingUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->clickTrackingUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCodeSeatId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->codeSeatId:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeSeatType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->codeSeatType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDeepLinkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->deepLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDspType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->extInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getFirstPrice()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getGaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->gaid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getImageHeight()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getImageWidth()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getInstallApk()I
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    :try_start_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0

    :catch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getIsPslinkAd()I
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b1CustomAppPage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMaterialStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->materialStyle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getNativeObject()Lcom/cloud/tmc/ad/bean/response/NativeBean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    return-object v0
.end method

.method public getNewPrice()Ljava/lang/String;
    .locals 4

    const-string v0, "&"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_first_price="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_second_price="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_ratio="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->settlementRatio:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "ssp_second_price"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*----> AdsDTO getNewPrice() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdsDTO getNewPrice() error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public getNewPrice_Click()Ljava/lang/String;
    .locals 4

    const-string v0, "&"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "p2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "t="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->settlementRatio:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "ssp_second_price"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*----> AdsDTO getNewPrice_Click() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdsDTO getNewPrice_Click() error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public getOfflineAdLaunchDate()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getOfflineAdStartDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->offlineAdStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPlanId()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->planId:Ljava/lang/Long;

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

.method public getPlanType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->planType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPsApplicationTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->psApplicationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPsPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getScale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->scale:Ljava/lang/String;

    return-object v0
.end method

.method public getScales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->scales:Ljava/util/List;

    return-object v0
.end method

.method public getSecondPrice()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getSettlementRatio()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->settlementRatio:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getShowTime()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->showTime:I

    return v0
.end method

.method public getShowTrackingSecretKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->showTrackingSecretKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getShowTrackingUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->showTrackingUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStoreDeeplink()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    return-object v0
.end method

.method public isOfflineAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->offlineAd:Z

    return v0
.end method

.method public setAbTest(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/AbTestDTO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->abTest:Ljava/util/List;

    return-void
.end method

.method public setAdChoiceClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adChoiceClickUrl:Ljava/lang/String;

    return-void
.end method

.method public setAdChoiceImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adChoiceImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setAdChoiceLegalText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adChoiceLegalText:Ljava/lang/String;

    return-void
.end method

.method public setAdCreativeId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/Long;

    return-void
.end method

.method public setAdGroupId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/Long;

    return-void
.end method

.method public setAdSeatType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adSeatType:Ljava/lang/String;

    return-void
.end method

.method public setAdm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adm:Ljava/lang/String;

    return-void
.end method

.method public setAdvSeatType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->advSeatType:Ljava/lang/String;

    return-void
.end method

.method public setAdvertiserId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/Long;

    return-void
.end method

.method public setApplicationTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->applicationTitle:Ljava/lang/String;

    return-void
.end method

.method public setAuctionSecondPrice(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    return-void
.end method

.method public setCacheTime(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->cacheTime:I

    return-void
.end method

.method public setClickTrackingUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->clickTrackingUrls:Ljava/util/ArrayList;

    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    return-void
.end method

.method public setCodeSeatId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->codeSeatId:Ljava/lang/String;

    return-void
.end method

.method public setCodeSeatType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->codeSeatType:Ljava/lang/Integer;

    return-void
.end method

.method public setDeepLinkUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->deepLinkUrl:Ljava/lang/String;

    return-void
.end method

.method public setDspType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->extInfo:Ljava/lang/String;

    return-void
.end method

.method public setFirstPrice(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    return-void
.end method

.method public setGaid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->gaid:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setImageHeight(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageWidth(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    return-void
.end method

.method public setMaterialStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->materialStyle:Ljava/lang/String;

    return-void
.end method

.method public setNativeObject(Lcom/cloud/tmc/ad/bean/response/NativeBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    return-void
.end method

.method public setOfflineAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->offlineAd:Z

    return-void
.end method

.method public setOfflineAdLaunchDate(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    return-void
.end method

.method public setOfflineAdStartDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->offlineAdStartDate:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPlanId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->planId:Ljava/lang/Long;

    return-void
.end method

.method public setPlanType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->planType:Ljava/lang/String;

    return-void
.end method

.method public setPsApplicationTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->psApplicationTitle:Ljava/lang/String;

    return-void
.end method

.method public setPsPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setScale(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->scale:Ljava/lang/String;

    return-void
.end method

.method public setScales(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->scales:Ljava/util/List;

    return-void
.end method

.method public setSecondPrice(D)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new secondPrice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "old secondPrice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ssp_second_price"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getSecondPrice()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    :cond_0
    return-void
.end method

.method public setSecondPrice(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    return-void
.end method

.method public setSettlementRatio(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->settlementRatio:Ljava/math/BigDecimal;

    return-void
.end method

.method public setShowTime(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->showTime:I

    return-void
.end method

.method public setShowTrackingSecretKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->showTrackingSecretKey:Ljava/lang/String;

    return-void
.end method

.method public setShowTrackingUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->showTrackingUrls:Ljava/util/ArrayList;

    return-void
.end method

.method public setStoreDeeplink(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    return-void
.end method

.method public setViewJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    return-void
.end method
