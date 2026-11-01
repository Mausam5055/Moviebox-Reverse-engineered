.class public final Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/wifi/connect/b;


# static fields
.field public static final a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

.field private static b:Landroidx/appcompat/app/AppCompatActivity;

.field private static c:Lkotlinx/coroutines/n0;

.field private static d:Llv/a;

.field private static e:Lcom/transsion/transfer/wifi/connect/b;

.field private static f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

.field private static g:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

.field private static h:Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

.field private static i:J

.field private static volatile j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    invoke-direct {v0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;-><init>()V

    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic f(Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h()Lcom/transsion/transfer/wifi/connect/b;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->e:Lcom/transsion/transfer/wifi/connect/b;

    return-object v0
.end method

.method public static final synthetic i()J
    .locals 2

    sget-wide v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->i:J

    return-wide v0
.end method

.method public static final synthetic j(Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->q()V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->t()V

    return-void
.end method

.method public static final synthetic l(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->j:Z

    return-void
.end method

.method private final m()V
    .locals 8

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> connect() --> SDK_INT\u6216targetSdkVersion\u7248\u672c < (Q = 29) Android 10"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->h:Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

    invoke-direct {v0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;-><init>()V

    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->h:Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

    :cond_0
    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->h:Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

    if-eqz v1, :cond_1

    sget-object v3, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->d:Llv/a;

    sget-object v4, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->b(Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;Landroidx/appcompat/app/AppCompatActivity;Llv/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final o()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final q()V
    .locals 6

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> innerConnect() --> \u5efa\u7acb Wi-Fi \u8fde\u63a5 --> start ...."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->d:Llv/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Llv/a;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "DIRECT-"

    invoke-static {v1, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    sget-object v1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->d:Llv/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Llv/a;->p()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->r()V

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->w()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->m()V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> innerConnect() --> wifiInfoModel.wifiSsid is empty --> return"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->b(I)V

    :goto_2
    return-void
.end method

.method private final r()V
    .locals 8

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> connect() --> \u652f\u6301(Wi-Fi P2P) \u4e14SDK_INT\u6216targetSdkVersion\u7248\u672c >= (Q = 29) -- Android 10"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    invoke-direct {v0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;-><init>()V

    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    :cond_0
    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    if-eqz v1, :cond_1

    sget-object v3, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->d:Llv/a;

    sget-object v4, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->b(Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;Landroidx/appcompat/app/AppCompatActivity;Llv/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final t()V
    .locals 2

    sget-object v0, Lcom/transsion/transfer/wifi/util/f;->a:Lcom/transsion/transfer/wifi/util/f;

    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/f;->c()V

    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->x()V

    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->k()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->h:Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->k()V

    :cond_1
    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->h:Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->g:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->k()V

    :cond_2
    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->g:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    return-void
.end method

.method private final u(I)V
    .locals 10

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> resolveIP(netId: Int) --> \u6210\u529f\u5efa\u7acb\u8fde\u63a5 --> \u5f00\u59cb\u89e3\u6790IP\u5730\u5740 -- netId = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v4, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    if-eqz v4, :cond_0

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v5

    new-instance v7, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$resolveIP$2;

    invoke-direct {v7, v3}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$resolveIP$2;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method private final v(Ljava/net/InetAddress;)V
    .locals 9

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> resolveIP(address: InetAddress?) --> \u6210\u529f\u5efa\u7acb\u8fde\u63a5 --> \u5f00\u59cb\u89e3\u6790IP\u5730\u5740"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->i:J

    sub-long/2addr v5, v7

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v4

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> resolveIP(address: InetAddress?) --> \u975e\u7cfb\u7edf\u7ea7\u5e94\u7528P2P\u8fde\u63a5\u6210\u529f\u8017\u65f6 = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " -- ip = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    const-string p1, ""

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    if-eqz v0, :cond_5

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    new-instance v3, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$resolveIP$1;

    invoke-direct {v3, v4}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$resolveIP$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_5
    :goto_2
    return-void
.end method

.method private final w()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> connect() --> \u4e0d\u652f\u6301(Wi-Fi P2P) \u4e14SDK_INT\u6216targetSdkVersion\u7248\u672c >= (Q = 29) -- Android 10"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->g:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    invoke-direct {v0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;-><init>()V

    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->g:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    :cond_0
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->g:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->d:Llv/a;

    sget-object v2, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    sget-object v3, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->b:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->a(Landroidx/appcompat/app/AppCompatActivity;Llv/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Network;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/b$a;->b(Lcom/transsion/transfer/wifi/connect/b;Landroid/net/Network;)V

    return-void
.end method

.method public b(I)V
    .locals 11

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onFail() --> code = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7dc

    if-eq p1, v0, :cond_0

    sget-object v0, Lkv/c;->a:Lkv/c;

    invoke-virtual {v0, p1}, Lkv/c;->e(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lkv/c;->a:Lkv/c;

    invoke-virtual {v0}, Lkv/c;->d()V

    :goto_0
    sget-object v5, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    if-eqz v5, :cond_1

    new-instance v8, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$onFail$1;

    invoke-direct {v8, p1, v4}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$onFail$1;-><init>(ILkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method

.method public c(Ljava/net/InetAddress;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->v(Ljava/net/InetAddress;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->u(I)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    const-string v0, "ip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/b$a;->c(Lcom/transsion/transfer/wifi/connect/b;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->i:J

    sub-long/2addr v0, v2

    sget-object v2, Lkv/c;->a:Lkv/c;

    invoke-virtual {v2, v0, v1}, Lkv/c;->f(J)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->j:Z

    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->e:Lcom/transsion/transfer/wifi/connect/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/transfer/wifi/connect/b;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final n(Landroidx/appcompat/app/AppCompatActivity;Llv/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;)V
    .locals 10

    sget-boolean v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/transfer/R$string;->transfer_wifi_connect_error_tip:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/blankj/utilcode/util/ToastUtils;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " --> connectWifi() --> \u5df2\u7ecf\u6709\u4e00\u4e2a\u4efb\u52a1\u5728\u8fde\u63a5\u4e86\uff0c\u8bf7\u7a0d\u540e"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-static {p1, p3, p2, p4, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->i:J

    sput-object p3, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    sput-object p2, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->d:Llv/a;

    sput-object p1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->b:Landroidx/appcompat/app/AppCompatActivity;

    sput-object p4, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->e:Lcom/transsion/transfer/wifi/connect/b;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->onStart()V

    sget-object v4, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    if-eqz v4, :cond_1

    new-instance v7, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$connect$1;

    invoke-direct {v7, v1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$connect$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    sget-object v0, Lkv/c;->a:Lkv/c;

    invoke-virtual {v0}, Lkv/c;->g()V

    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->e:Lcom/transsion/transfer/wifi/connect/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/transfer/wifi/connect/b;->onStart()V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    sget-object v4, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    invoke-direct {v4}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> release() --> \u63a5\u6536\u7aef\u5f00\u59cb\u91ca\u653e\u8d44\u6e90"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    sput-object v2, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->e:Lcom/transsion/transfer/wifi/connect/b;

    sput-object v2, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    sput-boolean v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->j:Z

    const-wide/16 v5, 0x0

    sput-wide v5, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->i:J

    invoke-direct {v4}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->t()V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    sget-object v5, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    invoke-direct {v5}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> release() --> it = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    return-void
.end method
