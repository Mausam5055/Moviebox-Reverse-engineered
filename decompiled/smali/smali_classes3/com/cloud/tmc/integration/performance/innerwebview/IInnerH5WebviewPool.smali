.class public interface abstract Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.integration.performance.innerwebview.InnerH5WebviewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH&J\u001c\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "createWebview",
        "",
        "destroy",
        "",
        "getWebview",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "context",
        "Landroid/app/Activity;",
        "init",
        "Landroid/app/Application;",
        "registerListener",
        "listener",
        "Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewListener;",
        "removeWebview",
        "render",
        "needDestroy",
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
.method public abstract createWebview()Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getWebview(Landroid/app/Activity;)Lcom/cloud/tmc/kernel/render/IRender;
.end method

.method public abstract init(Landroid/app/Application;)V
.end method

.method public abstract registerListener(Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewListener;)V
.end method

.method public abstract removeWebview(Lcom/cloud/tmc/kernel/render/IRender;Z)V
.end method
