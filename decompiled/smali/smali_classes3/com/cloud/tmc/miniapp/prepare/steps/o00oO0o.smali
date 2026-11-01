.class public abstract Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;
.super Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 8

    const-string v0, "startWarmup"

    const-string v1, "nevermore"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "startWarmup \u865a\u62df\u542f\u52a8 return"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->isWarmup()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "startWarmup \u5df2\u7ecf\u9884\u70ed\u8fc7\u4e86 return"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string p1, "startWarmup appModel\u662f\u7a7a\u7684 return"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    move-result v0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, ""

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[{\"appId\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v3}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    move-result v3

    const-string v4, "keyMiniAppStart"

    const-class v5, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    const/4 v6, 0x1

    if-ne v0, v3, :cond_6

    const-string p2, "startWarmup \u5e38\u89c4\u5c0f\u7a0b\u5e8f"

    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "page"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v7, 0x0

    if-nez v3, :cond_4

    const-string v3, "http"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    goto :goto_1

    :cond_4
    move v0, v7

    :goto_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->isWarmup()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v0, :cond_5

    const-string v0, "startWarmup \u5e38\u89c4\u5c0f\u7a0b\u5e8f \u9996\u9875\u662fH5"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->createWebview()Z

    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;

    invoke-direct {v3, p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_2

    :cond_5
    const-string p1, "startWarmup \u5e38\u89c4\u5c0f\u7a0b\u5e8f \u9996\u9875\u662fNormal \u9884\u70edrender&worker"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    invoke-interface {p1, v7}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->createRender(Z)Z

    const-class p1, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    invoke-interface {p1, v7}, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;->createWorker(Z)Z

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v3}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    move-result v3

    if-eq v0, v3, :cond_7

    sget-object v3, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL_GAME:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v3}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    move-result v3

    if-ne v0, v3, :cond_8

    :cond_7
    const-string v0, "startWarmup \u72ec\u7acb\u7ad9"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->isWarmup()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->createWebview()Z

    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;

    invoke-direct {v3, p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    const-string p1, "WarmupAndOffScreenStep"

    const-string p3, "nevermore"

    invoke-static {p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppInfoQuery()Lcom/cloud/tmc/integration/model/AppInfoQuery;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppInfoQuery()Lcom/cloud/tmc/integration/model/AppInfoQuery;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WarmupAndOffScreenStep:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
