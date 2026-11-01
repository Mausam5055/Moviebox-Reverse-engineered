.class public Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;,
        Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$d;,
        Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private c:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/webkit/WebView;

.field private h:Landroid/widget/FrameLayout;

.field private i:J

.field private final j:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;

.field private k:Landroid/webkit/WebViewClient;

.field private l:Landroid/webkit/WebChromeClient;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x320

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->a:I

    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->j:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->k:Landroid/webkit/WebViewClient;

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->l:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method private a(F)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_web_form_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_web_form_file_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_web_form_dto"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_web_form_point"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->c:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h()V

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d:Ljava/lang/String;

    const-string v1, "height"

    invoke-static {v1, v0}, Lcom/cloud/hisavana/sdk/common/util/p0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x320

    :try_start_0
    const-string v2, "formId"

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/common/util/p0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->a(F)I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V

    :goto_1
    return-void
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V

    return-void
.end method

.method static synthetic j(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->e:Ljava/lang/String;

    return-object p0
.end method

.method private k()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$d;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$d;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)V

    const-string v2, "sspWebView"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->k:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->l:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create webview error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAdWebFormsActivity"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V

    return-void
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method private m()Z
    .locals 1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/l;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->i:J

    return-wide v0
.end method

.method private o()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->c:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/c1;->h(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->j:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Handler;Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method private p()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->fl_content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h:Landroid/widget/FrameLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->i:J

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->k()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SspWebWindow-----> submitForm    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ssp"

    invoke-virtual {v0, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;

    invoke-static {p1, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->setGaid(Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->f:I

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->setFormId(I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->setIpAddress(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/N0;->Q(Ljava/lang/String;I)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;)V
    :try_end_0
    .catch Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil$GsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, La7/c;->n()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, La7/c;->n()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    sget p1, Lcom/cloud/hisavana/sdk/R$style;->AppCompatTranscutes:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    goto :goto_1

    :cond_2
    sget p1, Lcom/cloud/hisavana/sdk/R$style;->TranslucentStyle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    :goto_1
    sget p1, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_web_forms:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "TAdWebFormsActivity"

    const-string v1, "\u5c55\u793aform\u8868\u5355\u9875\u9762"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->p()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "TAdWebFormsActivity"

    invoke-virtual {v2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->j:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g()V

    return-void
.end method
