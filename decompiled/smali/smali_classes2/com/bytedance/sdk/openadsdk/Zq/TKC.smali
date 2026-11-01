.class public Lcom/bytedance/sdk/openadsdk/Zq/TKC;
.super Ljava/lang/Object;


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/Zq/TKC;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EjP()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$11;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$11;-><init>()V

    const-string v1, "disk_log"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public static Sj(Ljava/io/File;)J
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p0, v3

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    return-object v0
.end method

.method public static Sj(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static Sj(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$15;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$15;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    const-string p0, "ipv6_req"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public static Sj(JJLjava/lang/String;I)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v3, v0, p0

    sub-long v5, v0, p2

    sub-long v7, p2, p0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$14;

    move-object v2, v0

    move-object v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$14;-><init>(JJJLjava/lang/String;I)V

    const-string v1, "ad_show_cost_time"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/Zq/TKC$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$1;-><init>(JLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    const-string p0, "bidding_receive"

    const/4 v0, 0x0

    invoke-static {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;J)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$12;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$12;-><init>(J)V

    const-string p1, "bidding_load"

    const/4 p2, 0x0

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eMB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$19;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$19;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lorg/json/JSONObject;)V

    const-string p0, "download_gecko_end"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$17;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$17;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public static Sj(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$16;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$16;-><init>(ZLjava/lang/String;)V

    const-string p0, "img_error_param"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public static Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V
    .locals 7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-nez p0, :cond_3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    double-to-int p0, v3

    if-gt p0, v0, :cond_2

    move v1, v2

    :cond_2
    move p0, v1

    :cond_3
    if-eqz p0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->HiB()Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/sP;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private TKC(Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static sP()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$6;

    const-string v1, "showFailLog"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eMB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$18;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$18;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    const-string p0, "download_gecko_start"

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP()Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->HiB()Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$13;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$13;-><init>(Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/sP;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    const-string p1, "StatsLogManager"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Sj(JJ)V
    .locals 9

    sub-long v6, p3, p1

    new-instance v8, Lcom/bytedance/sdk/openadsdk/Zq/TKC$5;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$5;-><init>(Lcom/bytedance/sdk/openadsdk/Zq/TKC;JJJ)V

    const-string p1, "general_label"

    const/4 p2, 0x0

    invoke-static {p1, p2, v8}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "express_ad_render"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->HiB()Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Zq/TKC$20;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$20;-><init>(Lcom/bytedance/sdk/openadsdk/Zq/TKC;Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/Zq/TKC;Ljava/lang/String;)V

    const-string p1, "click_playable_test_tool"

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$4;-><init>(Lcom/bytedance/sdk/openadsdk/Zq/TKC;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "use_playable_test_tool_error"

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$8;-><init>(Lcom/bytedance/sdk/openadsdk/Zq/TKC;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$7;-><init>(Lcom/bytedance/sdk/openadsdk/Zq/TKC;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "adRevenuePangle"

    if-nez p1, :cond_0

    const-string p1, "You must pass adRevenue json to pangle"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "device_ad_mediation_platform"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "pangle"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "You successfully passed the parameters to pangle. The parameters are:"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Zq/TKC$10;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$10;-><init>(Lcom/bytedance/sdk/openadsdk/Zq/TKC;Lorg/json/JSONObject;)V

    const-string p1, "ad_revenue"

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "You must pass device_ad_mediation_platform to pangle"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public TKC()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$9;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$9;-><init>(Lcom/bytedance/sdk/openadsdk/Zq/TKC;)V

    const-string v1, "blind_mode_status"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public sP(Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "show_backup_endcard"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->HiB()Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Zq/TKC$21;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$21;-><init>(Lcom/bytedance/sdk/openadsdk/Zq/TKC;Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC$3;-><init>(Lcom/bytedance/sdk/openadsdk/Zq/TKC;Ljava/lang/String;)V

    const-string p1, "close_playable_test_tool"

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method
