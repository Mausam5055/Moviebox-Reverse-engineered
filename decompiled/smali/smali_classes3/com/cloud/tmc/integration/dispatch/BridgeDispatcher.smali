.class public Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;


# instance fields
.field private mExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TmcEngine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;
    .locals 2

    sget-object v0, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->sInstance:Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    if-nez v0, :cond_1

    const-class v0, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->sInstance:Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    if-nez v1, :cond_0

    new-instance v1, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;-><init>()V

    sput-object v1, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->sInstance:Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->sInstance:Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    return-object v0
.end method


# virtual methods
.method public bindExtensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->mExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    return-void
.end method

.method public dispatch(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->mExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->dispatch(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;ZLcom/cloud/tmc/kernel/extension/ExtensionManager;)Z

    move-result p1

    return p1
.end method

.method public dispatch(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;ZLcom/cloud/tmc/kernel/extension/ExtensionManager;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->dispatch(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;ZLcom/cloud/tmc/kernel/extension/ExtensionManager;Lcom/cloud/tmc/kernel/model/ApiContext;)Z

    move-result p1

    return p1
.end method

.method public dispatch(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;ZLcom/cloud/tmc/kernel/extension/ExtensionManager;Lcom/cloud/tmc/kernel/model/ApiContext;)Z
    .locals 4
    .param p5    # Lcom/cloud/tmc/kernel/model/ApiContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->TAG:Ljava/lang/String;

    const-string p2, "BridgeDispatcher dispatch context.getName() == null!"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p2, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "BridgeDispatcher dispatch findActionMeta == null!\t"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v2, v3}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    sget-object p1, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->TAG:Ljava/lang/String;

    const-string p2, "BridgeDispatcher dispatch getBridgeExtensionByAction == null!"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;

    invoke-direct {v1, p1, p2, p4}, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;-><init>(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    new-instance p4, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;

    invoke-direct {p4}, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;-><init>()V

    invoke-interface {p4, v1}, Lcom/cloud/tmc/kernel/security/AccessController;->setAccessControlManagement(Lcom/cloud/tmc/kernel/security/AccessControlManagement;)V

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->getInnerBridgeResponse()Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;

    :goto_0
    const-class v1, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;

    if-eqz p3, :cond_4

    new-instance p3, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;

    new-instance p5, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v3

    invoke-direct {p5, v3, p1, p2}, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)V

    invoke-interface {v1, p5}, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;->createScheduleExtensionInvoker(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    invoke-interface {v1, p4, p3}, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;->createPermissionExtensionInvoker(Lcom/cloud/tmc/kernel/security/AccessController;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p3, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p4

    invoke-direct {p3, p4, p1, p2, p5}, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/model/ApiContext;)V

    invoke-interface {v1, p3}, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;->createScheduleExtensionInvoker(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->attacheTargetExtensions(Lcom/cloud/tmc/kernel/extension/Extension;)V

    const/4 p3, 0x1

    :try_start_1
    iget-object p4, v0, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->actionMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p5

    array-length p5, p5

    new-array p5, p5, [Ljava/lang/Object;

    invoke-virtual {p1, v2, p4, p5}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/cloud/tmc/kernel/security/AccessControlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :goto_2
    if-eqz p2, :cond_5

    const/4 p4, 0x3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendError(ILjava/lang/String;)V

    :cond_5
    sget-object p2, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->TAG:Ljava/lang/String;

    const-string p4, "bridge extension fail Throwable:"

    invoke-static {p2, p4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p3

    :goto_3
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendNoRigHtToInvoke()V

    :cond_6
    sget-object p2, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->TAG:Ljava/lang/String;

    const-string p4, "bridge extension fail AccessControlException:"

    invoke-static {p2, p4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p3

    :catchall_1
    move-exception p1

    sget-object p2, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->TAG:Ljava/lang/String;

    const-string p3, "dispatch BridgeExtension error"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->mExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    return-object v0
.end method
