.class public Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$b;,
        Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;
    }
.end annotation


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$b;

.field private b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->j()V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->l()V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->k(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->g()V

    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->m()V

    return-void
.end method

.method private g()V
    .locals 2

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Le7/m;

    invoke-direct {v1, p0}, Le7/m;-><init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    new-instance v0, Le7/j;

    invoke-direct {v0}, Le7/j;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$b;-><init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$b;

    const-string v1, "InteractiveWebView"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Le7/k;

    invoke-direct {v1, p0, p1}, Le7/k;-><init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic j()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;->b()V

    :cond_0
    return-void
.end method

.method private synthetic k(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic l()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;->c()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Le7/l;

    invoke-direct {v1, p0}, Le7/l;-><init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    const-string v1, "about:blank"

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->freeMemory()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InteractiveWebView"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;

    return-void
.end method

.method public setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
