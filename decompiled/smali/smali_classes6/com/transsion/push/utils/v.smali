.class public final Lcom/transsion/push/utils/v;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/config/PushRepository;->getConfig()Lcom/transsion/push/bean/ConfigInfo$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/transsion/push/bean/ConfigInfo$Config;->version:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b()J
    .locals 3

    invoke-static {}, Lcom/transsion/push/utils/n;->c()Z

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/config/PushRepository;->getConfig()Lcom/transsion/push/bean/ConfigInfo$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/transsion/push/bean/ConfigInfo$Config;->uploadInterval:I

    if-lez v0, :cond_0

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v2, "app_upload_interval"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/config/PushRepository;->getConfig()Lcom/transsion/push/bean/ConfigInfo$Config;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/transsion/push/bean/ConfigInfo$Config;->mobileUploadInterval:I

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v2, "app_m_upload_interval"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0xdbba00

    return-wide v0
.end method

.method public static c()I
    .locals 1

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/config/PushRepository;->getConfig()Lcom/transsion/push/bean/ConfigInfo$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/transsion/push/bean/ConfigInfo$Config;->retryCount:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public static d()J
    .locals 2

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/config/PushRepository;->getConfig()Lcom/transsion/push/bean/ConfigInfo$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/transsion/push/bean/ConfigInfo$Config;->retryInterval:I

    if-lez v0, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x4e20

    return-wide v0
.end method

.method public static e()J
    .locals 3

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const v1, 0x15180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "push_self_destroying_interval"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public static f()J
    .locals 4

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tracker_report_interval"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g()Z
    .locals 3

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "is_immediately_tracker"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .locals 4

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "push_self_destroying"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
