.class Lcom/cloud/tmc/integration/bridge/KeyboardBridge$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/bridge/KeyboardBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/KeyboardBridge;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/KeyboardBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/KeyboardBridge$1;->this$0:Lcom/cloud/tmc/integration/bridge/KeyboardBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getData()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getData()Ljava/util/Map;

    move-result-object p1

    const-string v1, "page"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, v1, Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_4

    instance-of v3, p1, Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-nez v3, :cond_2

    return v0

    :cond_2
    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/KeyboardBridge$1;->this$0:Lcom/cloud/tmc/integration/bridge/KeyboardBridge;

    invoke-static {v4, v3}, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;->a(Lcom/cloud/tmc/integration/bridge/KeyboardBridge;Lcom/cloud/tmc/integration/structure/App;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_4
    :goto_0
    return v0
.end method
