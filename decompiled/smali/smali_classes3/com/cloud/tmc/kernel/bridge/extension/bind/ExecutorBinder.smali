.class public Lcom/cloud/tmc/kernel/bridge/extension/bind/ExecutorBinder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/extension/bind/Binder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/kernel/bridge/extension/bind/Binder<",
        "Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingExecutor;",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;
        }
    .end annotation

    check-cast p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingExecutor;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ExecutorBinder;->bind(Ljava/lang/Class;Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingExecutor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingExecutor;)Ljava/util/concurrent/Executor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingExecutor;",
            ")",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingExecutor;->value()Lcom/cloud/tmc/kernel/executor/ExecutorType;

    move-result-object p1

    const-class p2, Lcom/cloud/tmc/kernel/executor/IExecutorService;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/executor/IExecutorService;

    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/executor/IExecutorService;->getExecutor(Lcom/cloud/tmc/kernel/executor/ExecutorType;)Ljava/util/concurrent/Executor;

    move-result-object p1

    return-object p1
.end method
