.class public final Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;,
        Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;,
        Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;,
        Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$DestroyRunnable;,
        Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0018\u0000 @2\u00020\u0001:\u0005ABCDEB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0015\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0016\u0010\u0008J\u0015\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010%\u001a\u00020\u0006\u00a2\u0006\u0004\u0008%\u0010\u0008J\r\u0010&\u001a\u00020\u0006\u00a2\u0006\u0004\u0008&\u0010\u0008J\u0015\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008+\u0010\u0008R\u0018\u0010-\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R*\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0018\n\u0004\u0008\u000f\u0010/\u0012\u0004\u00083\u0010\u0008\u001a\u0004\u00080\u00101\"\u0004\u00082\u0010\u0011R*\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0018\n\u0004\u0008\u000b\u00104\u0012\u0004\u00088\u0010\u0008\u001a\u0004\u00085\u00106\"\u0004\u00087\u0010\rR*\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0018\n\u0004\u0008\u0013\u00109\u0012\u0004\u0008=\u0010\u0008\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010\u0015R\u0013\u0010\"\u001a\u0004\u0018\u00010!8F\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?\u00a8\u0006F"
    }
    d2 = {
        "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;",
        "Landroid/widget/RelativeLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "bindListeners",
        "()V",
        "prepare",
        "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;",
        "closeDelegate",
        "setCloseDelegate",
        "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;)V",
        "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;",
        "onViewTouchListener",
        "setOnViewTouchListener",
        "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;)V",
        "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;",
        "orientationDelegate",
        "setOrientationDelegate",
        "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;)V",
        "close",
        "",
        "requestedOrientation",
        "setOrientation",
        "(I)V",
        "Landroid/webkit/WebViewClient;",
        "vngWebViewClient",
        "Lcom/vungle/ads/internal/model/AdPayload$k;",
        "webViewSettings",
        "linkWebView",
        "(Landroid/webkit/WebViewClient;Lcom/vungle/ads/internal/model/AdPayload$k;)V",
        "",
        "url",
        "showWebsite",
        "(Ljava/lang/String;)V",
        "pauseWeb",
        "resumeWeb",
        "",
        "webViewDestroyDelay",
        "destroyWebView",
        "(J)V",
        "onAttachedToWindow",
        "Landroid/webkit/WebView;",
        "webView",
        "Landroid/webkit/WebView;",
        "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;",
        "getOnViewTouchListener$vungle_ads_release",
        "()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;",
        "setOnViewTouchListener$vungle_ads_release",
        "getOnViewTouchListener$vungle_ads_release$annotations",
        "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;",
        "getCloseDelegate$vungle_ads_release",
        "()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;",
        "setCloseDelegate$vungle_ads_release",
        "getCloseDelegate$vungle_ads_release$annotations",
        "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;",
        "getOrientationDelegate$vungle_ads_release",
        "()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;",
        "setOrientationDelegate$vungle_ads_release",
        "getOrientationDelegate$vungle_ads_release$annotations",
        "getUrl",
        "()Ljava/lang/String;",
        "Companion",
        "a",
        "b",
        "DestroyRunnable",
        "c",
        "d",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$b;

.field private static final TAG:Ljava/lang/String; = "MRAIDAdWidget"


# instance fields
.field private closeDelegate:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;

.field private onViewTouchListener:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;

.field private orientationDelegate:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->Companion:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/vungle/ads/internal/util/w;->INSTANCE:Lcom/vungle/ads/internal/util/w;

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/util/w;->getWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "VungleWebView"

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->bindListeners()V

    invoke-direct {p0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->prepare()V

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->bindListeners$lambda-0(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getWebView$p(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static final synthetic access$setWebView$p(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method private final bindListeners()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vungle/ads/internal/ui/view/a;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/ui/view/a;-><init>(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private static final bindListeners$lambda-0(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->onViewTouchListener:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic getCloseDelegate$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOnViewTouchListener$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOrientationDelegate$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method private final prepare()V
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->closeDelegate:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;->close()V

    :cond_0
    return-void
.end method

.method public final destroyWebView(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance p1, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$DestroyRunnable;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$DestroyRunnable;-><init>(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$DestroyRunnable;->run()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vungle/ads/internal/util/h;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/h;-><init>()V

    new-instance v1, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$DestroyRunnable;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$DestroyRunnable;-><init>(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/vungle/ads/internal/util/h;->schedule(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public final getCloseDelegate$vungle_ads_release()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->closeDelegate:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;

    return-object v0
.end method

.method public final getOnViewTouchListener$vungle_ads_release()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->onViewTouchListener:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;

    return-object v0
.end method

.method public final getOrientationDelegate$vungle_ads_release()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->orientationDelegate:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final linkWebView(Landroid/webkit/WebViewClient;Lcom/vungle/ads/internal/model/AdPayload$k;)V
    .locals 2

    const-string v0, "vngWebViewClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vungle/ads/internal/platform/e;->INSTANCE:Lcom/vungle/ads/internal/platform/e;

    invoke-virtual {v1, v0, p2}, Lcom/vungle/ads/internal/platform/e;->applyWebSettings(Landroid/webkit/WebView;Lcom/vungle/ads/internal/model/AdPayload$k;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    return-void
.end method

.method public final pauseWeb()V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public final resumeWeb()V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public final setCloseDelegate(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;)V
    .locals 1

    const-string v0, "closeDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->closeDelegate:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;

    return-void
.end method

.method public final setCloseDelegate$vungle_ads_release(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->closeDelegate:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;

    return-void
.end method

.method public final setOnViewTouchListener(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->onViewTouchListener:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;

    return-void
.end method

.method public final setOnViewTouchListener$vungle_ads_release(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->onViewTouchListener:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;

    return-void
.end method

.method public final setOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->orientationDelegate:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public final setOrientationDelegate(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->orientationDelegate:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;

    return-void
.end method

.method public final setOrientationDelegate$vungle_ads_release(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->orientationDelegate:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;

    return-void
.end method

.method public final showWebsite(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MRAIDAdWidget"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
