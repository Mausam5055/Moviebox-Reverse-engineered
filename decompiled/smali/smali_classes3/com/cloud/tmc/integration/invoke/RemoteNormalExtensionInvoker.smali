.class public Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;
.super Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:ExtensionInvoker:Remote"


# instance fields
.field private mIsMainProcess:Z

.field private mRemoteController:Lcom/cloud/tmc/kernel/remote/RemoteController;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/remote/RemoteController;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;-><init>(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMainProcess()Z

    move-result p2

    iput-boolean p2, p0, Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;->mIsMainProcess:Z

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;->mRemoteController:Lcom/cloud/tmc/kernel/remote/RemoteController;

    return-void
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean p1, p0, Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;->mIsMainProcess:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;->mRemoteController:Lcom/cloud/tmc/kernel/remote/RemoteController;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/extension/Extension;

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;->mRemoteController:Lcom/cloud/tmc/kernel/remote/RemoteController;

    invoke-interface {v2, p1, p2}, Lcom/cloud/tmc/kernel/remote/RemoteController;->isRemoteCallExtension(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " method: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isRemote: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "TmcKernel:ExtensionInvoker:Remote"

    invoke-static {v9, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/cloud/tmc/kernel/remote/RemoteCallArgs;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    const/4 v7, 0x0

    move-object v2, v10

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/kernel/remote/RemoteCallArgs;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;[Ljava/lang/Object;Landroid/os/Parcelable;)V

    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;->mRemoteController:Lcom/cloud/tmc/kernel/remote/RemoteController;

    invoke-interface {p3, v10}, Lcom/cloud/tmc/kernel/remote/RemoteController;->remoteCall(Lcom/cloud/tmc/kernel/remote/RemoteCallArgs;)Lcom/cloud/tmc/kernel/remote/RemoteCallResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Ljava/lang/Throwable;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extension "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cost "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1
.end method
