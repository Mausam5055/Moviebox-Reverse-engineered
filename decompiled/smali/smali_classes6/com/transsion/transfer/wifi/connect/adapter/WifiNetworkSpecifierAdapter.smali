.class public final Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;
.super Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;


# instance fields
.field private final e:Lkotlin/Lazy;

.field private f:Landroid/net/ConnectivityManager$NetworkCallback;

.field private g:Z

.field private final h:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;-><init>()V

    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/e;

    invoke-direct {v0}, Lcom/transsion/transfer/wifi/connect/adapter/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$a;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$a;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)V

    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)V

    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->h:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;

    return-void
.end method

.method public static synthetic l()Landroid/net/ConnectivityManager;
    .locals 1

    invoke-static {}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->r()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic m(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)Landroid/net/ConnectivityManager;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->q()Landroid/net/ConnectivityManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->h:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->g:Z

    return p0
.end method

.method public static final synthetic p(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->g:Z

    return-void
.end method

.method private final q()Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static final r()Landroid/net/ConnectivityManager;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->g()Lkotlinx/coroutines/n0;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v7, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$doClose$1$1;

    invoke-direct {v7, p0, v2}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$doClose$1$1;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->q()Landroid/net/ConnectivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->q()Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> close() --> end"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    sget-object v4, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> close() --> \u53d1\u751f\u5f02\u5e38 --> it = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public d()V
    .locals 11

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> connect() --> start connect with WifiNetworkSpecifier --> start ...."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->g()Lkotlinx/coroutines/n0;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v8, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$doConnect$1;

    invoke-direct {v8, p0, v4}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$doConnect$1;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/integration/bridge/y;->a()Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Llv/a;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Llv/a;->p()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v2

    :cond_2
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/bridge/r;->a(Landroid/net/wifi/WifiNetworkSpecifier$Builder;Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object v0

    const-string v1, "setSsid(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Llv/a;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Llv/a;->o()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Llv/a;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Llv/a;->o()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v1

    :cond_5
    :goto_0
    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/bridge/u;->a(Landroid/net/wifi/WifiNetworkSpecifier$Builder;Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    :cond_6
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/cloud/tmc/integration/bridge/v;->a(Landroid/net/wifi/WifiNetworkSpecifier$Builder;)Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/bridge/w;->a(Ljava/lang/Object;)Landroid/net/NetworkSpecifier;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/integration/bridge/x;->a(Landroid/net/NetworkRequest$Builder;Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->q()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
