.class public final Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;
.super Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;


# instance fields
.field public OooO0oo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO0oo:Z

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Z)V
    .locals 13

    move-object v5, p1

    move-object/from16 v7, p4

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v10, p0

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    if-eqz p5, :cond_2

    const/4 v0, 0x2

    move v9, v0

    goto :goto_0

    :cond_2
    move v9, v8

    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SinglePkgDownloadStep startDownload:downloadUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";appInfo:appId:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";deployVersion:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subpackage::"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, p0

    iget-object v11, v10, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    new-instance v12, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;

    move-object v0, v12

    move/from16 v1, p5

    move-object v2, p0

    move-object/from16 v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o$OooO00o;-><init>(ZLcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    invoke-interface {v11, v7, v9, v8, v12}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->downloadApp(Lcom/cloud/tmc/integration/model/AppModel;IZLcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;)V

    return-void

    :goto_1
    if-nez p5, :cond_3

    const/4 v0, 0x0

    move-object/from16 v1, p3

    invoke-interface {v1, v7, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V

    :cond_3
    if-eqz v5, :cond_4

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v1, "11"

    const-string v2, "packageUrl is null or empty"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_4
    return-void
.end method

.method public OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->COMMON_RES_DOWNLOAD:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    return-object v0
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getCommonResModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string p3, "commonResModel is null"

    invoke-direct {p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getCommonResModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto/16 :goto_7

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    const-string v4, "u_e"

    invoke-virtual {v3, v0, v4}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->commonResTrack(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "d_s"

    invoke-virtual {v3, v0, v4}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->commonResTrack(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->isDownloaded(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v4, "CommonResDownloadStep_\u516c\u5171\u8d44\u6e90\u5305\u5df2\u4e0b\u8f7d\uff0c\u8df3\u8f6c\u5230\u89e3\u538b\u6b65\u9aa4"

    invoke-static {v0, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO0oo:Z

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/FileProxy;->createBaseDirectory(Lcom/cloud/tmc/integration/model/AppModel;)Z

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v0

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->getNativeCache(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v0

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v5, "use native pkg resource"

    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->getOfflineCache(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v0

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v5, "use offline pkg resource"

    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Step_FW_Download_\u8d44\u6e90\u5305\u5df2\u4e0b\u8f7d\uff0c\u8df3\u8f6c\u5230\u89e3\u538b\u6b65\u9aa4->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO0oo:Z

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromPre(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->isDownloaded(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2, v9}, Lcom/cloud/tmc/integration/model/PrepareContext;->setCommonResModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {v0, v9}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {v0, v9}, Lcom/cloud/tmc/integration/proxy/FileProxy;->createBaseDirectory(Lcom/cloud/tmc/integration/model/AppModel;)Z

    goto :goto_3

    :cond_d
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO0oo:Z

    if-nez v0, :cond_f

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    :cond_e
    return-void

    :cond_f
    :goto_3
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO0oo:Z

    if-nez v0, :cond_13

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getLowestSupportTemplateVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_10
    move-object v0, v2

    :cond_11
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_4

    :cond_12
    move-object v2, v1

    :goto_4
    invoke-virtual {v4, v0, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v9, :cond_13

    invoke-virtual {p2, v9}, Lcom/cloud/tmc/integration/model/PrepareContext;->setCommonResModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    iput-boolean v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO0oo:Z

    :cond_13
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO0oo:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "need download resource pkg"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->lock(Ljava/lang/Object;)V

    :cond_14
    if-eqz v9, :cond_15

    if-eqz p3, :cond_18

    iget-boolean v10, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO0oo:Z

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    goto :goto_6

    :cond_15
    iget-boolean p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO0oo:Z

    if-eqz p3, :cond_18

    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getCommonResModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p3

    if-eqz p3, :cond_16

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_16

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_pre"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p3, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v1, 0x0

    invoke-interface {p3, v0, p2, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->refreshUpdateTime(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p2

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_5
    if-eqz p1, :cond_17

    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string p3, "preCommonresModel is not exist"

    invoke-direct {p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_17
    return-void

    :cond_18
    :goto_6
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;->OooO0oo:Z

    if-nez p2, :cond_19

    if-eqz p1, :cond_19

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    :cond_19
    return-void

    :cond_1a
    :goto_7
    if-eqz p1, :cond_1b

    new-instance p2, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string p3, "commonResId is null or empty"

    invoke-direct {p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_1b
    return-void
.end method
