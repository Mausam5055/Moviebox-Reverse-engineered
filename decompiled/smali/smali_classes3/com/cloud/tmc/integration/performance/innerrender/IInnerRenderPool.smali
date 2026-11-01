.class public interface abstract Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.integration.performance.innerrender.InnerRenderPool"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u0006H&J\"\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J\u0012\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000cH&J\u0012\u0010\u0016\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H&\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "createRender",
        "",
        "sync",
        "destroy",
        "",
        "getRender",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "context",
        "Landroid/app/Activity;",
        "frameworkVersion",
        "",
        "init",
        "Landroid/app/Application;",
        "preWarmupRenderFail",
        "registerListener",
        "listener",
        "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;",
        "homePage",
        "removeRender",
        "renderId",
        "warmupRender",
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
.method public abstract createRender(Z)Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getRender(Landroid/app/Activity;Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;
.end method

.method public abstract init(Landroid/app/Application;)V
.end method

.method public abstract preWarmupRenderFail()V
.end method

.method public abstract registerListener(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;ZLjava/lang/String;)V
.end method

.method public abstract removeRender(Ljava/lang/String;)V
.end method

.method public abstract warmupRender(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
.end method
