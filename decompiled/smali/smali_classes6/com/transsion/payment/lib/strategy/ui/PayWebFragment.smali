.class public final Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lrn/b;",
        ">;",
        "Lnh/n;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 V2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00013B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0005J\u001f\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0005J\u0017\u0010\'\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000fH\u0003\u00a2\u0006\u0004\u0008\'\u0010(J\u0019\u0010+\u001a\u00020\u00082\u0008\u0010*\u001a\u0004\u0018\u00010)H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u001f\u0010/\u001a\u00020 2\u0006\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u0019\u00101\u001a\u00020\u00082\u0008\u0010-\u001a\u0004\u0018\u00010#H\u0002\u00a2\u0006\u0004\u00081\u00102R\u0018\u00105\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0018\u0010<\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u00104R\u0016\u0010A\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010C\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010@R4\u0010I\u001a\"\u0012\u0004\u0012\u00020#\u0012\u0006\u0012\u0004\u0018\u00010E0Dj\u0010\u0012\u0004\u0012\u00020#\u0012\u0006\u0012\u0004\u0018\u00010E`F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0016\u0010K\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010@R\u0016\u0010M\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010@R\u0016\u0010Q\u001a\u00020N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010U\u001a\u00020R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010T\u00a8\u0006W"
    }
    d2 = {
        "Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lrn/b;",
        "Lnh/n;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "r0",
        "(Landroid/view/LayoutInflater;)Lrn/b;",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "onDestroyView",
        "onDestroy",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "onDisconnected",
        "Landroid/net/Network;",
        "network",
        "Landroid/net/NetworkCapabilities;",
        "networkCapabilities",
        "onConnected",
        "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V",
        "",
        "w0",
        "()Z",
        "",
        "getClassTag",
        "()Ljava/lang/String;",
        "initViewModel",
        "v0",
        "(Landroid/view/View;)V",
        "Landroid/webkit/WebView;",
        "webView",
        "q0",
        "(Landroid/webkit/WebView;)V",
        "url",
        "from",
        "p0",
        "(Ljava/lang/String;Ljava/lang/String;)Z",
        "x0",
        "(Ljava/lang/String;)V",
        "a",
        "Ljava/lang/String;",
        "strTitle",
        "Landroid/view/ViewGroup;",
        "b",
        "Landroid/view/ViewGroup;",
        "webLoading",
        "c",
        "Landroid/webkit/WebView;",
        "mCustomWebView",
        "d",
        "mUrl",
        "e",
        "Z",
        "isError",
        "f",
        "isPayCancel",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "g",
        "Ljava/util/HashMap;",
        "timer",
        "h",
        "isTriggerFinishPage",
        "i",
        "isRenderProcessGone",
        "Landroid/webkit/WebChromeClient;",
        "j",
        "Landroid/webkit/WebChromeClient;",
        "mWebChromeClient",
        "Landroid/webkit/WebViewClient;",
        "k",
        "Landroid/webkit/WebViewClient;",
        "mWebViewClient",
        "l",
        "LibPayment_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final l:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$a;

.field private static final m:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private final g:Ljava/util/HashMap;

.field private h:Z

.field private i:Z

.field private j:Landroid/webkit/WebChromeClient;

.field private k:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->l:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$a;

    const-string v0, "https://api.paynicorn.com/sp-gateway/redirect/mock"

    sput-object v0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->g:Ljava/util/HashMap;

    new-instance v0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$b;-><init>(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)V

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->j:Landroid/webkit/WebChromeClient;

    new-instance v0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;

    invoke-direct {v0, p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;-><init>(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)V

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->k:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->u0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->t0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->s0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic d0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->p0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic e0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->getClassTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->c:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static final synthetic g0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->a:Ljava/lang/String;

    return-object p0
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic h0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->g:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic i0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private final initViewModel()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->d:Lcom/transsion/payment/lib/strategy/ui/PayWebActivity$a;

    invoke-virtual {v1}, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->d:Ljava/lang/String;

    const-string v1, "\\/"

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/u;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lrn/b;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lrn/b;->i:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public static final synthetic j0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->e:Z

    return p0
.end method

.method public static final synthetic k0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->x0(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic l0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->e:Z

    return-void
.end method

.method public static final synthetic m0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->c:Landroid/webkit/WebView;

    return-void
.end method

.method public static final synthetic n0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->i:Z

    return-void
.end method

.method public static final synthetic o0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->a:Ljava/lang/String;

    return-void
.end method

.method private final p0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->m:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const-string v5, " --> url = "

    const-string v6, " --> mWebViewClient --> checkUrl() --> from = "

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->h:Z

    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->getClassTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    new-instance p1, Luy/e;

    invoke-direct {p1, v2}, Luy/e;-><init>(I)V

    sget-object p2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p2, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p2

    check-cast p2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Luy/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getName(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "https://cashier-serverweb.paynicorn.com/api/cancelPay"

    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->h:Z

    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->getClassTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->f:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method private final q0(Landroid/webkit/WebView;)V
    .locals 3

    if-eqz p1, :cond_3

    sget-object v0, Lgm/n;->a:Lgm/n;

    invoke-virtual {v0, p1}, Lgm/n;->f(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->getClassTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> destroy WebView failed: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private static final s0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->i:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->c:Landroid/webkit/WebView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method

.method private static final t0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private static final u0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private final v0(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lrn/b;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lrn/b;->b:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    sget-object v6, Lnh/m;->a:Lnh/m;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Lnh/m;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    const/16 p1, 0x64

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget-object p1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    const-string p1, "utf-8"

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/16 p1, 0x10

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    const/16 p1, 0xc

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->j:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->k:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->c:Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->d:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->g:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "url"

    iget-object v2, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "loading"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrn/b;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lrn/b;->f:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->getClassTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> initWeb() --> WebView\u521d\u59cb\u5316\u5b8c\u6210 --> mCustomWebView?.loadUrl(it) \u5f00\u59cb\u52a0\u8f7d\u6536\u94f6\u53f0 -- url = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private final x0(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->g:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->g:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    sub-long v4, v2, v4

    sget-object p1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->getClassTag()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->d:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> pageFinish() --> mUrl = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -- used time = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    const-string v0, "load_h5_time"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->g:Ljava/util/HashMap;

    const-string v6, "on_create"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->g:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    sub-long/2addr v2, v7

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v7, "load_time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->g:Ljava/util/HashMap;

    invoke-interface {p1, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->d:Lcom/transsion/payment/lib/strategy/ui/PayWebActivity$a;

    invoke-virtual {v0}, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lhj/b;->k(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->r0(Landroid/view/LayoutInflater;)Lrn/b;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lrn/b;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lrn/b;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "toolBar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljg/c;->k(Landroid/view/View;)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->g:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "on_create"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lrn/b;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lrn/b;->e:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p2, :cond_1

    new-instance v0, Lsn/a;

    invoke-direct {v0, p0}, Lsn/a;-><init>(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lrn/b;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lrn/b;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p2, :cond_2

    new-instance v0, Lsn/b;

    invoke-direct {v0, p0}, Lsn/b;-><init>(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lrn/b;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lrn/b;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p2, :cond_3

    new-instance v0, Lsn/c;

    invoke-direct {v0, p0}, Lsn/c;-><init>(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lrn/b;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lrn/b;->j:Lth/h;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lth/h;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->initViewModel()V

    invoke-direct {p0, p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->v0(Landroid/view/View;)V

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1, p0}, Lnh/m;->l(Lnh/n;)V

    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
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

.method public onConnected()V
    .locals 0

    invoke-static {p0}, Lnh/n$a;->a(Lnh/n;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->i:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lhj/b;->i()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->c:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->getClassTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onCreate() --> \u805a\u5408\u652f\u4ed8\u6536\u94f6\u53f0\u5bb9\u5668\u521d\u59cb\u5316"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 7

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0, p0}, Lnh/m;->m(Lnh/n;)V

    iget-boolean v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->f:Z

    const-string v1, "getName(...)"

    const-class v2, Luy/e;

    const-class v3, Lcom/transsnet/flow/event/FlowEventBus;

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Luy/e;

    const/4 v6, -0x1

    invoke-direct {v0, v6}, Luy/e;-><init>(I)V

    sget-object v6, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    invoke-virtual {v6, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v3

    check-cast v3, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_0

    :cond_0
    new-instance v0, Luy/e;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Luy/e;-><init>(I)V

    sget-object v6, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    invoke-virtual {v6, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v3

    check-cast v3, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->c:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->q0(Landroid/webkit/WebView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->c:Landroid/webkit/WebView;

    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public r0(Landroid/view/LayoutInflater;)Lrn/b;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lrn/b;->c(Landroid/view/LayoutInflater;)Lrn/b;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final w0()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
