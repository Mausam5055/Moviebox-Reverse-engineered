.class public Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/ExtensionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:ExtensionManager"

.field private static sExtensionCreator:Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;


# instance fields
.field private final mExtensionFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Lcom/cloud/tmc/kernel/extension/ExtensionFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

.field private final mExtensionSorterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/util/Comparator;",
            ">;"
        }
    .end annotation
.end field

.field private final mNodeExtensionDynamicMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mNodeExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSingletonExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionFilterMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionSorterMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionDynamicMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    return-void
.end method

.method private static createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;
    .locals 2
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createExtensionInstance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcKernel:ExtensionManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->sExtensionCreator:Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;->createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/extension/Extension;

    :goto_0
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/extension/Extension;->onInitialized()V

    return-object p0
.end method

.method private declared-synchronized findExtensions(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->findExtensions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->getScope(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    move-object v3, p1

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private getDynamicExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionDynamicMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionDynamicMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/Extension;"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/extension/Extension;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed to initialize"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TmcKernel:ExtensionManager"

    invoke-static {v1, p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setExtensionCreator(Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->sExtensionCreator:Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;

    return-void
.end method


# virtual methods
.method public declared-synchronized enterNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TmcKernel:ExtensionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterNode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

.method public declared-synchronized exitNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "TmcKernel:ExtensionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitNode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/extension/Extension;

    const-string v3, "TmcKernel:ExtensionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitNode finalize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/extension/Extension;->onFinalized()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionDynamicMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/extension/Extension;

    const-string v3, "TmcKernel:ExtensionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitNode finalize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/extension/Extension;->onFinalized()V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getBridgeExtensionByAction(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    invoke-interface {v0, p2}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    iget-object v2, v0, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->getScope(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getBridgeExtensionByAction(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_3
    iget-object p2, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4

    iget-object p2, v0, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, v0, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/extension/BridgeExtension;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_4
    iget-object p2, v0, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    iget-object v0, v0, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_4
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized getBridgeExtensionByAction(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/extension/BridgeExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v1, p1, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/extension/BridgeExtension;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    :try_start_4
    const-string v1, "TmcKernel:ExtensionManager"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v1, v0

    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public getExtensionByName(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/Extension;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p2}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->getExtensionClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    invoke-interface {v2, p2}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->getScope(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    return-object v1

    :goto_2
    const-string p2, "TmcKernel:ExtensionManager"

    const-string v0, "getExtensionByName"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ExtensionRegistry not setup"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExtensionByPoint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcKernel:ExtensionManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->findExtensions(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getDynamicExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find extension by point: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionFilterMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/extension/ExtensionFilter;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionFilter;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionSorterMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    if-eqz p1, :cond_4

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_4
    const-class p1, Lcom/cloud/tmc/kernel/extension/SimpleSorter;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$1;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$1;-><init>(Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    :goto_0
    return-object v0

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ExtensionRegistry not setup"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExtensionByPoint(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getExtensionRegistry()Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    return-object v0
.end method

.method public getNodeExtensionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSingletonExtensionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    return-object v0
.end method

.method public registerExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;Lcom/cloud/tmc/kernel/extension/Extension;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">(",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionDynamicMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionDynamicMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
