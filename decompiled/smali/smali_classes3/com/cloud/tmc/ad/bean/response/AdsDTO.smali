.class public Lcom/cloud/tmc/ad/bean/response/AdsDTO;
.super Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;


# instance fields
.field private actualShowRate:Ljava/lang/Integer;

.field private actualShowTime:Ljava/lang/Long;

.field private adPsType:Ljava/lang/Integer;

.field private appIdExternal:Ljava/lang/String;

.field app_id:Ljava/lang/String;

.field private calledUrlType:I

.field private clickUrlTs:J

.field private clickid:Ljava/lang/String;

.field private codeSeatIdExternal:Ljava/lang/String;

.field private deepLinkUrlFirst:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fill_ts:Ljava/lang/Long;

.field private imageIsDownload:Ljava/lang/Boolean;

.field private impressionUrl:Ljava/lang/String;

.field private industryId:Ljava/lang/String;

.field private isACReady:Ljava/lang/Boolean;

.field private isEffectiveShow:Ljava/lang/Integer;

.field offlineAdExpireTime:Ljava/lang/Long;

.field offlineAdLaunchDateStr:Ljava/lang/String;

.field offlineAdStartDateLong:Ljava/lang/Long;

.field private psRequestManager:Lcom/cloud/tmc/ad/ps/PsRequestManager;

.field private pslinkAppName:Ljava/lang/String;

.field private requestPsTs:J

.field private returnPsTs:J

.field private showArea:Ljava/lang/String;

.field private showDate:J

.field private showNum:Ljava/lang/Integer;

.field private showReportTimeType:Ljava/lang/Integer;

.field private source:I

.field private splashCountTime:Ljava/lang/Integer;

.field private tableId:I

.field private uuid:Ljava/lang/String;

.field private viewJsonData:Lcom/cloud/tmc/ad/bean/response/ViewJson;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    const-string v1, "0*0"

    iput-object v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    const/4 v1, 0x3

    iput v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->calledUrlType:I

    iput-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getACReady()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

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

.method public getActualShowRate()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

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

.method public getActualShowTime()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

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

.method public getAdPsType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAppIdExternal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->appIdExternal:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCalledUrlType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->calledUrlType:I

    return v0
.end method

.method public getClickUrlTs()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->clickUrlTs:J

    return-wide v0
.end method

.method public getClickid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeSeatIdExternal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->codeSeatIdExternal:Ljava/lang/String;

    return-object v0
.end method

.method public getDeepLinkUrlFirst()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFill_ts()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

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

.method public getImageIsDownload()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

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

.method public getImpressionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIndustryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->industryId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEffectiveShow()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

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

.method public getMaxShowCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getOffline()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getOffline()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;->getMaxShowPPPD()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOfflineAdExpireTime()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

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

.method public getOfflineAdLaunchDateStr()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adsDTO idOfflineAdExpired binaryStr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineAdExpiredUtil"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineAdStartDateLong()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

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

.method public getOfflineH5Url()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getDialogType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getDialogJson()Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getDialogJson()Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getOffline()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getOffline()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;->getRes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getOffline()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;->getZipRes()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getPsRequestManager()Lcom/cloud/tmc/ad/ps/PsRequestManager;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->psRequestManager:Lcom/cloud/tmc/ad/ps/PsRequestManager;

    return-object v0
.end method

.method public getPslinkAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPsTs()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->requestPsTs:J

    return-wide v0
.end method

.method public getReturnPsTs()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->returnPsTs:J

    return-wide v0
.end method

.method public getShowArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    return-object v0
.end method

.method public getShowDate()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showDate:J

    return-wide v0
.end method

.method public getShowNum()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

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

.method public getShowReportTimeType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

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

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->source:I

    return v0
.end method

.method public getSplashCountTime()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

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

