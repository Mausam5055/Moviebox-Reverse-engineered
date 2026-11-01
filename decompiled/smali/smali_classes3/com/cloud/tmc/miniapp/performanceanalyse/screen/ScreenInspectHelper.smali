.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;
    }
.end annotation


# instance fields
.field public OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field public final OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0Oo:J

.field public OooO0o0:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0OO:Ljava/util/List;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0Oo:J

    return-void
.end method

.method public static final access$checkWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "renderStatus"

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    goto :goto_1

    :cond_2
    :goto_0
    iput v2, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    new-instance v3, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;

    invoke-direct {v3, p0, p1, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;Ljava/lang/String;)V

    iput-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz p0, :cond_5

    invoke-interface {p0, v1, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_5
    iget-object p0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz p0, :cond_6

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "abilityName"

    const-string v3, "DispatchEvent"

    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "callbackId"

    invoke-virtual {p1, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "eventName"

    const-string v3, "checkWhiteScreen"

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{}"

    const-string v3, "dataJson"

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-static {p0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object v0

    const-string v1, "call"

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static final access$connectRender(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;

    invoke-direct {v0, p2, p0, p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;)V

    iput-object v0, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz p0, :cond_0

    const-string p1, "connectionRender"

    invoke-interface {p0, p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_0
    iget-object p0, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz p0, :cond_1

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v0, "abilityName"

    const-string v1, "DispatchEvent"

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "callbackId"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v0, "eventName"

    const-string v1, "connection"

    invoke-virtual {p2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "{}"

    const-string v1, "dataJson"

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-static {p0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p2

    const-string v0, "message"

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p2

    const-string v0, "call"

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    :cond_1
    return-void
.end method

.method public static final access$connectWorker(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO;

    invoke-direct {v0, p1, p0, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    iput-object v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz p0, :cond_0

    const-string p2, "connectionWorker"

    invoke-interface {p0, p2, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_0
    iget-object p0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    if-eqz p0, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v0, "eventName"

    const-string v1, "connection"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dataJson"

    const-string v1, "{}"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "abilityName"

    const-string v2, "DispatchEvent"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "target"

    const-string v2, "worker"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    const-string v2, "native"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "callbackId"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "native"

    const-string v6, ""

    const-string v1, "DispatchEvent"

    const-string v2, "worker"

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-interface {p0, p1, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Ljava/util/HashMap;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-interface {p0, p2, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic access$getAPP_MAP$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getCheckNowDelay$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0Oo:J

    return-wide v0
.end method

.method public static final synthetic access$getEventCenter$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    return-object p0
.end method

.method public static final synthetic access$reportAthenaWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Ljava/lang/String;IZLjava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o(Ljava/lang/String;IZLjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    iget-object v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz v2, :cond_0

    const-string v3, "connectionRender"

    invoke-interface {v2, v3, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_0
    iput-object v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iget-object v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz v2, :cond_1

    const-string v3, "renderStatus"

    invoke-interface {v2, v3, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_1
    iput-object v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iget-object v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    iput-object v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    :cond_3
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;IZLjava/lang/Long;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v1, "white_screen_onPageReady"

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "white_screen"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "white_screen_stepMillis"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHECK_WHITESCREEN:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string p4, ""

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public appDestroy(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    if-eqz v2, :cond_4

    iput-object v0, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    const-string v5, "connectionWorker"

    invoke-interface {v3, v5, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_2
    iput-object v0, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iget-object v0, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    const-string v3, "pages.keys()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->y(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->destroy(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method public checkNow(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 8

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    :goto_1
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;

    invoke-direct {v5, p0, p1, p2, v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public destroy(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    if-eqz p2, :cond_5

    iget-boolean v1, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    iget-boolean v2, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    iget-object v3, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o(Ljava/lang/String;IZLjava/lang/Long;)V

    :cond_4
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public initConfig(FLjava/lang/Long;[I)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0OO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0OO:Ljava/util/List;

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->h([I)Ljava/util/List;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0Oo:J

    :cond_1
    iput p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0o0:F

    return-void
.end method

.method public registerRender(Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 4

    const-string v0, "render"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v1

    instance-of v2, v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPagePath()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    if-eqz v0, :cond_3

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    const/4 p1, 0x0

    iput p1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    iput p1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getCurrentUri()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ce8\u518c\u9875\u9762:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u7684\u5e94\u7528("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\u4e0d\u5b58\u5728"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miniapp"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public registerWorker(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/worker/JSI;)V
    .locals 2

    const-string v0, "worker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    if-eqz p1, :cond_2

    iput-object p2, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    const/4 p2, 0x0

    iput p2, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ce8\u518cworker id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u7684\u5e94\u7528("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\u4e0d\u5b58\u5728"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miniapp"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public start(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    iget v7, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0o0:F

    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    const/4 v11, 0x1

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    float-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_2

    move v5, v11

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_6

    :cond_4
    if-nez v5, :cond_5

    goto/16 :goto_6

    :cond_5
    const-class v5, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v5, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    :cond_6
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;-><init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/kernel/worker/JSI;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0OO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v5, 0x0

    if-lez v1, :cond_8

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0OO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    goto :goto_4

    :cond_8
    move-wide v7, v5

    :goto_4
    cmp-long v1, v7, v5

    if-gez v1, :cond_9

    goto :goto_5

    :cond_9
    move-wide v5, v7

    :goto_5
    const/16 v1, 0x3e8

    int-to-long v7, v1

    add-long v10, v5, v7

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    if-eqz v1, :cond_a

    iget-object v3, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    const/16 v20, 0x0

    const/16 v21, 0xff

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v4

    invoke-direct/range {v12 .. v21}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;-><init>(Lcom/cloud/tmc/kernel/render/IRender;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;ILcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;ZZI)V

    new-instance v5, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    iget-object v14, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0OO:Ljava/util/List;

    new-instance v15, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;

    invoke-direct {v15, v0, v1, v4}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    const-wide/16 v12, 0x3e8

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;-><init>(JJLjava/util/List;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;)V

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iput-object v5, v4, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    :cond_a
    :goto_6
    return-void
.end method
