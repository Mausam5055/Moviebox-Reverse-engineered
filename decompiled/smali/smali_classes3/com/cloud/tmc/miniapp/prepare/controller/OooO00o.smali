.class public Lcom/cloud/tmc/miniapp/prepare/controller/OooO00o;
.super Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/o0ooOOo;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0ooOOo;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/o0OOO0o;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OOO0o;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->bindContext(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->setInterceptors(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "warmupType"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->NORMAL_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->NORMAL_RENDER:Lcom/cloud/tmc/integration/performance/WarmupType;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-class v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;->preWarmupWorkerFail()V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_RENNDER:Lcom/cloud/tmc/integration/performance/WarmupType;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->preWarmupRenderFail()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getPrepareData()Lcom/cloud/tmc/integration/model/PrepareData;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_4
    return-void
.end method

.method public onGetAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->onGetAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V

    return-void
.end method
