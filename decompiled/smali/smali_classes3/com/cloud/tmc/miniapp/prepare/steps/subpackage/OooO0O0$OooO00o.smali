.class public final Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/PackageInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Landroid/content/Context;

.field public final synthetic OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0Oo:Landroid/content/Context;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;)V
    .locals 9

    const-string p2, "MANIFEST_FAIL"

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v0, "Step_LoadStep: tar \u5305\u89e3\u538b\u5b8c\u6210"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object p1, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->getManifestJson(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    const-string v2, "appId"

    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/JsonUtil;->getValueFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0Oo:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v1, "8"

    const-string v2, "manifest error"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v0, "Step_LoadStep: manifest \u5185\u5bb9\u6821\u9a8c\u6210\u529f"

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0Oo:Landroid/content/Context;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeTarUnCompressStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteDownloadFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iget-object p2, p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    iget-boolean p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    if-nez p2, :cond_3

    iget-object p2, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0Oo:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0:Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2, v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->deleteOldVersionFiles(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iget-object p2, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0Oo:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updateOldVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    invoke-interface {p1, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    goto :goto_2

    :catchall_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    const-string v7, "8"

    const-string v8, "manifest error"

    invoke-virtual/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v2, "INSTALL_APP_FAIL"

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unzip error"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v7, "5"

    invoke-virtual/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
