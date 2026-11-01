.class public final Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager;->bindWarmupListener(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lcom/cloud/tmc/kernel/node/Node;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1",
        "Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;",
        "onEvent",
        "",
        "event",
        "Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field final synthetic $render:Lcom/cloud/tmc/kernel/render/IRender;

.field final synthetic $warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$render:Lcom/cloud/tmc/kernel/render/IRender;

    iput-object p2, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    iput-object p3, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$render:Lcom/cloud/tmc/kernel/render/IRender;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Lcom/cloud/tmc/render/system/SystemWebView;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/cloud/tmc/render/system/SystemWebView;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/tmc/render/system/SystemWebView;->getWebviewBridgeHelper()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->registerMessageChannel()V

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz p1, :cond_3

    const-string v0, "renderOnMessageReady"

    invoke-interface {p1, v0, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_3
    const-class p1, Lcom/cloud/tmc/integration/structure/WarmupNode;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/structure/WarmupNode;

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$render:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "render.renderId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/WarmupNode;->removeNode(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/performance/WarmUpCallback;->warmupResult(Z)V

    return v0
.end method
