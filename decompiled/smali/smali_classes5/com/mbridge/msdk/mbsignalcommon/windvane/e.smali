.class public Lcom/mbridge/msdk/mbsignalcommon/windvane/e;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Object;

.field private c:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->c:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-eqz p1, :cond_0

    :try_start_0
    const-class v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;

    invoke-virtual {p1, p3, p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->initialize(Landroid/content/Context;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    iget-object p3, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->b:Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->initialize(Ljava/lang/Object;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->d:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->c:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a:Landroid/content/Context;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Ljava/lang/String;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    :try_start_0
    const-class v0, Lcom/mbridge/msdk/interstitial/signalcommon/interstitial;

    sget v1, Lcom/mbridge/msdk/interstitial/signalcommon/interstitial;->i:I

    sget-object v1, Lcom/mbridge/msdk/mbsignalcommon/base/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-class v0, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;

    sget v1, Lcom/mbridge/msdk/video/signal/communication/RewardSignal;->i:I

    sget-object v1, Lcom/mbridge/msdk/mbsignalcommon/base/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-class v0, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;

    sget v1, Lcom/mbridge/msdk/video/signal/communication/VideoCommunication;->j:I

    sget-object v1, Lcom/mbridge/msdk/mbsignalcommon/base/e;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    const-class v0, Lcom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;

    sget v1, Lcom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->h:I

    sget-object v1, Lcom/mbridge/msdk/mbsignalcommon/base/e;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    const-class v0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;

    sget v1, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->i:I

    sget-object v1, Lcom/mbridge/msdk/mbsignalcommon/base/e;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    const-class v0, Lcom/mbridge/msdk/splash/signal/SplashSignal;

    sget v1, Lcom/mbridge/msdk/splash/signal/SplashSignal;->i:I

    sget-object v1, Lcom/mbridge/msdk/mbsignalcommon/base/e;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    const-class v0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/WebGLCheckSignal;

    sget v1, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/WebGLCheckSignal;->g:I

    sget-object v1, Lcom/mbridge/msdk/mbsignalcommon/base/e;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mbridge.msdk.mbsignalcommon.confirmation.bridge.ConfirmationJsBridgePlugin"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->d:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
