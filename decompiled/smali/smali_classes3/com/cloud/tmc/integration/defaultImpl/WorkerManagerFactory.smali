.class public final Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/worker/IWorkerManagerFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016JX\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;",
        "Lcom/cloud/tmc/worker/IWorkerManagerFactory;",
        "()V",
        "createWorker",
        "",
        "engine",
        "Lcom/cloud/tmc/kernel/engine/IEngine;",
        "context",
        "Landroid/content/Context;",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "userAgent",
        "",
        "workerId",
        "listener",
        "Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;",
        "getWorker",
        "createWorkerStartTime",
        "",
        "createWorkerEndTime",
        "loadWorkerFrameworkStartTime",
        "loadWorkerFrameworkEndTime",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getWorker(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;JJJJ)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;->getWorker(Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;JJJJ)V

    return-void
.end method

.method private final getWorker(Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;JJJJ)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-wide/from16 v3, p7

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    move-wide/from16 v9, p13

    instance-of v11, v1, Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v11, :cond_0

    move-object v13, v1

    check-cast v13, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-eqz v13, :cond_1

    invoke-interface {v13}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v13

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-nez v13, :cond_2

    const-string v0, "InnerWarmup"

    const-string v1, "app\u5df2\u6467\u6bc1\uff0c\u4e0d\u518d\u7ee7\u7eed\u6267\u884cWorker"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-class v13, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    invoke-static {v13}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    const-class v14, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-static {v14}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-interface {v14}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;->getWorker(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object v13

    if-nez v13, :cond_3

    const-string v13, ""

    move-object/from16 v14, p2

    invoke-interface {v0, v14, v1, v13}, Lcom/cloud/tmc/kernel/engine/IEngine;->createWorker(Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object v13

    goto :goto_2

    :cond_3
    invoke-interface {v0, v13}, Lcom/cloud/tmc/kernel/engine/IEngine;->updateWorker(Lcom/cloud/tmc/kernel/worker/JSI;)V

    :goto_2
    if-eqz v1, :cond_4

    const-class v0, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_5

    new-instance v14, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-direct {v14, v2}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    const-class v15, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-interface {v0, v15, v14}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_3
    instance-of v14, v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    if-eqz v14, :cond_6

    move-object v14, v1

    check-cast v14, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :goto_4
    const-class v15, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v15}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v7, v16

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    if-eqz v13, :cond_8

    invoke-interface {v13}, Lcom/cloud/tmc/kernel/worker/JSI;->fromWarmup()Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v9, v16

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v14

    const-string v14, "worker fromWarmup : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v12, v7, v8, v9}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getStartToken()J

    move-result-wide v7

    goto :goto_7

    :cond_9
    const-wide/16 v7, -0x1

    :goto_7
    if-nez v13, :cond_a

    goto :goto_8

    :cond_a
    invoke-interface {v13, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->setWorkerId(Ljava/lang/String;)V

    :goto_8
    if-eqz v13, :cond_b

    const-string v9, "100000"

    invoke-interface {v13, v9}, Lcom/cloud/tmc/kernel/worker/JSI;->setAppId(Ljava/lang/String;)V

    :cond_b
    if-eqz v13, :cond_c

    invoke-interface {v13, v0}, Lcom/cloud/tmc/kernel/worker/JSI;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    :cond_c
    sget-object v9, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    move-result-object v10

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    :goto_9
    invoke-virtual {v9, v10}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v13, :cond_f

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    :goto_a
    invoke-interface {v13, v9}, Lcom/cloud/tmc/kernel/worker/JSI;->setCommonresId(Ljava/lang/String;)V

    :cond_f
    const-class v9, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    invoke-interface {v9, v7, v8}, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;->get(J)Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v7

    invoke-interface {v7, v2, v13}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->registerWorker(Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/JSI;)V

    const-class v2, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-interface {v2, v0, v13}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->registerWorker(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/worker/JSI;)V

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1f

    cmp-long v2, v3, v7

    if-eqz v2, :cond_1f

    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_10
    const/4 v9, 0x0

    :goto_b
    const-string v10, "worker"

    invoke-interface {v2, v9, v10}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v2, v9, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    if-eqz v11, :cond_11

    move-object v4, v1

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_c

    :cond_11
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_12

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_12
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    if-eqz v11, :cond_13

    move-object v4, v1

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_e

    :cond_13
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_14

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_14
    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    if-eqz v11, :cond_15

    move-object v5, v1

    check-cast v5, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_10

    :cond_15
    const/4 v5, 0x0

    :goto_10
    if-eqz v5, :cond_16

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    :cond_16
    const/4 v5, 0x0

    :goto_11
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    if-eqz v11, :cond_17

    move-object v5, v1

    check-cast v5, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_12

    :cond_17
    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_18

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    :cond_18
    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_14

    :cond_19
    const/4 v5, 0x0

    :goto_14
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v9, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v15}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_15

    :cond_1a
    const/4 v5, 0x0

    :goto_15
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v9, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v15}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_16

    :cond_1b
    const/4 v5, 0x0

    :goto_16
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v9, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v15}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_17

    :cond_1c
    const/4 v5, 0x0

    :goto_17
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v9, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;

    invoke-direct {v4, v2}, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;-><init>(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v2

    goto :goto_18

    :cond_1d
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v4, v2}, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance v2, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;

    invoke-direct {v2, v3}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;-><init>(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v3

    goto :goto_19

    :cond_1e
    const/4 v3, 0x0

    :goto_19
    invoke-virtual {v2, v3}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    :cond_1f
    move-wide/from16 v2, p13

    cmp-long v4, v2, v7

    if-eqz v4, :cond_2f

    move-wide/from16 v4, p11

    cmp-long v6, v4, v7

    if-eqz v6, :cond_2f

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    if-eqz v11, :cond_20

    move-object v5, v1

    check-cast v5, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_1a

    :cond_20
    const/4 v5, 0x0

    :goto_1a
    if-eqz v5, :cond_21

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1b

    :cond_21
    const/4 v5, 0x0

    :goto_1b
    invoke-virtual {v6, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    if-eqz v11, :cond_22

    move-object v5, v1

    check-cast v5, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_1c

    :cond_22
    const/4 v5, 0x0

    :goto_1c
    if-eqz v5, :cond_23

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1d

    :cond_23
    const/4 v5, 0x0

    :goto_1d
    invoke-virtual {v6, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    if-eqz v11, :cond_24

    move-object v3, v1

    check-cast v3, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_1e

    :cond_24
    const/4 v3, 0x0

    :goto_1e
    if-eqz v3, :cond_25

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    :cond_25
    const/4 v3, 0x0

    :goto_1f
    invoke-virtual {v4, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    if-eqz v11, :cond_26

    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    goto :goto_20

    :cond_26
    const/4 v1, 0x0

    :goto_20
    if-eqz v1, :cond_27

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_27
    const/4 v1, 0x0

    :goto_21
    invoke-virtual {v4, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_28
    const/4 v2, 0x0

    :goto_22
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v5, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v15}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_29
    const/4 v2, 0x0

    :goto_23
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v5, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v15}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    :cond_2a
    const/4 v2, 0x0

    :goto_24
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v5, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v15}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_2b
    const/4 v0, 0x0

    :goto_25
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;

    invoke-direct {v0, v6}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2c

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v1

    goto :goto_26

    :cond_2c
    const/4 v1, 0x0

    :goto_26
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance v0, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;

    invoke-direct {v0, v4}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2d

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v1

    goto :goto_27

    :cond_2d
    const/4 v1, 0x0

    :goto_27
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance v0, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;

    invoke-direct {v0, v4}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;-><init>(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2e

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v12

    goto :goto_28

    :cond_2e
    const/4 v12, 0x0

    :goto_28
    invoke-virtual {v0, v12}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    :cond_2f
    move-object/from16 v0, p6

    invoke-interface {v0, v13}, Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;->createSuccess(Lcom/cloud/tmc/kernel/worker/JSI;)V

    return-void
.end method


# virtual methods
.method public createWorker(Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;)V
    .locals 14

    const-string v0, "engine"

    move-object v6, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object/from16 v7, p2

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    move-object/from16 v8, p3

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    move-object/from16 v9, p4

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerId"

    move-object/from16 v10, p5

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v3, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-class v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    new-instance v13, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;

    move-object v1, v13

    move-object v5, p0

    invoke-direct/range {v1 .. v12}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;)V

    const-class v1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;->registerListener(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Ljava/lang/String;)V

    return-void
.end method
