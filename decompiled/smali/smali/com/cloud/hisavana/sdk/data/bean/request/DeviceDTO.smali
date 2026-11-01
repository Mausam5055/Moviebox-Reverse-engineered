.class public Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;
.super Ljava/lang/Object;


# instance fields
.field private androidIdMd5:Ljava/lang/String;

.field private androidIdSha1:Ljava/lang/String;

.field private antifraud:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private cpu:Ljava/lang/String;

.field private gaid:Ljava/lang/String;

.field private gaidAES:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private gaidNewAES:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private maker:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private networkConnectionType:Ljava/lang/String;

.field private oneid:Ljava/lang/String;

.field private operatorType:Ljava/lang/String;

.field private osApiLevel:Ljava/lang/String;

.field private osType:I

.field private osVersion:Ljava/lang/String;

.field private psCountryCode:Ljava/lang/String;

.field private screenDensity:I

.field private screenHeight:I

.field private screenWidth:I

.field private totalRam:Ljava/lang/Long;

.field private turnOffPerAds:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidIdMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->androidIdMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidIdSha1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->androidIdSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getAntifraud()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->antifraud:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCpu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->cpu:Ljava/lang/String;

    return-object v0
.end method

.method public getGaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->gaid:Ljava/lang/String;

    return-object v0
.end method

.method public getGaidAES()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->gaidAES:Ljava/lang/String;

    return-object v0
.end method

.method public getGaidNewAES()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->gaidNewAES:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMaker()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->maker:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkConnectionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->networkConnectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getOneid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->oneid:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->operatorType:Ljava/lang/String;

    return-object v0
.end method

.method public getOsApiLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->osApiLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getOsType()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->osType:I

    return v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPsCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->psCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenDensity()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->screenDensity:I

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->screenWidth:I

    return v0
.end method

.method public getTurnOffPerAds()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->turnOffPerAds:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->type:I

    return v0
.end method

.method public setAndroidIdMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->androidIdMd5:Ljava/lang/String;

    return-void
.end method

.method public setAndroidIdSha1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->androidIdSha1:Ljava/lang/String;

    return-void
.end method

.method public setAntifraud(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->antifraud:Ljava/lang/String;

    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->brand:Ljava/lang/String;

    return-void
.end method

.method public setCpu(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->cpu:Ljava/lang/String;

    return-void
.end method

.method public setGaid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->gaid:Ljava/lang/String;

    return-void
.end method

.method public setGaidAES(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->gaidAES:Ljava/lang/String;

    return-void
.end method

.method public setGaidNewAES(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->gaidNewAES:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->language:Ljava/lang/String;

    return-void
.end method

.method public setMaker(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->maker:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->model:Ljava/lang/String;

    return-void
.end method

.method public setNetworkConnectionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->networkConnectionType:Ljava/lang/String;

    return-void
.end method

.method public setOneid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->oneid:Ljava/lang/String;

    return-void
.end method

.method public setOperatorType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->operatorType:Ljava/lang/String;

    return-void
.end method

.method public setOsApiLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->osApiLevel:Ljava/lang/String;

    return-void
.end method

.method public setOsType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->osType:I

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public setPsCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->psCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setScreenDensity(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->screenDensity:I

    return-void
.end method

.method public setScreenHeight(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->screenHeight:I

    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->screenWidth:I

    return-void
.end method

.method public setTotalRam(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->totalRam:Ljava/lang/Long;

    return-void
.end method

.method public setTurnOffPerAds(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->turnOffPerAds:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->type:I

    return-void
.end method
