.class Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->createSuccess(Lcom/cloud/tmc/kernel/worker/JSI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$bundleData:Landroid/os/Bundle;

.field final synthetic val$data:Lcom/google/gson/JsonObject;

.field final synthetic val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

.field final synthetic val$finalWorker2:Lcom/cloud/tmc/kernel/worker/JSI;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/JSI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iput-object p2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$finalWorker2:Lcom/cloud/tmc/kernel/worker/JSI;

    iput-object p5, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$data:Lcom/google/gson/JsonObject;

    iput-object p6, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerReady()V
    .locals 7

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateWorker:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;

    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;-><init>(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;

    invoke-direct {v2, p0, v1}, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;-><init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V

    const-string v4, "workerOnMessageReady"

    invoke-interface {v1, v4, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_1
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadWorkerFramework:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {v1, v2, v4, v5, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    invoke-interface {v1, v2, v4, v5, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;

    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    const-string v1, "100000"

    const-string v2, "https://100000.miniapp.transsion.com/master.js"

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->loadJS(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->setRenderReady()V

    return-void
.end method
