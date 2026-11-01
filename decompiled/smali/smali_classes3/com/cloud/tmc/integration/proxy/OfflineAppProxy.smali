.class public interface abstract Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.defaultimpl.OfflineAppProxyImp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;,
        Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008g\u0018\u00002\u00020\u0001:\u0002\u0014\u0015J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0011\u001a\u00020\u0003H&J\u0008\u0010\u0012\u001a\u00020\u0003H&J\u0008\u0010\u0013\u001a\u00020\u0003H&\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "addShortCutListener",
        "",
        "listener",
        "Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;",
        "downloadIcon",
        "appId",
        "",
        "logoUrl",
        "getOfflineAppsForBridgeApi",
        "isCache",
        "",
        "callback",
        "Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;",
        "notifyCreateShortCutsSuccess",
        "removeShortCutListener",
        "scanForOfflineDownloadDelete",
        "scanForOfflineDownloadSuccess",
        "scanForUsedAppDelete",
        "Callback",
        "CreateShortCutsListener",
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
.method public abstract addShortCutListener(Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;)V
.end method

.method public abstract downloadIcon(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getOfflineAppsForBridgeApi(ZLcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;)V
.end method

.method public abstract notifyCreateShortCutsSuccess(Ljava/lang/String;)V
.end method

.method public abstract removeShortCutListener(Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;)V
.end method

.method public abstract scanForOfflineDownloadDelete()V
.end method

.method public abstract scanForOfflineDownloadSuccess()V
.end method

.method public abstract scanForUsedAppDelete()V
.end method
