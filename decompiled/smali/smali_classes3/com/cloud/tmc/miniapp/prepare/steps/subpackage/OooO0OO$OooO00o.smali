.class public final Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

.field public final synthetic OooO00o:Z

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0Oo:Ljava/lang/String;

.field public final synthetic OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0o0:Ljava/lang/String;

.field public final synthetic OooO0oO:Ljava/lang/String;

.field public final synthetic OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field public final synthetic OooOO0:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0Oo:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o0:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p7, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oO:Ljava/lang/String;

    iput-object p8, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iput-object p9, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    iput-object p10, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooOO0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p1, "Tmc"

    :try_start_0
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_USER_EXIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v0, "mpu_download_type"

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    if-eqz v1, :cond_0

    const-string v1, "sync"

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_1

    :cond_0
    const-string v1, "async"

    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "mpu_appId"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "mpu_old_v"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "mpu_new_v"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o0:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "mpu_result"

    const-string v1, "IOException"

    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "mpu_error_code"

    const-string v1, "D006"

    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "mpu_error_msg"

    const-string v1, "Canceled"

    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "mpu_chain_uniqueId"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uniqueChainID"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "POINT_PACKAGE_DOWNLOAD_U\u2026                        )"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v2, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v2, ""

    invoke-interface {v0, v1, p2, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oO:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_2
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "Tmc"

    const-string v4, ""

    const-class v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v6, "-1"

    const-string v7, "uniqueChainID"

    const-string v8, "mpu_chain_uniqueId"

    const-string v9, "mpu_result"

    const-string v10, "mpu_new_v"

    const-string v11, "mpu_old_v"

    const-string v12, "mpu_appId"

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v13}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v14}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oO:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v13, v14, v15, v2}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_FAILED:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v13, "mpu_download_type"

    iget-boolean v14, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v14, :cond_0

    :try_start_1
    const-string v14, "sync"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto/16 :goto_5

    :cond_0
    :try_start_2
    const-string v14, "async"

    :goto_0
    invoke-virtual {v0, v13, v14}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v13}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {v0, v11, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o0:Ljava/lang/String;

    invoke-virtual {v0, v10, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v13, 0x0

    if-eqz p4, :cond_1

    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_1
    move-object v14, v13

    :goto_1
    :try_start_4
    invoke-virtual {v0, v9, v14}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    const-string v14, "mpu_error_code"

    move-object/from16 v15, p2

    invoke-virtual {v0, v14, v15}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    const-string v14, "mpu_error_msg"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p4, :cond_2

    :try_start_5
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :try_start_6
    invoke-virtual {v0, v14, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v13}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v13, v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v8, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    const-string v13, "POINT_PACKAGE_DOWNLOAD_F\u2026                        )"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v14, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v14}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iget-object v15, v15, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v15, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    invoke-interface {v13, v14, v0, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oO:Ljava/lang/String;

    invoke-interface {v0, v13}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-boolean v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0Oo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o0:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v2, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0Oo:Ljava/lang/String;

    iget-object v13, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v14, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v15, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_3

    move-object/from16 p1, v3

    :try_start_9
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v3, v0, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-virtual {v13}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v3

    invoke-virtual {v3, v11, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v2

    invoke-virtual {v2, v10, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    const-string v2, "DOWNLOAD_FAIL"

    invoke-virtual {v0, v9, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    invoke-virtual {v14}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    const-string v2, "POINT_PACKAGE_UPDATE_FAI\u2026                        )"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-virtual {v14}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v15, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v5, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object v0

    invoke-interface {v2, v3, v0, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_3
    move-object/from16 v2, p1

    goto :goto_5

    :cond_3
    move-object/from16 p1, v3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 p1, v3

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Step_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5931\u8d25\uff0c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    new-instance v2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v4, "4"

    iget-object v5, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooOO0:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   url:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    goto :goto_6

    :cond_5
    move-object/from16 p1, v3

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    iget-object v3, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-interface {v0, v3, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    :goto_5
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    new-instance v2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v3, "download error"

    invoke-direct {v2, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_6
    :goto_6
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string p1, "Tmc"

    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v0, "Step_Download_\u8d44\u6e90\u5305\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8fdb\u884c\u89e3\u538b"

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oO:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_DOWNLOAD_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v0, "mpu_download_type"

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    if-eqz v1, :cond_0

    const-string v1, "sync"

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_3

    :cond_0
    const-string v1, "async"

    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "mpu_appId"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "mpu_old_v"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "mpu_new_v"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o0:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "mpu_chain_uniqueId"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uniqueChainID"

    const-string v4, "-1"

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v0, "POINT_PACKAGE_DOWNLOAD_S\u2026                        )"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v2, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-result-object p2

    const-string v2, ""

    invoke-interface {v0, v1, p2, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oO:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_2
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    invoke-interface {p2, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_1
    :try_start_3
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkEnableBackgroundUnzip()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object v4, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0()Lcom/cloud/tmc/integration/model/SubPackageInfo;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0O0(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0OO:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-interface {p2, v0, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :goto_3
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v0, "download error"

    invoke-direct {p2, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_3
    :goto_4
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO00o:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step_Download_\u4e0b\u8f7d\u8d44\u6e90\u5305"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/kernel/proxy/network/a;->a(Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;ILjava/lang/String;JJ)V

    return-void
.end method
