.class public final Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;
.implements Lcom/cloud/tmc/integration/performance/WarmupExtension;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0002J\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0006\u001a\u00020\u001c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u001e\u001a\u00020\u0018H\u0016J\u0008\u0010\u001f\u001a\u00020\u0018H\u0002J\u0012\u0010 \u001a\u00020\u00182\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\"\u0010#\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010%\u001a\u00020\u00182\u0008\u0010&\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\'\u001a\u00020\u00182\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u0012j\u0008\u0012\u0004\u0012\u00020\u0010`\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;",
        "Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;",
        "Lcom/cloud/tmc/integration/performance/WarmupExtension;",
        "()V",
        "TAG",
        "",
        "context",
        "Landroid/app/Application;",
        "creatingRender",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "innerRenderWarmupManager",
        "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;",
        "listener",
        "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;",
        "unUsedRenderQueue",
        "Ljava/util/LinkedList;",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "usedRenderList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "createRender",
        "",
        "sync",
        "destroy",
        "",
        "existRender",
        "frameworkVersion",
        "getRender",
        "Landroid/app/Activity;",
        "init",
        "preWarmupRenderFail",
        "realCreateRender",
        "realWarmupRender",
        "param",
        "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;",
        "registerListener",
        "homePage",
        "removeRender",
        "renderId",
        "warmupRender",
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

.field private creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private innerRenderWarmupManager:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;

.field private listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

.field private final unUsedRenderQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/cloud/tmc/kernel/render/IRender;",
            ">;"
        }
    .end annotation
.end field

.field private final usedRenderList:Ljava/util/ArrayList;
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

    const-string v0, "InnerWarmup"

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->usedRenderList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->createRender$lambda$0(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V

    return-void
.end method

.method public static final synthetic access$getCreatingRender$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getUnUsedRenderQueue$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static final synthetic access$setListener$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->preWarmupRenderFail$lambda$4(Lcom/cloud/tmc/kernel/render/IRender;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->warmupRender$lambda$3(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    return-void
.end method

.method private static final createRender$lambda$0(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->realCreateRender()V

    return-void
.end method

.method private final existRender(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->warmupSuccess()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    instance-of v5, v4, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;->isRenderProcessGone()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-nez v4, :cond_5

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->isValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    :cond_6
    :goto_4
    return v1
.end method

.method private static final preWarmupRenderFail$lambda$4(Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 1

    const-string v0, "$render"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    return-void
.end method

.method private final realCreateRender()V
    .locals 9

    new-instance v8, Lcom/cloud/tmc/render/SystemRender;

    new-instance v1, Landroid/content/MutableContextWrapper;

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    invoke-direct {v1, v0}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/cloud/tmc/render/SystemRender;->setWarmup(I)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->createRenderSuccess()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InnerRenderPool => addRender unUsedRenderQueue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->innerRenderWarmupManager:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_RENNDER:Lcom/cloud/tmc/integration/performance/WarmupType;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;->preWarmup(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private final realWarmupRender(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/render/IRender;->setDarkTheme(Z)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->innerRenderWarmupManager:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "unUsedRenderQueue.last"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cloud/tmc/kernel/render/IRender;

    new-instance v2, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;

    invoke-direct {v2, p0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;-><init>(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;->warmUp(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V

    :cond_1
    return-void
.end method

.method private static final warmupRender$lambda$3(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->realWarmupRender(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    return-void
.end method


# virtual methods
.method public createRender(Z)Z
    .locals 8

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    const-string v0, "InnerRenderPool => createRender"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v2, "innerWarmup"

    const-string v3, "{\"innerWarmUpRenderEnable\": true, \"innerWarmUpWorkerEnable\": true, \"renderMaxWarmupSize\": 1, \"workerMaxWarmupSize\": 1}"

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/cloud/tmc/integration/model/InnerWarmup;

    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/InnerWarmup;

    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getInnerWarmUpRenderEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getRenderMaxWarmupSize()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InnerRenderPool => createRender ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", canCreate:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", processName:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getInnerWarmUpRenderEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getRenderMaxWarmupSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Lcom/cloud/tmc/integration/performance/innerrender/b;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/integration/performance/innerrender/b;-><init>(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->warmupFail(I)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    return p1
.end method

.method public destroy()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    const-string v1, "InnerRenderPool => destroy"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->usedRenderList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    instance-of v4, v3, Landroid/content/MutableContextWrapper;

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Landroid/content/MutableContextWrapper;

    :cond_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    invoke-virtual {v2, v3}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :goto_2
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->usedRenderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->innerRenderWarmupManager:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;

    iput-object v2, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    return-void
.end method

.method public getRender(Landroid/app/Activity;Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InnerRenderPool => getRender unUsedRenderQueue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->warmupSuccess()Z

    move-result v0

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    instance-of v5, v4, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;->isRenderProcessGone()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-nez v4, :cond_a

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v3

    :goto_3
    invoke-virtual {p0, p2, v4}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->isValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->isDarkTheme()Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    goto :goto_4

    :cond_4
    move p2, v2

    :goto_4
    if-nez p2, :cond_5

    goto :goto_8

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    goto :goto_5

    :cond_6
    move-object p2, v3

    :goto_5
    instance-of v4, p2, Landroid/content/MutableContextWrapper;

    if-eqz v4, :cond_7

    move-object v3, p2

    check-cast v3, Landroid/content/MutableContextWrapper;

    :cond_7
    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v3, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :goto_6
    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IRender;->setActivity(Landroid/app/Activity;)V

    :goto_7
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->usedRenderList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    goto :goto_9

    :cond_a
    :goto_8
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    :cond_b
    :goto_9
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    if-eqz v3, :cond_c

    goto :goto_a

    :cond_c
    move v1, v2

    :goto_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InnerRenderPool => getRender success:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public init(Landroid/app/Application;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    const-string v1, "render init"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    return-void
.end method

.method public isValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/performance/WarmupExtension$DefaultImpls;->isValid(Lcom/cloud/tmc/integration/performance/WarmupExtension;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public preWarmupRenderFail()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InnerRenderPool => preWarmupFail unUsedRenderQueue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->warmupFail(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "unUsedRenderQueue[lastIndex]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cloud/tmc/kernel/render/IRender;

    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    new-instance v0, Lcom/cloud/tmc/integration/performance/innerrender/c;

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/performance/innerrender/c;-><init>(Lcom/cloud/tmc/kernel/render/IRender;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public registerListener(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->existRender(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->warmupSuccess()V

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_3

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    :try_start_0
    const-class p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string p3, "innerWarmupSetting"

    const-string v0, "{\"renderWaitTime\":1500,\"workerWaitTime\":1500}"

    invoke-interface {p1, p3, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p3, Lcom/cloud/tmc/integration/performance/InnerWarmupSettingData;

    invoke-static {p1, p3}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/performance/InnerWarmupSettingData;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/performance/InnerWarmupSettingData;->getRenderWaitTime()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    :goto_0
    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$registerListener$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$registerListener$1;-><init>(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    if-eqz p1, :cond_2

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->warmupFail(I)V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->warmupFail(I)V

    :goto_1
    return-void
.end method

.method public removeRender(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InnerRenderPool => removeRender renderId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->usedRenderList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    instance-of v0, p1, Landroid/content/MutableContextWrapper;

    if-eqz v0, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/content/MutableContextWrapper;

    :cond_3
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    invoke-virtual {v1, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :goto_2
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->usedRenderList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public warmupRender(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InnerRenderPool => warmupRender unUsedRenderQueue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , canWarmup:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/integration/performance/innerrender/a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/integration/performance/innerrender/a;-><init>(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method
