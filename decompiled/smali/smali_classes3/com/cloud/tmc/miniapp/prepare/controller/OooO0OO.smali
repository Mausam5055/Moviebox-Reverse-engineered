.class public Lcom/cloud/tmc/miniapp/prepare/controller/OooO0OO;
.super Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0o;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0o;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/oo000o;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/oo000o;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/o00O0O;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o00O0O;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->bindContext(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->setInterceptors(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    return-void
.end method
