.class public Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/NativeBridge;


# static fields
.field public static final TAG:Ljava/lang/String; = "TmcEngine:NativeBridge"


# instance fields
.field private mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

.field private mReleased:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mReleased:Z

    return-void
.end method

.method private executeNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)Z
    .locals 6
    .param p2    # Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "TmcEngine:NativeBridge"

    if-nez p1, :cond_0

    const-string p1, "executeNative but bridgeContext == null!"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "executeNative with node == null!!! may cause memory leak"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    instance-of v2, v2, Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->setRender(Lcom/cloud/tmc/kernel/render/IRender;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    instance-of v2, v2, Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->setRender(Lcom/cloud/tmc/kernel/render/IRender;)V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getRegisteredRender()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v4}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->takeCallback(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "executeNative hit callback! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getParams()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;->onCallBack(Lcom/google/gson/JsonObject;)V

    return v3

    :cond_6
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p1, "cannot dispatch empty API!"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_7
    new-instance v2, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    new-instance v4, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge$1;

    invoke-direct {v4, p0, p2}, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge$1;-><init>(Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)V

    invoke-direct {v2, v4}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;-><init>(Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getCallbackId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->setCallbackId(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeNative jsapi req name={"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "} "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getParams()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->getInstance()Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    move-result-object p2

    invoke-virtual {p2, p1, v2, p3}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->dispatch(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)Z

    move-result p2

    if-eqz p2, :cond_8

    return v3

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeNative but not found Extension!"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_9

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->doCheckPermission(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    move-result p2
    :try_end_0
    .catch Lcom/cloud/tmc/kernel/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_9

    return v3

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "executeNative check failed for legacy call! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendNoRigHtToInvoke()V

    return v3

    :cond_9
    const-class p2, Lcom/cloud/tmc/kernel/point/NativeCallNotFoundPoint;

    invoke-static {p2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/point/NativeCallNotFoundPoint;

    invoke-interface {p2, p1, v2}, Lcom/cloud/tmc/kernel/point/NativeCallNotFoundPoint;->handleNotFound(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "executeNative handleNotFound intercepted"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_a
    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendNotFound()V

    return v0
.end method


# virtual methods
.method public bindEngineRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    return-void
.end method

.method public doCheckPermission(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/security/AccessControlException;
        }
    .end annotation

    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;

    invoke-static {}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->getInstance()Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/dispatch/BridgeDispatcher;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/tmc/integration/defaultImpl/DefaultAccessControlManagement;-><init>(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    new-instance p2, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;

    invoke-direct {p2}, Lcom/cloud/tmc/kernel/security/internal/DefaultAccessController;-><init>()V

    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/security/AccessController;->setAccessControlManagement(Lcom/cloud/tmc/kernel/security/AccessControlManagement;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;

    new-instance v2, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;-><init>(Lcom/cloud/tmc/kernel/security/Permission;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, v2}, Lcom/cloud/tmc/kernel/security/AccessController;->check(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)Z

    move-result p2

    const-string v0, "TmcEngine:NativeBridge"

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeNative check pending! "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeNative check success! "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getNativeCallResultPoint(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;)Lcom/cloud/tmc/kernel/point/NativeCallResultPoint;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/point/NativeCallResultPoint;

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/point/NativeCallResultPoint;

    return-object p1
.end method

.method protected onRelease()V
    .locals 0

    return-void
.end method

.method public final release()V
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mReleased:Z

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->onRelease()V

    return-void
.end method

.method public sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)Z
    .locals 1
    .param p2    # Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mReleased:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->executeNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "TmcEngine:NativeBridge"

    const-string p2, "sendToNative but released!"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public sendToNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)Z
    .locals 1
    .param p2    # Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->mReleased:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->executeNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "TmcEngine:NativeBridge"

    const-string p2, "sendToNative but released!"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
