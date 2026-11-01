.class public abstract Lcom/cloud/hisavana/sdk/l1;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

.field private static b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Z)Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;
    .locals 4

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;-><init>()V

    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;-><init>()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setInstallTime(Ljava/lang/String;)V

    invoke-static {}, Li7/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setVersionInt(Ljava/lang/String;)V

    invoke-static {}, Li7/c;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setVersion(Ljava/lang/String;)V

    invoke-static {}, Li7/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setSdkVersion(Ljava/lang/String;)V

    const v2, 0x57f08

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setSdkVersionCode(I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setUserAgent(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/i0;->c(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v2, v2

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setPsVersion(J)V

    const-string v2, "Online"

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setPsChannel(Ljava/lang/String;)V

    const-string v2, "1.0.7"

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;->setPsApiVersion(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;-><init>()V

    invoke-static {}, Li7/c;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setType(I)V

    invoke-static {}, Li7/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setBrand(Ljava/lang/String;)V

    invoke-static {}, Li7/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setModel(Ljava/lang/String;)V

    invoke-static {}, Li7/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setMaker(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setGaid(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setOsType(I)V

    invoke-static {}, Li7/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setOsVersion(Ljava/lang/String;)V

    invoke-static {}, Li7/c;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setScreenWidth(I)V

    invoke-static {}, Li7/c;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setScreenHeight(I)V

    invoke-static {}, Li7/c;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setScreenDensity(I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setTurnOffPerAds(I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setCpu(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Li7/c;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setOsApiLevel(Ljava/lang/String;)V

    if-nez p0, :cond_1

    invoke-static {}, Li7/a;->h0()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Li7/a;->m()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p0}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setAntifraud(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setTotalRam(Ljava/lang/Long;)V

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/l1;->f()Z

    move-result v0

    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;

    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;-><init>()V

    sget-object v2, Lcom/cloud/hisavana/sdk/l1;->b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    iget-object v3, v2, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

    iput-object v3, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

    iget-object v2, v2, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    new-instance v2, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;-><init>()V

    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    sget-object v2, La7/c;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->applicationId:Ljava/lang/String;

    invoke-static {}, La7/c;->q()Z

    move-result v2

    iput-boolean v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->testRequest:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->getGaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setGaid(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setBaseStation(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->d()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setLatitude(D)V

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->f()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setLongitude(D)V

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setCoordTime(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/i0;->g(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->ascribeEnable:Z

    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomCloudControlKey;->getCustomRequestKeys()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;->customKeys:Ljava/util/List;

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public static c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/l1;->d(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/l1;->e()Z

    move-result v0

    sget-object v1, Lcom/cloud/hisavana/sdk/l1;->a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->copy(Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->requestId:Ljava/lang/String;

    invoke-static {}, La7/c;->q()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->testRequest:Ljava/lang/Boolean;

    sget-object v2, La7/c;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->applicationId:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->apiType:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->defaultAd:Z

    iget-boolean v4, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAd:Z

    iput-boolean v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->offlineAd:Z

    iget v4, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->cacheAdCount:I

    iput v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->cachedAdCount:I

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setId(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    iget v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setType(I)V

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    iget v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mAdCount:I

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setAdCount(I)V

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    invoke-virtual {v4, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setWidth(I)V

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    invoke-virtual {v4, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setHeight(I)V

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setGameName(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameScene:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setGameScene(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->extInfo:Ljava/util/Map;

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setExtInfo(Ljava/util/Map;)V

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    iget-boolean v5, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->supportEw:Z

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setAdPriority(I)V

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAdEnable:Z

    invoke-virtual {v4, p0}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setOfflineAdEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setWebPageInfo(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k1;->r()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;-><init>()V

    new-array p1, v2, [Ljava/lang/Integer;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;->api:[Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v3

    const-string p1, "hisavana"

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;->omidpn:Ljava/lang/String;

    invoke-static {}, Lfe/a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;->omidpv:Ljava/lang/String;

    iget-object p1, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setOmSdk(Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;)V

    :cond_2
    iget-object p0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setIpAddress(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setOneid(Ljava/lang/String;)V

    :cond_3
    if-eqz p0, :cond_4

    invoke-static {}, Li7/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setImsi(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setLanguage(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Li7/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Li7/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setOperatorType(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setGaid(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->a(Landroid/content/Context;)Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setNetworkConnectionType(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setPsCountryCode(Ljava/lang/String;)V

    :cond_4
    iget-object p0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setBaseStation(Ljava/lang/String;)V

    iget-object p0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->d()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setLatitude(D)V

    iget-object p0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->f()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setLongitude(D)V

    iget-object p0, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->setCoordTime(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private static declared-synchronized e()Z
    .locals 4

    const-class v0, Lcom/cloud/hisavana/sdk/l1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/l1;->a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/l1;->a(Z)Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    move-result-object v1

    sput-object v1, Lcom/cloud/hisavana/sdk/l1;->a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->getAntifraud()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Li7/a;->h0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Li7/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/cloud/hisavana/sdk/l1;->a:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    iget-object v3, v3, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    invoke-virtual {v3, v1}, Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;->setAntifraud(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v0

    return v2

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static declared-synchronized f()Z
    .locals 3

    const-class v0, Lcom/cloud/hisavana/sdk/l1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/l1;->b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/l1;->a(Z)Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    move-result-object v2

    sput-object v2, Lcom/cloud/hisavana/sdk/l1;->b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
