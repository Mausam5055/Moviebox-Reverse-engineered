.class public Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# static fields
.field private static final b:Ljava/lang/String; = "AdvertiserLinkActivity"


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic R(Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->U(Landroid/view/View;)V

    return-void
.end method

.method private T()V
    .locals 2

    invoke-static {}, La7/c;->n()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, La7/c;->n()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic U(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private V()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->webview_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    sget-object v2, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create webview error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    new-instance v1, Le7/j;

    invoke-direct {v1}, Le7/j;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method

.method private W()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->b:Ljava/lang/String;

    const-string v2, "url is null"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    sget-object v2, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private X()V
    .locals 2

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->im_back:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->T()V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/cloud/hisavana/sdk/R$layout;->activity_advertiser_link:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->X()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->V()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->W()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;->destroy()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    sget-object v2, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
