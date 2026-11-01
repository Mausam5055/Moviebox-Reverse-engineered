.class public final Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;
.super Landroid/webkit/WebView;


# instance fields
.field public OooO00o:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

.field public OooO0O0:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

.field public OooO0OO:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

.field public OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;

.field public final OooO0o:Lkotlin/Lazy;

.field public OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o$OooO00o;

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getMHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public OooO00o()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0O0:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;-><init>(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/interfaces/NativeWebviewInterface;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/nativewebview/interfaces/NativeWebviewInterface;-><init>()V

    const-string v1, "dltNativeWebview"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V
    .locals 1

    const-string v0, "pageCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0O0:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V
    .locals 1

    const-string v0, "pageEventCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    return-void
.end method

.method public OooO00o(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[load Url]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeWebView"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    :cond_0
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;

    if-eqz v0, :cond_1

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    :cond_1
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0O0:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public final getMWebChromeClient()Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;

    return-object v0
.end method

.method public goBack()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 4

    const-string v0, "NativeWebView"

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

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    if-eqz v0, :cond_0

    sub-int/2addr p1, p3

    sub-int/2addr p2, p4

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;->onScroll(II)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public final setMWebChromeClient(Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;

    return-void
.end method

.method public setScrollChangedCallback(Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    return-void
.end method
