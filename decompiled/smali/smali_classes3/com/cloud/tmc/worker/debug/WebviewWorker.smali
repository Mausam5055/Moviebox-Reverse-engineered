.class public final Lcom/cloud/tmc/worker/debug/WebviewWorker;
.super Landroid/webkit/WebView;

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/IWorker;
.implements Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/worker/debug/WebviewWorker$MyJavascriptInterface;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u000b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001OB/\u0008\u0007\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010&\u001a\u00020\'H\u0017J\u0008\u0010(\u001a\u00020\'H\u0016J\u0012\u0010)\u001a\u00020\'2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0012\u0010)\u001a\u00020\'2\u0008\u0010,\u001a\u0004\u0018\u00010\u0005H\u0016J0\u0010)\u001a\u00020\'2&\u0010-\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020/\u0018\u00010.j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020/\u0018\u0001`0H\u0016J\u0012\u00101\u001a\u00020\'2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0002J\u0008\u00102\u001a\u000203H\u0016J\u0012\u00104\u001a\u0004\u0018\u0001052\u0006\u00106\u001a\u00020\u0005H\u0016J\u0008\u00107\u001a\u0004\u0018\u00010\u0014J\r\u0010\u000f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0002\u00108J\r\u00109\u001a\u00020\u0010H\u0016\u00a2\u0006\u0002\u00108J\r\u0010:\u001a\u00020\u0010H\u0016\u00a2\u0006\u0002\u00108J\u0010\u0010;\u001a\u00020\'2\u0006\u0010<\u001a\u00020\u0005H\u0016J\u0010\u0010=\u001a\u00020\'2\u0006\u0010>\u001a\u00020\u0005H\u0016J\u001c\u0010?\u001a\u00020\'2\u0008\u0010@\u001a\u0004\u0018\u00010\u00012\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J&\u0010C\u001a\u00020\'2\u0008\u00106\u001a\u0004\u0018\u00010\u00052\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050EH\u0016J(\u0010F\u001a\u00020\'2\u001e\u0010G\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050E0EH\u0016J\u0010\u0010H\u001a\u00020\'2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0012\u0010I\u001a\u00020\'2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0006\u0010J\u001a\u00020\'J\u0018\u0010K\u001a\u00020\'2\u0006\u00106\u001a\u00020\u00052\u0006\u0010L\u001a\u00020/H\u0016J\u0008\u0010M\u001a\u000203H\u0016J\u0008\u0010N\u001a\u00020\u0010H\u0002R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u000e\u0010!\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "Lcom/cloud/tmc/worker/debug/WebviewWorker;",
        "Landroid/webkit/WebView;",
        "Lcom/cloud/tmc/kernel/worker/IWorker;",
        "Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;",
        "appId",
        "",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "context",
        "Landroid/content/Context;",
        "attributeSet",
        "Landroid/util/AttributeSet;",
        "(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "getAppId",
        "()Ljava/lang/String;",
        "isDestroy",
        "",
        "lifeCycle",
        "Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;",
        "mWebViewClient",
        "Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;",
        "mainHandler",
        "Landroid/os/Handler;",
        "getNode",
        "()Lcom/cloud/tmc/kernel/node/Node;",
        "setNode",
        "(Lcom/cloud/tmc/kernel/node/Node;)V",
        "port0",
        "Landroid/webkit/WebMessagePort;",
        "getPort0",
        "()Landroid/webkit/WebMessagePort;",
        "setPort0",
        "(Landroid/webkit/WebMessagePort;)V",
        "receivedRenderProcessGone",
        "threadPool",
        "Ljava/util/concurrent/ExecutorService;",
        "workerCallback",
        "Lcom/cloud/tmc/kernel/worker/WorkerCallback;",
        "create",
        "",
        "destroy",
        "execute",
        "messageObj",
        "Lcom/google/gson/JsonObject;",
        "messageObjStr",
        "messageMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "executeJS",
        "getActivityRuntimes",
        "",
        "getData",
        "",
        "key",
        "getmWebViewClientInstance",
        "()Ljava/lang/Boolean;",
        "isLoad",
        "isRenderProcessGone",
        "loadJS",
        "filePath",
        "loadScript",
        "script",
        "onRenderProcessGone",
        "view",
        "detail",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "registerObject",
        "map",
        "",
        "registerObjects",
        "mapMap",
        "registerWorkLifeCycle",
        "registerWorkerCallback",
        "registerWorkerMessageChannel",
        "setData",
        "value",
        "type",
        "useMessageChannel",
        "MyJavascriptInterface",
        "com.cloud.tmc.worker"
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
.field private final appId:Ljava/lang/String;

.field private isDestroy:Z

.field private lifeCycle:Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;

.field private mWebViewClient:Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;

.field private mainHandler:Landroid/os/Handler;

.field private node:Lcom/cloud/tmc/kernel/node/Node;

.field private port0:Landroid/webkit/WebMessagePort;

