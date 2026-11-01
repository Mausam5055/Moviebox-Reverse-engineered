.class public Lcom/github/lzyzsd/jsbridge/BridgeWebView;
.super Landroid/webkit/WebView;

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/WebViewJavascriptBridge;
.implements Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient$OnLoadJSListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/lzyzsd/jsbridge/BridgeWebView$BaseJavascriptInterface;
    }
.end annotation


# instance fields
.field private final URL_MAX_CHARACTER_NUM:I

.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;

.field private mGson:Lcom/google/gson/Gson;

.field private mJSLoaded:Z

.field private mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUniqueId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x200000

    iput p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->URL_MAX_CHARACTER_NUM:I

    new-instance p1, Landroidx/collection/a;

    invoke-direct {p1}, Landroidx/collection/a;-><init>()V

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mCallbacks:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mMessages:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mUniqueId:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mJSLoaded:Z

    invoke-direct {p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x200000

    iput p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->URL_MAX_CHARACTER_NUM:I

    new-instance p1, Landroidx/collection/a;

    invoke-direct {p1}, Landroidx/collection/a;-><init>()V

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mCallbacks:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mMessages:Ljava/util/List;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mUniqueId:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mJSLoaded:Z

    invoke-direct {p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x200000

    iput p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->URL_MAX_CHARACTER_NUM:I

    new-instance p1, Landroidx/collection/a;

    invoke-direct {p1}, Landroidx/collection/a;-><init>()V

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mCallbacks:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mMessages:Ljava/util/List;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mUniqueId:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mJSLoaded:Z

    invoke-direct {p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->init()V

    return-void
.end method

.method static bridge synthetic a(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->dispatchMessage(Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchMessage(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mGson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "javascript:WebViewJavascriptBridge._handleMessageFromNative(%s);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x200000

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private doSend(Ljava/lang/String;Ljava/lang/Object;Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;)V
    .locals 5

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mGson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/github/lzyzsd/jsbridge/JSRequest;

    invoke-direct {v0}, Lcom/github/lzyzsd/jsbridge/JSRequest;-><init>()V

    if-eqz p2, :cond_2

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, v0, Lcom/github/lzyzsd/jsbridge/JSRequest;->data:Ljava/lang/String;

    :cond_2
    if-eqz p3, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mUniqueId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mUniqueId:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "JAVA_CB_%s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, v0, Lcom/github/lzyzsd/jsbridge/JSRequest;->callbackId:Ljava/lang/String;

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iput-object p1, v0, Lcom/github/lzyzsd/jsbridge/JSRequest;->handlerName:Ljava/lang/String;

    :cond_4
    invoke-direct {p0, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->queueMessage(Ljava/lang/Object;)V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    new-instance v0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;

    invoke-direct {v0, p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient$OnLoadJSListener;)V

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mClient:Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private queueMessage(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mMessages:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->dispatchMessage(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public callHandler(Ljava/lang/String;Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->doSend(Ljava/lang/String;Ljava/lang/Object;Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getCallbacks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method public isJSLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mJSLoaded:Z

    return v0
.end method

.method public onLoadFinished()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mJSLoaded:Z

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mMessages:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->dispatchMessage(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mMessages:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public onLoadStart()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mJSLoaded:Z

    return-void
.end method

.method public sendResponse(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mGson:Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/github/lzyzsd/jsbridge/JSResponse;

    invoke-direct {v1}, Lcom/github/lzyzsd/jsbridge/JSResponse;-><init>()V

    iput-object p2, v1, Lcom/github/lzyzsd/jsbridge/JSResponse;->responseId:Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v1, Lcom/github/lzyzsd/jsbridge/JSResponse;->responseData:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_2

    invoke-direct {p0, v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->dispatchMessage(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;

    invoke-direct {p1, p0, v1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Lcom/github/lzyzsd/jsbridge/JSResponse;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public sendToWeb(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->sendToWeb(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;)V

    return-void
.end method

.method public sendToWeb(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->doSend(Ljava/lang/String;Ljava/lang/Object;Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;)V

    return-void
.end method

.method public varargs sendToWeb(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "javascript:%s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setGson(Lcom/google/gson/Gson;)V
    .locals 0

    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->mClient:Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;

    invoke-virtual {v0, p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
