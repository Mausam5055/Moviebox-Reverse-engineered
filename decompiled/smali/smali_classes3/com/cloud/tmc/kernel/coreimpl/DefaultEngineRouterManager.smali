.class public Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/engine/EngineRouterManager;


# instance fields
.field routerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/cloud/tmc/kernel/engine/EngineRouter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;->routerMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(J)Lcom/cloud/tmc/kernel/engine/EngineRouter;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;->routerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;->routerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/engine/EngineRouter;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouter;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouter;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;->routerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getByWorkerId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/engine/EngineRouter;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;->routerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    iget-object v2, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;->routerMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/engine/EngineRouter;

    invoke-interface {v1, p1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Lcom/cloud/tmc/kernel/engine/EngineRouter;)Lcom/cloud/tmc/kernel/engine/EngineRouter;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;->routerMap:Ljava/util/Map;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;->routerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    iget-object v2, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;->routerMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouterManager;->routerMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/engine/EngineRouter;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
