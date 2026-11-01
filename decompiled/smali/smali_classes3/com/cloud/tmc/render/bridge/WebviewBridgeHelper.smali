.class public final Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;",
        "",
        "webView",
        "Lcom/cloud/tmc/kernel/render/IWebView;",
        "(Lcom/cloud/tmc/kernel/render/IWebView;)V",
        "getWebView",
        "()Lcom/cloud/tmc/kernel/render/IWebView;",
        "getRenderBridge",
        "Lcom/cloud/tmc/kernel/bridge/RenderBridge;",
        "Landroid/webkit/WebView;",
        "registerMessageChannel",
        "",
        "sendConsole",
        "pageEventCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "msg",
        "",
        "useMessageChannel",
        "",
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


# instance fields
.field private final webView:Lcom/cloud/tmc/kernel/render/IWebView;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/render/IWebView;)V
    .locals 1

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

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

    if-nez v2, :cond_1

    const-string v2, "0.1.0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IWebView;->getMiniAppType()I

    move-result v1

    sget-object v2, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IWebView;->getMiniAppType()I

    move-result v1

    sget-object v2, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL_GAME:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v2, :cond_2

    move v0, v3

    :catch_0
    :cond_2
    return v0
.end method


# virtual methods
.method public final getRenderBridge(Landroid/webkit/WebView;)Lcom/cloud/tmc/kernel/bridge/RenderBridge;
    .locals 1

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->useMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/render/bridge/MessageChannelBridge;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/render/bridge/MessageChannelBridge;-><init>(Landroid/webkit/WebView;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/cloud/tmc/render/bridge/DefaultRenderBridge;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/render/bridge/DefaultRenderBridge;-><init>(Landroid/webkit/WebView;)V

    return-object v0
.end method

.method public final getWebView()Lcom/cloud/tmc/kernel/render/IWebView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    return-object v0
.end method

.method public final registerMessageChannel()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->useMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->registerMessageChannel()V

    :cond_0
    return-void
.end method

.method public final sendConsole(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Ljava/lang/String;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->useMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DispatchEvent"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "renderOnMessageReady"

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onConsoleMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onConsoleMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
