.class public Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;
    }
.end annotation


# instance fields
.field private abTestEnable:Ljava/lang/Boolean;

.field private adInternalBlackBrands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adInternalRequestEnable:Ljava/lang/Boolean;

.field private antifraudPowerEnable:Ljava/lang/Boolean;

.field private antifraudSubfunctionControl:Ljava/lang/String;

.field private cdnVersionAddressRequestTimeInterval:Ljava/lang/Integer;

.field private clickDataSyncTimeInterval:Ljava/lang/Integer;

.field private cloudControlCacheInterval:Ljava/lang/Integer;

.field private cloudControlVersion:Ljava/lang/String;

.field private codeSeats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;",
            ">;"
        }
    .end annotation
.end field

.field private customConfigs:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;

.field private defaultAdRequestTimeInterval:Ljava/lang/Integer;

.field private extInfo:Ljava/lang/String;

.field private initOmIdEnable:Ljava/lang/Boolean;

.field private initPolyGammaEnable:Z

.field private preConnectEnable:Ljava/lang/Boolean;

.field private showDataSyncTimeInterval:Ljava/lang/Integer;

.field private showRuStyle:Z

.field private showTrackingNewPowerEnable:Z

.field private sspUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showRuStyle:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->initOmIdEnable:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAbTestEnable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->abTestEnable:Ljava/lang/Boolean;

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

.method public getAdInternalBlackBrands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->adInternalBlackBrands:Ljava/util/List;

    return-object v0
.end method

.method public getAdInternalRequestEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->adInternalRequestEnable:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getAntifraudPowerEnable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->antifraudPowerEnable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAntifraudSubfunctionControl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->antifraudSubfunctionControl:Ljava/lang/String;

    return-object v0
.end method

.method public getCdnVersionAddressRequestTimeInterval()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cdnVersionAddressRequestTimeInterval:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x5a0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getClickDataSyncTimeInterval()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->clickDataSyncTimeInterval:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCloudControlCacheInterval()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cloudControlCacheInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCloudControlVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cloudControlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeSeats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->codeSeats:Ljava/util/List;

    return-object v0
.end method

.method public getCustomConfigs()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->customConfigs:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->extInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPreConnectEnable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->preConnectEnable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getShowDataSyncTimeInterval()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showDataSyncTimeInterval:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSspUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->sspUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isInitPolyGammaEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->initPolyGammaEnable:Z

    return v0
.end method

.method public isOmIdEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->initOmIdEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isShowRuStyle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showRuStyle:Z

    return v0
.end method

.method public isShowTrackingNewPowerEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showTrackingNewPowerEnable:Z

    return v0
.end method

.method public setAbTestEnable(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->abTestEnable:Ljava/lang/Boolean;

    return-void
.end method

.method public setAntifraudPowerEnable(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->antifraudPowerEnable:Ljava/lang/Boolean;

    return-void
.end method

.method public setAntifraudSubfunctionControl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->antifraudSubfunctionControl:Ljava/lang/String;

    return-void
.end method

.method public setCdnVersionAddressRequestTimeInterval(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cdnVersionAddressRequestTimeInterval:Ljava/lang/Integer;

    return-void
.end method

.method public setClickDataSyncTimeInterval(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->clickDataSyncTimeInterval:Ljava/lang/Integer;

    return-void
.end method

.method public setCloudControlCacheInterval(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cloudControlCacheInterval:Ljava/lang/Integer;

    return-void
.end method

.method public setCloudControlVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cloudControlVersion:Ljava/lang/String;

    return-void
.end method

.method public setCodeSeats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->codeSeats:Ljava/util/List;

    return-void
.end method

.method public setCustomConfigs(Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->customConfigs:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;

    return-void
.end method

.method public setInitPolyGammaEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->initPolyGammaEnable:Z

    return-void
.end method

.method public setPreConnectEnable(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->preConnectEnable:Ljava/lang/Boolean;

    return-void
.end method

.method public setShowDataSyncTimeInterval(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showDataSyncTimeInterval:Ljava/lang/Integer;

    return-void
.end method

.method public setShowTrackingNewPowerEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showTrackingNewPowerEnable:Z

    return-void
.end method

.method public setSspUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->sspUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigTotalDTO{showTrackingNewPowerEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showTrackingNewPowerEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cloudControlVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cloudControlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", preConnectEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->preConnectEnable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", codeSeats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->codeSeats:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cdnVersionAddressRequestTimeInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cdnVersionAddressRequestTimeInterval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cloudControlCacheInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cloudControlCacheInterval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adInternalBlackBrands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->adInternalBlackBrands:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showRUStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showRuStyle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", abTestEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->abTestEnable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initPolyGammaEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->initPolyGammaEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adInternalRequestEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->adInternalRequestEnable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showDataSyncTimeInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showDataSyncTimeInterval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickDataSyncTimeInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->clickDataSyncTimeInterval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initOmIdEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->initOmIdEnable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->extInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->customConfigs:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
