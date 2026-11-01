.class public final synthetic Lcom/cloud/tmc/integration/performance/innerworker/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

.field public final synthetic b:Lcom/cloud/tmc/kernel/node/Node;

.field public final synthetic c:Lcom/cloud/tmc/kernel/worker/JSI;

.field public final synthetic d:Lcom/cloud/tmc/integration/performance/WarmUpCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->a:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    iput-object p2, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->b:Lcom/cloud/tmc/kernel/node/Node;

    iput-object p3, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->c:Lcom/cloud/tmc/kernel/worker/JSI;

    iput-object p4, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->d:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    return-void
.end method


# virtual methods
.method public final onWorkerReady()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->a:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->b:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->c:Lcom/cloud/tmc/kernel/worker/JSI;

    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->d:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->a(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V

    return-void
.end method
