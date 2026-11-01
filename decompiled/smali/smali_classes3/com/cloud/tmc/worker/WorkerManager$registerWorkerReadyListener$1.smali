.class final Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/worker/WorkerManager;->registerWorkerReadyListener(Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;)V
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
    c = "com.cloud.tmc.worker.WorkerManager$registerWorkerReadyListener$1"
    f = "WorkerManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/cloud/tmc/worker/WorkerManager;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/worker/WorkerManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/worker/WorkerManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;

    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-direct {p1, v0, p2}, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;-><init>(Lcom/cloud/tmc/worker/WorkerManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    const-class v0, Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;

    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-static {v1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getAppId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-static {v2}, Lcom/cloud/tmc/worker/WorkerManager;->access$getNode$p(Lcom/cloud/tmc/worker/WorkerManager;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;->createWorker(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/worker/IWorker;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    new-instance v3, Lcom/cloud/tmc/worker/WorkerManager$MyWorkLifeCycle;

    invoke-direct {v3, v2}, Lcom/cloud/tmc/worker/WorkerManager$MyWorkLifeCycle;-><init>(Lcom/cloud/tmc/worker/WorkerManager;)V

    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/worker/IWorker;->registerWorkLifeCycle(Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;)V

    new-instance v3, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;

    invoke-direct {v3, v2}, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;-><init>(Lcom/cloud/tmc/worker/WorkerManager;)V

    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/worker/IWorker;->registerWorkerCallback(Lcom/cloud/tmc/kernel/worker/WorkerCallback;)V

    const-class v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v2}, Lcom/cloud/tmc/worker/WorkerManager;->access$getAppId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-interface {v3, v2, v4, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/IWorker;->create()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/cloud/tmc/worker/WorkerManager;->access$setWorker$p(Lcom/cloud/tmc/worker/WorkerManager;Lcom/cloud/tmc/kernel/worker/IWorker;)V

    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getWorker$p(Lcom/cloud/tmc/worker/WorkerManager;)Lcom/cloud/tmc/kernel/worker/IWorker;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getWorkerId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getWorkerId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "100000"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getWorkerId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "warmup_worker_id_"

    invoke-static {p1, v4, v2, v3, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$postCreateWorkerEvent(Lcom/cloud/tmc/worker/WorkerManager;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-static {p1, v0}, Lcom/cloud/tmc/worker/WorkerManager;->access$setPendingCreateWorkerFail$p(Lcom/cloud/tmc/worker/WorkerManager;Z)V

    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
