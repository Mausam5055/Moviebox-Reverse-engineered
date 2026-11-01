.class public final Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ \u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0007\u001a\u00020\u0008J \u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;",
        "",
        "()V",
        "bindWarmupListener",
        "",
        "render",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "warmUpCallback",
        "Lcom/cloud/tmc/integration/performance/WarmUpCallback;",
        "warmupNode",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "preWarmup",
        "context",
        "Landroid/content/Context;",
        "warmupType",
        "",
        "warmUp",
        "param",
        "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;",
        "warmup",
        "warmupRenderId",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final bindWarmupListener(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v0, p3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance v0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager$bindWarmupListener$1;

    invoke-direct {v0, p1, p3, p2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager$bindWarmupListener$1;-><init>(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V

    const-string p1, "renderOnMessageReady"

    invoke-interface {p3, p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_0
    return-void
.end method

.method private final warmup(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouter;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouter;-><init>()V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupEngineRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V

    const-string v0, "99999"

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupAppId(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupNode(Lcom/cloud/tmc/kernel/node/Node;)V

    invoke-interface {p1, p3}, Lcom/cloud/tmc/kernel/render/IRender;->init(Ljava/lang/String;)V

    new-instance p2, Lcom/cloud/tmc/kernel/render/LoadParams;

    invoke-direct {p2}, Lcom/cloud/tmc/kernel/render/LoadParams;-><init>()V

    const-string p3, "https://100000.miniapp.transsion.com/index.html"

    iput-object p3, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    return-void
.end method


# virtual methods
.method public final preWarmup(Landroid/content/Context;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager$preWarmup$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager$preWarmup$1;-><init>(Landroid/content/Context;ILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final warmUp(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V
    .locals 2

    const-string v0, "render"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "warmUpCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->getFrameworkVersion()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/IRender;->setFrameworkVersion(Ljava/lang/String;)V

    sget-object p2, Lcom/cloud/tmc/integration/performance/WarmupUtils;->INSTANCE:Lcom/cloud/tmc/integration/performance/WarmupUtils;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/performance/WarmupUtils;->getWarmupRenderId()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "warmup_render_id__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/cloud/tmc/integration/structure/WarmupNode;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/WarmupNode;

    invoke-interface {v0, p2}, Lcom/cloud/tmc/integration/structure/WarmupNode;->getNode(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;->bindWarmupListener(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lcom/cloud/tmc/kernel/node/Node;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;->warmup(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)V

    return-void
.end method
