.class public Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/cloud/tmc/kernel/extension/Extension;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private static sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;


# instance fields
.field private invocationHandlerDoNothing:Ljava/lang/reflect/InvocationHandler;

.field private mActionPolicyHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/integration/invoke/action/Action;",
            "Lcom/cloud/tmc/kernel/executor/ExecutorType;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPolicy:Lcom/cloud/tmc/kernel/executor/ExecutorType;

.field private mDefaultValue:Ljava/lang/Object;

.field private mExtensionClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

.field private mNode:Lcom/cloud/tmc/kernel/node/Node;

.field private mNullable:Z

.field private mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->sDefaultMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->SYNC:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mCurPolicy:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mActionPolicyHashMap:Ljava/util/Map;

    new-instance v0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint$1;-><init>(Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->invocationHandlerDoNothing:Ljava/lang/reflect/InvocationHandler;

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mDefaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public static as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static bind(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    return-void
.end method

.method private getDefaultImpl()Lcom/cloud/tmc/kernel/extension/Extension;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-string v0, "TmcKernel"

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->sDefaultMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->sDefaultMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/extension/Extension;

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    const-class v2, Lcom/cloud/tmc/kernel/annotation/DefaultImpl;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/annotation/DefaultImpl;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/annotation/DefaultImpl;->value()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newInstance for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to defaultImpl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/extension/Extension;

    sget-object v2, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->sDefaultMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :goto_0
    const-string v2, "getDefaultImpl exception!"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public actionOn(Lcom/cloud/tmc/kernel/executor/ExecutorType;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/executor/ExecutorType;",
            ")",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mCurPolicy:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    return-object p0
.end method

.method public create()Lcom/cloud/tmc/kernel/extension/Extension;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mNode:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->getDefaultImpl()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-class v1, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;

    new-instance v2, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    new-instance v4, Lcom/cloud/tmc/integration/invoke/AwareExtensionInvoker;

    iget-object v5, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mNode:Lcom/cloud/tmc/kernel/node/Node;

    new-instance v6, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;

    iget-object v7, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mActionPolicyHashMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mDefaultValue:Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-direct {v4, v5, v6}, Lcom/cloud/tmc/integration/invoke/AwareExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;)V

    invoke-direct {v2, v3, v4}, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/resolver/ResultResolver;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;->createScheduleExtensionInvoker(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->attacheTargetExtensions(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find extension for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcKernel"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mNullable:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->invocationHandlerDoNothing:Ljava/lang/reflect/InvocationHandler;

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/extension/Extension;

    return-object v0
.end method

.method public defaultValue(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mDefaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/extension/ExtensionManager;",
            ")",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    return-object p0
.end method

.method public node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/node/Node;",
            ")",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mNode:Lcom/cloud/tmc/kernel/node/Node;

    return-object p0
.end method

.method public nullable()Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mNullable:Z

    return-object p0
.end method

.method public resolve(Lcom/cloud/tmc/kernel/resolver/ResultResolver;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/resolver/ResultResolver;",
            ")",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    return-object p0
.end method
