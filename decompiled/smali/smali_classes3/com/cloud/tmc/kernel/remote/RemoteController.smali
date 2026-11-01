.class public interface abstract Lcom/cloud/tmc/kernel/remote/RemoteController;
.super Ljava/lang/Object;


# virtual methods
.method public abstract bindExtensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
.end method

.method public abstract getRemoteControlManagement()Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;
.end method

.method public abstract isRemoteCallExtension(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z
.end method

.method public abstract remoteCall(Lcom/cloud/tmc/kernel/remote/RemoteCallArgs;)Lcom/cloud/tmc/kernel/remote/RemoteCallResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRemoteControlManagement(Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;)V
.end method
