.class Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->onWorkerReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

.field final synthetic val$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iput-object p2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->val$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 5

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadWorkerFramework:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v4, v4, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v4, v4, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v4, v4, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v1, v1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v4, v4, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v3, v3, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;

    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;

    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$bundleData:Landroid/os/Bundle;

    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$page:Lcom/cloud/tmc/integration/structure/Page;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object p1, p1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$finalWorker2:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->workerOnMessageReady()V

    sget-object p1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    iget-object v0, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v0, v0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "workerOnMessageReady"

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object p1, p1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object p1, p1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDevMode()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    const-class p1, Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;

    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p1

    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->this$1:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;->val$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-virtual {p1, v2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v2, v2, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$data:Lcom/google/gson/JsonObject;

    const-string v3, "miniapp.workerInit"

    invoke-interface {p1, v3, v2}, Lcom/cloud/tmc/integration/point/IIDEDispatcherPoint;->sendMsg(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->val$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    invoke-interface {p1, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    return v0

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->this$2:Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;

    iget-object v2, p1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    const-string v3, "workerInit"

    iget-object p1, p1, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1;->val$data:Lcom/google/gson/JsonObject;

    invoke-static {v2, v3, p1}, Lcom/cloud/tmc/integration/event/EventHelper;->dispatchEventToWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2$1$1;->val$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    invoke-interface {p1, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    return v0
.end method
