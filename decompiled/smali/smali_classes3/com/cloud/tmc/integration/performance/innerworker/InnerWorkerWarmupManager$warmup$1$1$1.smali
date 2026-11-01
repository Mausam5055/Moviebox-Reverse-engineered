.class public final Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1",
        "Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;",
        "onEvent",
        "",
        "event",
        "Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;",
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
.field final synthetic $factory:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

.field final synthetic $warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

.field final synthetic $warmupNode:Lcom/cloud/tmc/kernel/node/Node;

.field final synthetic $worker:Lcom/cloud/tmc/kernel/worker/JSI;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1;->$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    iput-object p2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1;->$factory:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iput-object p3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1;->$warmupNode:Lcom/cloud/tmc/kernel/node/Node;

    iput-object p4, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1;->$warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1;->$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->workerOnMessageReady()V

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1;->$factory:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1;->$warmupNode:Lcom/cloud/tmc/kernel/node/Node;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "workerOnMessageReady"

    invoke-interface {p1, v0, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_0
    const-class p1, Lcom/cloud/tmc/integration/structure/WarmupNode;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/structure/WarmupNode;

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1;->$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "worker.workerId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/WarmupNode;->removeNode(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1;->$warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/performance/WarmUpCallback;->warmupResult(Z)V

    return v0
.end method
