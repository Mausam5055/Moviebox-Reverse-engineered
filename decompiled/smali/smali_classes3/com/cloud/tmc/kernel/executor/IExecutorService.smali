.class public interface abstract Lcom/cloud/tmc/kernel/executor/IExecutorService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.kernel.coreimpl.DefaultExecutorService"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/executor/IExecutorService;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "scheduledExecutor",
        "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
        "getScheduledExecutor",
        "()Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
        "getExecutor",
        "Ljava/util/concurrent/Executor;",
        "type",
        "Lcom/cloud/tmc/kernel/executor/ExecutorType;",
        "com.cloud.tmc.kernel"
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
.method public abstract getExecutor(Lcom/cloud/tmc/kernel/executor/ExecutorType;)Ljava/util/concurrent/Executor;
.end method

.method public abstract getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.end method
