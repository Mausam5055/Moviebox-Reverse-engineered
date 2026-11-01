.class public interface abstract Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.defaultimpl.WorkerImp"
.end annotation


# virtual methods
.method public abstract createWorker(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/worker/IWorker;
.end method

.method public abstract workerType()I
.end method
