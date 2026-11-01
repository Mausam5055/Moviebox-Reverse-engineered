.class public Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
.super Ljava/lang/Object;


# instance fields
.field private adFormat:Ljava/lang/Integer;

.field private adRequestVer:Ljava/lang/Integer;

.field private adSeatType:Ljava/lang/String;

.field private adShowCountLimit:Ljava/lang/Integer;

.field private applicationId:Ljava/lang/String;

.field private carouselCount:Ljava/lang/Integer;

.field private carouselTime:Ljava/lang/Integer;

.field private codeSeatId:Ljava/lang/String;

.field private codeSeatType:Ljava/lang/Integer;

.field private crosslevelComparison:Ljava/lang/Boolean;

.field private volatile currentShowTimes:Ljava/lang/Integer;

.field private date:Ljava/lang/String;

.field private fillTimeoutDuration:Ljava/lang/Integer;

.field private h5AdUrl:Ljava/lang/String;

.field private isAdRequestFail:Z

.field private isDefaultConfig:Ljava/lang/Boolean;

.field private isShowSourceSize:Ljava/lang/Boolean;

.field private transient json:Ljava/lang/String;

.field private lastOfflineAdEnable:Ljava/lang/Boolean;

.field private lastRequestAdTime:J

.field private volatile lastShowAdTime:J

.field private volatile localOfflineAdCacheCount:I

.field private offlineAdCacheCount:Ljava/lang/Integer;

.field private offlineAdEnable:Z

.field private offlineAdRequestCount:Ljava/lang/Integer;

.field private offlineAdRequestTimeInterval:Ljava/lang/Integer;

.field private offlineAdRequestTimeIntervalNoAd:Ljava/lang/Integer;

.field private pictureDelayCloseTime:Ljava/lang/Integer;

.field private priorityH5Ad:Ljava/lang/Boolean;

.field private retentionEndCardRatio:Ljava/lang/Integer;

.field private showInterval:Ljava/lang/Integer;

.field private videoDelayCloseTime:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isAdRequestFail:Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->pictureDelayCloseTime:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->videoDelayCloseTime:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->retentionEndCardRatio:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adFormat:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAdFormat()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adFormat:Ljava/lang/Integer;

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

.method public getAdRequestVer()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adRequestVer:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getAdSeatType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adSeatType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdShowCountLimit()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adShowCountLimit:Ljava/lang/Integer;

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

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCarouselCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->carouselCount:Ljava/lang/Integer;

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

.method public getCarouselTime()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->carouselTime:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCodeSeatId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->codeSeatId:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeSeatType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->codeSeatType:Ljava/lang/Integer;

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

.method public getCrosslevelComparison()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->crosslevelComparison:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentShowTimes()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->currentShowTimes:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->currentShowTimes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->date:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->date:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getFillTimeoutDuration()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->fillTimeoutDuration:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x1388

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getH5AdUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->h5AdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->json:Ljava/lang/String;

    return-object v0
.end method

.method public getLastOfflineAdEnable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastOfflineAdEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLastRequestAdTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastRequestAdTime:J

    return-wide v0
.end method

.method public getLastShowAdTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastShowAdTime:J

    return-wide v0
.end method

.method public getLocalOfflineAdCacheCount()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->localOfflineAdCacheCount:I

    return v0
.end method

.method public getOfflineAdCacheCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdCacheCount:Ljava/lang/Integer;

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

.method public getOfflineAdRequestCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestCount:Ljava/lang/Integer;

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

.method public getOfflineAdRequestTimeInterval()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestTimeInterval:Ljava/lang/Integer;

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

.method public getOfflineAdRequestTimeIntervalNoAd()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestTimeIntervalNoAd:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPictureDelayCloseTime()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->pictureDelayCloseTime:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRetentionEndCardRatio()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->retentionEndCardRatio:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getShowInterval()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->showInterval:Ljava/lang/Integer;

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

.method public getShowSourceSize()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isShowSourceSize:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getVideoDelayCloseTime()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->videoDelayCloseTime:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isAdRequestFail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isAdRequestFail:Z

    return v0
.end method

.method public isDefaultConfig()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isDefaultConfig:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOfflineAdEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdEnable:Z

    return v0
