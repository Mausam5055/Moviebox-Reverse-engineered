.class public abstract Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/engine/IEngine;


# instance fields
.field protected initParams:Lcom/cloud/tmc/kernel/model/InitParams;

.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mEngineBridge:Lcom/cloud/tmc/kernel/bridge/NativeBridge;

.field private mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

.field private mNode:Lcom/cloud/tmc/kernel/node/Node;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mDestroyed:Z

    iput-object p2, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mNode:Lcom/cloud/tmc/kernel/node/Node;

    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mAppId:Ljava/lang/String;

    const-class p1, Lcom/cloud/tmc/kernel/service/EnvironmentService;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/service/EnvironmentService;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/service/EnvironmentService;->getApplicationContext()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->createNativeBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineBridge:Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    iget-object p2, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/NativeBridge;->bindEngineRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V

    return-void
.end method


# virtual methods
.method protected createNativeBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/proxy/IBridgeFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/IBridgeFactory;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/IBridgeFactory;->createNativeBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mDestroyed:Z

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->onDestroy()V

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineBridge:Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/NativeBridge;->release()V

    invoke-static {}, Lcom/cloud/tmc/kernel/engine/EngineStack;->getInstance()Lcom/cloud/tmc/kernel/engine/EngineStack;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/kernel/engine/EngineStack;->removeProxy(Lcom/cloud/tmc/kernel/engine/IEngine;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplication()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineBridge:Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    return-object v0
.end method

.method public getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    return-object v0
.end method

.method public getEngineType()Ljava/lang/String;
    .locals 1

    const-string v0, "WEB"

    return-object v0
.end method

.method public getNode()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mNode:Lcom/cloud/tmc/kernel/node/Node;

    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->initParams:Lcom/cloud/tmc/kernel/model/InitParams;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/cloud/tmc/kernel/model/InitParams;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTopRender()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getRenderById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/cloud/tmc/kernel/model/InitParams;Lcom/cloud/tmc/kernel/engine/EngineInitCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->initParams:Lcom/cloud/tmc/kernel/model/InitParams;

    const-class p2, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    iget-wide v0, p1, Lcom/cloud/tmc/kernel/model/InitParams;->startToken:J

    invoke-interface {p2, v0, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;->get(J)Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    invoke-static {}, Lcom/cloud/tmc/kernel/engine/EngineStack;->getInstance()Lcom/cloud/tmc/kernel/engine/EngineStack;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/cloud/tmc/kernel/engine/EngineStack;->pushEnginePorxy(Lcom/cloud/tmc/kernel/engine/IEngine;)V

    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mDestroyed:Z

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->destroy()V

    const-class v0, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;->remove(Lcom/cloud/tmc/kernel/engine/EngineRouter;)Lcom/cloud/tmc/kernel/engine/EngineRouter;

    :cond_0
    return-void
.end method

.method public setNativeBridge(Lcom/cloud/tmc/kernel/bridge/NativeBridge;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/kernel/bridge/NativeBridge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineBridge:Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    return-void
.end method
