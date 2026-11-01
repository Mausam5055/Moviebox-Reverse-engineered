.class final Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->createWorker(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.integration.performance.innerworker.InnerWorkerPool$createWorker$1$1"
    f = "InnerWorkerPool.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Landroid/app/Application;

.field label:I

.field final synthetic this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;",
            "Landroid/app/Application;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    iput-object p2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->$it:Landroid/app/Application;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->$it:Landroid/app/Application;

    invoke-direct {p1, v0, v1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;-><init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/cloud/tmc/worker/WorkerManager;

    invoke-direct {p1}, Lcom/cloud/tmc/worker/WorkerManager;-><init>()V

    sget-object v0, Lcom/cloud/tmc/integration/performance/WarmupUtils;->INSTANCE:Lcom/cloud/tmc/integration/performance/WarmupUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/performance/WarmupUtils;->getWarmupWorkerId()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warmup_worker_id__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/worker/WorkerManager;->setWorkerId(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/worker/WorkerManager;->setWarmup(I)V

    const-class v0, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;->get(J)Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/tmc/worker/WorkerManager;->getWorkerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->registerWorker(Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/JSI;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    invoke-static {v0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->access$getUnUsedWorkerQueue$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    invoke-static {p1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->access$getTAG$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    invoke-static {v0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->access$getUnUsedWorkerQueue$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InnerWorkerPool => addWorker unUsedWorkerQueue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    new-instance v0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;-><init>()V

    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->access$setInnerWorkerWarmupManager$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    invoke-static {p1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->access$getInnerWorkerWarmupManager$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->$it:Landroid/app/Application;

    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;->preWarmup(Landroid/content/Context;I)V

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