.method public getTableId()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->tableId:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/tmc/ad/bean/response/ViewJson;

    if-nez v1, :cond_1

    :try_start_0
    const-class v1, Lcom/cloud/tmc/ad/bean/response/ViewJson;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/ad/bean/response/ViewJson;

    iput-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/tmc/ad/bean/response/ViewJson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/tmc/ad/bean/response/ViewJson;

    return-object v0
.end method

.method public isH5Zip()Z
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getDialogType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getDialogJson()Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getOffline()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getOffline()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;->getRes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getOffline()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;->getZipRes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method public isReachedDisplayTimes()Z
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/tmc/ad/bean/response/ViewJson;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getOffline()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0cshowNum\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0cdata.getOffline().getMaxShowPPPD()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getOffline()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;->getMaxShowPPPD()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OfflineAdExpiredUtil"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getShowNum()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson;->getOffline()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;->getMaxShowPPPD()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v2, v0, :cond_2

    return v1

    :cond_2
    const-string v0, "adsDTO isReachedDisplayTimes false"

    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setACReady(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    return-void
.end method

.method public setActualShowRate(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    return-void
.end method

.method public setActualShowTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    return-void
.end method

.method public setAdPsType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    return-void
.end method

.method public setAppIdExternal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->appIdExternal:Ljava/lang/String;

    return-void
.end method

.method public setApp_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setCalledUrlType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->calledUrlType:I

    return-void
.end method

.method public setClickUrlTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->clickUrlTs:J

    return-void
.end method

.method public setClickid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    return-void
.end method

.method public setCodeSeatIdExternal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->codeSeatIdExternal:Ljava/lang/String;

    return-void
.end method

.method public setDeepLinkUrlFirst(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setFill_ts(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    return-void
.end method

.method public setImageIsDownload(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    return-void
.end method

.method public setImpressionUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    return-void
.end method

.method public setIndustryId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->industryId:Ljava/lang/String;

    return-void
.end method

.method public setIsEffectiveShow(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    return-void
.end method

.method public setOfflineAdExpireTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    return-void
.end method

.method public setOfflineAdLaunchDateStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    return-void
.end method

.method public setOfflineAdStartDateLong(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    return-void
.end method

.method public setPsRequestManager(Lcom/cloud/tmc/ad/ps/PsRequestManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->psRequestManager:Lcom/cloud/tmc/ad/ps/PsRequestManager;

    return-void
.end method

.method public setPslinkAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    return-void
.end method

.method public setRequestPsTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->requestPsTs:J

    return-void
.end method

.method public setReturnPsTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->returnPsTs:J

    return-void
.end method

.method public setShowArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    return-void
.end method

.method public setShowDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showDate:J

    return-void
.end method

.method public setShowNum(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    return-void
.end method

.method public setShowReportTimeType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    return-void
.end method

.method public setSource(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->source:I

    return-void
.end method

.method public setSplashCountTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    return-void
.end method

.method public setTableId(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->tableId:I

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setViewJsonData(Lcom/cloud/tmc/ad/bean/response/ViewJson;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/tmc/ad/bean/response/ViewJson;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdsDTO{fill_ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", splashCountTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isACReady="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", imageIsDownload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", deepLinkUrlFirst=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actualShowTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", actualShowRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", showArea=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isEffectiveShow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", showReportTimeType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", adPsType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", calledUrlType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->calledUrlType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pslinkAppName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clickid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", requestPsTs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->requestPsTs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", returnPsTs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->returnPsTs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", impressionUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clickUrlTs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->clickUrlTs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", psRequestManager="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->psRequestManager:Lcom/cloud/tmc/ad/ps/PsRequestManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", viewJsonData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/tmc/ad/bean/response/ViewJson;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", filePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", showDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", tableId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->tableId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", source="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->source:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showNum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", offlineAdStartDateLong="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", offlineAdLaunchDateStr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", offlineAdExpireTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", app_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", industryId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->industryId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appIdExternal=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->appIdExternal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", codeSeatIdExternal=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->codeSeatIdExternal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
