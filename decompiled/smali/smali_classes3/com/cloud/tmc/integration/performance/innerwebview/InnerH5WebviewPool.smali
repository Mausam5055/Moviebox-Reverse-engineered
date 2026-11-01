.class public final Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0010H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0005\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0017\u001a\u00020\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u00122\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001d\u001a\u00020\u0010H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\rj\u0008\u0012\u0004\u0012\u00020\u000b`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;",
        "Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;",
        "()V",
        "TAG",
        "",
        "context",
        "Landroid/app/Application;",
        "creatingWebview",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "unUsedWebviewQueue",
        "Ljava/util/LinkedList;",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "usedWebviewList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "createWebview",
        "",
        "destroy",
        "",
        "existWebview",
        "getWebview",
        "Landroid/app/Activity;",
        "init",
        "realCreateRender",
        "registerListener",
        "listener",
        "Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewListener;",
        "removeWebview",
        "render",
        "needDestroy",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/app/Application;

.field private creatingWebview:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final unUsedWebviewQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/cloud/tmc/kernel/render/IRender;",
            ">;"
        }
    .end annotation
.end field

.field private final usedWebviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/kernel/render/IRender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InnerH5WebviewPool"

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->usedWebviewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->unUsedWebviewQueue:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->creatingWebview:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->createWebview$lambda$0(Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;)V

    return-void
.end method

.method private static final createWebview$lambda$0(Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->realCreateRender()V

    return-void
.end method

.method private final existWebview()Z
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->unUsedWebviewQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->unUsedWebviewQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    instance-of v3, v0, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;->isRenderProcessGone()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->unUsedWebviewQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_2
    return v1
.end method

.method private final realCreateRender()V
    .locals 8

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->unUsedWebviewQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "H5WebviewPool => realCreateRender unUsedWebviewQueue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/render/SystemRender;

    new-instance v3, Landroid/content/MutableContextWrapper;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->context:Landroid/app/Application;

    invoke-direct {v3, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/render/SystemRender;->setWarmup(I)V

    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupUtils;->INSTANCE:Lcom/cloud/tmc/integration/performance/WarmupUtils;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/performance/WarmupUtils;->getWarmupRenderId()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "warmup_render_id__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/cloud/tmc/integration/structure/WarmupNode;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/WarmupNode;

    invoke-interface {v2, v1}, Lcom/cloud/tmc/integration/structure/WarmupNode;->getNode(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouter;

    invoke-direct {v3}, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouter;-><init>()V

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/render/SystemRender;->setWarmupEngineRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V

    const-string v3, "99999"

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/render/SystemRender;->setWarmupAppId(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/render/SystemRender;->setWarmupNode(Lcom/cloud/tmc/kernel/node/Node;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/render/SystemRender;->init(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->unUsedWebviewQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->creatingWebview:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->unUsedWebviewQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "H5WebviewPool => realCreateRender finished unUsedWebviewQueue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createWebview()Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v2, "innerWebviewWarmupV3"

    const-string v3, "{\"innerWarmUpWebviewEnable\": true, \"webviewMaxWarmupSize\": 1}"

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/cloud/tmc/integration/model/InnerWebviewWarmup;

    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/InnerWebviewWarmup;

    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/InnerWebviewWarmup;->getInnerWarmUpWebviewEnable()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->unUsedWebviewQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/InnerWebviewWarmup;->getWebviewMaxWarmupSize()I

    move-result v6

    if-ge v4, v6, :cond_0

    iget-object v4, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->creatingWebview:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "H5WebviewPool => createWebview ret:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", canCreate:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", processName:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/InnerWebviewWarmup;->getInnerWarmUpWebviewEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->unUsedWebviewQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/InnerWebviewWarmup;->getWebviewMaxWarmupSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->creatingWebview:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->creatingWebview:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Lcom/cloud/tmc/integration/performance/innerwebview/a;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/integration/performance/innerwebview/a;-><init>(Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    :cond_1
    return v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public declared-synchronized getWebview(Landroid/app/Activity;)Lcom/cloud/tmc/kernel/render/IRender;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->unUsedWebviewQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "H5WebviewPool => getWebview unUsedWebviewQueue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->unUsedWebviewQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->unUsedWebviewQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    move-object v3, v2

    :goto_0
    instance-of v4, v3, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;->isRenderProcessGone()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-eqz v3, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    goto :goto_6

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    instance-of v4, v3, Landroid/content/MutableContextWrapper;

    if-eqz v4, :cond_5

    move-object v2, v3

    check-cast v2, Landroid/content/MutableContextWrapper;

    :cond_5
    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :goto_4
    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IRender;->setActivity(Landroid/app/Activity;)V

    :goto_5
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->usedWebviewList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->TAG:Ljava/lang/String;

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "H5WebviewPool => getWebview success:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public init(Landroid/app/Application;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->context:Landroid/app/Application;

    return-void
.end method

.method public registerListener(Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public removeWebview(Lcom/cloud/tmc/kernel/render/IRender;Z)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "H5WebviewPool => removeWebview render.hasCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->usedWebviewList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz p1, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-ne v4, v5, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_7

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->TAG:Ljava/lang/String;

    const-string v0, "H5WebviewPool => real destroy"

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    instance-of p2, p1, Landroid/content/MutableContextWrapper;

    if-eqz p2, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/content/MutableContextWrapper;

    :cond_4
    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->context:Landroid/app/Application;

    invoke-virtual {v1, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :goto_3
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    :cond_6
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->usedWebviewList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method
