.class public abstract Lcom/hisavana/mediation/config/CloudControlConfigSync;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static b:I

.field public static c:Landroid/os/Handler;

.field public static final d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b:I

    new-instance v0, Lcom/hisavana/mediation/config/CloudControlConfigSync$4;

    invoke-direct {v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync$4;-><init>()V

    sput-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->u()V

    return-void
.end method

.method public static b(I)V
    .locals 8

    invoke-static {}, Lcom/hisavana/common/tracking/TrackingUtil;->getTriggerId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sput v1, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b:I

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v1

    const-string v2, "cloudControlVersion"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lj7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->o(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAhaChannel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "aha"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "sdk_init"

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aha\u6e20\u9053\u8bf7\u6c42\u4e91\u63a7 triggerType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ids= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getCodeSeatIds()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getCodeSeatIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getCodeSeatIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {p0, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->o(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v2

    const-string v4, "new_config_ver"

    invoke-virtual {v2, v4}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CloudControlConfigSync - newVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",current version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->o(ILjava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v1

    const-string v2, "last_req_config_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lj7/a;->i(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v4

    const-string v5, "req_config_interval"

    const-wide/32 v6, 0x5265c00

    invoke-virtual {v4, v5, v6, v7}, Lj7/a;->i(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    cmp-long v1, v6, v4

    if-lez v1, :cond_7

    invoke-static {}, Lcom/hisavana/common/utils/NetUtil;->checkNetworkState()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v2, "request cloud config because of out of time"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->o(ILjava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "*----> new cloud config version is empty or is the same as current,don\'t send config request"

    invoke-virtual {p0, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->m(ILjava/lang/String;)V

    return-void
.end method

.method public static d(JLjava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cld_app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "trigger_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "cld_request_id"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "cld_request_ts"

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingADCldRequest(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic e(Lcom/hisavana/mediation/bean/CloudControlConfig;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->j(Lcom/hisavana/mediation/bean/CloudControlConfig;Z)V

    return-void
.end method

.method public static synthetic f(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->k(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedToUpdateLocalConfig newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",curVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudControlConfigSync"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_5

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xd

    if-le v0, v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, p0, v4

    if-lez p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    return v1

    :catch_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "not need update local config"

    invoke-virtual {p0, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return v3
.end method

.method public static synthetic h()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic i(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->o(ILjava/lang/String;)V

    return-void
.end method

.method public static j(Lcom/hisavana/mediation/bean/CloudControlConfig;Z)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    move-result-object v0

    const-string v1, "sdk_init"

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCodeSeats()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->b()V

    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCodeSeats()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/config/ConfigContentHelper;->i(Ljava/util/List;)Z

    move-result v0

    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisavana/mediation/config/ConfigContentHelper;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->t()V

    const/4 v2, 0x0

    const-string v3, "get cloud data success"

    invoke-static {v2, v3}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->m(ILjava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "*----> CloudControlConfigSync --> save data 2 sqlite failed!!!"

    invoke-virtual {p0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCloudControlVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cloudControlVersion"

    invoke-virtual {v0, v3, v2}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCloudControlVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "new_config_ver"

    invoke-virtual {p1, v2, v0}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*----> CloudControlConfigSync --> save data 2 sqlite --> \u6301\u4e45\u5316\u5f53\u524d\u4e91\u63a7\u7248\u672c\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCloudControlVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "CloudControlConfigSync --> extracted --> \u6570\u636e\u4e3a\u7a7a \u65e0\u6cd5\u4fdd\u5b58"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->t()V

    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->m(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static k(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "trigger_type"

    invoke-virtual {v0, v1, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p6, "cld_request_id"

    invoke-virtual {v0, p6, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    const-string v1, "cld_return_ts"

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :try_start_0
    const-string p5, "cld_return_time_Interval"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p3

    long-to-int p3, v1

    invoke-virtual {v0, p5, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p3, "code"

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p3, "message"

    if-eqz p0, :cond_1

    const-string p0, ""

    invoke-virtual {v0, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p0, "data"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingCldReturn(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic l()I
    .locals 1

    sget v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b:I

    return v0
.end method

.method public static m(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/hisavana/mediation/config/CloudControlConfigSync$b;

    invoke-direct {v0, p0, p1}, Lcom/hisavana/mediation/config/CloudControlConfigSync$b;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public static synthetic n()I
    .locals 2

    sget v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b:I

    return v0
.end method

.method public static o(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/hisavana/common/utils/NetUtil;->checkNetworkState()Z

    move-result v0

    const-string v1, "sdk_init"

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAhaChannel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "aha"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getCodeSeatIds()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getCodeSeatIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "requestCloudControl channel is aha,but codeSeatIds is empty,stop requestCloudControl"

    invoke-virtual {p0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->d(JLjava/lang/String;I)V

    const-string v2, "CloudControlConfigSync - send cloud control request"

    invoke-static {v2}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    new-instance v2, Lcom/cloud/hisavana/sdk/common/http/a;

    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/common/http/a;-><init>()V

    new-instance v3, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;

    invoke-direct {v3, v0, v1, p1, p0}, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;-><init>(JLjava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/common/http/a;->m(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p0

    new-instance p1, Lcom/hisavana/mediation/config/CloudControlConfigSync$a;

    invoke-direct {p1}, Lcom/hisavana/mediation/config/CloudControlConfigSync$a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/http/a;->o(Lcom/cloud/hisavana/sdk/common/http/a$b;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p0

    invoke-static {}, Lbe/l;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/http/a;->q(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p0

    const-string p1, "2"

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/http/a;->p(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/http/d;->b()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "CloudControlConfigSync --> network error or requesting"

    invoke-virtual {p0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic p()V
    .locals 0

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->t()V

    return-void
.end method

.method public static q()V
    .locals 4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current mode,testDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->isTestDevice()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",debug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->isDebug()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg7/a;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "Test"

    goto :goto_0

    :cond_0
    const-string v2, "Release"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_init"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c:Landroid/os/Handler;

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->r()Z

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->s()V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/hisavana/mediation/config/CloudControlConfigSync$1;

    invoke-direct {v1}, Lcom/hisavana/mediation/config/CloudControlConfigSync$1;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->j(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static r()Z
    .locals 4

    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->t()V

    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->h()V

    const-string v0, "get cloud data success"

    invoke-static {v1, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->m(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "CloudControlConfigSync"

    const-string v3, "no cloud data in db"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static s()V
    .locals 7

    const-string v0, "host_version"

    const-string v1, "CloudControlConfigSync"

    :try_start_0
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lj7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cache host version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", current host version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Li7/c;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-static {}, Li7/c;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v2

    const-string v4, "cloudControlVersion"

    invoke-virtual {v2, v4, v3}, Lj7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "mediation.json"

    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/o;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-class v4, Lcom/hisavana/mediation/bean/CloudControlConfig;

    invoke-static {v3, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisavana/mediation/bean/CloudControlConfig;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCloudControlVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->j(Lcom/hisavana/mediation/bean/CloudControlConfig;Z)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v2

    invoke-static {}, Li7/c;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->r()Z

    goto :goto_2

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "get nothing from mediation.json"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "Failed to read default mediation.json from assets."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    const-string v3, "There is no default mediation.json available locally."

    invoke-virtual {v2, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v2

    invoke-static {}, Li7/c;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static t()V
    .locals 2

    sget-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/hisavana/mediation/config/CloudControlConfigSync;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static u()V
    .locals 4

    sget-object v0, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/hisavana/mediation/config/CloudControlConfigSync;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
