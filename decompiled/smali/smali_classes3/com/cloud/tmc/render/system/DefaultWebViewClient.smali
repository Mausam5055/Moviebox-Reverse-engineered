.class public final Lcom/cloud/tmc/render/system/DefaultWebViewClient;
.super Landroid/webkit/WebViewClient;

# interfaces
.implements Lcom/cloud/tmc/render/system/IChangeAppId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/render/system/DefaultWebViewClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 D2\u00020\u00012\u00020\u0002:\u0001DB5\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0008H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0006\u0010%\u001a\u00020\"J\u001c\u0010&\u001a\u00020\"2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010)\u001a\u0004\u0018\u00010\u0008H\u0016J&\u0010*\u001a\u00020\"2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010)\u001a\u0004\u0018\u00010\u00082\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016J&\u0010-\u001a\u00020\"2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J.\u0010-\u001a\u00020\"2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u00102\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u00010\u00082\u0008\u00105\u001a\u0004\u0018\u00010\u0008H\u0016J&\u00106\u001a\u00020\"2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J&\u00109\u001a\u00020\"2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010:\u001a\u0004\u0018\u00010;2\u0008\u00100\u001a\u0004\u0018\u00010<H\u0016J\u001c\u0010=\u001a\u00020>2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010?\u001a\u0004\u0018\u00010@H\u0017J\u000e\u0010A\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0008J\u001e\u0010B\u001a\u0004\u0018\u0001082\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u001c\u0010C\u001a\u00020>2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006E"
    }
    d2 = {
        "Lcom/cloud/tmc/render/system/DefaultWebViewClient;",
        "Landroid/webkit/WebViewClient;",
        "Lcom/cloud/tmc/render/system/IChangeAppId;",
        "pageEventCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "pageCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageCallback;",
        "appId",
        "",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "renderProcessListener",
        "Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;",
        "(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;)V",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "commonresId",
        "getNode",
        "()Lcom/cloud/tmc/kernel/node/Node;",
        "setNode",
        "(Lcom/cloud/tmc/kernel/node/Node;)V",
        "getPageCallback",
        "()Lcom/cloud/tmc/kernel/render/WebviewPageCallback;",
        "setPageCallback",
        "(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V",
        "getPageEventCallback",
        "()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "setPageEventCallback",
        "(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V",
        "getRenderProcessListener",
        "()Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;",
        "changeAppId",
        "",
        "id",
        "changeNode",
        "clear",
        "onPageFinished",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "onPageStarted",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onReceivedError",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "error",
        "Landroid/webkit/WebResourceError;",
        "errorCode",
        "",
        "description",
        "failingUrl",
        "onReceivedHttpError",
        "errorResponse",
        "Landroid/webkit/WebResourceResponse;",
        "onReceivedSslError",
        "handler",
        "Landroid/webkit/SslErrorHandler;",
        "Landroid/net/http/SslError;",
        "onRenderProcessGone",
        "",
        "detail",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "setCommonresId",
        "shouldInterceptRequest",
        "shouldOverrideUrlLoading",
        "Companion",
        "com.cloud.tmc.render"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/render/system/DefaultWebViewClient$Companion;

.field private static final TAG:Ljava/lang/String; = "DefaultWebViewClient"


# instance fields
.field private appId:Ljava/lang/String;

.field private commonresId:Ljava/lang/String;

.field private node:Lcom/cloud/tmc/kernel/node/Node;

.field private pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

.field private pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

.field private final renderProcessListener:Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/render/system/DefaultWebViewClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/render/system/DefaultWebViewClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->Companion:Lcom/cloud/tmc/render/system/DefaultWebViewClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderProcessListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    iput-object p2, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    iput-object p3, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->node:Lcom/cloud/tmc/kernel/node/Node;

    iput-object p5, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->renderProcessListener:Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    const-string p1, ""

    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->commonresId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/render/system/DefaultWebViewClient;-><init>(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;)V

    return-void
.end method


# virtual methods
.method public changeAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->appId:Ljava/lang/String;

    return-void
.end method

.method public changeNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    iput-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    return-void
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getNode()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-object v0
.end method

.method public final getPageCallback()Lcom/cloud/tmc/kernel/render/WebviewPageCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    return-object v0
.end method

.method public final getPageEventCallback()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    return-object v0
.end method

.method public final getRenderProcessListener()Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->renderProcessListener:Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->appId:Ljava/lang/String;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->LOAD_FINISH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-class p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->appId:Ljava/lang/String;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->LOAD_URL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3, v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    if-eqz p3, :cond_1

    invoke-interface {p3, p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageCallback;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p2, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->appId:Ljava/lang/String;

    sget-object p4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onReceivedError]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p4, p3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/kernel/render/WebviewPageCallback;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :cond_0
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p2, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->appId:Ljava/lang/String;

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceivedError]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, v0, p3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/kernel/render/WebviewPageCallback;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_0
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p2, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->appId:Ljava/lang/String;

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceivedHttpError]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, v0, p3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p2, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->appId:Ljava/lang/String;

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceivedSslError]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, v0, p3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->renderProcessListener:Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setCommonresId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->commonresId:Ljava/lang/String;

    return-void
.end method

.method public final setNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-void
.end method

.method public final setPageCallback(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    return-void
.end method

.method public final setPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request.url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "juggit"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    iget-object v1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->commonresId:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->commonresId:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->node:Lcom/cloud/tmc/kernel/node/Node;

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Landroid/webkit/WebResourceRequest;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->node:Lcom/cloud/tmc/kernel/node/Node;

    invoke-interface {v0, p2, v1, v2}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Landroid/webkit/WebResourceRequest;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 9

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bytebridge"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "decode(it.toString(), \"utf-8\")"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "bytebridge://"

    const-string v5, ""

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "miniapp"

    const-string v3, "renderSendToNative shouldOverrideUrlLoadingBridge!!"

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onConsoleMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    return v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renderSendToNative shouldOverrideUrlLoadingBridge fail!:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageCallback;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    return v0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method
