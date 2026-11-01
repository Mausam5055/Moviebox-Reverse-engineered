.class public final Lcom/transsion/ad/test/ad_example/TestAdH5Activity;
.super Lcom/transsion/ad/test/TestBaseActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CustomSplashScreen"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000I\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u001a\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u000f\u0010\r\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u0015\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR$\u0010%\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/ad/test/ad_example/TestAdH5Activity;",
        "Lcom/transsion/ad/test/TestBaseActivity;",
        "<init>",
        "()V",
        "",
        "getLogTag",
        "()Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "a0",
        "onDestroy",
        "Landroid/webkit/WebView;",
        "webview",
        "b0",
        "(Landroid/webkit/WebView;)V",
        "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;",
        "a",
        "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;",
        "interstitialManager",
        "Lji/l;",
        "b",
        "Lji/l;",
        "binding",
        "com/transsion/ad/test/ad_example/TestAdH5Activity$a",
        "c",
        "Lcom/transsion/ad/test/ad_example/TestAdH5Activity$a;",
        "splashListener",
        "Landroid/os/Handler;",
        "d",
        "Landroid/os/Handler;",
        "getStatusHandler",
        "()Landroid/os/Handler;",
        "setStatusHandler",
        "(Landroid/os/Handler;)V",
        "statusHandler",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

.field private b:Lji/l;

.field private final c:Lcom/transsion/ad/test/ad_example/TestAdH5Activity$a;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/test/TestBaseActivity;-><init>()V

    new-instance v0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity$a;

    invoke-direct {v0, p0}, Lcom/transsion/ad/test/ad_example/TestAdH5Activity$a;-><init>(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;)V

    iput-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->c:Lcom/transsion/ad/test/ad_example/TestAdH5Activity$a;

    return-void
.end method

.method public static synthetic R(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->d0(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic T(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->e0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->g0(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->c0(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->f0(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic X(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;)Lji/l;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    return-object p0
.end method

.method public static final synthetic Y(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->a:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-object p0
.end method

.method public static final synthetic Z(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;)Lcom/transsion/ad/test/ad_example/TestAdH5Activity$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->c:Lcom/transsion/ad/test/ad_example/TestAdH5Activity$a;

    return-object p0
.end method

.method private static final c0(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/view/View;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/ad/test/ad_example/TestAdH5Activity$onCreate$1$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdH5Activity$onCreate$1$1;-><init>(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final d0(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/os/Message;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->a0()V

    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->d:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final e0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final f0(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lji/l;->i:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const-string v2, "webview"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b0(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p1, p1, Lji/l;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "https://www.baidu.com"

    :cond_2
    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_0
    iget-object p0, v0, Lji/l;->i:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static final g0(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lji/l;->f:Landroid/webkit/WebView;

    const-string v2, "sysWebview"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b0(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p1, p1, Lji/l;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "https://www.baidu.com"

    :cond_2
    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_0
    iget-object p0, v0, Lji/l;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a0()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/ad/test/ad_example/TestAdH5Activity$checkStatus$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/ad/test/ad_example/TestAdH5Activity$checkStatus$1;-><init>(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final b0(Landroid/webkit/WebView;)V
    .locals 3

    const-string v0, "webview"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_s"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lji/l;->c(Landroid/view/LayoutInflater;)Lji/l;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    const-string v0, "binding"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Lji/l;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    new-instance p1, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    invoke-direct {p1}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->a:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    iget-object p1, p1, Lji/l;->d:Landroid/widget/Button;

    new-instance v2, Lcom/transsion/ad/test/ad_example/n;

    invoke-direct {v2, p0}, Lcom/transsion/ad/test/ad_example/n;-><init>(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/os/Handler;

    new-instance v2, Lcom/transsion/ad/test/ad_example/o;

    invoke-direct {v2, p0}, Lcom/transsion/ad/test/ad_example/o;-><init>(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;)V

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->d:Landroid/os/Handler;

    sget-object p1, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->w:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;

    const-string v2, "MBInterstitialTestId"

    const/4 v3, 0x2

    invoke-static {p1, v2, v1, v3, v1}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;->b(Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->d:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    iget-object p1, p1, Lji/l;->c:Landroid/widget/Button;

    new-instance v2, Lcom/transsion/ad/test/ad_example/p;

    invoke-direct {v2}, Lcom/transsion/ad/test/ad_example/p;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    iget-object p1, p1, Lji/l;->b:Landroid/widget/Button;

    new-instance v2, Lcom/transsion/ad/test/ad_example/q;

    invoke-direct {v2, p0}, Lcom/transsion/ad/test/ad_example/q;-><init>(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, p1

    :goto_0
    iget-object p1, v1, Lji/l;->e:Landroid/widget/Button;

    new-instance v0, Lcom/transsion/ad/test/ad_example/r;

    invoke-direct {v0, p0}, Lcom/transsion/ad/test/ad_example/r;-><init>(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lji/l;->i:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->destroy()V

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->b:Lji/l;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lji/l;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
