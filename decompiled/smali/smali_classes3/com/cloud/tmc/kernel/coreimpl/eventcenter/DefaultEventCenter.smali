.class public Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;
    }
.end annotation


# instance fields
.field private onDestroyCallback:Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;

.field private final registeredMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->onDestroyCallback:Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;

    return-void
.end method


# virtual methods
.method public containsEventKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->onDestroyCallback:Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;->onDestroy()V

    :cond_0
    return-void
.end method

.method public postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    invoke-interface {v1, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;->onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
