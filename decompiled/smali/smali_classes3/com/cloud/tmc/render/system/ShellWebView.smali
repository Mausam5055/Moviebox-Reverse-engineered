.class public final Lcom/cloud/tmc/render/system/ShellWebView;
.super Landroid/webkit/WebView;

# interfaces
.implements Lcom/cloud/tmc/kernel/render/IWebView;
.implements Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;
.implements Lcom/cloud/tmc/render/IPageChainCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/render/system/ShellWebView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0018\u0000 r2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001rB\u001b\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010?\u001a\u00020@H\u0017J\u0008\u0010A\u001a\u00020@H\u0016J\u0008\u0010B\u001a\u00020)H\u0016J\u0008\u0010C\u001a\u00020DH\u0016J\u0008\u0010E\u001a\u00020@H\u0016J\r\u0010F\u001a\u00020\u0018H\u0016\u00a2\u0006\u0002\u0010GJ\u0010\u0010H\u001a\u00020@2\u0006\u0010I\u001a\u00020\u000bH\u0016J4\u0010H\u001a\u00020@2\u0006\u0010I\u001a\u00020\u000b2\"\u0010J\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0Kj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b`LH\u0016J8\u0010M\u001a\u00020@2\u0008\u0010I\u001a\u0004\u0018\u00010\u000b2\u0006\u0010N\u001a\u00020\u000b2\u0008\u0010O\u001a\u0004\u0018\u00010\u000b2\u0008\u0010P\u001a\u0004\u0018\u00010\u000b2\u0008\u0010Q\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010R\u001a\u00020\u0018H\u0016J\u0010\u0010S\u001a\u00020@2\u0006\u0010T\u001a\u00020\u000bH\u0016J\u0010\u0010U\u001a\u00020@2\u0006\u0010T\u001a\u00020\u000bH\u0016J\u0008\u0010V\u001a\u00020@H\u0016J\u001c\u0010W\u001a\u00020@2\u0008\u0010X\u001a\u0004\u0018\u00010\u00012\u0008\u0010Y\u001a\u0004\u0018\u00010ZH\u0016J\u0008\u0010[\u001a\u00020@H\u0016J(\u0010\\\u001a\u00020@2\u0006\u0010]\u001a\u00020)2\u0006\u0010^\u001a\u00020)2\u0006\u0010_\u001a\u00020)2\u0006\u0010`\u001a\u00020)H\u0014J\u0012\u0010a\u001a\u00020@2\u0008\u0010b\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010c\u001a\u00020@H\u0017J\u0012\u0010d\u001a\u00020@2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0012\u0010e\u001a\u00020@2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0008\u0010f\u001a\u00020@H\u0016J\u0010\u0010g\u001a\u00020@2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010h\u001a\u00020@2\u0006\u0010i\u001a\u00020\u000bH\u0016J\u0012\u0010j\u001a\u00020@2\u0008\u0010k\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010l\u001a\u00020@2\u0006\u0010m\u001a\u00020)H\u0016J\u0010\u0010n\u001a\u00020@2\u0006\u0010*\u001a\u00020+H\u0016J\u0012\u0010o\u001a\u00020@2\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u0010\u0010p\u001a\u00020@2\u0006\u0010q\u001a\u00020\u0018H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019\"\u0004\u0008\u001d\u0010\u001bR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u00100\u001a\u0004\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u000e\u00106\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u00109\u001a\u00020:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>\u00a8\u0006s"
    }
    d2 = {
        "Lcom/cloud/tmc/render/system/ShellWebView;",
        "Landroid/webkit/WebView;",
        "Lcom/cloud/tmc/kernel/render/IWebView;",
        "Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;",
        "Lcom/cloud/tmc/render/IPageChainCallback;",
        "context",
        "Landroid/content/Context;",
        "attributeSet",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "appId",
        "",
        "bgColor",
        "byteH5BridgeJsInterface",
        "Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;",
        "getByteH5BridgeJsInterface",
        "()Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;",
        "setByteH5BridgeJsInterface",
        "(Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;)V",
        "customViewCallback",
        "Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;",
        "fullScreenJSI",
        "Lcom/cloud/tmc/render/utils/FullScreenJSI;",
        "isLoadDataWithBaseURL",
        "",
        "()Z",
        "setLoadDataWithBaseURL",
        "(Z)V",
        "isOffScreenRender",
        "setOffScreenRender",
        "localChannelInterface",
        "Lcom/cloud/tmc/render/method/LocalChannelInterface;",
        "mWebChromeClient",
        "Lcom/cloud/tmc/render/system/DefaultWebChromeClient;",
        "getMWebChromeClient",
        "()Lcom/cloud/tmc/render/system/DefaultWebChromeClient;",
        "setMWebChromeClient",
        "(Lcom/cloud/tmc/render/system/DefaultWebChromeClient;)V",
        "mWebViewClient",
        "Lcom/cloud/tmc/render/system/DefaultWebViewClient;",
        "miniappType",
        "",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "pageCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageCallback;",
        "pageEventCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "port0",
        "Landroid/webkit/WebMessagePort;",
        "getPort0",
        "()Landroid/webkit/WebMessagePort;",
        "setPort0",
        "(Landroid/webkit/WebMessagePort;)V",
        "receivedRenderProcessGone",
        "scrollChangedCallback",
        "Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;",
        "webviewBridgeHelper",
        "Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;",
        "getWebviewBridgeHelper",
        "()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;",
        "setWebviewBridgeHelper",
        "(Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V",
        "create",
        "",
        "destroy",
        "getMiniAppType",
        "getRenderBridge",
        "Lcom/cloud/tmc/kernel/bridge/RenderBridge;",
        "goBack",
        "isRenderProcessGone",
        "()Ljava/lang/Boolean;",
        "load",
        "url",
        "additionalHttpHeaders",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "loadData",
        "data",
        "mimeType",
        "encoding",
        "historyUrl",
        "onCheckIsTextEditor",
        "onConsoleMessage",
        "params",
        "onPageFinished",
        "onPause",
        "onRenderProcessGone",
        "view",
        "detail",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "onResume",
        "onScrollChanged",
        "l",
        "t",
        "oldl",
        "oldt",
        "registerCustomViewVisiableCallback",
        "customViewVisiableCallback",
        "registerMessageChannel",
        "registerPageCallback",
        "registerPageEventCallback",
        "reload",
        "setAppId",
        "setBgColor",
        "color",
        "setCommonresId",
        "commonresId",
        "setMiniAppType",
        "type",
        "setNode",
        "setScrollChangedCallback",
        "setSupportFullScreen",
        "fullScreen",
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
.field public static final Companion:Lcom/cloud/tmc/render/system/ShellWebView$Companion;

.field private static final TAG:Ljava/lang/String; = "ShellWebView"


# instance fields
.field private appId:Ljava/lang/String;

.field private bgColor:Ljava/lang/String;

.field private byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

.field private customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

.field private fullScreenJSI:Lcom/cloud/tmc/render/utils/FullScreenJSI;

.field private isLoadDataWithBaseURL:Z

.field private isOffScreenRender:Z

.field private localChannelInterface:Lcom/cloud/tmc/render/method/LocalChannelInterface;

.field private mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

.field private mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

.field private miniappType:I

.field private node:Lcom/cloud/tmc/kernel/node/Node;

.field private pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

.field private pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

.field private port0:Landroid/webkit/WebMessagePort;

.field private receivedRenderProcessGone:Z

.field private scrollChangedCallback:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

.field private webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/render/system/ShellWebView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/render/system/ShellWebView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/render/system/ShellWebView;->Companion:Lcom/cloud/tmc/render/system/ShellWebView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/render/system/ShellWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->miniappType:I

    new-instance p1, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;-><init>(Lcom/cloud/tmc/kernel/render/IWebView;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    new-instance p1, Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    invoke-direct {p1}, Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    new-instance p1, Lcom/cloud/tmc/render/utils/FullScreenJSI;

    invoke-direct {p1}, Lcom/cloud/tmc/render/utils/FullScreenJSI;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->fullScreenJSI:Lcom/cloud/tmc/render/utils/FullScreenJSI;

    new-instance p1, Lcom/cloud/tmc/render/method/LocalChannelInterface;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/render/method/LocalChannelInterface;-><init>(Lcom/cloud/tmc/render/IPageChainCallback;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->localChannelInterface:Lcom/cloud/tmc/render/method/LocalChannelInterface;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/render/system/ShellWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    new-instance v6, Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    iget-object v2, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->appId:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "appId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->node:Lcom/cloud/tmc/kernel/node/Node;

    if-nez v0, :cond_1

    const-string v0, "node"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    move-object v0, v6

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/render/system/DefaultWebViewClient;-><init>(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;)V

    iput-object v6, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    iget-object v3, p0, Lcom/cloud/tmc/render/system/ShellWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    iget-object v4, p0, Lcom/cloud/tmc/render/system/ShellWebView;->customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;)V

    iput-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;->setWebviewPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V

    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/render/method/ShellGameJsInterface;

    invoke-direct {v0}, Lcom/cloud/tmc/render/method/ShellGameJsInterface;-><init>()V

    const-string v1, "dltms"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->localChannelInterface:Lcom/cloud/tmc/render/method/LocalChannelInterface;

    const-string v1, "dltLocalChannel"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/render/method/MonitorLoadingInterface;

    invoke-direct {v0}, Lcom/cloud/tmc/render/method/MonitorLoadingInterface;-><init>()V

    const-string v1, "dltMonitor"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    const-string v1, "dlth5bridge"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->fullScreenJSI:Lcom/cloud/tmc/render/utils/FullScreenJSI;

    invoke-static {p0, v0}, Lcom/cloud/tmc/render/utils/WebViewExtensionKt;->addJavaScriptInterfaceFullScreen(Landroid/webkit/WebView;Lcom/cloud/tmc/render/utils/FullScreenJSI;)V

    return-void
.end method

.method public destroy()V
    .locals 4

    const-string v0, "ShellWebView"

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->localChannelInterface:Lcom/cloud/tmc/render/method/LocalChannelInterface;

    invoke-virtual {v1}, Lcom/cloud/tmc/render/method/LocalChannelInterface;->clear()V

    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    invoke-virtual {v1}, Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;->clear()V

    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->clear()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    iget-object v2, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->clear()V

    :cond_1
    iput-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    iput-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    iput-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    iput-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->scrollChangedCallback:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    iput-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->port0:Landroid/webkit/WebMessagePort;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/webkit/WebMessagePort;->close()V

    :cond_2
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v2, "enableShellDestory"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    const-string v1, "shellWebView Destory"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "destroy"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final getByteH5BridgeJsInterface()Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    return-object v0
.end method

.method public final getMWebChromeClient()Lcom/cloud/tmc/render/system/DefaultWebChromeClient;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    return-object v0
.end method

.method public getMiniAppType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->miniappType:I

    return v0
.end method

.method public final getPort0()Landroid/webkit/WebMessagePort;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->port0:Landroid/webkit/WebMessagePort;

    return-object v0
.end method

.method public getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->getRenderBridge(Landroid/webkit/WebView;)Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object v0

    return-object v0
.end method

.method public final getWebviewBridgeHelper()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    return-object v0
.end method

.method public goBack()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public final isLoadDataWithBaseURL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->isLoadDataWithBaseURL:Z

    return v0
.end method

.method public final isOffScreenRender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->isOffScreenRender:Z

    return v0
.end method

.method public isRenderProcessGone()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->receivedRenderProcessGone:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic isResume()Z
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/kernel/render/c;->a(Lcom/cloud/tmc/kernel/render/IWebView;)Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/render/system/ShellWebView;->load(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public load(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalHttpHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Render]:[load Url]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShellWebView"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 4

    const-string v0, "ShellWebView"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0}, Landroid/webkit/WebView;->onCheckIsTextEditor()Z

    move-result v1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_0
    const-string v2, "onCheckIsTextEditor() does not run in the main thread"

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    const-string v3, "Probable deadlock detected due to WebView API being called on incorrect thread while the UI thread is blocked."

    invoke-static {v0, v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v1
.end method

.method public onConsoleMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onConsoleMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 5

    const-string v0, "h5OnPageFinished"

    const-string v1, "params"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/render/system/ShellWebView;->node:Lcom/cloud/tmc/kernel/node/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "node"

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    :cond_0
    const-class v2, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v4, p0, Lcom/cloud/tmc/render/system/ShellWebView;->node:Lcom/cloud/tmc/kernel/node/Node;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_1
    invoke-interface {v2, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    invoke-direct {v3, v0}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setData(Ljava/util/Map;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v2, v0, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->receivedRenderProcessGone:Z

    const-class v0, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;->received(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->scrollChangedCallback:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    if-eqz v0, :cond_0

    sub-int/2addr p1, p3

    sub-int/2addr p2, p4

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;->onScroll(II)V

    :cond_0
    return-void
.end method

.method public registerCustomViewVisiableCallback(Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    return-void
.end method

.method public registerMessageChannel()V
    .locals 6

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->createWebMessageChannel()[Landroid/webkit/WebMessagePort;

    move-result-object v2

    const-string v3, "this.createWebMessageChannel()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iput-object v4, p0, Lcom/cloud/tmc/render/system/ShellWebView;->port0:Landroid/webkit/WebMessagePort;

    if-eqz v4, :cond_0

    new-instance v5, Lcom/cloud/tmc/render/system/ShellWebView$registerMessageChannel$1;

    invoke-direct {v5, v1}, Lcom/cloud/tmc/render/system/ShellWebView$registerMessageChannel$1;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebMessagePort;->setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;)V

    :cond_0
    new-instance v1, Landroid/webkit/WebMessage;

    aget-object v2, v2, v0

    new-array v0, v0, [Landroid/webkit/WebMessagePort;

    aput-object v2, v0, v3

    const-string v2, "mini_init"

    invoke-direct {v1, v2, v0}, Landroid/webkit/WebMessage;-><init>(Ljava/lang/String;[Landroid/webkit/WebMessagePort;)V

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->postWebMessage(Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    return-void
.end method

.method public registerPageCallback(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    return-void
.end method

.method public registerPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    return-void
.end method

.method public reload()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    instance-of v1, v0, Lcom/cloud/tmc/render/system/IChangeAppId;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/cloud/tmc/render/system/IChangeAppId;->changeAppId(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->localChannelInterface:Lcom/cloud/tmc/render/method/LocalChannelInterface;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/render/method/LocalChannelInterface;->setAppId(Ljava/lang/String;)V

    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 2

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->bgColor:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ShellWebView"

    const-string v1, "set content background color error"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final setByteH5BridgeJsInterface(Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    return-void
.end method

.method public setCommonresId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->setCommonresId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final setLoadDataWithBaseURL(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->isLoadDataWithBaseURL:Z

    return-void
.end method

.method public final setMWebChromeClient(Lcom/cloud/tmc/render/system/DefaultWebChromeClient;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    return-void
.end method

.method public setMiniAppType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->miniappType:I

    return-void
.end method

.method public setNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 2

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->node:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    instance-of v1, v0, Lcom/cloud/tmc/render/system/IChangeAppId;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/cloud/tmc/render/system/IChangeAppId;->changeNode(Lcom/cloud/tmc/kernel/node/Node;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->fullScreenJSI:Lcom/cloud/tmc/render/utils/FullScreenJSI;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/render/utils/FullScreenJSI;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    return-void
.end method

.method public final setOffScreenRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->isOffScreenRender:Z

    return-void
.end method

.method public final setPort0(Landroid/webkit/WebMessagePort;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->port0:Landroid/webkit/WebMessagePort;

    return-void
.end method

.method public setScrollChangedCallback(Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->scrollChangedCallback:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    return-void
.end method

.method public setSupportFullScreen(Z)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    iget-object v2, p0, Lcom/cloud/tmc/render/system/ShellWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    invoke-direct {p1, v0, v1, v2}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_0
    return-void
.end method

.method public final setWebviewBridgeHelper(Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    return-void
.end method
