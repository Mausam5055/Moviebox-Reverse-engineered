.class public final Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;
.implements Lcom/cloud/tmc/integration/performance/WarmupExtension;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0002J\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u001d\u001a\u00020\u0018H\u0016J\u001a\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0005H\u0016J\u0012\u0010!\u001a\u00020\u00182\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u0012j\u0008\u0012\u0004\u0012\u00020\u0010`\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;",
        "Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;",
        "Lcom/cloud/tmc/integration/performance/WarmupExtension;",
        "()V",
        "TAG",
        "",
        "context",
        "Landroid/app/Application;",
        "creatingWorker",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "innerWorkerWarmupManager",
        "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;",
        "listener",
        "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;",
        "unUsedWorkerQueue",
        "Ljava/util/LinkedList;",
        "Lcom/cloud/tmc/kernel/worker/JSI;",
        "usedWorkerList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "createWorker",
        "",
        "sync",
        "destroy",
        "",
        "existWorker",
        "frameworkVersion",
        "getWorker",
        "init",
        "preWarmupWorkerFail",
        "registerListener",
        "removeWorker",
        "workerId",
        "warmupWorker",
        "param",
        "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/app/Application;

.field private creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private innerWorkerWarmupManager:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

.field private listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

.field private final unUsedWorkerQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/cloud/tmc/kernel/worker/JSI;",
            ">;"
        }
    .end annotation
.end field

.field private final usedWorkerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/kernel/worker/JSI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InnerWarmup"

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->usedWorkerList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getCreatingWorker$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getInnerWorkerWarmupManager$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->innerWorkerWarmupManager:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getUnUsedWorkerQueue$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static final synthetic access$setInnerWorkerWarmupManager$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->innerWorkerWarmupManager:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

    return-void
.end method

.method public static final synthetic access$setListener$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    return-void
.end method

.method private final existWorker(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/worker/JSI;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->warmupSuccess()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/worker/JSI;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->isRenderProcessGone()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez v2, :cond_4

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->isValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/worker/JSI;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    :cond_5
    :goto_4
    return v1
.end method


# virtual methods
.method public createWorker(Z)Z
    .locals 10

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->context:Landroid/app/Application;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    const-string v4, "InnerWorkerPool => createWorker"

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v4, "innerWarmup"

    const-string v5, "{\"innerWarmUpRenderEnable\": true, \"innerWarmUpWorkerEnable\": true, \"renderMaxWarmupSize\": 1, \"workerMaxWarmupSize\": 1}"

    invoke-interface {v3, v4, v5}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/cloud/tmc/integration/model/InnerWarmup;

    invoke-static {v3, v4}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/model/InnerWarmup;

    iget-object v5, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getInnerWarmUpWorkerEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getWorkerMaxWarmupSize()I

    move-result v7

    if-ge v6, v7, :cond_0

    iget-object v6, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InnerWorkerPool => createWorker ret:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", canCreate:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", processName:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getInnerWarmUpWorkerEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getWorkerMaxWarmupSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v4

    new-instance v7, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;

    invoke-direct {v7, p0, v2, p1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;-><init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;->warmupFail(I)V

    :cond_2
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    return v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    const-string v1, "InnerWorkerPool => destroy"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->usedWorkerList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->usedWorkerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->innerWorkerWarmupManager:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->context:Landroid/app/Application;

    return-void
.end method

.method public getWorker(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InnerWorkerPool => getWorker unUsedWorkerQueue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->warmupSuccess()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "unUsedWorkerQueue.peek().warmupSuccess()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/worker/JSI;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->isRenderProcessGone()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez v3, :cond_3

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->isValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->usedWorkerList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InnerWorkerPool => getWorker success:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public init(Landroid/app/Application;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    const-string v1, "worker init"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->context:Landroid/app/Application;

    return-void
.end method

.method public isValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/performance/WarmupExtension$DefaultImpls;->isValid(Lcom/cloud/tmc/integration/performance/WarmupExtension;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public preWarmupWorkerFail()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InnerWorkerPool => preWarmupWorkerFail unUsedWorkerQueue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;->warmupFail(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "unUsedWorkerQueue[lastIndex]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cloud/tmc/kernel/worker/JSI;

    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public registerListener(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Ljava/lang/String;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->existWorker(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;->warmupSuccess()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    :try_start_0
    const-class p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string p2, "innerWarmupSetting"

    const-string v0, "{\"renderWaitTime\":1500,\"workerWaitTime\":1500}"

    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/cloud/tmc/integration/performance/InnerWarmupSettingData;

    invoke-static {p1, p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/performance/InnerWarmupSettingData;

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$registerListener$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$registerListener$1;-><init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/performance/InnerWarmupSettingData;->getWorkerWaitTime()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;->warmupFail(I)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;->warmupFail(I)V

    :goto_0
    return-void
.end method

.method public removeWorker(Ljava/lang/String;)V
    .locals 4

    const-string v0, "workerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InnerWorkerPool => removeWorker workerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->usedWorkerList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/worker/JSI;

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->usedWorkerList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public warmupWorker(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InnerWorkerPool => warmupWorker unUsedWorkerQueue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , canWarmup:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->innerWorkerWarmupManager:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "unUsedWorkerQueue.last"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cloud/tmc/kernel/worker/JSI;

    new-instance v2, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$warmupWorker$1;

    invoke-direct {v2, p0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$warmupWorker$1;-><init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)V

    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;->warmup(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;)V

    :cond_1
    return-void
.end method
