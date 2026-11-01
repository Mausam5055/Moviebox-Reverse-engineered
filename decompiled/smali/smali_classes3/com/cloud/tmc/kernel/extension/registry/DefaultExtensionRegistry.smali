.class public Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:DefaultExtensionRegistry"


# instance fields
.field private mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

.field private final mClassNameScopeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mExtensionClassRegisteredSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mExtensionMetaInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPointToExtensionClazzMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mPointToMetaInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToExtensionClazzMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mClassNameScopeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionMetaInfoList:Ljava/util/List;

    new-instance v0, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    return-void
.end method

.method private collectExtensionPoint(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-class v3, Lcom/cloud/tmc/kernel/extension/Extension;

    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->collectExtensionPoint(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method

.method private putScope(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->putScope(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private putScope(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mClassNameScopeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mClassNameScopeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method protected createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/Extension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/extension/Extension;

    return-object p1
.end method

.method public findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;->findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;

    move-result-object p1

    return-object p1
.end method

.method public findExtensions(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    iget-object v2, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    iget-object v3, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/utils/ClassLoaderUtils;->loadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "TmcKernel:DefaultExtensionRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load meta "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    invoke-virtual {p0, v2, v1}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToExtensionClazzMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getActionCount()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;->getRegisteredActionCount()I

    move-result v0

    return v0
.end method

.method public getExtensionClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionMetaInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    iget-object v2, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    iget-object v0, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/ClassLoaderUtils;->loadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getScope(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->getScope(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getScope(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mClassNameScopeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public declared-synchronized register(Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    sget-object v1, Lcom/cloud/tmc/kernel/extension/ExtensionType;->BRIDGE:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    if-ne v0, v1, :cond_0

    const-string v0, "TmcKernel:DefaultExtensionRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register meta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string v0, "TmcKernel:DefaultExtensionRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register meta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    iget-object v2, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/ClassLoaderUtils;->loadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/extension/ExtensionType;->NORMAL:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    iget-object v2, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;->register(Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;)V

    :cond_4
    iget-object v0, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    iget-object v1, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->putScope(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionMetaInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized register(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;)V
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

.method public declared-synchronized register(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;->register(Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->putScope(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "TmcKernel:DefaultExtensionRegistry"

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    const-class v0, Lcom/cloud/tmc/kernel/extension/Extension;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "TmcKernel:DefaultExtensionRegistry"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not valid extension"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, "TmcKernel:DefaultExtensionRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already registered"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    goto :goto_2

    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->collectExtensionPoint(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToExtensionClazzMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_3
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToExtensionClazzMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->putScope(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-void

    :goto_2
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    :goto_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method

.method public unRegister(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;->unRegister(Ljava/util/List;)V

    return-void
.end method
