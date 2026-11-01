.class public final Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;
.super Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;,
        Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;,
        Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 W2\u00020\u0001:\u0003XYZB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J1\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\'\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0019\u001a\u00020\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010!\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010#\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010%\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010\'\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008\'\u0010&J/\u0010,\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020(H\u0007\u00a2\u0006\u0004\u0008,\u0010-J/\u0010.\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020(H\u0007\u00a2\u0006\u0004\u0008.\u0010-J\u001f\u00101\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020(H\u0007\u00a2\u0006\u0004\u00081\u00102J\u0017\u00103\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u00083\u00104J\u001f\u00106\u001a\u00020\u00042\u0006\u00105\u001a\u00020(2\u0006\u0010/\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u00086\u00107J\u001f\u00109\u001a\u00020\u00042\u0006\u00108\u001a\u00020(2\u0006\u0010/\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u00089\u00107J1\u0010<\u001a\u00020\u00042\u0006\u0010:\u001a\u00020(2\u0006\u0010;\u001a\u00020(2\u0008\u00108\u001a\u0004\u0018\u00010(2\u0006\u0010/\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008<\u0010=J3\u0010A\u001a\u00020\u0012*\u00020\u001b2\u0006\u0010>\u001a\u00020\u00072\u0018\u0008\u0002\u0010@\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0012\u0018\u00010?\u00a2\u0006\u0004\u0008A\u0010BR\u0014\u0010E\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0018\u0010 \u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR$\u0010R\u001a\u0004\u0018\u00010K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u001e\u0010V\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010U\u00a8\u0006["
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;",
        "Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;",
        "<init>",
        "()V",
        "",
        "r",
        "()Z",
        "",
        "apiName",
        "callbackId",
        "success",
        "Lorg/json/JSONObject;",
        "data",
        "o",
        "(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/b;",
        "agentPageAd",
        "methodName",
        "",
        "p",
        "(Lcom/cloud/hisavana/sdk/internal/agentpage/b;Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "adsDTO",
        "s",
        "(Landroid/view/View;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z",
        "Landroid/webkit/WebView;",
        "webview",
        "setWebview",
        "(Landroid/webkit/WebView;)V",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;",
        "agentPageCurrentAd",
        "setCurrentAdInfo",
        "(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;)V",
        "setCurrentAd",
        "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V",
        "getCurrentAdInfo",
        "(Ljava/lang/String;)V",
        "getCurrentAd",
        "",
        "codeSeatType",
        "codeSeatId",
        "adCount",
        "loadAds",
        "(Ljava/lang/String;ILjava/lang/String;I)V",
        "loadNormalAds",
        "adInfo",
        "closeType",
        "closeAd",
        "(Ljava/lang/String;I)V",
        "openLandingPage",
        "(Ljava/lang/String;)Z",
        "trackType",
        "trackAd",
        "(ILjava/lang/String;)Z",
        "errorCode",
        "trackWarning",
        "lifeCycle",
        "platform",
        "trackContainerLifeCycle",
        "(IILjava/lang/Integer;Ljava/lang/String;)Z",
        "jsScript",
        "Lkotlin/Function1;",
        "onComplete",
        "executeJavascript",
        "(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "i",
        "Ljava/lang/String;",
        "TAG",
        "j",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;",
        "agentPageCurrentAdInfo",
        "k",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;",
        "l",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;",
        "getAdActionListener",
        "()Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;",
        "setAdActionListener",
        "(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;)V",
        "adActionListener",
        "Ljava/lang/ref/WeakReference;",
        "m",
        "Ljava/lang/ref/WeakReference;",
        "webviewRefer",
        "Companion",
        "a",
        "b",
        "c",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AGENT_PAGE_INFO:Ljava/lang/String; = "ssplocalhost=true"

.field public static final AGENT_PAGE_START_URL:Ljava/lang/String; = "https://ssplocalhost/"

.field public static final Companion:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;

.field public static final HTML_FROM_LOCAL:Ljava/lang/String; = "htmlfromlocal=true"

.field public static final HTTPS:Ljava/lang/String; = "https://"

.field public static final INTERFACE_NAME:Ljava/lang/String; = "AgentPageJsBridge"

.field public static final MAX_FETCH_NUM:I = 0x64

.field public static final TRACK_LIFE_CYCLE_CLICK:I = 0x2

.field public static final TRACK_LIFE_CYCLE_OPEN:I = 0x0

.field public static final TRACK_LIFE_CYCLE_SHOW:I = 0x1

.field public static final TYPE_TRACK_AD_CLICK:I = 0x2

.field public static final TYPE_TRACK_AD_SHOW:I = 0x1

.field private static n:F

.field private static o:F

.field private static p:F

.field private static q:F


# instance fields
.field private final i:Ljava/lang/String;

.field private j:Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

.field private k:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private l:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

