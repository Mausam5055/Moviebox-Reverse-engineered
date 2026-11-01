.class public final Lcom/transsion/web/fragment/WebFragmentV2;
.super Lcom/transsion/lib_web/BaseLibWebFragment;

# interfaces
.implements Ldz/a;
.implements Lcom/transsion/baselib/report/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/web/fragment/WebFragmentV2$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ca\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 ~2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u007fB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0005J\u000f\u0010\u0010\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u000b2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ!\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00112\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008%\u0010\u0005J\u000f\u0010&\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008&\u0010\u0005J\u000f\u0010\'\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0005J\u000f\u0010(\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008(\u0010\u0005J\u0017\u0010+\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020)H\u0016\u00a2\u0006\u0004\u0008+\u0010,JC\u00104\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020-2\u0006\u0010/\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u00100\u001a\u0004\u0018\u00010\u00142\u0006\u00102\u001a\u0002012\u0006\u00103\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u00084\u00105J\u001f\u00106\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u00086\u00107J\u001f\u0010<\u001a\u00020\u000b2\u0006\u00109\u001a\u0002082\u0006\u0010;\u001a\u00020:H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0019\u0010@\u001a\u00020\u000b2\u0008\u0010?\u001a\u0004\u0018\u00010>H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ)\u0010D\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010C\u001a\u0004\u0018\u00010BH\u0016\u00a2\u0006\u0004\u0008D\u0010EJ)\u0010J\u001a\u00020\u000b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\t2\u0006\u0010G\u001a\u00020F2\u0006\u0010I\u001a\u00020HH\u0016\u00a2\u0006\u0004\u0008J\u0010KJ5\u0010N\u001a\u00020\u000b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\t2\u0006\u0010G\u001a\u00020L2\u0008\u0010I\u001a\u0004\u0018\u00010\u00142\u0008\u0010M\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u0015\u0010R\u001a\u0008\u0012\u0004\u0012\u00020Q0PH\u0016\u00a2\u0006\u0004\u0008R\u0010SJ+\u0010V\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010T\u001a\u00020L2\u0008\u0010U\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008V\u0010WJ\r\u0010X\u001a\u00020\u0006\u00a2\u0006\u0004\u0008X\u0010\u0008R\u0018\u0010\\\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0019\u0010b\u001a\u0004\u0018\u00010]8\u0006\u00a2\u0006\u000c\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010aR\u0016\u0010e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010dR\u0016\u0010g\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010dR\u001d\u0010m\u001a\u0004\u0018\u00010h8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008i\u0010j\u001a\u0004\u0008k\u0010lR\u001b\u0010r\u001a\u00020n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008o\u0010j\u001a\u0004\u0008p\u0010qR\u0018\u0010v\u001a\u0004\u0018\u00010s8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u001a\u0010z\u001a\u00020\"8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008w\u0010x\u001a\u0004\u0008y\u0010$R\u001b\u0010}\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008{\u0010j\u001a\u0004\u0008|\u0010\u0013\u00a8\u0006\u0080\u0001"
    }
    d2 = {
        "Lcom/transsion/web/fragment/WebFragmentV2;",
        "Lcom/transsion/lib_web/BaseLibWebFragment;",
        "Ldz/a;",
        "Lcom/transsion/baselib/report/g;",
        "<init>",
        "()V",
        "",
        "s1",
        "()Z",
        "Landroid/webkit/WebView;",
        "webView",
        "",
        "k1",
        "(Landroid/webkit/WebView;)V",
        "j1",
        "x1",
        "p1",
        "Landroid/view/View;",
        "l1",
        "()Landroid/view/View;",
        "",
        "url",
        "w1",
        "(Ljava/lang/String;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "onResume",
        "onPause",
        "onDestroyView",
        "onDestroy",
        "Lcom/github/lzyzsd/jsbridge/BridgeWebView;",
        "bridgeWebView",
        "d0",
        "(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "requireActivity",
        "tag",
        "title",
        "",
        "contentLength",
        "originalUrl",
        "c0",
        "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V",
        "K0",
        "(Landroid/webkit/WebView;Ljava/lang/String;)V",
        "Landroid/net/Network;",
        "network",
        "Landroid/net/NetworkCapabilities;",
        "networkCapabilities",
        "onConnected",
        "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "detail",
        "P0",
        "(Landroid/webkit/RenderProcessGoneDetail;)V",
        "Landroid/graphics/Bitmap;",
        "favicon",
        "L0",
        "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V",
        "Landroid/webkit/WebResourceRequest;",
        "request",
        "Landroid/webkit/WebResourceError;",
        "error",
        "N0",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V",
        "",
        "failingUrl",
        "M0",
        "(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V",
        "",
        "Lcom/transsion/lib_web/zip/loader/c;",
        "i0",
        "()Ljava/util/List;",
        "errorCode",
        "errorMsg",
        "Y0",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "u1",
        "Lcom/transsion/web/share/k;",
        "r",
        "Lcom/transsion/web/share/k;",
        "mWebShareUtil",
        "Lcom/transsnet/loginapi/ILoginApi;",
        "s",
        "Lcom/transsnet/loginapi/ILoginApi;",
        "getMLoginApi",
        "()Lcom/transsnet/loginapi/ILoginApi;",
        "mLoginApi",
        "t",
        "Z",
        "isError",
        "u",
        "isRenderProcessGone",
        "Lcom/transsion/downloadapi/IDownloadApiProvider;",
        "v",
        "Lkotlin/Lazy;",
        "getIDownloadApiProvider",
        "()Lcom/transsion/downloadapi/IDownloadApiProvider;",
        "iDownloadApiProvider",
        "Lwx/a;",
        "w",
        "o1",
        "()Lwx/a;",
        "iWebApi",
        "Lcom/hisavana/mediation/bridge/MediationJsBridge;",
        "x",
        "Lcom/hisavana/mediation/bridge/MediationJsBridge;",
        "mediationJsBridge",
        "y",
        "Lhj/b;",
        "getLogViewConfig",
        "logViewConfig",
        "z",
        "getNoNetworkView",
        "noNetworkView",
        "A",
        "a",
        "Web_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final A:Lcom/transsion/web/fragment/WebFragmentV2$a;

.field private static final B:Ljava/lang/String;


# instance fields
.field private r:Lcom/transsion/web/share/k;

.field private final s:Lcom/transsnet/loginapi/ILoginApi;

.field private t:Z

.field private u:Z

.field private final v:Lkotlin/Lazy;

.field private final w:Lkotlin/Lazy;

.field private x:Lcom/hisavana/mediation/bridge/MediationJsBridge;

.field private final y:Lhj/b;

.field private final z:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/web/fragment/WebFragmentV2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/web/fragment/WebFragmentV2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/web/fragment/WebFragmentV2;->A:Lcom/transsion/web/fragment/WebFragmentV2$a;

    const-class v0, Lcom/transsion/web/fragment/WebFragmentV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/web/fragment/WebFragmentV2;->B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    iput-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->s:Lcom/transsnet/loginapi/ILoginApi;

    new-instance v0, Lcom/transsion/web/fragment/a;

    invoke-direct {v0}, Lcom/transsion/web/fragment/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->v:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/web/fragment/b;

    invoke-direct {v0}, Lcom/transsion/web/fragment/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->w:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->newLogViewConfig()Lhj/b;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->y:Lhj/b;

    new-instance v0, Lcom/transsion/web/fragment/c;

    invoke-direct {v0, p0}, Lcom/transsion/web/fragment/c;-><init>(Lcom/transsion/web/fragment/WebFragmentV2;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->z:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a1(Lcom/transsion/web/fragment/WebFragmentV2;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->m1(Lcom/transsion/web/fragment/WebFragmentV2;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b1(Lcom/transsion/web/fragment/WebFragmentV2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/web/fragment/WebFragmentV2;->v1(Lcom/transsion/web/fragment/WebFragmentV2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c1()Lwx/a;
    .locals 1

    invoke-static {}, Lcom/transsion/web/fragment/WebFragmentV2;->r1()Lwx/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d1(Lcom/transsion/web/fragment/WebFragmentV2;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->t1(Lcom/transsion/web/fragment/WebFragmentV2;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e1()Lcom/transsion/downloadapi/IDownloadApiProvider;
    .locals 1

    invoke-static {}, Lcom/transsion/web/fragment/WebFragmentV2;->q1()Lcom/transsion/downloadapi/IDownloadApiProvider;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f1()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/web/fragment/WebFragmentV2;->n1()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic g1(Lcom/transsion/web/fragment/WebFragmentV2;)Lwx/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->o1()Lwx/a;

    move-result-object p0

    return-object p0
.end method

.method private final getNoNetworkView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->z:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic h1(Lcom/transsion/web/fragment/WebFragmentV2;)Lcom/transsion/web/share/k;
    .locals 0

    iget-object p0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->r:Lcom/transsion/web/share/k;

    return-object p0
.end method

.method public static final synthetic i1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/web/fragment/WebFragmentV2;->B:Ljava/lang/String;

    return-object v0
.end method

.method private final j1()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->s1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object v0

    invoke-virtual {v0}, Lhm/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    return-void
.end method

.method private final k1(Landroid/webkit/WebView;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->s1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_1
    return-void
.end method

.method private final l1()Landroid/view/View;
    .locals 3

    new-instance v0, Lcom/tn/lib/view/NoNetworkBigView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tn/lib/view/NoNetworkBigView;-><init>(Landroid/content/Context;Z)V

    new-instance v1, Lcom/transsion/web/fragment/e;

    invoke-direct {v1, p0}, Lcom/transsion/web/fragment/e;-><init>(Lcom/transsion/web/fragment/WebFragmentV2;)V

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/NoNetworkBigView;->retry(Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/transsion/web/fragment/f;

    invoke-direct {v1}, Lcom/transsion/web/fragment/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/NoNetworkBigView;->goToSetting(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method private static final m1(Lcom/transsion/web/fragment/WebFragmentV2;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->Q0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->u:Z

    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->p1()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final n1()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final o1()Lwx/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->w:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwx/a;

    return-object v0
.end method

.method private final p1()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object v0

    iget-object v0, v0, Lhm/a;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getNoNetworkView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getNoNetworkView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final q1()Lcom/transsion/downloadapi/IDownloadApiProvider;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/downloadapi/IDownloadApiProvider;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/downloadapi/IDownloadApiProvider;

    return-object v0
.end method

.method private static final r1()Lwx/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lwx/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwx/a;

    return-object v0
.end method

.method private final s1()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "embedded_full_width_web"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private static final t1(Lcom/transsion/web/fragment/WebFragmentV2;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->l1()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static final v1(Lcom/transsion/web/fragment/WebFragmentV2;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "resultCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final w1(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Llg/a;->a:Llg/a$a;

    sget-object v1, Lcom/transsion/web/fragment/WebFragmentV2;->B:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " onPageFinished  target:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object p1

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_from"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->isLoadSuccess()Z

    move-result v0

    invoke-virtual {p1, v0}, Lhj/b;->k(Z)V

    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object p1

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->getLoad_time()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "load_time"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object p1

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->getError_code()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object p1

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->getError_msg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_msg"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final x1()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getNoNetworkView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object v0

    iget-object v0, v0, Lhm/a;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object v1

    iget-object v1, v1, Lhm/a;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getNoNetworkView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public K0(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->K0(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/transsion/web/fragment/WebFragmentV2;->w1(Ljava/lang/String;)V

    return-void
.end method

.method public L0(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/lib_web/BaseLibWebFragment;->L0(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object p1

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->t:Z

    iput-boolean p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->u:Z

    return-void
.end method

.method public M0(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/lib_web/BaseLibWebFragment;->M0(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->t:Z

    return-void
.end method

.method public N0(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/lib_web/BaseLibWebFragment;->N0(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->t:Z

    return-void
.end method

.method public P0(Landroid/webkit/RenderProcessGoneDetail;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->t:Z

    iput-boolean v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->u:Z

    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object v1

    invoke-virtual {v1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "renderer_gone"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lgm/j;->a(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v1, Lhj/i;->a:Lhj/i;

    const-string v2, "type"

    const-string v3, "onWebViewRenderProcessGone"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const-string v3, "didCrash"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object p1, v3, v0

    invoke-static {v3}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string v2, "webFragment"

    const-string v3, "app_perf"

    invoke-virtual {v1, v2, v3, p1}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    sget-object v1, Lcom/transsion/web/fragment/WebFragmentV2;->B:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onWebViewRenderProcessGone didCrash= didCrash"

    invoke-virtual {p1, v1, v2, v0}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public Y0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/lib_web/BaseLibWebFragment;->Y0(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object p1

    invoke-virtual {p1}, Lhj/b;->i()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->x1()V

    :cond_0
    return-void
.end method

.method public c0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    const-string p3, "requireActivity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tag"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "originalUrl"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 2

    const-string v0, "bridgeWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/transsion/web/fragment/WebFragmentV2$b;

    invoke-direct {v1, p0, v0}, Lcom/transsion/web/fragment/WebFragmentV2$b;-><init>(Lcom/transsion/web/fragment/WebFragmentV2;Landroid/content/Context;)V

    const-string v0, "AthenaNative"

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/web/api/WebJavascriptNavigator;

    invoke-direct {v0}, Lcom/transsion/web/api/WebJavascriptNavigator;-><init>()V

    const-string v1, "yy_navigator"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1;

    invoke-direct {v1, v0, p0}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Lcom/transsion/web/fragment/WebFragmentV2;)V

    const-string v0, "WebViewJavascriptBridge"

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/hisavana/mediation/bridge/MediationJsBridge;

    invoke-direct {v0, p1}, Lcom/hisavana/mediation/bridge/MediationJsBridge;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->x:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    const-string v1, "HisavanaAdJsBridge"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getLogViewConfig()Lhj/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->y:Lhj/b;

    return-object v0
.end method

.method public i0()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->x:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/web/fragment/WebFragmentV2$c;

    invoke-direct {v1, v0}, Lcom/transsion/web/fragment/WebFragmentV2$c;-><init>(Lcom/hisavana/mediation/bridge/MediationJsBridge;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "snifferh5page"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->u:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object p1

    invoke-virtual {p1}, Lhj/b;->i()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->t:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->Q0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->p1()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/web/fragment/WebFragmentV2;->k1(Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "MainActivity"

    invoke-static {p1, v3, v1, v2, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object p1

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "original_url"

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "tab_code"

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object p1

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2;->s:Lcom/transsnet/loginapi/ILoginApi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsnet/loginapi/ILoginApi;->p(Ldz/a;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 5

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-super {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->onDestroyView()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-object v2, Lcom/transsion/web/fragment/WebFragmentV2;->B:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroyView cleanup failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/transsion/baselib/report/g$a;->b(Lcom/transsion/baselib/report/g;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/baselib/report/g$a;->c(Lcom/transsion/baselib/report/g;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Ldz/a$a;->a(Ldz/a;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method public onLogout()V
    .locals 0

    invoke-static {p0}, Ldz/a$a;->b(Ldz/a;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object v0

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->m0()Lcom/transsion/lib_web/zip/loader/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/lib_web/zip/loader/d;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_from_cache"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->getLogViewConfig()Lhj/b;

    move-result-object v0

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->j0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/domain/LoadInfoStats;->getDom_performance()Lcom/transsion/lib_web/domain/DomPerformance;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/transsion/baselib/report/g$a;->b(Lcom/transsion/baselib/report/g;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->onResume()V

    invoke-static {p0}, Lcom/transsion/baselib/report/g$a;->c(Lcom/transsion/baselib/report/g;)V

    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Ldz/a$a;->c(Ldz/a;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    const-string v1, "MainActivity"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p2, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2;->j1()V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/web/fragment/WebFragmentV2;->k1(Landroid/webkit/WebView;)V

    new-instance p1, Lcom/transsion/web/share/k;

    new-instance p2, Lcom/transsion/web/fragment/d;

    invoke-direct {p2, p0}, Lcom/transsion/web/fragment/d;-><init>(Lcom/transsion/web/fragment/WebFragmentV2;)V

    invoke-direct {p1, p0, p2}, Lcom/transsion/web/share/k;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->r:Lcom/transsion/web/share/k;

    iget-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2;->s:Lcom/transsnet/loginapi/ILoginApi;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/transsnet/loginapi/ILoginApi;->g(Ldz/a;)V

    :cond_2
    return-void
.end method

.method public final u1()Z
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
