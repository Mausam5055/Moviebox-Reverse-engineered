.class public final Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/LauncherReportProxy;


# instance fields
.field public final OooO00o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LauncherReport"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    return-void
.end method

.method public static final OooO00o(ILcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;

    const-string v1, "miniProcessId"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIsNewUserStatus()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "com.cloud.tmc.miniapp.process_id"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object p0, p1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v1, "reportCache ->reportMiniProcessId"

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    new-instance v1, Lcom/cloud/tmc/integration/model/CacheReportBean;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/integration/model/CacheReportBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/CacheReportBean;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportMiniProcessId -> pid ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "miniGaid"

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v0, "reportMiniProcessId"

    invoke-static {p1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static final OooO00o(Ljava/lang/String;JLcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;

    const-string v1, "miniAppId"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "usageTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    invoke-virtual {v1, p0}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterectMFAHWithBookPrivacy(Ljava/lang/String;)Z

    move-result v2

    sget-object v3, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIsNewUserStatus()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "com.cloud.tmc.miniapp.use_time"

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object p0, p3, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportMiniAppUseTime -> usageTime ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "miniGaid"

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    iget-object p1, p3, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportCache ->reportMiniAppUseTime "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/cloud/tmc/integration/model/CacheReportBean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p2, ""

    if-nez p0, :cond_2

    move-object v2, p2

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    :try_start_2
    invoke-virtual {v1, p0}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterectMFAH(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p1, v2, v4, v3, v0}, Lcom/cloud/tmc/integration/model/CacheReportBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->getInterceptRealMFAHMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v1, "reportCache ->mfah reportMiniAppUseTime"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    if-nez p0, :cond_3

    move-object p0, p2

    :cond_3
    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/CacheReportBean;)V

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/CacheReportBean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return-void

    :goto_3
    iget-object p1, p3, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string p2, "reportMiniAppUseTime"

    invoke-static {p1, p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public static final OooO00o(Ljava/lang/String;Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V
    .locals 5

    const-string v0, "$appId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;

    const-string v1, "miniAppId"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIsNewUserStatus()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "com.cloud.tmc.miniapp.addhome_success"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v3, "reportCache ->reportMiniAddhomeSuccess"

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    new-instance v3, Lcom/cloud/tmc/integration/model/CacheReportBean;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4, v0}, Lcom/cloud/tmc/integration/model/CacheReportBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/CacheReportBean;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportMiniAddhomeSuccess -> appId ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "miniGaid"

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v0, "reportMiniAddhomeSuccess"

    invoke-static {p1, v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",bundle:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public reportAllCacheData(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public reportCacheData(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO0O0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public reportMiniAddhomeSuccess(Ljava/lang/String;)V
    .locals 2

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/h;

    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/h;-><init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v1, "reportMiniAddhomeSuccess"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public reportMiniAppStartRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reportMiniAppStartTime(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    const-string v0, "startType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;

    const-string v2, "miniAppId"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "startTime"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p4, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    invoke-virtual {p4, p1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterectMFAHWithBookPrivacy(Ljava/lang/String;)Z

    move-result v0

    sget-object v2, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIsNewUserStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "com.cloud.tmc.miniapp.start_time"

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reportMiniAppStartTime -> startTime ->"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "miniGaid"

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reportCache ->reportMiniAppStartTime "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/cloud/tmc/integration/model/CacheReportBean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p3, ""

    if-nez p1, :cond_2

    move-object v0, p3

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p2, v0, v3, v2, v1}, Lcom/cloud/tmc/integration/model/CacheReportBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    invoke-virtual {p4}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->getInterceptRealMFAHMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v0, "reportCache ->mfah startTime"

    invoke-static {p4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p4, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    if-nez p1, :cond_3

    move-object p1, p3

    :cond_3
    invoke-virtual {p4, p1, p2}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/CacheReportBean;)V

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO0OO;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/utils/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/CacheReportBean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return-void

    :goto_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string p3, "reportMiniAppStartTime"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public reportMiniAppUseTime(Ljava/lang/String;J)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/g;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/g;-><init>(Ljava/lang/String;JLcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public reportMiniProcessId(I)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/i;

    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/i;-><init>(ILcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o:Ljava/lang/String;

    const-string v1, "reportMiniProcessId"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
