.class public Lcom/cloud/tmc/integration/MsgDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "MsgDispatcher"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/MsgDispatcher;->lambda$checkShowPermissionDialog$0(Lcom/cloud/tmc/integration/structure/App;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/MsgDispatcher;->checkShowPermissionDialog(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    return-void
.end method

.method private static checkShowPermissionDialog(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getInterectCallbackId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/structure/App;->updateInterectCallbackId(Ljava/lang/String;)V

    new-instance p1, Lcom/cloud/tmc/integration/c;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/c;-><init>(Lcom/cloud/tmc/integration/structure/App;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private consumeTime(Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/cloud/tmc/kernel/render/IRender;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    const-class v1, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    check-cast p1, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;

    move-result-object p1

    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    move-result-object p2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "eventData"

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;->getDataJson()Ljava/util/HashMap;

    move-result-object p1

    const-string v4, "time"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->setData(Ljava/util/Map;)V

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "consumeTime"

    invoke-interface {p1, v0, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "miniapp"

    const-string p2, "parse consumeTime from dataJson fail"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getActiveRenderId(Lcom/cloud/tmc/kernel/engine/EngineRouter;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/engine/EngineRouter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getTopRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    const-class v1, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {p1, v1}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/structure/App;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private handleAsyncMsgFromWorker(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleJSMsgFroworker msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgDispatcher"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "handleAsyncMsgFromWorker error !!! (worker is null)"

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    const-class v3, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;->getByWorkerId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "handleAsyncMsgFromWorker error !!! (engineRouter is null)"

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    return v1

    :cond_1
    sget-object v4, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v7, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    invoke-virtual {v4, v5, v7}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "eventData"

    const-string v8, "native"

    const-string v9, "DispatchEvent"

    const-class v10, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    const/4 v11, 0x1

    if-eqz v5, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    move-result-object v5

    const-string v12, "warmup_worker_id_"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, "handleAsyncMsgFromWorker \u9884\u70ed\u6a21\u5f0f"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v3, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getDataJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v5}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->setData(Ljava/util/Map;)V

    const-class v0, Lcom/cloud/tmc/integration/structure/WarmupNode;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/WarmupNode;

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/cloud/tmc/integration/structure/WarmupNode;->getNode(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-interface {v3, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v2, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_3
    return v11

    :cond_4
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getRenderId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getRenderId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_5
    invoke-direct {v6, v3}, Lcom/cloud/tmc/integration/MsgDispatcher;->getActiveRenderId(Lcom/cloud/tmc/kernel/engine/EngineRouter;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-interface {v3, v5}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getRenderById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v3

    const-string v5, "Api"

    const-string v12, ""

    if-nez v3, :cond_c

    const-string v0, "handleMsgFromJs: \u627e\u4e0d\u5230 render\uff0c\u4f7f\u7528 worker \u515c\u5e95\u5206\u53d1"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    move-object v7, v0

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_7

    const-string v0, "handleMsgFromJs: render is null, app is null, jsapi \u65e0\u6cd5\u8c03\u7528"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->getArgs()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v13

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getCallbackId()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->name(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->params(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->callbackId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    move-result-object v8

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    move-result-object v9

    if-nez v9, :cond_a

    return v1

    :cond_a
    new-instance v10, Lcom/cloud/tmc/integration/MsgDispatcher$5;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/MsgDispatcher$5;-><init>(Lcom/cloud/tmc/integration/MsgDispatcher;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/structure/App;)V

    invoke-interface {v9, v8, v10}, Lcom/cloud/tmc/kernel/bridge/NativeBridge;->sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)Z

    return v11

    :cond_b
    return v1

    :cond_c
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    const-class v14, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v2, v14}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/cloud/tmc/integration/structure/App;

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v6, v2, v3}, Lcom/cloud/tmc/integration/MsgDispatcher;->consumeTime(Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;)V

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->getArgs()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v13

    goto :goto_3

    :cond_d
    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getCallbackId()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->name(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->params(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object v0

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->render(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->callbackId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    move-result-object v7

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getEngine()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    move-result-object v8

    new-instance v9, Lcom/cloud/tmc/integration/MsgDispatcher$6;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v3, v4

    move-object/from16 v4, p1

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/MsgDispatcher$6;-><init>(Lcom/cloud/tmc/integration/MsgDispatcher;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/structure/App;)V

    invoke-interface {v8, v7, v9}, Lcom/cloud/tmc/kernel/bridge/NativeBridge;->sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)Z

    return v11

    :cond_e
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v3, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getDataJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v5}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->setData(Ljava/util/Map;)V

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/cloud/tmc/integration/structure/AppManager;

    if-eqz v0, :cond_f

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v14

    :cond_f
    invoke-interface {v3, v14}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, v2, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_10
    move v0, v1

    goto/16 :goto_b

    :cond_11
    const-string v2, "render"

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getEventName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "onPageReady"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-class v2, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v7

    check-cast v7, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v14, v7}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->checkNow(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    if-eqz v14, :cond_12

    invoke-interface {v14, v11}, Lcom/cloud/tmc/integration/structure/App;->setMiniAppLoadStatus(Z)V

    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/PrivacyUtils;

    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->updateNewUserStatus(Landroid/content/Context;Ljava/lang/String;)V

    :cond_12
    invoke-static {v10}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v7

    check-cast v7, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v2, v7}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v2

    if-eqz v2, :cond_13

    new-instance v7, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    invoke-direct {v7, v5}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5, v7}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_13
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->fromWarmup()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "workerFromWarmup"

    invoke-virtual {v2, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWarmupChannel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "workerFromWarmupChannel"

    invoke-virtual {v2, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "renderFromWarmup"

    invoke-virtual {v2, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getWarmupChannel()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "renderFromWarmupChannel"

    invoke-virtual {v2, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object v5

    const-string v15, "pageRandomId"

    invoke-virtual {v2, v15, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-object v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v13, "page"

    invoke-virtual {v5, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v13

    check-cast v13, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v13}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v13

    invoke-interface {v13}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v13

    const-string v1, "uniqueChainID"

    const-string v6, "-1"

    invoke-virtual {v13, v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v13

    check-cast v13, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v13}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-class v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-nez v14, :cond_14

    move-object/from16 v16, v4

    const/4 v0, 0x0

    goto :goto_4

    :cond_14
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v16, v4

    :goto_4
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_RENDER_T1:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-object/from16 v17, v15

    const-string v15, "\u9875\u9762\u6253\u5f00"

    invoke-interface {v13, v0, v4, v15, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-nez v14, :cond_15

    const/4 v4, 0x0

    goto :goto_5

    :cond_15
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    :goto_5
    sget-object v13, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v15, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DrawView:Ljava/lang/String;

    invoke-interface {v0, v4, v13, v15, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    const-class v0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    sget-object v15, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_MINIAPP_LOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    invoke-interface {v0, v4, v15}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->notifyUpdateLoadingStep(Ljava/lang/String;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackEnd(Lcom/cloud/tmc/integration/structure/Page;)V

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-nez v14, :cond_16

    const/4 v4, 0x0

    goto :goto_6

    :cond_16
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    :goto_6
    sget-object v15, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    invoke-interface {v0, v4, v13, v15, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v5, "app"

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-nez v14, :cond_17

    const/4 v2, 0x0

    goto :goto_7

    :cond_17
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    :goto_7
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->app:Ljava/lang/String;

    invoke-interface {v1, v2, v13, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->fromWarmup()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWarmupChannel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getWarmupChannel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_DRAW_END_TYPE:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-nez v14, :cond_18

    const/4 v2, 0x0

    goto :goto_8

    :cond_18
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    :goto_8
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-nez v14, :cond_19

    const/4 v2, 0x0

    goto :goto_9

    :cond_19
    invoke-interface {v14}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    :goto_9
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v1

    instance-of v1, v1, Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_1b

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageUniqueId"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    goto :goto_a

    :cond_1a
    move-object/from16 v16, v4

    :cond_1b
    :goto_a
    invoke-virtual/range {v16 .. v16}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getRenderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    return v0

    :cond_1c
    invoke-static {v3}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object v0

    const-string v1, "call"

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object v0

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    :cond_1d
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method private static synthetic lambda$checkShowPermissionDialog$0(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 4

    const-class v0, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getStartToken()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/point/PermissionDialogPoint;->privacyDialogDismiss(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public handleMsgFromRender(Lcom/cloud/tmc/kernel/engine/EngineRouter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "slaveLoaded"

    invoke-static {p4}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    const-class v3, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    invoke-virtual {v2, p4, v3}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object p2

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getRenderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getRenderId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/MsgDispatcher;->getActiveRenderId(Lcom/cloud/tmc/kernel/engine/EngineRouter;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-interface {p1, v3}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getRenderById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p1

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/cloud/tmc/integration/MsgDispatcher;->consumeTime(Ljava/lang/Object;Lcom/cloud/tmc/kernel/render/IRender;)V

    const-string v3, "Api"

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, ""

    if-eqz v3, :cond_2

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->getMethodName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;->getArgs()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    :cond_1
    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getCallbackId()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    invoke-direct {p4}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;-><init>()V

    invoke-virtual {p4, p3}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->name(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object p4

    invoke-virtual {p4, v4}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->params(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object p4

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->render(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->callbackId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    move-result-object p4

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getEngine()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/integration/MsgDispatcher$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/cloud/tmc/integration/MsgDispatcher$1;-><init>(Lcom/cloud/tmc/integration/MsgDispatcher;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V

    invoke-interface {v0, p4, v1}, Lcom/cloud/tmc/kernel/bridge/NativeBridge;->sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)Z

    goto/16 :goto_6

    :cond_2
    const-string v3, "DispatchEvent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    const-string v7, "native"

    if-eqz v3, :cond_b

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-class v3, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    if-eqz v2, :cond_5

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getEventName()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v0, p4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "eventData"

    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getDataJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->setData(Ljava/util/Map;)V

    invoke-interface {v1, p3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->setRenderId(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "warmup_render_id_"

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-class p1, Lcom/cloud/tmc/integration/structure/WarmupNode;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/structure/WarmupNode;

    invoke-interface {p1, p3}, Lcom/cloud/tmc/integration/structure/WarmupNode;->getNode(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v4

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    const-class p2, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v4

    :cond_4
    :goto_1
    if-eqz v4, :cond_a

    invoke-interface {v0, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1, p4, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    goto/16 :goto_5

    :cond_5
    :try_start_0
    const-string p3, "render"

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-static {p3}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;

    move-result-object p3

    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->getEventName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "slaveAttached"

    if-nez p4, :cond_6

    :try_start_1
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_6
    :goto_2
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {p4, p3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    move-result-object v4

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v7

    invoke-interface {p4, v7}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-interface {p4, p3, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_7
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p4

    if-eqz p4, :cond_8

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p4

    instance-of p4, p4, Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p4, :cond_8

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "workerFromWarmup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/worker/JSI;->fromWarmup()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "workerFromWarmupChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/worker/JSI;->getWarmupChannel()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "renderFromWarmup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "renderFromWarmupChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getWarmupChannel()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pageRandomId"

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pageUniqueId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v7

    check-cast v7, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;

    invoke-direct {v0, p4}, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance v0, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;

    invoke-direct {v0, p4}, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    :cond_8
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    sget-object p3, Lcom/cloud/tmc/integration/utils/VersionUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/VersionUtils;

    const-string p4, "5.1.1"

    const-class v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lcom/cloud/tmc/integration/utils/VersionUtils;->isSupportH5PageStack(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v0, "pom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_9

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p3

    instance-of p3, p3, Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p3, :cond_9

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    const-string p4, "resendH5PageStack"

    invoke-interface {p3, p4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    move-result-object p4

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p3

    if-eqz p3, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resendH5PageStack_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    const-string p3, "MsgDispatcher"

    invoke-static {p3, v5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    new-instance p1, Lcom/cloud/tmc/integration/MsgDispatcher$2;

    invoke-direct {p1, p0, p2, v1}, Lcom/cloud/tmc/integration/MsgDispatcher$2;-><init>(Lcom/cloud/tmc/integration/MsgDispatcher;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)V

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->postOnWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/Runnable;)V

    :cond_a
    :goto_5
    return v6

    :cond_b
    const-string p3, "LifeCycle"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    new-instance p1, Lcom/cloud/tmc/integration/MsgDispatcher$3;

    invoke-direct {p1, p0, p2, v1}, Lcom/cloud/tmc/integration/MsgDispatcher$3;-><init>(Lcom/cloud/tmc/integration/MsgDispatcher;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)V

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->postOnWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/Runnable;)V

    return v6

    :cond_c
    const-string p3, "setData"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    new-instance p1, Lcom/cloud/tmc/integration/MsgDispatcher$4;

    invoke-direct {p1, p0, p2, v1}, Lcom/cloud/tmc/integration/MsgDispatcher$4;-><init>(Lcom/cloud/tmc/integration/MsgDispatcher;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)V

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->postOnWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_d
    const-string p2, "DispatchNativeComponent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;

    move-result-object p2

    sget-object p3, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->dispatchToComponentCenter(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V

    goto :goto_6

    :cond_e
    const-string p2, "DispatchNativeEvent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getTarget()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getDataJson()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;

    move-result-object p2

    sget-object p3, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->dispatchToEventCenter(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V

    :cond_f
    :goto_6
    const/4 p1, 0x0

    return p1
.end method

.method public handleMsgFromWorker(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMsgFroworker msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgDispatcher"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/MsgDispatcher;->handleAsyncMsgFromWorker(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)Z

    move-result p1

    return p1
.end method
