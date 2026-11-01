.class public Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;


# static fields
.field private static node2EventCenterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;->node2EventCenterMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;->lambda$getInstance$0(Ljava/lang/String;)V

    return-void
.end method

.method private static getInstance(Ljava/lang/String;)Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;->node2EventCenterMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-class v0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;->node2EventCenterMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;->node2EventCenterMap:Ljava/util/Map;

    new-instance v2, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;

    new-instance v3, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/a;

    invoke-direct {v3, p0}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;-><init>(Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object v0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;->node2EventCenterMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;

    return-object p0
.end method

.method private static synthetic lambda$getInstance$0(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;->node2EventCenterMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clearEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;->node2EventCenterMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenterFactory;->getInstance(Ljava/lang/String;)Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;

    move-result-object p1

    return-object p1
.end method
