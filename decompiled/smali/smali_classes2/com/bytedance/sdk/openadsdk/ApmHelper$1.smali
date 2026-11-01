.class final Lcom/bytedance/sdk/openadsdk/ApmHelper$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ApmHelper;->initApm(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/content/Context;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/InitConfig;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->Sj:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->sP:Lcom/bytedance/sdk/openadsdk/InitConfig;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sj()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Ei()Z

    move-result v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sj(Z)Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Fmk()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->sP()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->sP:Lcom/bytedance/sdk/openadsdk/InitConfig;

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/InitConfig;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sj(Ljava/lang/String;)Ljava/lang/String;

    const-string v11, "com.iab.omid.library.bytedance2"

    const-string v12, "com.bytedance.adsdk"

    const-string v5, "com.bytedance.sdk.component"

    const-string v6, "com.bytedance.sdk.mediation"

    const-string v7, "com.bytedance.sdk.openadsdk"

    const-string v8, "com.com.bytedance.overseas.sdk"

    const-string v9, "com.pgl.ssdk"

    const-string v10, "com.bykv.vk"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v18

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->Sj:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string v5, "apm_crash_wait_time"

    const/16 v6, 0x2710

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/apm/insight/Npth;->setCrashWaitTime(J)V

    invoke-static {v2}, Lcom/apm/insight/Npth;->enableLoopMonitor(Z)V

    invoke-static {v2}, Lcom/apm/insight/Npth;->enableAnrInfo(Z)V

    invoke-static {v2}, Lcom/apm/insight/Npth;->enableNativeDump(Z)V

    invoke-static {v2}, Lcom/apm/insight/Npth;->enableActivityDump(Z)V

    invoke-static {v2}, Lcom/apm/insight/Npth;->enableMessageDump(Z)V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$1;

    invoke-direct {v5, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/ApmHelper$1;)V

    invoke-static {v5}, Lcom/apm/insight/MonitorCrash;->setCustomRequestHeaderCallback(Lcom/apm/insight/CustomRequestHeader;)V

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;->Sj:Landroid/content/Context;

    const-string v14, "10000001"

    const-string v17, "7.1.1.4"

    const-wide/16 v15, 0x1bca

    invoke-static/range {v13 .. v18}, Lcom/apm/insight/MonitorCrash;->initSDK(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    move-result-object v5

    new-instance v6, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$2;

    invoke-direct {v6, v0, v5}, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$2;-><init>(Lcom/bytedance/sdk/openadsdk/ApmHelper$1;Lcom/apm/insight/MonitorCrash;)V

    invoke-virtual {v5, v6}, Lcom/apm/insight/MonitorCrash;->setCustomDataCallback(Lcom/apm/insight/AttachUserData;)Lcom/apm/insight/MonitorCrash;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Chv()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v1

    const-string v6, "libnms.so"

    const-string v7, "libtobEmbedPagEncrypt.so"

    const-string v8, "tt_ugen_layout.so"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/apm/insight/MonitorCrash$Config;->setSoList([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    :cond_0
    invoke-virtual {v5}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/apm/insight/MonitorCrash$Config;->setDeviceId(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    invoke-virtual {v5, v3}, Lcom/apm/insight/MonitorCrash;->setReportUrl(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    const-string v1, "host_appid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->EjP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/apm/insight/MonitorCrash;->addTags(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    const-string v1, "sdk_version"

    const-string v6, "7.1.1.4"

    invoke-virtual {v5, v1, v6}, Lcom/apm/insight/MonitorCrash;->addTags(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$3;

    invoke-direct {v1, v0, v5}, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$3;-><init>(Lcom/bytedance/sdk/openadsdk/ApmHelper$1;Lcom/apm/insight/MonitorCrash;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sj(Lcom/bytedance/sdk/openadsdk/ApmHelper$sP;)Lcom/bytedance/sdk/openadsdk/ApmHelper$sP;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->sP(Z)Z

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$4;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper$1$4;-><init>(Lcom/bytedance/sdk/openadsdk/ApmHelper$1;)V

    sget-object v3, Lcom/apm/insight/CrashType;->ALL:Lcom/apm/insight/CrashType;

    invoke-virtual {v5, v1, v3}, Lcom/apm/insight/MonitorCrash;->registerCrashCallback(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->vS()Lcom/bytedance/sdk/openadsdk/ApmHelper$Sj;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Sj(Lcom/bytedance/sdk/openadsdk/ApmHelper$Sj;)Lcom/bytedance/sdk/openadsdk/ApmHelper$Sj;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Jcg()Lcom/bytedance/sdk/openadsdk/ApmHelper$sP;

    move-result-object v3

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/ApmHelper$Sj;->Sj:Ljava/lang/String;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/ApmHelper$Sj;->sP:Ljava/lang/String;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/ApmHelper$Sj;->TKC:Ljava/lang/Throwable;

    invoke-interface {v3, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/ApmHelper$sP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->sP(Z)Z

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Dq()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
