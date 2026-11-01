.class public final Lcom/tmc/network/NetworkMonitor;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;,
        Lcom/tmc/network/NetworkMonitor$NetworkStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u000201B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u0006\u0010\u001e\u001a\u00020\u0004J\n\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J\u0006\u0010!\u001a\u00020\u0015J\u0006\u0010\"\u001a\u00020\u0004J\u0010\u0010#\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0010J\u0006\u0010$\u001a\u00020\u000bJ\u0008\u0010%\u001a\u00020\u000bH\u0002J\u000e\u0010&\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020\u0007J\u0018\u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u0004H\u0002J\u000e\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u0018J\u0010\u0010-\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u0010\u0010.\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u000e\u0010/\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/tmc/network/NetworkMonitor;",
        "",
        "()V",
        "apn",
        "",
        "bssid",
        "currentStatus",
        "Lcom/tmc/network/NetworkMonitor$NetworkStatus;",
        "isInited",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isNetworkConnected",
        "",
        "lastStatus",
        "mConnectivityManager",
        "Landroid/net/ConnectivityManager;",
        "mContext",
        "Landroid/content/Context;",
        "mNetworkType",
        "mReceiver",
        "Landroid/content/BroadcastReceiver;",
        "netStatus",
        "",
        "networkListeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;",
        "base64Str",
        "str",
        "checkNetworkStatus",
        "",
        "context",
        "getNetworkId",
        "getNetworkInfo",
        "Landroid/net/NetworkInfo;",
        "getNetworkStatus",
        "getNetworkType",
        "init",
        "isConnected",
        "isMobile",
        "notifyNetworkChanged",
        "status",
        "parseNetworkStatus",
        "type",
        "subType",
        "registerListener",
        "listener",
        "registerNetworkCallback",
        "registerNetworkReceiver",
        "unregisterListener",
        "INetworkChangeListener",
        "NetworkStatus",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tmc/network/NetworkMonitor;

.field private static apn:Ljava/lang/String;

.field private static bssid:Ljava/lang/String;

.field private static currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

.field private static final isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isNetworkConnected:Z

.field private static lastStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mNetworkType:Ljava/lang/String;

.field private static final mReceiver:Landroid/content/BroadcastReceiver;

.field private static netStatus:I

