.class public Lcom/hisavana/common/param/CloudConfigParam;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudConfigParam"

.field private static requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPostBody(Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    if-nez v0, :cond_1

    new-instance v0, Lcom/hisavana/common/param/CloudConfigPostBody;

    invoke-direct {v0}, Lcom/hisavana/common/param/CloudConfigPostBody;-><init>()V

    sput-object v0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    iput-object p0, v0, Lcom/hisavana/common/param/CloudConfigPostBody;->applicationId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lcom/hisavana/common/param/CloudConfigPostBody;->testRequest:Ljava/lang/Boolean;

    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    const-string p1, "aha"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->codeSeatFilterEnable:Z

    sget-object p0, Lcom/hisavana/common/bean/AppStartInfo;->extInfo:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/hisavana/common/param/Ext;

    invoke-direct {p1}, Lcom/hisavana/common/param/Ext;-><init>()V

    invoke-virtual {p1, p0}, Lcom/hisavana/common/param/Ext;->setTg(Ljava/util/Map;)V

    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    iput-object p1, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->ext:Lcom/hisavana/common/param/Ext;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    new-instance p0, Lcom/hisavana/common/param/ApplicationDTO;

    invoke-direct {p0}, Lcom/hisavana/common/param/ApplicationDTO;-><init>()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setInstallTime(Ljava/lang/String;)V

    invoke-static {}, Li7/c;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setVersion(Ljava/lang/String;)V

    const-string p1, "3.6.0.2"

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setSdkVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/r;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setUserAgent(Ljava/lang/String;)V

    sget-object p1, Lcom/hisavana/common/bean/AppStartInfo;->channel:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setChannel(Ljava/lang/String;)V

    sget-boolean p1, Lcom/hisavana/common/bean/AppStartInfo;->isFirstStartToday:Z

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setFirstStart(Z)V

    sget-object p1, Lcom/hisavana/common/bean/AppStartInfo;->activeTime:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/ApplicationDTO;->setActiveTime(Ljava/lang/String;)V

    sget-object p1, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    iput-object p0, p1, Lcom/hisavana/common/param/CloudConfigPostBody;->application:Lcom/hisavana/common/param/ApplicationDTO;

    new-instance p0, Lcom/hisavana/common/param/DeviceDTO;

    invoke-direct {p0}, Lcom/hisavana/common/param/DeviceDTO;-><init>()V

    invoke-static {}, Li7/c;->o()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/DeviceDTO;->setType(I)V

    invoke-static {}, Li7/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/DeviceDTO;->setBrand(Ljava/lang/String;)V

    invoke-static {}, Li7/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/DeviceDTO;->setModel(Ljava/lang/String;)V

    invoke-static {}, Li7/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/DeviceDTO;->setMaker(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/DeviceDTO;->setOsType(I)V

    invoke-static {}, Li7/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setOsVersion(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setLanguage(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->a(Landroid/content/Context;)Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setNetworkConnectionType(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setOperatorType(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setIpAddress(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setGaid(Ljava/lang/String;)V

    invoke-static {}, Li7/c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setImsi(Ljava/lang/String;)V

    invoke-static {}, Li7/c;->k()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setScreenWidth(I)V

    invoke-static {}, Li7/c;->j()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setScreenHeight(I)V

    invoke-static {}, Li7/c;->i()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setScreenDensity(I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setOneid(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hisavana/common/param/DeviceDTO;->setTotalRam(Ljava/lang/Long;)V

    sget-object p2, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    iput-object p0, p2, Lcom/hisavana/common/param/CloudConfigPostBody;->device:Lcom/hisavana/common/param/DeviceDTO;

    new-instance p0, Lcom/hisavana/common/param/UserDTO;

    invoke-direct {p0}, Lcom/hisavana/common/param/UserDTO;-><init>()V

    sget-object p2, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    iput-object p0, p2, Lcom/hisavana/common/param/CloudConfigPostBody;->user:Lcom/hisavana/common/param/UserDTO;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    iget-boolean p2, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->codeSeatFilterEnable:Z

    if-eqz p2, :cond_2

    iput-object p3, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->codeSeatFilterIds:Ljava/util/List;

    :cond_2
    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->device:Lcom/hisavana/common/param/DeviceDTO;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/hisavana/common/param/DeviceDTO;->getGaid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    iget-object p0, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->device:Lcom/hisavana/common/param/DeviceDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/DeviceDTO;->setGaid(Ljava/lang/String;)V

    :cond_3
    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    iget-object p0, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->user:Lcom/hisavana/common/param/UserDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/param/UserDTO;->setBaseStation(Ljava/lang/String;)V

    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    iget-object p0, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->user:Lcom/hisavana/common/param/UserDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->d()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/param/UserDTO;->setLatitude(D)V

    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    iget-object p0, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->user:Lcom/hisavana/common/param/UserDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->f()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/param/UserDTO;->setLongitude(D)V

    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    iget-object p0, p0, Lcom/hisavana/common/param/CloudConfigPostBody;->user:Lcom/hisavana/common/param/UserDTO;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->b()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/param/UserDTO;->setCoordTime(J)V

    sget-object p0, Lcom/hisavana/common/param/CloudConfigParam;->requestParam:Lcom/hisavana/common/param/CloudConfigPostBody;

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "CloudConfigParam"

    invoke-virtual {p1, p2, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method
