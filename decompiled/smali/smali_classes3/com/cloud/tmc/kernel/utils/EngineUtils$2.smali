.class Lcom/cloud/tmc/kernel/utils/EngineUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/kernel/utils/EngineUtils;->sendPushWorkMessage(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finalRender:Lcom/cloud/tmc/kernel/render/IRender;

.field final synthetic val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

.field final synthetic val$h5CallBack:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$messageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$h5CallBack:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    iput-object p4, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalRender:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->isDestroyed()Z

    move-result v0

    const-string v1, "TmcEngine:EngineUtils"

    if-eqz v0, :cond_0

    const-string v0, "sendPushWorkerMessage but worker destroyed!"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$messageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$h5CallBack:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " workerReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/worker/JSI;->isWorkerReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->isWorkerReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    iget-object v2, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$h5CallBack:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    goto :goto_0

    :cond_1
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalRender:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateWorker:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    new-instance v2, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;

    invoke-direct {v2, p0, v0}, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;-><init>(Lcom/cloud/tmc/kernel/utils/EngineUtils$2;Lcom/google/gson/JsonObject;)V

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->registerWorkerReadyListener(Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;)V

    :goto_0
    return-void
.end method
