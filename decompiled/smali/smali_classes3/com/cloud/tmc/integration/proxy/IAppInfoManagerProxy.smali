.class public interface abstract Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\'J\"\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\'\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/proxy/IAppInfoManagerProxy;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "getAppModelHasNotOffline",
        "Lcom/cloud/tmc/integration/model/AppModel;",
        "context",
        "Landroid/content/Context;",
        "query",
        "Lcom/cloud/tmc/integration/model/AppInfoQuery;",
        "updateAppModelByOffline",
        "",
        "appModel",
        "key",
        "",
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
.method public abstract getAppModelHasNotOffline(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;
.end method

.method public abstract updateAppModelByOffline(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
.end method
