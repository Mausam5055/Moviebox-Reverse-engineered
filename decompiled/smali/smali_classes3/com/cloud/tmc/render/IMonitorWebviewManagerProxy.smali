.class public interface abstract Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.defaultimpl.MonitorWebviewManagerImp"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "registerMonitorListener",
        "",
        "listener",
        "Lcom/cloud/tmc/render/MonitorWebviewListener;",
        "reportDomLoadTime",
        "type",
        "",
        "uniqueId",
        "",
        "unRegisterMonitorListener",
        "com.cloud.tmc.render"
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
.method public abstract registerMonitorListener(Lcom/cloud/tmc/render/MonitorWebviewListener;)V
.end method

.method public abstract reportDomLoadTime(ILjava/lang/String;)V
.end method

.method public abstract unRegisterMonitorListener(Lcom/cloud/tmc/render/MonitorWebviewListener;)V
.end method
