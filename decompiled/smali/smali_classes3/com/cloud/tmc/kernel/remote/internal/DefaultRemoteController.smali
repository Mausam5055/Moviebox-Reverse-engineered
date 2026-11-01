.class public Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/remote/RemoteController;


# instance fields
.field private mRemoteControlManagement:Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindExtensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 0

    return-void
.end method

.method protected createRemoteControlManagement()Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteControlManagement;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteControlManagement;-><init>()V

    return-object v0
.end method

.method public declared-synchronized getRemoteControlManagement()Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;->mRemoteControlManagement:Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;->createRemoteControlManagement()Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;->mRemoteControlManagement:Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;->mRemoteControlManagement:Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isRemoteCallExtension(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;->getRemoteControlManagement()Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;->isRemoteExtension(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method

.method public remoteCall(Lcom/cloud/tmc/kernel/remote/RemoteCallArgs;)Lcom/cloud/tmc/kernel/remote/RemoteCallResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized setRemoteControlManagement(Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;->mRemoteControlManagement:Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
