.class public interface abstract Lcom/cloud/tmc/kernel/worker/JSI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;
    }
.end annotation


# virtual methods
.method public abstract debugRefresh()V
.end method

.method public abstract destroy()V
.end method

.method public abstract execJsCallback(Lcom/google/gson/JsonObject;Ljava/lang/String;)V
.end method

.method public abstract firstGetPackageFileStatus()Ljava/lang/Boolean;
.end method

.method public abstract fromWarmup()Ljava/lang/Boolean;
.end method

.method public abstract getFirstPackageFileSuccess(Ljava/lang/String;)V
.end method

.method public abstract getFrameworkVersion()Ljava/lang/String;
.end method

.method public abstract getNode()Lcom/cloud/tmc/kernel/node/Node;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getWarmupChannel()I
.end method

.method public abstract getWorkerHandler()Landroid/os/Handler;
.end method

.method public abstract getWorkerId()Ljava/lang/String;
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isRenderProcessGone()Ljava/lang/Boolean;
.end method

.method public abstract isWorkerReady()Z
.end method

.method public abstract loadJS(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract postMessage(Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerObject(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerObjects(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract registerWorkerReadyListener(Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;)V
.end method

.method public abstract sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
.end method

.method public abstract sendJsonToWorker(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
.end method

.method public abstract sendJsonToWorker(Ljava/util/HashMap;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendMessageToWorker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAppId(Ljava/lang/String;)V
.end method

.method public abstract setCommonresId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setFrameworkVersion(Ljava/lang/String;)V
.end method

.method public abstract setNode(Lcom/cloud/tmc/kernel/node/Node;)V
.end method

.method public abstract setRenderReady()V
.end method

.method public abstract setStartupParams(Landroid/os/Bundle;)V
.end method

.method public abstract setWarmup(I)V
.end method

.method public abstract setWarmupSuccess()V
.end method

.method public abstract setWorkerId(Ljava/lang/String;)V
.end method

.method public abstract warmupSuccess()Ljava/lang/Boolean;
.end method

.method public abstract workerOnMessageReady()V
.end method

.method public abstract workerType()I
.end method
