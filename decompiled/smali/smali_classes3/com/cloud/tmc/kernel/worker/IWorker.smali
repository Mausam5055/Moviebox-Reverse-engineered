.class public interface abstract Lcom/cloud/tmc/kernel/worker/IWorker;
.super Ljava/lang/Object;


# virtual methods
.method public abstract create()V
.end method

.method public abstract destroy()V
.end method

.method public abstract execute(Lcom/google/gson/JsonObject;)V
.end method

.method public abstract execute(Ljava/lang/String;)V
.end method

.method public abstract execute(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getActivityRuntimes()I
.end method

.method public abstract getData(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract isDestroy()Ljava/lang/Boolean;
.end method

.method public abstract isLoad()Ljava/lang/Boolean;
.end method

.method public abstract loadJS(Ljava/lang/String;)V
.end method

.method public abstract loadScript(Ljava/lang/String;)V
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

.method public abstract registerWorkLifeCycle(Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;)V
.end method

.method public abstract registerWorkerCallback(Lcom/cloud/tmc/kernel/worker/WorkerCallback;)V
.end method

.method public abstract setData(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract type()I
.end method
