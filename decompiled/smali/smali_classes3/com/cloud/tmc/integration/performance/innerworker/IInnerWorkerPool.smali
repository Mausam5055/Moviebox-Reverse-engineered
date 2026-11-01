.class public interface abstract Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.integration.performance.innerworker.InnerWorkerPool"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH&J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\u0006H&J\u001a\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\t\u001a\u0004\u0018\u00010\nH&J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\nH&J\u0012\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H&\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "createWorker",
        "",
        "sync",
        "destroy",
        "",
        "getWorker",
        "Lcom/cloud/tmc/kernel/worker/JSI;",
        "frameworkVersion",
        "",
        "init",
        "context",
        "Landroid/app/Application;",
        "preWarmupWorkerFail",
        "registerListener",
        "listener",
        "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;",
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


# virtual methods
.method public abstract createWorker(Z)Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getWorker(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;
.end method

.method public abstract init(Landroid/app/Application;)V
.end method

.method public abstract preWarmupWorkerFail()V
.end method

.method public abstract registerListener(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Ljava/lang/String;)V
.end method

.method public abstract removeWorker(Ljava/lang/String;)V
.end method

.method public abstract warmupWorker(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
.end method
