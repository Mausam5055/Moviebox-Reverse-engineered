.class public final Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/ipc/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Landroid/content/Context;

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;->OooO00o:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;->OooO0OO:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ByteAppManager;->setSchemeInitStatus(Z)V

    return-void
.end method

.method public OooO00o(Z)V
    .locals 4

    if-nez p1, :cond_2

    const-class p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v0, "closeMiniAppSDK"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app will launch mini app, closeSDK = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->preLoadConfig$com_cloud_tmc_miniapp_sdk(Landroid/app/Application;)V

    return-void

    :cond_0
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;->OooO00o:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;->OooO0O0:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;->OooO0OO:Landroid/os/Bundle;

    invoke-static {p1, v0, v2, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$checkOpenBrowser(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;->OooO0OO:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;->OooO0O0:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0o;->OooO00o:Landroid/content/Context;

    invoke-static {p1, v0, v2, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$launchMiniActivity(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->setSchemeInitStatus(Z)V

    :cond_2
    return-void
.end method
