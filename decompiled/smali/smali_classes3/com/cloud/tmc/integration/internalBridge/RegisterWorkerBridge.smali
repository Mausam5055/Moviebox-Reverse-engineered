.class public Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# static fields
.field private static final TAG:Ljava/lang/String; = "RegisterWorkerBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onFinalized()V
    .locals 0

    return-void
.end method

.method public onInitialized()V
    .locals 0

    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerWorker(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 14
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object/from16 v0, p3

    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    return-void

    :cond_0
    const-class v1, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    if-nez v5, :cond_1

    const-string v0, "RegisterWorkerBridge"

    const-string v1, "loadJS failed, appLoadResult is null"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    return-void

    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v8

    :try_start_0
    sget-boolean v1, Lcom/cloud/tmc/kernel/debug/DebugConfig;->DEBUG_REFRESH:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    sput-boolean v1, Lcom/cloud/tmc/kernel/debug/DebugConfig;->DEBUG_REFRESH:Z

    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v3

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object v8

    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "homepageUrl"

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/kernel/node/Node;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v4

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v4

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/cloud/tmc/integration/structure/App;->getPageType(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v9, p1

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string v1, "homepageRenderId"

    invoke-virtual {v6, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appJson"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, v5, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "miniappId"

    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "commonresId"

    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_4
    :try_start_2
    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v10, "workerOnMessageReady"

    new-instance v11, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v8

    move-object/from16 v4, p3

    move-object v5, v6

    move-object v6, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$1;-><init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;Lcom/cloud/tmc/kernel/worker/JSI;)V

    invoke-interface {v9, v10, v11}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_5
    const-string v0, "100000"

    const-string v1, "https://100000.miniapp.transsion.com/master.js"

    invoke-interface {v8, v0, v1}, Lcom/cloud/tmc/kernel/worker/JSI;->loadJS(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, p1

    :try_start_3
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    invoke-interface {v8}, Lcom/cloud/tmc/kernel/worker/JSI;->setRenderReady()V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_6
    move-object v9, p1

    const-class v1, Lcom/cloud/tmc/worker/IWorkerManagerFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/cloud/tmc/worker/IWorkerManagerFactory;

    const-string v11, ""

    invoke-static {}, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->generateWorkerId()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge$2;-><init>(Lcom/cloud/tmc/integration/internalBridge/RegisterWorkerBridge;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/AppLoadResult;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    move-object v2, v10

    move-object v3, v8

    move-object v4, v7

    move-object/from16 v5, p2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    invoke-interface/range {v2 .. v8}, Lcom/cloud/tmc/worker/IWorkerManagerFactory;->createWorker(Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    :goto_3
    return-void
.end method
