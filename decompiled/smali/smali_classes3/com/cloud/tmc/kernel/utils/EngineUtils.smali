.class public Lcom/cloud/tmc/kernel/utils/EngineUtils;
.super Ljava/lang/Object;


# static fields
.field private static final RENDER_CALLBACK_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TmcEngine:EngineUtils"

.field private static final WORKER_BLACK_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/utils/EngineUtils;->WORKER_BLACK_LIST:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/cloud/tmc/kernel/utils/EngineUtils;->RENDER_CALLBACK_LIST:Ljava/util/Set;

    const-string v2, "postMessage"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "message"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "firePullToRefresh"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "pullIntercept"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "onShare"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->sendPushCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    return-void
.end method

.method public static getUserAgentSuffix()Ljava/lang/String;
    .locals 1

    const-string v0, "Tmc/"

    return-object v0
.end method

.method public static getWorker(Lcom/cloud/tmc/kernel/engine/IEngine;)Lcom/cloud/tmc/kernel/worker/JSI;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/engine/IEngine;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getWorkerId(Lcom/cloud/tmc/kernel/render/IRender;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public static postOnWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private static sendPushCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "appId"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "result"

    const-string v1, "2"

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "messageId"

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;->onCallBack(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method

.method public static sendPushWorkMessage(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .locals 2

    const-string p2, "TmcEngine:EngineUtils"

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->getWorkerId(Lcom/cloud/tmc/kernel/render/IRender;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getEngine()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "sendPushWorkerMessage but worker == null!"

    invoke-static {p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0, p3, p4}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->sendPushCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    return-void

    :cond_2
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getCurrentUri()Ljava/lang/String;

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    new-instance p2, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;

    invoke-direct {p2, p1, p3, p4, p0}, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;-><init>(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;Lcom/cloud/tmc/kernel/render/IRender;)V

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->postOnWorker(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "sendPushWorkMessage but render or render.getPage() == null"

    invoke-static {p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendPushWorkMessage(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->sendPushWorkMessage(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    return-void
.end method

.method public static sendToRender(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V
    .locals 3
    .param p3    # Lcom/google/gson/JsonObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "TmcEngine:EngineUtils"

    if-nez p0, :cond_0

    const-string p0, "sendToRender but render == null!!"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->getWorkerId(Lcom/cloud/tmc/kernel/render/IRender;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getEngine()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/cloud/tmc/kernel/utils/EngineUtils;->WORKER_BLACK_LIST:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/cloud/tmc/kernel/utils/EngineUtils;->RENDER_CALLBACK_LIST:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/cloud/tmc/kernel/utils/EngineUtils$1;

    invoke-direct {v2, p4, v1}, Lcom/cloud/tmc/kernel/utils/EngineUtils$1;-><init>(Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;Z)V

    invoke-static {p0, p1, p2, p3, v2}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->sendPushWorkMessage(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p0, "sendToRender but render.getRenderBridge == null!!"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object p0

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    move-result-object p1

    if-eqz v1, :cond_4

    const/4 p4, 0x0

    :cond_4
    invoke-interface {p0, p1, p4}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    return-void
.end method

.method public static sendToRender(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V
    .locals 1
    .param p2    # Lcom/google/gson/JsonObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->sendToRender(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    return-void
.end method
