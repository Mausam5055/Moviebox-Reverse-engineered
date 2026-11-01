.class public interface abstract Lcom/cloud/tmc/kernel/engine/EngineRouter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/engine/EngineRouter$IRenderInitListener;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getRegisteredRender()Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/render/IRender;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRenderById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTopRender()Lcom/cloud/tmc/kernel/render/IRender;
.end method

.method public abstract getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract registerRender(Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V
.end method

.method public abstract registerRenderInitListener(Ljava/lang/String;Lcom/cloud/tmc/kernel/engine/EngineRouter$IRenderInitListener;)V
.end method

.method public abstract registerWorker(Lcom/cloud/tmc/kernel/worker/JSI;)V
.end method

.method public abstract registerWorker(Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/JSI;)V
.end method

.method public abstract resetRenderToTop(Lcom/cloud/tmc/kernel/render/IRender;)V
.end method

.method public abstract unRegisterRender(Ljava/lang/String;)V
.end method

.method public abstract unRegisterWorker(Ljava/lang/String;)V
.end method