.field private static networkListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tmc/network/NetworkMonitor;

    invoke-direct {v0}, Lcom/tmc/network/NetworkMonitor;-><init>()V

    sput-object v0, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tmc/network/NetworkMonitor;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "unknown"

    sput-object v0, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    sput-object v0, Lcom/tmc/network/NetworkMonitor;->apn:Ljava/lang/String;

    sput-object v0, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    sget-object v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->NONE:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    sput-object v0, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    sput-object v0, Lcom/tmc/network/NetworkMonitor;->lastStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/tmc/network/NetworkMonitor;->networkListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/tmc/network/NetworkMonitor$mReceiver$1;

    invoke-direct {v0}, Lcom/tmc/network/NetworkMonitor$mReceiver$1;-><init>()V

    sput-object v0, Lcom/tmc/network/NetworkMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkNetworkStatus(Lcom/tmc/network/NetworkMonitor;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tmc/network/NetworkMonitor;->checkNetworkStatus(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setNetStatus$p(I)V
    .locals 0

    sput p0, Lcom/tmc/network/NetworkMonitor;->netStatus:I

    return-void
.end method

.method public static final synthetic access$setNetworkConnected$p(Z)V
    .locals 0

    sput-boolean p0, Lcom/tmc/network/NetworkMonitor;->isNetworkConnected:Z

    return-void
.end method

.method private final base64Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "unknown"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v1, "encodeToString(str.toByteArray(), Base64.DEFAULT)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sget-object v1, Lgg/b;->a:Lgg/b;

    invoke-virtual {v1, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method private final checkNetworkStatus(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/tmc/network/NetworkMonitor;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "unknown"

    if-eqz v0, :cond_a

    :try_start_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const-string v0, "WIFI"

    sput-object v0, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/net/wifi/WifiManager;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    move-object p1, v1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    sput-object p1, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    const-string v0, "02:00:00:00:00:00"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    sput-object v1, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    :cond_5
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->WIFI:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    sput-object p1, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "networkInfo.subtypeName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/tmc/network/NetworkMonitor;->parseNetworkStatus(ILjava/lang/String;)Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    move-result-object p1

    sput-object p1, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    sput-object p1, Lcom/tmc/network/NetworkMonitor;->apn:Ljava/lang/String;

    goto :goto_3

    :cond_9
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->NONE:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    sput-object p1, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    sput-object v1, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    sput-object v1, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    sput-object v1, Lcom/tmc/network/NetworkMonitor;->apn:Ljava/lang/String;

    :goto_3
    sget-object p1, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    goto :goto_4

    :cond_a
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->NONE:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    sput-object p1, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    sput-object v1, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    sput-object v1, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    sput-object v1, Lcom/tmc/network/NetworkMonitor;->apn:Ljava/lang/String;

    :goto_4
    sget-object p1, Lcom/tmc/network/NetworkMonitor;->lastStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    if-eq p1, v0, :cond_b

    sput-object v0, Lcom/tmc/network/NetworkMonitor;->lastStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    invoke-virtual {p0, v0}, Lcom/tmc/network/NetworkMonitor;->notifyNetworkChanged(Lcom/tmc/network/NetworkMonitor$NetworkStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    sget-object v0, Lgg/b;->a:Lgg/b;

    invoke-virtual {v0, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    return-void
.end method

.method private final getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    instance-of v2, v0, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/net/ConnectivityManager;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_3
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    :goto_3
    return-object v1
.end method

.method private final isMobile()Z
    .locals 2

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G2:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G3:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G4:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G5:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final parseNetworkStatus(ILjava/lang/String;)Lcom/tmc/network/NetworkMonitor$NetworkStatus;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x3bd8f00d

    if-eq p1, v0, :cond_2

    const v0, 0x4e97a8c

    if-eq p1, v0, :cond_1

    const v0, 0x7485a6eb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "TD-SCDMA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_1
    const-string p1, "WCDMA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    const-string p1, "CDMA2000"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->NONE:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G3:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    goto :goto_1

    :pswitch_0
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G5:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    goto :goto_1

    :pswitch_1
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G4:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    goto :goto_1

    :pswitch_2
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G3:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    goto :goto_1

    :pswitch_3
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G2:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final registerNetworkCallback(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/ConnectivityManager;

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/tmc/network/NetworkMonitor;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/tmc/network/NetworkMonitor;->isNetworkConnected:Z

    invoke-direct {p0, p1}, Lcom/tmc/network/NetworkMonitor;->checkNetworkStatus(Landroid/content/Context;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_5

    new-instance p1, Lcom/tmc/network/NetworkMonitor$registerNetworkCallback$1;

    invoke-direct {p1}, Lcom/tmc/network/NetworkMonitor$registerNetworkCallback$1;-><init>()V

    invoke-static {v1, p1}, Lf2/b;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_5

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    :goto_2
    sput v2, Lcom/tmc/network/NetworkMonitor;->netStatus:I

    :cond_5
    return-void
.end method

.method private final registerNetworkReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/tmc/network/NetworkMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lgg/b;->a:Lgg/b;

    invoke-virtual {v0, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getNetworkId()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    const-string v1, "WIFI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x23

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tmc/network/NetworkMonitor;->base64Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tmc/network/NetworkMonitor;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tmc/network/NetworkMonitor;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "unknown"

    :goto_0
    return-object v0
.end method

.method public final getNetworkStatus()I
    .locals 1

    sget v0, Lcom/tmc/network/NetworkMonitor;->netStatus:I

    return v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lgg/b;->a:Lgg/b;

    const-string v1, "NetworkMonitor"

    const-string v2, "NetworkMonitor.init"

    invoke-virtual {v0, v1, v2}, Lgg/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/tmc/network/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/tmc/network/NetworkMonitor;->registerNetworkCallback(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/tmc/network/NetworkMonitor;->registerNetworkReceiver(Landroid/content/Context;)V

    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tmc/network/NetworkConfig;->setPackageName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lgg/b;->a:Lgg/b;

    invoke-virtual {v0, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isConnected()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    sget-boolean v1, Lcom/tmc/network/NetworkMonitor;->isNetworkConnected:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tmc/network/NetworkMonitor;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_0
    sget-object v2, Lgg/b;->a:Lgg/b;

    invoke-virtual {v2, v1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public final notifyNetworkChanged(Lcom/tmc/network/NetworkMonitor$NetworkStatus;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->networkListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;

    invoke-interface {v1, p1}, Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;->onNetworkChanged(Lcom/tmc/network/NetworkMonitor$NetworkStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final registerListener(Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgg/b;->a:Lgg/b;

    const-string v1, "register listener "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgg/b;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->networkListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterListener(Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->networkListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
