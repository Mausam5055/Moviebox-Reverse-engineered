.class public Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtInfo"
.end annotation


# instance fields
.field adReqInterval:J

.field clientSamplingRatio:I

.field downloadCount:J

.field downloadStyle:I

.field enableClientSampling:Z

.field isUseCustomTabsToOpenLandingPage:Z

.field oldStyle:I

.field requestStatusOff:Ljava/lang/Boolean;

.field scoreCount:F

.field scoreStyle:I

.field showWebLetterAdPrice:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->oldStyle:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->scoreStyle:I

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->downloadStyle:I

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->scoreCount:F

    const-wide/32 v0, 0x186a0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->downloadCount:J

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->requestStatusOff:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->isUseCustomTabsToOpenLandingPage:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->adReqInterval:J

    const/16 v0, 0xa

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->clientSamplingRatio:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->enableClientSampling:Z

    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->showWebLetterAdPrice:I

    return-void
.end method


# virtual methods
.method public getAdReqInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->adReqInterval:J

    return-wide v0
.end method

.method public getClientSamplingRatio()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->clientSamplingRatio:I

    return v0
.end method

.method public getDownloadCount()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->downloadCount:J

    return-wide v0
.end method

.method public getDownloadStyle()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->downloadStyle:I

    return v0
.end method

.method public getOldStyle()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->oldStyle:I

    return v0
.end method

.method public getRequestStatusOff()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->requestStatusOff:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getScoreCount()F
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->scoreCount:F

    return v0
.end method

.method public getScoreStyle()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->scoreStyle:I

    return v0
.end method

.method public getShowWebLetterAdPrice()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->showWebLetterAdPrice:I

    return v0
.end method

.method public isEnableClientSampling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->enableClientSampling:Z

    return v0
.end method

.method public isUseCustomTabsToOpenLandingPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->isUseCustomTabsToOpenLandingPage:Z

    return v0
.end method

.method public setClientSamplingRatio(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->clientSamplingRatio:I

    return-void
.end method
