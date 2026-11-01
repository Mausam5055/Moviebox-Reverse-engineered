.class public Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;
.super Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;)Lcom/cloud/tmc/integration/model/AppModel;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppInfoQuery()Lcom/cloud/tmc/integration/model/AppInfoQuery;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v2, "Step_SETUP_\u83b7\u53d6AppModel"

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_1
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->buildDownloadPath(Lcom/cloud/tmc/integration/model/AppModel;)V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    return-object v0
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/model/EntryInfo;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/model/EntryInfo;-><init>()V

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->appId:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->desc:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->title:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->desc:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getSlogan()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->slogan:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppModel;->getDeveloper()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->developer:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->OooO00o(Lcom/cloud/tmc/integration/model/EntryInfo;)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->setEntryInfo(Lcom/cloud/tmc/integration/model/EntryInfo;)V

    return-void
.end method

.method public OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->SETUP:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    return-object v0
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->resetPerformanceImproves(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "app"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    const-string v2, "uniqueChainID"

    const-string v3, "-1"

    invoke-static {p2, v2, v3, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->SetupStep:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->AppSetupStep:Ljava/lang/String;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_APP_ID:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    const-string v2, "scene_id"

    const-string v3, "100000"

    invoke-static {p2, v2, v3, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/startState/SetupStepStartState;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/startState/SetupStepStartState;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/startState/SetupStepStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->prePullFeaturedAppInfo()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getVirtualStart()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->createRender(Z)Z

    const-class v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;->createWorker(Z)Z

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "Step_SETUP"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_START_LOADING:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    invoke-interface {p3, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Step_SETUP_\u83b7\u53d6APPID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/integration/model/AppInfoQuery;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/model/AppInfoQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppInfoQuery(Lcom/cloud/tmc/integration/model/AppInfoQuery;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "Step_SETUP_\u8bbe\u7f6eAppInfoQuery"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkgFromPlatform(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "Step_SETUP\uff1a\u83b7\u53d6 appmodel"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getDevStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v0, "Step_SETUP\uff1adebug \u6a21\u5f0f"

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->OooO00o(Z)V

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    return-void

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v0, "Step_SETUP\uff1aappmodel \u4e3a\u7a7a"

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->OooO00o(Z)V

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->showTaskDescription(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->OooO00o(Z)V

    invoke-virtual {p0, p2, p3, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/AppModel;)V

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    new-instance p3, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    invoke-direct {p3, v0, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :goto_2
    return-void
.end method