.field private m:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->Companion:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->n:F

    sput v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o:F

    sput v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p:F

    sput v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->q:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;-><init>()V

    const-string v0, "AgentPageJsBridge"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCallbackJson(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getWebviewRefer$p(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$setDownX$cp(F)V
    .locals 0

    sput p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->n:F

    return-void
.end method

.method public static final synthetic access$setDownY$cp(F)V
    .locals 0

    sput p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o:F

    return-void
.end method

.method public static final synthetic access$setUpX$cp(F)V
    .locals 0

    sput p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p:F

    return-void
.end method

.method public static final synthetic access$setUpY$cp(F)V
    .locals 0

    sput p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->q:F

    return-void
.end method

.method public static synthetic executeJavascript$default(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic n(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->q(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final o(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "apiName"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "success"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "callbackId"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p1, "args"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "data"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    iget-object p3, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method private final p(Lcom/cloud/hisavana/sdk/internal/agentpage/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;

    invoke-direct {v0, p0, p3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;-><init>(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->F(Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;)V

    new-instance p2, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;-><init>(Lcom/cloud/hisavana/sdk/internal/agentpage/b;)V

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/G;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    return-void
.end method

.method private static final q(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final r()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->k:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final s(Landroid/view/View;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v9, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    sget v3, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->n:F

    sget v4, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o:F

    sget v5, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p:F

    sget v6, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->q:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    const/4 p1, 0x1

    invoke-static {v1, p2, v9, p1}, Lcom/cloud/hisavana/sdk/N0;->b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ssp"

    invoke-virtual {p2, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final closeAd(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    const-string v0, "close Ad webviewRefer == null"

    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;->a(I)V

    :cond_2
    return-void
.end method

.method public final executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsScript"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$d;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$d;-><init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/cloud/hisavana/sdk/internal/agentpage/a;

    invoke-direct {p2, v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final getAdActionListener()Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    return-object v0
.end method

.method public final getCurrentAd(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "currentAd"

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->k:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "getCurrentAd"

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.HisavanaAdJsBridgeCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final getCurrentAdInfo(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "currentAdInfo"

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->j:Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "getCurrentAdInfo"

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.HisavanaAdJsBridgeCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final loadAds(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeSeatId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-gt v0, p4, :cond_0

    const/16 v1, 0x65

    if-ge p4, v1, :cond_0

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    new-instance v1, Lcom/cloud/hisavana/sdk/q3$b;

    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/q3$b;-><init>()V

    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/q3$b;->i(I)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/q3$b;->e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/cloud/hisavana/sdk/q3$b;->v(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/cloud/hisavana/sdk/q3$b;->a(I)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q3$b;->g()Lcom/cloud/hisavana/sdk/q3;

    move-result-object p2

    new-instance p3, Lcom/cloud/hisavana/sdk/internal/agentpage/b;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/b;-><init>(Lcom/cloud/hisavana/sdk/q3;)V

    const-string p2, "loadAds"

    invoke-direct {p0, p3, p1, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p(Lcom/cloud/hisavana/sdk/internal/agentpage/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public final loadNormalAds(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeSeatId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-gt v0, p4, :cond_0

    const/16 v1, 0x65

    if-ge p4, v1, :cond_0

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    new-instance v0, Lcom/cloud/hisavana/sdk/q3$b;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/q3$b;-><init>()V

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/q3$b;->i(I)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/q3$b;->e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/q3$b;->v(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/cloud/hisavana/sdk/q3$b;->a(I)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q3$b;->g()Lcom/cloud/hisavana/sdk/q3;

    move-result-object p2

    new-instance p3, Lcom/cloud/hisavana/sdk/internal/agentpage/b;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/b;-><init>(Lcom/cloud/hisavana/sdk/q3;)V

    const-string p2, "loadNormalAds"

    invoke-direct {p0, p3, p1, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p(Lcom/cloud/hisavana/sdk/internal/agentpage/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public final openLandingPage(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;->onClick()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->s(Landroid/view/View;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final setAdActionListener(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    return-void
.end method

.method public final setCurrentAd(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    const-string v0, "adsDTO"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->k:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method

.method public final setCurrentAdInfo(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;)V
    .locals 1

    const-string v0, "agentPageCurrentAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->j:Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    return-void
.end method

.method public final setWebview(Landroid/webkit/WebView;)V
    .locals 1

    const-string v0, "webview"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$c;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$c;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final trackAd(ILjava/lang/String;)Z
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p2, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    return v0

    :cond_1
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;->a()V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/cloud/hisavana/sdk/P;->g()Lcom/cloud/hisavana/sdk/P;

    move-result-object p1

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v2

    iget-object v2, v2, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/P;->k(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    sget-object p1, Lcom/cloud/hisavana/sdk/Z;->a:Lcom/cloud/hisavana/sdk/Z;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAdCreativeId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getCodeSeatId(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lcom/cloud/hisavana/sdk/Z;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getShowNum()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowNum(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/c0;->F()Lcom/cloud/hisavana/sdk/c0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/c0;->q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_5
    :goto_0
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/r2;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_1
    return v1

    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final trackContainerLifeCycle(IILjava/lang/Integer;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p4, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p4, :cond_1

    return v0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->z(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    iget-object p3, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final trackWarning(ILjava/lang/String;)Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    const-string v1, "adInfo"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p2, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->C(Ljava/lang/String;Ljava/lang/String;I)V

    return v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-static {v0, v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->C(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
