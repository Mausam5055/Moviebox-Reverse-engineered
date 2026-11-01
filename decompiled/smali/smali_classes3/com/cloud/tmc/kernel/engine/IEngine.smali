.class public interface abstract Lcom/cloud/tmc/kernel/engine/IEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# virtual methods
.method public abstract createRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;
.end method

.method public abstract createWorker(Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getApplication()Landroid/content/Context;
.end method

.method public abstract getBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;
.end method

.method public abstract getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;
.end method

.method public abstract getEngineType()Ljava/lang/String;
.end method

.method public abstract getInstanceId()Ljava/lang/String;
.end method

.method public abstract getNode()Lcom/cloud/tmc/kernel/node/Node;
.end method

.method public abstract getStartParams()Landroid/os/Bundle;
.end method

.method public abstract getTopRender()Lcom/cloud/tmc/kernel/render/IRender;
.end method

.method public abstract getWorkerId()Ljava/lang/String;
.end method

.method public abstract init(Lcom/cloud/tmc/kernel/model/InitParams;Lcom/cloud/tmc/kernel/engine/EngineInitCallback;)V
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract setup(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/kernel/engine/EngineSetupCallback;)V
.end method

.method public abstract updateWorker(Lcom/cloud/tmc/kernel/worker/JSI;)V
.end method
