.class public interface abstract Lcom/cloud/tmc/kernel/extension/TmcManifest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/extension/TmcManifest$ServiceBeanManifest;,
        Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;,
        Lcom/cloud/tmc/kernel/extension/TmcManifest$LazyProxyManifest;,
        Lcom/cloud/tmc/kernel/extension/TmcManifest$ProxyManifest;,
        Lcom/cloud/tmc/kernel/extension/TmcManifest$IProxyManifest;
    }
.end annotation


# virtual methods
.method public abstract getAccessController()Ljava/security/AccessController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getBridgeExtensions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtensions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProxies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/TmcManifest$IProxyManifest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRemoteController()Lcom/cloud/tmc/kernel/remote/RemoteController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getServiceBeans(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/extension/ExtensionManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/TmcManifest$ServiceBeanManifest;",
            ">;"
        }
    .end annotation
.end method
