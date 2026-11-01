.class public Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Ljava/lang/String;

.field public final synthetic OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field public final synthetic OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;Lcom/cloud/tmc/miniapp/dialog/Oooo0;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p7, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_USER_EXIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->OooO0oo:Z

    if-eqz v1, :cond_0

    const-string v1, "sync"

    goto :goto_0

    :cond_0
    const-string v1, "async"

    :goto_0
    const-string v2, "mpu_download_type"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    const-string v1, "mpu_appId"

    const-string v2, "100000"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    const-string v2, "mpu_old_v"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    const-string v2, "mpu_new_v"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    const-string v1, "mpu_result"

    const-string v2, "IOException"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    const-string v1, "mpu_error_code"

    const-string v2, "D006"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    const-string v1, "mpu_error_msg"

    const-string v2, "Canceled"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    const-string v2, "-1"

    const-string v3, "mpu_chain_uniqueId"

    const-string v4, "uniqueChainID"

    invoke-static {v1, v4, v2, v0, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "Tmc"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 8

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p5}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->showErrorDialog(Landroid/content/Context;)V

    :cond_0
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p5}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    const/4 v1, 0x0

    invoke-virtual {p1, p5, v0, v1}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step_FW_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5931\u8d25\uff0c"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_FAILED:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-boolean v2, v2, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->OooO0oo:Z

    if-eqz v2, :cond_1

    const-string v2, "sync"

    goto :goto_0

    :cond_1
    const-string v2, "async"

    :goto_0
    const-string v3, "mpu_download_type"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    const-string v2, "100000"

    const-string v3, "mpu_appId"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    const-string v4, "mpu_old_v"

    invoke-virtual {v1, v4, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    const-string v5, "mpu_new_v"

    invoke-virtual {v1, v5, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "mpu_result"

    invoke-virtual {v1, v6, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    const-string v2, "mpu_error_code"

    invoke-virtual {v1, v2, p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    const-string v1, "mpu_error_msg"

    invoke-virtual {p2, v1, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    const-string v1, "uniqueChainID"

    const-string v2, "-1"

    const-string v7, "mpu_chain_uniqueId"

    invoke-static {p4, v1, v2, p2, v7}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string p4, ""

    invoke-interface {p5, v0, p2, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {p5}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p2, p5}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    const-string p5, "Tmc"

    invoke-static {p5, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-boolean p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->OooO0oo:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {p2, p5, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkFwVersionUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object p2

    sget-object p5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v3, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    invoke-virtual {p5, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {p5, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p5

    const-string v0, "DOWNLOAD_FAIL"

    invoke-virtual {p5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-static {v0, v1, v2, p5, v7}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p5

    invoke-interface {p1, p2, p5, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "download error:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "   url:"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "4"

    invoke-direct {p2, p4, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_3
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "Tmc"

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v0, "Step_FW_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O$OooO00o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;)V

    invoke-static {p2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    sget-object p2, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->setFrameWorkModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-boolean v2, v2, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->OooO0oo:Z

    if-eqz v2, :cond_0

    const-string v2, "sync"

    goto :goto_0

    :cond_0
    const-string v2, "async"

    :goto_0
    const-string v3, "mpu_download_type"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    const-string v2, "mpu_appId"

    const-string v3, "100000"

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0OO:Ljava/lang/String;

    const-string v3, "mpu_old_v"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0Oo:Ljava/lang/String;

    const-string v3, "mpu_new_v"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    const-string v3, "-1"

    const-string v4, "mpu_chain_uniqueId"

    const-string v5, "uniqueChainID"

    invoke-static {v2, v5, v3, v1, v4}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p2, v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-boolean v0, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->OooO0oo:Z

    if-eqz v0, :cond_1

    iget-object p1, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string p2, "Step_FW_Download_\u8df3\u8f6c\u5230\u4e0b\u4e00\u6d41\u7a0b"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    invoke-interface {p1, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    goto :goto_2

    :cond_1
    :try_start_1
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkEnableBackgroundUnzip()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0O0:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0o0:Lcom/cloud/tmc/integration/model/AppModel;

    const-string p2, "context"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "appModel"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/OooOO0;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->OooO0oo:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO00o(I)V

    :cond_0
    rem-int/lit8 p1, p2, 0x5

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooOO0O;->OooO0oO:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step_FW_Download_\u4e0b\u8f7d\u8d44\u6e90\u5305"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/kernel/proxy/network/a;->a(Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;ILjava/lang/String;JJ)V

    return-void
.end method
