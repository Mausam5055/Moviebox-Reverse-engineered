.class public Lcom/cloud/tmc/integration/core/TmcEngineImpl;
.super Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcEngineImpl"

.field private static final UC_INIT_FAIL:Ljava/lang/String; = "uc core init fail"

.field private static final UC_INIT_FAIL_CODE:Ljava/lang/String; = "-9001"

.field private static final UC_INIT_SUCCESS:Ljava/lang/String; = "uc init success"

.field private static final sWorkerIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mRenderChannelThread:Landroid/os/HandlerThread;

.field private mWorker:Lcom/cloud/tmc/kernel/worker/JSI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->sWorkerIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;-><init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "TmcRenderChannelThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mRenderChannelThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createJSIWorker(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getStartToken()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/cloud/tmc/worker/WorkerManager;

    invoke-direct {v1}, Lcom/cloud/tmc/worker/WorkerManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->setRenderReady()V

    invoke-interface {v1, p3}, Lcom/cloud/tmc/kernel/worker/JSI;->setWorkerId(Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;->get(J)Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object p1

    invoke-interface {p1, p3, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->registerWorker(Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/JSI;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "TmcEngineImpl"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "errorMessage"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method public static generateWorkerId()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->sWorkerIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;
    .locals 3

    const-class v0, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;

    const-string v1, "Render"

    const-string v2, "Start create render"

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;->sendPerfStageLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v0, Lcom/cloud/tmc/render/SystemRender;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)V

    return-object v0
.end method

.method public createWorker(Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;
    .locals 2

    const-class p1, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;

    const-string v0, "Worker"

    const-string v1, "register worker"

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;->sendPerfStageLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {}, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->generateWorkerId()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const-class v0, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/structure/App;

    new-instance v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-interface {p2, v1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2, p3, p1}, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->createJSIWorker(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    return-object p1
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopRender()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWorkerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/cloud/tmc/kernel/model/InitParams;Lcom/cloud/tmc/kernel/engine/EngineInitCallback;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->init(Lcom/cloud/tmc/kernel/model/InitParams;Lcom/cloud/tmc/kernel/engine/EngineInitCallback;)V

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 p1, 0x1

    const-string v0, "uc init success"

    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/kernel/engine/EngineInitCallback;->initResult(ZLjava/lang/String;)V

    return-void
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->fromWarmup()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    iget-object v1, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;->removeWorker(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mRenderChannelThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "mRenderChannelThread quit error"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setup(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/kernel/engine/EngineSetupCallback;)V
    .locals 0

    return-void
.end method

.method public updateWorker(Lcom/cloud/tmc/kernel/worker/JSI;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    return-void
.end method
