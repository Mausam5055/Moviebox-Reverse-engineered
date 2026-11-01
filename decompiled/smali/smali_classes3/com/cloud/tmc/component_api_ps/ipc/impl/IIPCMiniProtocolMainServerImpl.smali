.class public final Lcom/cloud/tmc/component_api_ps/ipc/impl/IIPCMiniProtocolMainServerImpl;
.super Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel$Stub;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\r\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/cloud/tmc/component_api_ps/ipc/impl/IIPCMiniProtocolMainServerImpl;",
        "Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel$Stub;",
        "()V",
        "TAG",
        "",
        "onMiniAppAbility",
        "",
        "type",
        "callbackId",
        "bundle",
        "Landroid/os/Bundle;",
        "onMiniAppDataSync",
        "onMiniAppExtra",
        "onMiniAppPerformance",
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


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel$Stub;-><init>()V

    const-string v0, "IIPCMiniProtocolMainServerImpl"

    iput-object v0, p0, Lcom/cloud/tmc/component_api_ps/ipc/impl/IIPCMiniProtocolMainServerImpl;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onMiniAppAbility(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    :try_start_0
    sget-object p1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p1, p2, p3}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->executeCallback(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/cloud/tmc/component_api_ps/ipc/impl/IIPCMiniProtocolMainServerImpl;->TAG:Ljava/lang/String;

    const-string p3, "onQueryAppBitmapSuccess"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMiniAppDataSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    :try_start_0
    sget-object p1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p1, p2, p3}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->executeCallback(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/cloud/tmc/component_api_ps/ipc/impl/IIPCMiniProtocolMainServerImpl;->TAG:Ljava/lang/String;

    const-string p3, "onQueryAppBitmapSuccess"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMiniAppExtra(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    :try_start_0
    sget-object p1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p1, p2, p3}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->executeCallback(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/cloud/tmc/component_api_ps/ipc/impl/IIPCMiniProtocolMainServerImpl;->TAG:Ljava/lang/String;

    const-string p3, "onQueryAppBitmapSuccess"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMiniAppPerformance(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    :try_start_0
    sget-object p1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    invoke-virtual {p1, p2, p3}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->executeCallback(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/cloud/tmc/component_api_ps/ipc/impl/IIPCMiniProtocolMainServerImpl;->TAG:Ljava/lang/String;

    const-string p3, "onQueryAppBitmapSuccess"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
