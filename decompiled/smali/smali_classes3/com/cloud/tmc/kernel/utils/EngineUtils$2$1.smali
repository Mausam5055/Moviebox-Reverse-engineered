.class Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/kernel/utils/EngineUtils$2;

.field final synthetic val$jo:Lcom/google/gson/JsonObject;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/utils/EngineUtils$2;Lcom/google/gson/JsonObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;->this$0:Lcom/cloud/tmc/kernel/utils/EngineUtils$2;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;->val$jo:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerReady()V
    .locals 4

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;->this$0:Lcom/cloud/tmc/kernel/utils/EngineUtils$2;

    iget-object v1, v1, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalRender:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateWorker:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;->this$0:Lcom/cloud/tmc/kernel/utils/EngineUtils$2;

    iget-object v1, v0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    iget-object v2, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;->val$jo:Lcom/google/gson/JsonObject;

    iget-object v0, v0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$h5CallBack:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    return-void
.end method
