.class public final Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;->createWorker(Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1",
        "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;",
        "createWorkerSuccess",
        "",
        "loadWorkerFrameworkSuccess",
        "warmupFail",
        "step",
        "",
        "warmupSuccess",
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


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $createWorkerStartTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $engine:Lcom/cloud/tmc/kernel/engine/IEngine;

.field final synthetic $listener:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

.field final synthetic $loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $node:Lcom/cloud/tmc/kernel/node/Node;

.field final synthetic $userAgent:Ljava/lang/String;

.field final synthetic $workerId:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    iput-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$engine:Lcom/cloud/tmc/kernel/engine/IEngine;

    iput-object p6, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$node:Lcom/cloud/tmc/kernel/node/Node;

    iput-object p8, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$userAgent:Ljava/lang/String;

    iput-object p9, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$workerId:Ljava/lang/String;

    iput-object p10, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$listener:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

    iput-object p11, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->warmupSuccess$lambda$1(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->loadWorkerFrameworkSuccess$lambda$0(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->warmupFail$lambda$2(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    return-void
.end method

.method private static final loadWorkerFrameworkSuccess$lambda$0(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 20

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    const-string v4, "this$0"

    move-object/from16 v5, p0

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$engine"

    move-object/from16 v6, p1

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$context"

    move-object/from16 v7, p2

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$node"

    move-object/from16 v8, p3

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$userAgent"

    move-object/from16 v9, p4

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$workerId"

    move-object/from16 v10, p5

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$listener"

    move-object/from16 v11, p6

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$createWorkerStartTime"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$createWorkerEndTime"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$loadWorkerFrameworkStartTime"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$loadWorkerFrameworkEndTime"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v12, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v14, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v2, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    invoke-static/range {v5 .. v19}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;->access$getWorker(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;JJJJ)V

    return-void
.end method

.method private static final warmupFail$lambda$2(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 20

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    const-string v4, "this$0"

    move-object/from16 v5, p0

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$engine"

    move-object/from16 v6, p1

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$context"

    move-object/from16 v7, p2

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$node"

    move-object/from16 v8, p3

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$userAgent"

    move-object/from16 v9, p4

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$workerId"

    move-object/from16 v10, p5

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$listener"

    move-object/from16 v11, p6

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$createWorkerStartTime"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$createWorkerEndTime"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$loadWorkerFrameworkStartTime"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$loadWorkerFrameworkEndTime"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v12, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v14, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v2, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    invoke-static/range {v5 .. v19}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;->access$getWorker(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;JJJJ)V

    return-void
.end method

.method private static final warmupSuccess$lambda$1(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 20

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    const-string v4, "this$0"

    move-object/from16 v5, p0

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$engine"

    move-object/from16 v6, p1

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$context"

    move-object/from16 v7, p2

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$node"

    move-object/from16 v8, p3

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$userAgent"

    move-object/from16 v9, p4

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$workerId"

    move-object/from16 v10, p5

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$listener"

    move-object/from16 v11, p6

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$createWorkerStartTime"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$createWorkerEndTime"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$loadWorkerFrameworkStartTime"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$loadWorkerFrameworkEndTime"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v12, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v14, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v2, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    invoke-static/range {v5 .. v19}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;->access$getWorker(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;JJJJ)V

    return-void
.end method


# virtual methods
.method public createWorkerSuccess()V
    .locals 3

    const-string v0, "InnerWarmup"

    const-string v1, "listener callback => createWorkerSuccess"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    return-void
.end method

.method public loadWorkerFrameworkSuccess()V
    .locals 15

    const-string v0, "InnerWarmup"

    const-string v1, "listener callback => loadWorkerFrameworkSuccess"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$engine:Lcom/cloud/tmc/kernel/engine/IEngine;

    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$node:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v8, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$userAgent:Ljava/lang/String;

    iget-object v9, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$workerId:Ljava/lang/String;

    iget-object v10, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$listener:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

    iget-object v11, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v12, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v13, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v14, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/i;

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lcom/cloud/tmc/integration/defaultImpl/i;-><init>(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public warmupFail(I)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listener callback => worker warmupFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InnerWarmup"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    const-wide/16 v0, 0x0

    iput-wide v0, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v10, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide v0, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v11, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide v0, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v12, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide v0, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$engine:Lcom/cloud/tmc/kernel/engine/IEngine;

    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$node:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$userAgent:Ljava/lang/String;

    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$workerId:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$listener:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

    new-instance p1, Lcom/cloud/tmc/integration/defaultImpl/h;

    move-object v1, p1

    invoke-direct/range {v1 .. v12}, Lcom/cloud/tmc/integration/defaultImpl/h;-><init>(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public warmupSuccess()V
    .locals 15

    const-string v0, "InnerWarmup"

    const-string v1, "listener callback => worker warmupSuccess"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$engine:Lcom/cloud/tmc/kernel/engine/IEngine;

    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$node:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v8, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$userAgent:Ljava/lang/String;

    iget-object v9, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$workerId:Ljava/lang/String;

    iget-object v10, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$listener:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

    iget-object v11, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v12, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$createWorkerEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v13, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkStartTime:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v14, p0, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->$loadWorkerFrameworkEndTime:Lkotlin/jvm/internal/Ref$LongRef;

    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/j;

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lcom/cloud/tmc/integration/defaultImpl/j;-><init>(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method
