.class public final Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->backgroundDownloadSubPackageZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0o:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0o0:Landroid/content/Context;

.field public final synthetic OooO0oO:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/io/IOException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO00o:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0OO:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0o0:Landroid/content/Context;

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0o:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0oO:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO00o:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0OO:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 1

    const-string p1, "errorCode"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step_APP_Download_\u8d44\u6e90\u5305\u540e\u53f0\u4e0b\u8f7d\u5931\u8d25\uff0c"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0oO:Lkotlin/jvm/functions/Function3;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0OO:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Step_APP_Download_\u8d44\u6e90\u5305\u540e\u53f0\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8fdb\u884c\u89e3\u538b"

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backgroundDownSubPkgZip Finish:downloadUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";appInfo:appId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";deployVersion:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";mainPkgUrl:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";fullPkgUrl:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Subpackage::"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0o0:Landroid/content/Context;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0OO:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeZipDownloadStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0o:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->checkEnableBackgroundUnzip()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v7}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "backgroundDownSubPkgZip startUnZip:downloadUrl:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOOO0;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0o0:Landroid/content/Context;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0Oo:Lcom/cloud/tmc/integration/model/AppModel;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0Oo(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0O0;->OooO0OO:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->removeDownloadAppMap(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/kernel/proxy/network/a;->a(Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;ILjava/lang/String;JJ)V

    return-void
.end method
