.class public Lcom/cloud/tmc/integration/invoke/action/ActionCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/invoke/ExtensionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/integration/invoke/ExtensionCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:ActionCallback"


# instance fields
.field private final IExecutorService:Lcom/cloud/tmc/kernel/executor/IExecutorService;

.field private final actionPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/integration/invoke/action/Action;",
            "Lcom/cloud/tmc/kernel/executor/ExecutorType;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/integration/invoke/action/Action;",
            "Lcom/cloud/tmc/kernel/executor/ExecutorType;",
            ">;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->defaultValue:Ljava/lang/Object;

    const-class p1, Lcom/cloud/tmc/kernel/executor/IExecutorService;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/executor/IExecutorService;

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->IExecutorService:Lcom/cloud/tmc/kernel/executor/IExecutorService;

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->defaultValue:Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/cloud/tmc/integration/invoke/action/Action;

    instance-of v0, v2, Lcom/cloud/tmc/integration/invoke/action/Action$Complete;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->IExecutorService:Lcom/cloud/tmc/kernel/executor/IExecutorService;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/executor/IExecutorService;->getExecutor(Lcom/cloud/tmc/kernel/executor/ExecutorType;)Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$5;

    move-object v0, v8

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$5;-><init>(Lcom/cloud/tmc/integration/invoke/action/ActionCallback;Lcom/cloud/tmc/integration/invoke/action/Action;JLjava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onException(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/invoke/action/Action;

    instance-of v2, v1, Lcom/cloud/tmc/integration/invoke/action/Action$Exception;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/executor/ExecutorType;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->IExecutorService:Lcom/cloud/tmc/kernel/executor/IExecutorService;

    invoke-interface {v3, v2}, Lcom/cloud/tmc/kernel/executor/IExecutorService;->getExecutor(Lcom/cloud/tmc/kernel/executor/ExecutorType;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$3;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$3;-><init>(Lcom/cloud/tmc/integration/invoke/action/ActionCallback;Lcom/cloud/tmc/integration/invoke/action/Action;Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onInterrupt(Lcom/cloud/tmc/kernel/extension/Extension;)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/invoke/action/Action;

    instance-of v2, v1, Lcom/cloud/tmc/integration/invoke/action/Action$Interrupt;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/executor/ExecutorType;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->IExecutorService:Lcom/cloud/tmc/kernel/executor/IExecutorService;

    invoke-interface {v3, v2}, Lcom/cloud/tmc/kernel/executor/IExecutorService;->getExecutor(Lcom/cloud/tmc/kernel/executor/ExecutorType;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$4;-><init>(Lcom/cloud/tmc/integration/invoke/action/ActionCallback;Lcom/cloud/tmc/integration/invoke/action/Action;Lcom/cloud/tmc/kernel/extension/Extension;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onProgress(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/invoke/action/Action;

    instance-of v2, v1, Lcom/cloud/tmc/integration/invoke/action/Action$Progress;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/executor/ExecutorType;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->IExecutorService:Lcom/cloud/tmc/kernel/executor/IExecutorService;

    invoke-interface {v3, v2}, Lcom/cloud/tmc/kernel/executor/IExecutorService;->getExecutor(Lcom/cloud/tmc/kernel/executor/ExecutorType;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$2;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$2;-><init>(Lcom/cloud/tmc/integration/invoke/action/ActionCallback;Lcom/cloud/tmc/integration/invoke/action/Action;Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStart(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/cloud/tmc/integration/invoke/action/Action;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    instance-of v1, v4, Lcom/cloud/tmc/integration/invoke/action/Action$Start;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->actionPolicyMap:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/executor/ExecutorType;

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->IExecutorService:Lcom/cloud/tmc/kernel/executor/IExecutorService;

    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/executor/IExecutorService;->getExecutor(Lcom/cloud/tmc/kernel/executor/ExecutorType;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v8, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;

    move-object v2, v8

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;-><init>(Lcom/cloud/tmc/integration/invoke/action/ActionCallback;Lcom/cloud/tmc/integration/invoke/action/Action;JLjava/util/List;)V

    invoke-interface {v1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
