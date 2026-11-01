.class public final Lcom/cloud/tmc/worker/debug/DefaultWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u001e\u0010\u0007\u001a\u00020\u00082\u0014\u0010\t\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0018\u00010\nH\u0016J\u0012\u0010\r\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J,\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00112\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0008H\u0016J\u001c\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0008H\u0016J0\u0010\u001f\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0008\u0010 \u001a\u0004\u0018\u00010\u000c2\u0008\u0010!\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J0\u0010$\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0008\u0010 \u001a\u0004\u0018\u00010\u000c2\u0008\u0010!\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J0\u0010%\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0008\u0010 \u001a\u0004\u0018\u00010\u000c2\u0008\u0010!\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J:\u0010&\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0008\u0010 \u001a\u0004\u0018\u00010\u000c2\u0008\u0010!\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\'\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\"\u001a\u0004\u0018\u00010(H\u0016J\u0012\u0010)\u001a\u00020\u00082\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0012\u0010,\u001a\u00020\u00082\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u001a\u0010-\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0006\u0010.\u001a\u00020/H\u0016J\u001c\u00100\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0008\u00101\u001a\u0004\u0018\u00010\u0004H\u0016J\u001c\u00102\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0008\u00103\u001a\u0004\u0018\u00010\u000cH\u0016J$\u00104\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0008\u0010 \u001a\u0004\u0018\u00010\u000c2\u0006\u00105\u001a\u00020\u0011H\u0016J\u0012\u00106\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000fH\u0016J\u001c\u00107\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u000108H\u0016J2\u00109\u001a\u00020\u00112\u0008\u0010:\u001a\u0004\u0018\u00010\u000f2\u0014\u0010;\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020<0\u000b\u0018\u00010\n2\u0008\u0010=\u001a\u0004\u0018\u00010>H\u0016\u00a8\u0006?"
    }
    d2 = {
        "Lcom/cloud/tmc/worker/debug/DefaultWebChromeClient;",
        "Landroid/webkit/WebChromeClient;",
        "()V",
        "getDefaultVideoPoster",
        "Landroid/graphics/Bitmap;",
        "getVideoLoadingProgressView",
        "Landroid/view/View;",
        "getVisitedHistory",
        "",
        "callback",
        "Landroid/webkit/ValueCallback;",
        "",
        "",
        "onCloseWindow",
        "window",
        "Landroid/webkit/WebView;",
        "onConsoleMessage",
        "",
        "consoleMessage",
        "Landroid/webkit/ConsoleMessage;",
        "onCreateWindow",
        "view",
        "isDialog",
        "isUserGesture",
        "resultMsg",
        "Landroid/os/Message;",
        "onGeolocationPermissionsHidePrompt",
        "onGeolocationPermissionsShowPrompt",
        "origin",
        "Landroid/webkit/GeolocationPermissions$Callback;",
        "onHideCustomView",
        "onJsAlert",
        "url",
        "message",
        "result",
        "Landroid/webkit/JsResult;",
        "onJsBeforeUnload",
        "onJsConfirm",
        "onJsPrompt",
        "defaultValue",
        "Landroid/webkit/JsPromptResult;",
        "onPermissionRequest",
        "request",
        "Landroid/webkit/PermissionRequest;",
        "onPermissionRequestCanceled",
        "onProgressChanged",
        "newProgress",
        "",
        "onReceivedIcon",
        "icon",
        "onReceivedTitle",
        "title",
        "onReceivedTouchIconUrl",
        "precomposed",
        "onRequestFocus",
        "onShowCustomView",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "onShowFileChooser",
        "webView",
        "filePathCallback",
        "Landroid/net/Uri;",
        "fileChooserParams",
        "Landroid/webkit/WebChromeClient$FileChooserParams;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, ""

    invoke-interface {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method
