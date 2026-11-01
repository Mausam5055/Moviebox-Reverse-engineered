.class public final Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO0O0(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;

    const-class v1, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v1, v0, p0}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->addCommonIntentParameter(Landroid/content/Intent;Landroid/content/Context;)V

    if-eqz p0, :cond_0

    new-instance v1, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;

    invoke-direct {v1, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Just print"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":IpcTaskManagerService"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of p3, p1, Landroid/app/Application;

    if-eqz p3, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/app/Application;

    :cond_1
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/Utils;->setAppIfNecessary(Landroid/app/Application;)V

    move-object p1, p4

    check-cast p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;->OooO00o(Z)V

    return-void

    :cond_2
    sget-object v2, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;

    new-instance v3, Lcom/cloud/tmc/miniapp/ipc/a;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ipc/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V

    invoke-virtual {v2, v3}, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->runOnBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;

    invoke-virtual {p4, p2, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;->OooO00o(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final OooO00o(Landroid/content/Context;ZLcom/cloud/tmc/miniapp/ipc/OooO0O0;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ":IpcTaskManagerService"

    :try_start_0
    const-string v1, "warmupWebview"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, "warmupWebview isMiniProcess"

    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/app/Application;

    :cond_1
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/Utils;->setAppIfNecessary(Landroid/app/Application;)V

    check-cast p3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooOO0;

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooOO0;->OooO00o(Z)V

    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v2, v1, p1}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->addCommonIntentParameter(Landroid/content/Intent;Landroid/content/Context;)V

    if-eqz p1, :cond_3

    new-instance v2, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO0O0;

    invoke-direct {v2, p2, p1, p3}, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO0O0;-><init>(ZLandroid/content/Context;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V

    const/4 p2, 0x1

    invoke-virtual {p1, v1, v2, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method
