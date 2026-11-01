.class public final Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;
.super Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

# interfaces
.implements Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;
.implements Lcom/cloud/tmc/kernel/render/WebviewPageCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder$CheckMaterial;
    }
.end annotation


# instance fields
.field public OooO:Lcom/cloud/tmc/kernel/render/IWebView;

.field public final OooO0oO:Ljava/lang/String;

.field public OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

.field public OooOO0:Landroid/widget/FrameLayout;

.field public OooOO0O:Landroid/widget/ImageView;

.field public OooOO0o:Landroid/widget/ImageView;

.field public OooOOO:Z

.field public OooOOO0:Landroid/widget/ImageView;

.field public OooOOOO:Z

.field public OooOOOo:Z

.field public OooOOo:F

.field public OooOOo0:F

.field public OooOOoo:F

.field public final OooOo0:Landroid/view/ViewGroup$LayoutParams;

.field public OooOo00:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/ad/interface/AdEventListener;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "triggerId"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "htmlData"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "scale"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    const-string p2, "<script>\n\twindow.addEventListener(\'error\', function(e) {\n\t\tvar target = e.srcElement;\n\t\tvar tagName = target.tagName;\n\t\tif (tagName && tagName.toUpperCase() === \'IMG\' && target) {\n\t\t\tconst {\n\t\t\t\twidth,\n\t\t\t\theight\n\t\t\t} = target.getBoundingClientRect();\n\t\t\tvar isShow = window.getComputedStyle(target).getPropertyValue(\'display\').toUpperCase() !== \"NONE\" ||\n\t\t\t\tfalse;\n\t\t\tvar isShow1 = window.getComputedStyle(target).getPropertyValue(\'visibility\').toUpperCase() !==\n\t\t\t\t\"HIDDEN\" || false;\n\t\t\tif (typeof width == \"number\" && width > 1 && isShow && isShow1) {\n\t\t\t\twindow.loadError && window.loadError.loadMaterialError && window.loadError.loadMaterialError(target\n\t\t\t\t\t.src)\n\t\t\t}\n\t\t}\n\t}, true)\n</script>"

    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    const/4 p5, -0x2

    const/4 v2, -0x1

    invoke-direct {p4, v2, p5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOo0:Landroid/view/ViewGroup$LayoutParams;

    :try_start_0
    sget p4, Lcom/cloud/tmc/ad/R$layout;->view_interstitial_html_style:I

    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    sget p4, Lcom/cloud/tmc/miniapp/R$id;->iv_close:I

    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0O:Landroid/widget/ImageView;

    sget p4, Lcom/cloud/tmc/miniapp/R$id;->fl_wb:I

    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    sget p4, Lcom/cloud/tmc/ad/R$id;->iv_ad:I

    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0o:Landroid/widget/ImageView;

    sget p4, Lcom/cloud/tmc/ad/R$id;->iv_homepage:I

    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOO0:Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p4

    if-eqz p4, :cond_0

    new-instance p5, Lcom/cloud/tmc/miniapp/ad/interstitial/b;

    invoke-direct {p5, p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/b;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;)V

    invoke-virtual {p4, p5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const-class p4, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    invoke-static {p4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    invoke-interface {p4, p1}, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;->createWebView(Landroid/content/Context;)Lcom/cloud/tmc/kernel/render/IWebView;

    move-result-object p1

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/cloud/tmc/kernel/render/IWebView;->registerPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V

    invoke-interface {p1, p0}, Lcom/cloud/tmc/kernel/render/IWebView;->registerPageCallback(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V

    goto :goto_0

    :cond_1
    move-object p1, p4

    :goto_0
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz p1, :cond_2

    const-string p5, "open AdInterstitialHtmlView"

    invoke-interface {p1, p5}, Lcom/cloud/tmc/kernel/render/IWebView;->setAppId(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz p1, :cond_3

    new-instance p5, Lcom/cloud/tmc/integration/structure/node/PageNode;

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p5

    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/integration/structure/node/PageNode;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-interface {p1, p5}, Lcom/cloud/tmc/kernel/render/IWebView;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IWebView;->create()V

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO:Lcom/cloud/tmc/kernel/render/IWebView;

    instance-of p5, p1, Lcom/cloud/tmc/render/system/SystemWebView;

    if-eqz p5, :cond_5

    move-object p4, p1

    check-cast p4, Lcom/cloud/tmc/render/system/SystemWebView;

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-static {p4}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    new-instance p1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder$CheckMaterial;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder$CheckMaterial;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;)V

    const-string p5, "loadError"

    invoke-virtual {p4, p1, p5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/cloud/tmc/miniapp/ad/interstitial/c;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/c;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0O:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0o:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOO0:Landroid/widget/ImageView;

    const/4 p4, 0x3

    new-array p4, p4, [Landroid/view/View;

    aput-object p1, p4, v1

    aput-object p2, p4, v0

    const/4 p1, 0x2

    aput-object p3, p4, p1

    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener([Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_2

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOO:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOO:Z

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->getScreenHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe147ae147ae148L    # 0.54

    mul-double/2addr v1, v3

    double-to-int v1, v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOo0:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOoo:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOo00:F

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOo0:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOo:F

    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO00o(Lcom/cloud/tmc/ad/bean/AdShowBean;)V
    .locals 3

    const-string v0, "adShowBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/cloud/tmc/ad/interface/AdEventListener;->showResult(Ljava/lang/String;ZLcom/cloud/tmc/ad/bean/AdShowBean;)V

    :cond_0
    return-void
.end method

.method public OooO0O0()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final OooO0Oo()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO:Lcom/cloud/tmc/kernel/render/IWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->destroy()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO:Lcom/cloud/tmc/kernel/render/IWebView;

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0O:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    new-instance v8, Lcom/cloud/tmc/ad/bean/AdClickBean;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/ad/bean/AdClickBean;-><init>(IJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    invoke-virtual {v8, v1}, Lcom/cloud/tmc/ad/bean/AdClickBean;->setShowTimes(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v8}, Lcom/cloud/tmc/ad/bean/AdClickBean;->getShowDuration()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v8, v1, v2}, Lcom/cloud/tmc/ad/bean/AdClickBean;->setShowDuration(J)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/cloud/tmc/ad/bean/AdClickBean;->setShowArea(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p1, v0, v8}, Lcom/cloud/tmc/ad/interface/AdEventListener;->closeAd(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/AdClickBean;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0o:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/ad/interface/AdEventListener;->clickPersonalization(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOO0:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/ad/interface/AdEventListener;->clickHomePage(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 p1, 0x64

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOOO:Z

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOOO:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOOO:Z

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOOo:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/cloud/tmc/ad/interface/AdEventListener;->fillingResult(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

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
    .locals 0

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

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 7

    iget v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOo0:F

    iget v2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOo:F

    iget v3, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOoo:F

    iget v4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOo00:F

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    move v6, p2

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    move v5, p2

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    new-instance p2, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/ad/bean/DownUpPointBean;-><init>(FFFFII)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-interface {v0, v1, p2, p1}, Lcom/cloud/tmc/ad/interface/AdEventListener;->click(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/DownUpPointBean;Ljava/lang/String;)V

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
