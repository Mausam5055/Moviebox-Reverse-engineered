.class public final Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;
.super Ljava/lang/Object;


# instance fields
.field private acClickUrl:Ljava/lang/String;

.field private acImageUrl:Ljava/lang/String;

.field private adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private adSeatType:Ljava/lang/String;

.field private adType:I

.field private advSeatType:Ljava/lang/String;

.field private appInfo:Ljava/lang/String;

.field private bidPrice:D

.field private buttonText:Ljava/lang/String;

.field private clicked:Z

.field private codeSeatType:I

.field private deeplinkUrl:Ljava/lang/String;

.field private descriptionText:Ljava/lang/String;

.field private hisavanaSource:I

.field private iconImage:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

.field private image:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

.field private isACReady:Z

.field private isAdShowed:Z

.field private isOfflineAd:Z

.field private isRegister:Z

.field private isRewarded:Z

.field private isTmplateAccessMode:Z

.field private isUseRecommend:Z

.field private materialStyle:Ljava/lang/String;

.field private nativeBridge:Lcom/cloud/hisavana/sdk/z3;

.field private price:Ljava/lang/String;

.field private rating:Ljava/lang/String;

.field private recommendInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:Ljava/lang/String;

.field private sdkTypeSetStoreMark:I

.field private secondPrice:D

.field private sequenceId:Ljava/lang/String;

.field private sourceSize:Ljava/lang/String;

.field private store:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

.field private storeMarkTextColor:I

.field private storeMarkTextSize:I

.field private title:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->hisavanaSource:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isAdShowed:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isRewarded:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->recommendInfos:Ljava/util/List;

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isUseRecommend:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->nativeBridge:Lcom/cloud/hisavana/sdk/z3;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/cloud/hisavana/sdk/z3;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->nativeBridge:Lcom/cloud/hisavana/sdk/z3;

    :cond_0
    invoke-static {p0}, Lh7/a;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method public getAcClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->acClickUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAcImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->acImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCreateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdFormat()I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/u3;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/hisavana/sdk/u3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdFormat()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object v0
.end method

.method public getAdSeatType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdSeatType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adType:I

    return v0
.end method

.method public getAdvSeatType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->advSeatType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAppInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->appInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getBidPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->bidPrice:D

    return-wide v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->buttonText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCodeSeatType()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->codeSeatType:I

    return v0
.end method

.method public getCtatext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public getDeeplinkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->deeplinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->descriptionText:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->descriptionText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getHisavanaSource()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->hisavanaSource:I

    return v0
.end method

.method public getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->iconImage:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    return-object v0
.end method

.method public getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->image:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    return-object v0
.end method

.method public getMaterialStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->materialStyle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getNativeBridge()Lcom/cloud/hisavana/sdk/z3;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->nativeBridge:Lcom/cloud/hisavana/sdk/z3;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPullNewestLive()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->recommendInfos:Ljava/util/List;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkTypeSetStoreMark()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->sdkTypeSetStoreMark:I

    return v0
.end method

.method public getSecondPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->secondPrice:D

    return-wide v0
.end method

.method public getSequenceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->sequenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->sourceSize:Ljava/lang/String;

    return-object v0
.end method

.method public getStore()Lcom/cloud/hisavana/sdk/common/bean/AdImage;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->store:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    return-object v0
.end method

.method public getStoreMarkTextColor()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->storeMarkTextColor:I

    return v0
.end method

.method public getStoreMarkTextSize()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->storeMarkTextSize:I

    return v0
.end method

.method public getTemplateEnum()Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isTmplateAccessMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->materialStyle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->materialStyle:Ljava/lang/String;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public isACReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isACReady:Z

    return v0
.end method

.method public isAdShowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isAdShowed:Z

    return v0
.end method

.method public isClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->clicked:Z

    return v0
.end method

.method public isDefaultAd()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMaterialStyleValid()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->materialStyle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->materialStyle:Ljava/lang/String;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isTmplateAccessMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMediaCached()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->image:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached()Z

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

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isOfflineAd:Z

    return v0
.end method

.method public isRegister()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isRegister:Z

    return v0
.end method

.method public isRewarded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isRewarded:Z

    return v0
.end method

.method public isTmplateAccessMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isTmplateAccessMode:Z

    return v0
.end method

.method public isUseRecommend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isUseRecommend:Z

    return v0
.end method

.method public setACReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isACReady:Z

    return-void
.end method

.method public setAcClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->acClickUrl:Ljava/lang/String;

    return-void
.end method

.method public setAcImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->acImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setAdItem(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method

.method public setAdSeatType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adSeatType:Ljava/lang/String;

    return-void
.end method

.method public setAdShowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isAdShowed:Z

    return-void
.end method

.method public setAdType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adType:I

    return-void
.end method

.method public setAdvSeatType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->advSeatType:Ljava/lang/String;

    return-void
.end method

.method public setAppInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->appInfo:Ljava/lang/String;

    return-void
.end method

.method public setBidPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->bidPrice:D

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->buttonText:Ljava/lang/String;

    return-void
.end method

.method public setClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->clicked:Z

    return-void
.end method

.method public setCodeSeatType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->codeSeatType:I

    return-void
.end method

.method public setCtatext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->buttonText:Ljava/lang/String;

    return-void
.end method

.method public setDeeplinkUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->deeplinkUrl:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->descriptionText:Ljava/lang/String;

    return-void
.end method

.method public setDescriptionText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->descriptionText:Ljava/lang/String;

    return-void
.end method

.method public setHisavanaSource(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->hisavanaSource:I

    return-void
.end method

.method public setIconImage(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->iconImage:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    return-void
.end method

.method public setImage(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->image:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    return-void
.end method

.method public setMaterialStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->materialStyle:Ljava/lang/String;

    return-void
.end method

.method public setNativeBridge(Lcom/cloud/hisavana/sdk/z3;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->nativeBridge:Lcom/cloud/hisavana/sdk/z3;

    return-void
.end method

.method public setOfflineAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isOfflineAd:Z

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->price:Ljava/lang/String;

    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->rating:Ljava/lang/String;

    return-void
.end method

.method public setRecommendInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->recommendInfos:Ljava/util/List;

    return-void
.end method

.method public setRegister(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isRegister:Z

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setRewarded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isRewarded:Z

    return-void
.end method

.method public setSdkTypeSetStoreMark(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->sdkTypeSetStoreMark:I

    return-void
.end method

.method public setSecondPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->secondPrice:D

    return-void
.end method

.method public setSequenceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->sequenceId:Ljava/lang/String;

    return-void
.end method

.method public setSourceSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->sourceSize:Ljava/lang/String;

    return-void
.end method

.method public setStore(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->store:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    return-void
.end method

.method public setStoreMarkTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->storeMarkTextColor:I

    return-void
.end method

.method public setStoreMarkTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->storeMarkTextSize:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTmplateAccessMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isTmplateAccessMode:Z

    return-void
.end method

.method public setUseRecommend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isUseRecommend:Z

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->ver:Ljava/lang/String;

    return-void
.end method
