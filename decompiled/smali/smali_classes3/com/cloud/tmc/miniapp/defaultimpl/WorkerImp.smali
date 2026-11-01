.class public final Lcom/cloud/tmc/miniapp/defaultimpl/WorkerImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWorker(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/worker/IWorker;
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/WorkerImp;->workerType()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    const-string v3, ""

    const-class v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const-string v4, "worker from webview"

    invoke-interface {v1, v3, v2, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/worker/debug/WebviewWorker;

    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    move-result-object v8

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v5, v1

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v5 .. v11}, Lcom/cloud/tmc/worker/debug/WebviewWorker;-><init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const-string v1, "worker from quickJS"

    invoke-interface {p1, v3, p2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v1, v0

    :goto_1
    :try_start_2
    const-class p1, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;

    const-string p2, "workerType"

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/IWorker;->type()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :cond_2
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;->setParams(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/WorkerImp;->workerType()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create worker fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ; workerType = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miniapp"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_4
    return-object v1
.end method

.method public workerType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