.field private receivedRenderProcessGone:Z

.field private threadPool:Ljava/util/concurrent/ExecutorService;

.field private workerCallback:Lcom/cloud/tmc/kernel/worker/WorkerCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/worker/debug/WebviewWorker;-><init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->node:Lcom/cloud/tmc/kernel/node/Node;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/worker/debug/WebviewWorker;-><init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/util/Map;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->registerObject$lambda$12$lambda$11(Ljava/lang/String;Ljava/util/Map;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    return-void
.end method

.method public static final synthetic access$getWorkerCallback$p(Lcom/cloud/tmc/worker/debug/WebviewWorker;)Lcom/cloud/tmc/kernel/worker/WorkerCallback;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->workerCallback:Lcom/cloud/tmc/kernel/worker/WorkerCallback;

    return-object p0
.end method

.method public static synthetic b(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->create$lambda$3$lambda$2(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->loadScript$lambda$8$lambda$7(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    return-void
.end method

.method private static final create$lambda$3(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cloud/tmc/worker/debug/c;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/worker/debug/c;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final create$lambda$3$lambda$2(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;->isDebug()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "get(BuildConfigProxy::class.java).isDebug"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    new-instance v1, Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;

    iget-object v2, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->node:Lcom/cloud/tmc/kernel/node/Node;

    invoke-direct {v1, v2, v3, p0}, Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;-><init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;)V

    iput-object v1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mWebViewClient:Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lcom/cloud/tmc/worker/debug/DefaultWebChromeClient;

    invoke-direct {v1}, Lcom/cloud/tmc/worker/debug/DefaultWebChromeClient;-><init>()V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/cloud/tmc/worker/debug/WebviewWorker$MyJavascriptInterface;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker$MyJavascriptInterface;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    const-string v1, "debug"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->lifeCycle:Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;->onCreate()V

    :cond_1
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->loadJS$lambda$6$lambda$5(Ljava/lang/String;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    return-void
.end method

.method public static synthetic e(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->loadJS$lambda$6(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    return-void
.end method

.method private static final execute$lambda$10(Lcom/cloud/tmc/worker/debug/WebviewWorker;Lcom/google/gson/JsonObject;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cloud/tmc/worker/debug/d;

    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/worker/debug/d;-><init>(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final execute$lambda$10$lambda$9(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {p0, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_0
    invoke-direct {p1, p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->executeJS(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method private final executeJS(Lcom/google/gson/JsonObject;)V
    .locals 3

    invoke-direct {p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->useMessageChannel()Z

    move-result v0

    const-string v1, "miniapp"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeSendToWorker MessageChannel= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->port0:Landroid/webkit/WebMessagePort;

    if-eqz v0, :cond_1

    new-instance v2, Landroid/webkit/WebMessage;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/webkit/WebMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebMessagePort;->postMessage(Landroid/webkit/WebMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port post message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeSendToWorker DefaultChannel= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:onMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/cloud/tmc/worker/debug/WebviewWorker$executeJS$1;

    invoke-direct {v0}, Lcom/cloud/tmc/worker/debug/WebviewWorker$executeJS$1;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic f(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->execute$lambda$10$lambda$9(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    return-void
.end method

.method public static synthetic g(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->registerObject$lambda$12(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic h(Lcom/cloud/tmc/worker/debug/WebviewWorker;Lcom/google/gson/JsonObject;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->execute$lambda$10(Lcom/cloud/tmc/worker/debug/WebviewWorker;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public static synthetic i(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->create$lambda$3(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    return-void
.end method

.method public static synthetic j(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->loadScript$lambda$8(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    return-void
.end method

.method private static final loadJS$lambda$6(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cloud/tmc/worker/debug/f;

    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/worker/debug/f;-><init>(Ljava/lang/String;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final loadJS$lambda$6$lambda$5(Ljava/lang/String;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 10

    const-string v0, ""

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v2, "$filePath"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadJS fail : js path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not exist"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, v2, p0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    const-string v3, "/"

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-class v3, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;->getParasm()Ljava/util/Map;

    move-result-object v3

    const-string v4, "get(JSAheadParamsProxy::class.java).parasm"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "var "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\";\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<meta charset=\"utf-8\" />\n\t\t<title></title>\n\t</head>\n\t<script>\n\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tvar global = window;\n\t\twindow.onload = function(){\n\u3000\u3000\u3000\u3000var script = document.createElement(\"script\");\n\u3000\u3000\u3000\u3000script.setAttribute(\"type\",\"text/javascript\");\n\u3000\u3000\u3000\u3000script.src = \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\";\n\u3000\u3000\u3000\u3000document.getElementsByTagName(\"head\")[0].appendChild(script);  \n\u3000\u3000}\t</script></html>\n"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "https://100000.miniapp.transsion.com"

    const-string v7, "text/html"

    const-string v8, "utf-8"

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadJS fail : Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, v1, p0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static final loadScript$lambda$8(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cloud/tmc/worker/debug/a;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/worker/debug/a;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final loadScript$lambda$8$lambda$7(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    invoke-interface {v2, v3, v5, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_WORKER_READY:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v2, v3, v4, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    new-instance v2, Lcom/cloud/tmc/worker/debug/WebviewWorker$loadScript$1$1$1;

    invoke-direct {v2}, Lcom/cloud/tmc/worker/debug/WebviewWorker$loadScript$1$1$1;-><init>()V

    invoke-virtual {p0, p1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    move-object p1, v3

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadJS fail : Error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadJS fail : Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "abilityName"

    const-string v4, "callback"

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "callbackId"

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "eventName"

    const-string v4, "loadWorkerJS"

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v4, "result"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-virtual {v3, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dataJson"

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p1, "source"

    const-string v1, "worker"

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "target"

    const-string v1, "render"

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->workerCallback:Lcom/cloud/tmc/kernel/worker/WorkerCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/worker/WorkerCallback;->onCallBack(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method

.method private static final registerObject$lambda$12(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$map"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cloud/tmc/worker/debug/j;

    invoke-direct {v1, p1, p2, p0}, Lcom/cloud/tmc/worker/debug/j;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final registerObject$lambda$12$lambda$11(Ljava/lang/String;Ljava/util/Map;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 2

    const-string v0, "$map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "var "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/cloud/tmc/worker/debug/WebviewWorker$registerObject$1$1$1;

    invoke-direct {p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker$registerObject$1$1$1;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private final useMessageChannel()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.0.0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string v2, "0.1.0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    xor-int/2addr v0, v3

    :catch_0
    return v0
.end method


# virtual methods
.method public create()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/tmc/worker/debug/i;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/worker/debug/i;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->isDestroy:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->isDestroy:Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->lifeCycle:Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;->onDestroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    iput-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->node:Lcom/cloud/tmc/kernel/node/Node;

    iput-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mWebViewClient:Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;

    return-void
.end method

.method public execute(Lcom/google/gson/JsonObject;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/tmc/worker/debug/h;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/worker/debug/h;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Lcom/google/gson/JsonObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->execute(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public execute(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getActivityRuntimes()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->getData(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getNode()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-object v0
.end method

.method public final getPort0()Landroid/webkit/WebMessagePort;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->port0:Landroid/webkit/WebMessagePort;

    return-object v0
.end method

.method public final getmWebViewClientInstance()Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mWebViewClient:Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;

    return-object v0
.end method

.method public isDestroy()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->isDestroy:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isLoad()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->isDestroy:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isRenderProcessGone()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->receivedRenderProcessGone:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public loadJS(Ljava/lang/String;)V
    .locals 2

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/tmc/worker/debug/g;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/worker/debug/g;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public loadScript(Ljava/lang/String;)V
    .locals 3

    const-string v0, "script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->isLoad()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, ""

    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const-string v2, "loadJS fail : Worker is not load "

    invoke-interface {p1, v1, v0, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    const-string v2, "loadJS fail : js string is null"

    invoke-interface {p1, v1, v0, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/cloud/tmc/worker/debug/b;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/worker/debug/b;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->receivedRenderProcessGone:Z

    const-class v0, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;->received(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    return-void
.end method

.method public registerObject(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/tmc/worker/debug/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/tmc/worker/debug/e;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public registerObjects(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "mapMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v1, v0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->registerObject(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerWorkLifeCycle(Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;)V
    .locals 1

    const-string v0, "lifeCycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->lifeCycle:Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;

    return-void
.end method

.method public registerWorkerCallback(Lcom/cloud/tmc/kernel/worker/WorkerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->workerCallback:Lcom/cloud/tmc/kernel/worker/WorkerCallback;

    return-void
.end method

.method public final registerWorkerMessageChannel()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->useMessageChannel()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->createWebMessageChannel()[Landroid/webkit/WebMessagePort;

    move-result-object v2

    const-string v3, "this.createWebMessageChannel()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v3, v2, v1

    iput-object v3, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->port0:Landroid/webkit/WebMessagePort;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/cloud/tmc/worker/debug/WebviewWorker$registerWorkerMessageChannel$1;

    invoke-direct {v4, p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker$registerWorkerMessageChannel$1;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebMessagePort;->setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;)V

    :cond_0
    new-instance v3, Landroid/webkit/WebMessage;

    aget-object v2, v2, v0

    new-array v0, v0, [Landroid/webkit/WebMessagePort;

    aput-object v2, v0, v1

    const-string v1, "mini_init"

    invoke-direct {v3, v1, v0}, Landroid/webkit/WebMessage;-><init>(Ljava/lang/String;[Landroid/webkit/WebMessagePort;)V

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, v3, v0}, Landroid/webkit/WebView;->postWebMessage(Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-void
.end method

.method public final setPort0(Landroid/webkit/WebMessagePort;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->port0:Landroid/webkit/WebMessagePort;

    return-void
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
