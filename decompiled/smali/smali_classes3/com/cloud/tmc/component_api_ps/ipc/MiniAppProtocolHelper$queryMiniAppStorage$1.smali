.class public final Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryMiniAppStorage$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->queryMiniAppStorage(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryMiniAppStorage$1",
        "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;",
        "onFailed",
        "",
        "errorCode",
        "",
        "failedMsg",
        "",
        "(Ljava/lang/Integer;Ljava/lang/String;)V",
        "onSuccess",
        "bundle",
        "Landroid/os/Bundle;",
        "com.cloud.tmc.component_api_ps"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->access$getMiniappStoregeCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->access$setMiniappStoregeCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p2, "MiniAppProtocolHelper"

    const-string v0, "queryOfflineApps Throwable ="

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "MiniAppProtocolHelper"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "resultJsonData"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryOfflineApps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->access$getMiniappStoregeCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;->onSuccess(Ljava/lang/String;)V

    :cond_1
    invoke-static {v1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->access$setMiniappStoregeCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "queryOfflineApps Throwable ="

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
