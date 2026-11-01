.class public final Lcom/transsion/lib_web/cache/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/lib_web/cache/a;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/github/lzyzsd/jsbridge/BridgeWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/lib_web/cache/a;

    invoke-direct {v0}, Lcom/transsion/lib_web/cache/a;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/cache/a;->a:Lcom/transsion/lib_web/cache/a;

    const-string v0, ""

    sput-object v0, Lcom/transsion/lib_web/cache/a;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Lcom/github/lzyzsd/jsbridge/BridgeWebView;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/transsion/lib_web/cache/b;->a:Lcom/transsion/lib_web/cache/b;

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/cache/b;->b(Landroid/content/Context;)Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/transsion/lib_web/cache/b;->a:Lcom/transsion/lib_web/cache/b;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createWebViewSafely() --> WebView \u521b\u5efa\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/cache/b;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final b(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 2

    sget-object v0, Lgm/n;->a:Lgm/n;

    invoke-virtual {v0, p1}, Lgm/n;->f(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/lib_web/cache/a;->d(Landroid/webkit/WebView;)V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->destroy()V

    :cond_4
    return-void
.end method

.method public final c(Ljava/lang/String;Landroid/content/Context;)Lcom/github/lzyzsd/jsbridge/BridgeWebView;
    .locals 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgm/n;->a:Lgm/n;

    sget-object v1, Lcom/transsion/lib_web/cache/a;->c:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v0, v1}, Lgm/n;->f(Landroid/webkit/WebView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/lib_web/cache/a;->c:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/lib_web/cache/a;->d(Landroid/webkit/WebView;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/lib_web/cache/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/transsion/lib_web/cache/a;->c:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    sput-object v1, Lcom/transsion/lib_web/cache/a;->c:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    sput-object v1, Lcom/transsion/lib_web/cache/a;->b:Ljava/lang/String;

    sget-object v1, Lcom/transsion/lib_web/cache/b;->a:Lcom/transsion/lib_web/cache/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get() --> \u7f13\u5b58\u547d\u4e2d\uff0c\u76f4\u63a5\u590d\u7528 --> url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/lib_web/cache/b;->g(Ljava/lang/String;)V

    if-nez v0, :cond_5

    if-nez p2, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/transsion/lib_web/cache/a;->a(Landroid/content/Context;)Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/transsion/lib_web/cache/b;->a:Lcom/transsion/lib_web/cache/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get() --> \u6ca1\u6709\u7f13\u5b58\uff0c\u76f4\u63a5\u521b\u5efa\u4e00\u4e2a\u65b0\u7684 --> url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/cache/b;->g(Ljava/lang/String;)V

    if-nez p2, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/transsion/lib_web/cache/a;->a(Landroid/content/Context;)Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public final d(Landroid/webkit/WebView;)V
    .locals 1

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/lib_web/cache/a;->c:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    sput-object p1, Lcom/transsion/lib_web/cache/a;->c:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    sput-object p1, Lcom/transsion/lib_web/cache/a;->b:Ljava/lang/String;

    sget-object p1, Lcom/transsion/lib_web/cache/b;->a:Lcom/transsion/lib_web/cache/b;

    const-string v0, "invalidate() --> \u6e05\u7a7a\u5931\u6548\u7684\u666e\u901a\u7f13\u5b58 WebView"

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/cache/b;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/lib_web/cache/a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgm/n;->a:Lgm/n;

    invoke-virtual {v0}, Lgm/n;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/transsion/lib_web/cache/b;->a:Lcom/transsion/lib_web/cache/b;

    const-string v0, "preload() --> renderer \u5f02\u5e38\u540e\u5f53\u524d\u8fdb\u7a0b\u5173\u95ed\u9884\u52a0\u8f7d"

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/cache/b;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/lib_web/cache/a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/lib_web/cache/b;->a:Lcom/transsion/lib_web/cache/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload() --> \u6b63\u5728\u7f13\u5b58\u7684\u5730\u5740\uff0c\u65e0\u9700\u91cd\u590d\u521b\u5efa --> url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/cache/b;->g(Ljava/lang/String;)V

    return-void

    :cond_1
    sput-object p1, Lcom/transsion/lib_web/cache/a;->b:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/transsion/lib_web/cache/b;->a:Lcom/transsion/lib_web/cache/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload() --> API 36+\uff0c\u8df3\u8fc7 WebView \u9884\u521b\u5efa --> url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/cache/b;->g(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/transsion/lib_web/cache/a;->c:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/lib_web/cache/a;->a(Landroid/content/Context;)Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/transsion/lib_web/cache/b;->a:Lcom/transsion/lib_web/cache/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload() --> \u8bbe\u5907\u7f3a\u5c11 WebView \u5b9e\u73b0\uff0c\u8df3\u8fc7\u9884\u52a0\u8f7d --> url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/cache/b;->g(Ljava/lang/String;)V

    return-void

    :cond_3
    sput-object v0, Lcom/transsion/lib_web/cache/a;->c:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    sget-object v0, Lcom/transsion/lib_web/cache/b;->a:Lcom/transsion/lib_web/cache/b;

    const-string v1, "preloadInternal() --> \u4e0d\u5b58\u5728\u521b\u5efa\u65b0\u7684\u5bf9\u8c61"

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/cache/b;->g(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/transsion/lib_web/cache/a;->c:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e9

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/lib_web/cache/b;->a:Lcom/transsion/lib_web/cache/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preloadInternal() --> \u521b\u5efa\u65b0\u5bf9\u8c61\u52a0\u5165\u7f13\u5b58\u6c60 --> \u9884\u52a0\u8f7d\u57cb\u70b9 --> url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/lib_web/cache/b;->g(Ljava/lang/String;)V

    const-string v3, "preload"

    invoke-virtual {v1, p1, v3}, Lcom/transsion/lib_web/cache/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    return-void
.end method
