.class public Lcom/cloud/tmc/miniapp/ui/WebViewActivity;
.super Lcom/cloud/tmc/miniapp/base/BaseActivity;

# interfaces
.implements Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;
.implements Lcom/cloud/tmc/kernel/render/WebviewPageCallback;
.implements Lcom/cloud/tmc/miniapp/action/StatusAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "open webview"

.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;


# instance fields
.field private final mFlWb$delegate:Lkotlin/Lazy;

.field private final mLayoutTitle$delegate:Lkotlin/Lazy;

.field private mLoadErrorFlag:Ljava/lang/Boolean;

.field private final mPb$delegate:Lkotlin/Lazy;

.field private final mStatusLayout$delegate:Lkotlin/Lazy;

.field private wb:Lcom/cloud/tmc/kernel/render/IWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mStatusLayout$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mStatusLayout$2;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mStatusLayout$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mFlWb$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mFlWb$2;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mFlWb$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mLayoutTitle$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mLayoutTitle$2;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLayoutTitle$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mPb$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mPb$2;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mPb$delegate:Lkotlin/Lazy;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLoadErrorFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic access$setMLoadErrorFlag$p(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLoadErrorFlag:Ljava/lang/Boolean;

    return-void
.end method

.method private final getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLayoutTitle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    return-object v0
.end method

.method private final getMPb()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mPb$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private final getMStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mStatusLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    return-object v0
.end method

.method public static final launch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;->launch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->activity_mini_web_view:I

    return v0
.end method

.method public final getMFlWb()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mFlWb$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v0

    return-object v0
.end method

.method public getViewThemeMode()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getWb()Lcom/cloud/tmc/kernel/render/IWebView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    return-object v0
.end method

.method public hideStatusLoading()V
    .locals 0

    return-void
.end method

.method public initData()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "pageUri"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "getString(TmcConstants.EXTRA_PAGE_URI) ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLoadErrorFlag:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v1, :cond_1

    const-string v2, "x-tr-devtype"

    const-string v3, "h5"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/kernel/render/IWebView;->load(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public initView()V
    .locals 8

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;->createWebView(Landroid/content/Context;)Lcom/cloud/tmc/kernel/render/IWebView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/render/IWebView;->registerPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V

    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/render/IWebView;->registerPageCallback(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMFlWb()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    instance-of v4, v3, Lcom/cloud/tmc/render/system/SystemWebView;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/cloud/tmc/render/system/SystemWebView;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_bg_01:I

    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/ColorUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_4

    const-string v1, "open webview"

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/render/IWebView;->setAppId(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_5

    new-instance v7, Lcom/cloud/tmc/integration/structure/node/PageNode;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/integration/structure/node/PageNode;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-interface {v0, v7}, Lcom/cloud/tmc/kernel/render/IWebView;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    :cond_5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->create()V

    :cond_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;->setTitle(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$initView$3;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$initView$3;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;->setonBackClickListener(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v1, "WebViewActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public isLoadStatusLoadingOrError()Z
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->isLoadStatusLoadingOrError(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    move-result v0

    return v0
.end method

.method public onConsoleMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "consoleMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMFlWb()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0()V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    if-eqz p2, :cond_3

    const/16 p1, 0x64

    if-eq p2, p1, :cond_1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMPb()Landroid/widget/ProgressBar;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMPb()Landroid/widget/ProgressBar;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMPb()Landroid/widget/ProgressBar;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLoadErrorFlag:Ljava/lang/Boolean;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$1;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$1;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    const/16 v6, 0x16

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "open webview"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    sget v2, Lcom/cloud/tmc/miniapp/R$string;->loading_error_tv:I

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v3, ""

    const-string v4, "open webview"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showError$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    return-void
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLoadErrorFlag:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/EmptyUtils;->textIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;->setTitle(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/kernel/render/d;->a(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onRequestFocus()V
    .locals 0

    return-void
.end method

.method public setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V

    return-void
.end method

.method public final setWb(Lcom/cloud/tmc/kernel/render/IWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    return-void
.end method

.method public synthetic shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/kernel/render/d;->b(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public showComplete()Z
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showComplete(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    move-result v0

    return v0
.end method

.method public showCustomErrorLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showCustomErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showError(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showError(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showLoading()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoading(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    return-void
.end method

.method public showLoadingLogo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoadingLogo(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showMainLayoutAlpha(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showMainLayoutAlpha(Lcom/cloud/tmc/miniapp/action/StatusAction;F)V

    return-void
.end method

.method public showNoNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showPhotoEmpty(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showPhotoEmpty(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    return-void
.end method

.method public showStatusLoading()V
    .locals 0

    return-void
.end method

.method public showUnstableNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showUnstableNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public statusLayoutCreateShortCutsSuccess(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutCreateShortCutsSuccess(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public statusLayoutOnResume()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutOnResume(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    return-void
.end method

.method public final trackH5Event(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "ssp"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_6

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "Double"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p4, v3, v4, v5}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :sswitch_1
    const-string v5, "Boolean"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p4, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :sswitch_2
    const-string v5, "Long"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p4, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "Integer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p4, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "String"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_1
    const-string v3, "type not supported"

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p4, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-eqz p2, :cond_7

    const-string v0, "code_seat_type"

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info.getCodeSeatType()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "advertiser_id"

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdvertiserId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "plan_id"

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getPlanId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ad_group_id"

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdGroupId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ad_creative_id"

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_offline_ad"

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "request_id"

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code_seat_id"

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "ip_address"

    sget-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_id_external"

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getAppIdExternal()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    move-object v2, v1

    :goto_2
    invoke-virtual {p4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code_seat_id_external"

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getCodeSeatIdExternal()Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "event_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p4, p2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v0, ""

    invoke-interface {p2, p1, p3, v0, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6bc5b3cf -> :sswitch_4
        -0x2811e6e2 -> :sswitch_3
        0x243a9c -> :sswitch_2
        0x67140408 -> :sswitch_1
        0x7a5c67f1 -> :sswitch_0
    .end sparse-switch
.end method

.method public updateStepAnimation(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->updateStepAnimation(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    return-void
.end method