.end method

.method public isPriorityH5Ad()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->priorityH5Ad:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setAdFormat(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adFormat:Ljava/lang/Integer;

    return-void
.end method

.method public setAdRequestFail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isAdRequestFail:Z

    return-void
.end method

.method public setAdRequestVer(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adRequestVer:Ljava/lang/Integer;

    return-void
.end method

.method public setAdSeatType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adSeatType:Ljava/lang/String;

    return-void
.end method

.method public setAdShowCountLimit(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adShowCountLimit:Ljava/lang/Integer;

    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setCarouselCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->carouselCount:Ljava/lang/Integer;

    return-void
.end method

.method public setCarouselTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->carouselTime:Ljava/lang/Integer;

    return-void
.end method

.method public setCodeSeatId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->codeSeatId:Ljava/lang/String;

    return-void
.end method

.method public setCodeSeatType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->codeSeatType:Ljava/lang/Integer;

    return-void
.end method

.method public setCrosslevelComparison(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->crosslevelComparison:Ljava/lang/Boolean;

    return-void
.end method

.method public setCurrentShowTimes(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->currentShowTimes:Ljava/lang/Integer;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->date:Ljava/lang/String;

    return-void
.end method

.method public setDefaultConfig(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isDefaultConfig:Ljava/lang/Boolean;

    return-void
.end method

.method public setFillTimeoutDuration(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->fillTimeoutDuration:Ljava/lang/Integer;

    return-void
.end method

.method public setH5AdUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->h5AdUrl:Ljava/lang/String;

    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->json:Ljava/lang/String;

    return-void
.end method

.method public setLastOfflineAdEnable(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastOfflineAdEnable:Ljava/lang/Boolean;

    return-void
.end method

.method public setLastRequestAdTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastRequestAdTime:J

    return-void
.end method

.method public setLastShowAdTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastShowAdTime:J

    return-void
.end method

.method public setLocalOfflineAdCacheCount(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->localOfflineAdCacheCount:I

    return-void
.end method

.method public setOfflineAdCacheCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdCacheCount:Ljava/lang/Integer;

    return-void
.end method

.method public setOfflineAdEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdEnable:Z

    return-void
.end method

.method public setOfflineAdRequestCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestCount:Ljava/lang/Integer;

    return-void
.end method

.method public setOfflineAdRequestTimeInterval(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestTimeInterval:Ljava/lang/Integer;

    return-void
.end method

.method public setOfflineAdRequestTimeIntervalNoAd(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestTimeIntervalNoAd:Ljava/lang/Integer;

    return-void
.end method

.method public setPriorityH5Ad(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->priorityH5Ad:Ljava/lang/Boolean;

    return-void
.end method

.method public setShowInterval(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->showInterval:Ljava/lang/Integer;

    return-void
.end method

.method public setShowSourceSize(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isShowSourceSize:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigCodeSeatDTO{applicationId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", codeSeatId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->codeSeatId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", codeSeatType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->codeSeatType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", adSeatType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adSeatType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", offlineAdEnable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdEnable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", offlineAdCacheCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdCacheCount:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", offlineAdRequestCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestCount:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", offlineAdRequestTimeInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestTimeInterval:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", offlineAdRequestTimeIntervalNoAd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestTimeIntervalNoAd:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isAdRequestFail="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isAdRequestFail:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", adShowCountLimit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adShowCountLimit:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currentShowTimes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->currentShowTimes:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", date=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->date:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", lastRequestAdTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastRequestAdTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", carouselTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->carouselTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", carouselCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->carouselCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->showInterval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastShowAdTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastShowAdTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fillTimeoutDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->fillTimeoutDuration:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localOfflineAdCacheCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->localOfflineAdCacheCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastOfflineAdEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastOfflineAdEnable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", crosslevelComparison ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->crosslevelComparison:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priorityH5Ad ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->priorityH5Ad:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", h5AdUrl ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->h5AdUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pictureDelayCloseTime ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->pictureDelayCloseTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoDelayCloseTime ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->videoDelayCloseTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retentionEndCardRatio ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->retentionEndCardRatio:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
