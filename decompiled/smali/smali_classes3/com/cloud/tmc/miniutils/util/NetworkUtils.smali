.class public final Lcom/cloud/tmc/miniutils/util/NetworkUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;,
        Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkCallbackImpl;,
        Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;,
        Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;,
        Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;
    }
.end annotation


# static fields
.field private static final SCAN_PERIOD_MILLIS:J = 0xbb8L

.field private static final SCAN_RESULT_CONSUMERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cloud/tmc/miniutils/util/Utils$Consumer<",
            "Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;",
            ">;>;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;

.field private static init:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mNetworkType:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

.field private static sPreWifiScanResults:Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;

.field private static sScanWifiTimer:Ljava/util/Timer;

.field private static status:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    sput-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->mNetworkType:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "NetworkUtils"

    sput-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->SCAN_RESULT_CONSUMERS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static bridge synthetic a()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->SCAN_RESULT_CONSUMERS:Ljava/util/Set;

    return-object v0
.end method

.method public static addOnWifiChangedConsumer(Lcom/cloud/tmc/miniutils/util/Utils$Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniutils/util/Utils$Consumer<",
            "Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$1;-><init>(Lcom/cloud/tmc/miniutils/util/Utils$Consumer;)V

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic c()Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->mNetworkType:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-object v0
.end method

.method static bridge synthetic d()Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->sPreWifiScanResults:Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;

    return-object v0
.end method

.method static bridge synthetic e(Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->mNetworkType:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-void
.end method

.method static bridge synthetic f(Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->sPreWifiScanResults:Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;

    return-void
.end method

.method static bridge synthetic g(I)V
    .locals 0

    sput p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->status:I

    return-void
.end method

.method private static getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getBroadcastIpAddress()Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public static getDomainAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static getGatewayByWifi()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-eqz p0, :cond_5

    if-eqz v2, :cond_3

    return-object v1

    :cond_5
    if-nez v2, :cond_3

    const/16 p0, 0x25

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object p0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    const-string p0, ""

    return-object p0
.end method

.method public static getIpAddressByWifi()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMNetWorkType()Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->mNetworkType:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-object v0
.end method

.method public static getNetMaskByWifi()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkStatus()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->status:I

    return v0
.end method

.method public static getNetworkType()Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;
    .locals 3

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isEthernet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_ETHERNET:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TD-SCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "WCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-object v0

    :cond_3
    :goto_0
    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_5G:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_4G:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_2G:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-object v0

    :cond_4
    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-object v0

    :cond_5
    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSSID()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static getServerAddressByWifi()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWifiEnabled()Z
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public static getWifiScanResult()Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;
    .locals 3

    new-instance v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;

    invoke-direct {v0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;-><init>()V

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->getWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;->setAllResults(Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method static bridge synthetic h(Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isSameScanResults(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic i()V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->startScanWifi()V

    return-void
.end method

.method public static is4G()Z
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is5G()Z
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAvailableByDns()Z
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isAvailableByDns(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailableByDns(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "www.baidu.com"

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static isConnected()Z
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isEthernet()Z
    .locals 3

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static isMobileData()Z
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRegisteredNetworkStatusChangedListener(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)Z
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->d()Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->isRegistered(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)Z

    move-result p0

    return p0
.end method

.method private static isSameScanResultContent(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSameScanResults(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    invoke-static {v3, v4}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isSameScanResultContent(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public static isWifiConnected()Z
    .locals 3

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method static bridge synthetic j()V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->startScanWifiIfEnabled()V

    return-void
.end method

.method static bridge synthetic k()V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->stopScanWifi()V

    return-void
.end method

.method public static openWirelessSettings()V
    .locals 3

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static registerNetworkCallback(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->init:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkCallbackImpl;

    invoke-direct {v0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkCallbackImpl;-><init>()V

    invoke-static {p0, v0}, Lf2/b;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "registerNetworkCallback: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static registerNetworkStatusChangedListener(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->d()Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->registerListener(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    return-void
.end method

.method public static removeOnWifiChangedConsumer(Lcom/cloud/tmc/miniutils/util/Utils$Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniutils/util/Utils$Consumer<",
            "Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$3;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$3;-><init>(Lcom/cloud/tmc/miniutils/util/Utils$Consumer;)V

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setWifiEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-ne p0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method private static startScanWifi()V
    .locals 7

    new-instance v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;

    invoke-direct {v0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->sPreWifiScanResults:Lcom/cloud/tmc/miniutils/util/NetworkUtils$WifiScanResults;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    new-instance v2, Lcom/cloud/tmc/miniutils/util/NetworkUtils$2;

    invoke-direct {v2}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$2;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xbb8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private static startScanWifiIfEnabled()V
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->getWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void
.end method

.method private static stopScanWifi()V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->sScanWifiTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public static unregisterNetworkStatusChangedListener(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->d()Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->unregisterListener(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V

    return-void
.end method
