.class public Lcom/cloud/tmc/kernel/utils/NetworkUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;,
        Lcom/cloud/tmc/kernel/utils/NetworkUtil$MyBroadcastReceiver;,
        Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;
    }
.end annotation


# static fields
.field public static final NETWORK_TYPE_2G:Ljava/lang/String; = "2G"

.field public static final NETWORK_TYPE_3G:Ljava/lang/String; = "3G"

.field public static final NETWORK_TYPE_4G:Ljava/lang/String; = "4G"

.field public static final NETWORK_TYPE_5G:Ljava/lang/String; = "5G"

.field public static final NETWORK_TYPE_NOT_REACHABLE:Ljava/lang/String; = "none"

.field public static final NETWORK_TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field public static final TAG:Ljava/lang/String; = "NetworkUtil"

.field private static final mOnAppStatusChangedListener:Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;

.field private static sAlreadyRegistered:Z

.field protected static sBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static sCurrentNetworkType:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

.field private static final sListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sListenerList:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sAlreadyRegistered:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$1;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$1;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->mOnAppStatusChangedListener:Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->registerReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public static addListener(Landroid/content/Context;Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;)V
    .locals 2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->registerReceiver(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->unRegisterReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->updateNetwork(Landroid/content/Context;)V

    return-void
.end method

.method private static detectNetwork(Landroid/net/NetworkInfo;)Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;
    .locals 4

    const-string v0, "NetworkUtil"

    if-nez p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_6

    if-eqz p0, :cond_5

    if-eq p0, v2, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x4

    if-eq p0, v1, :cond_4

    const/4 v1, 0x7

    if-eq p0, v1, :cond_4

    const/16 v1, 0xb

    if-eq p0, v1, :cond_4

    const/16 v1, 0xd

    if-eq p0, v1, :cond_3

    const/16 v1, 0x10

    if-eq p0, v1, :cond_4

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_VERY_FAST:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    return-object p0

    :cond_3
    :pswitch_1
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    return-object p0

    :cond_4
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    return-object p0

    :cond_5
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    return-object p0

    :cond_6
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    return-object p0

    :cond_7
    :goto_0
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_WIFI:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    const-string v1, "detectNetwork error!"

    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurrentNetworkType(Landroid/content/Context;Z)Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sCurrentNetworkType:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->updateNetwork(Landroid/content/Context;)V

    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sCurrentNetworkType:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    return-object p0
.end method

.method public static getDetailNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, " , mobile: "

    const-string v1, "network unknown, type: "

    const-string v2, "NetworkUtil"

    const-string v3, "UNKNOWN"

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {p0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v7, :cond_4

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v5, v8, :cond_1

    goto :goto_1

    :cond_1
    if-eq v6, v7, :cond_3

    if-ne v6, v8, :cond_2

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    :goto_0
    const-string p0, "WIFI"

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, "3G"

    packed-switch p0, :pswitch_data_0

    :try_start_3
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    const-string v8, "TD-SCDMA"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "WCDMA"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "CDMA2000"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_6
    :goto_2
    return-object v7

    :pswitch_0
    const-string p0, "5G"

    return-object p0

    :pswitch_1
    const-string p0, "4G"

    return-object p0

    :pswitch_2
    return-object v7

    :pswitch_3
    const-string p0, "2G"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p0

    :catchall_1
    move-exception p0

    move-object v6, v4

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v5, v4

    move-object v6, v5

    :goto_3
    invoke-static {v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_7

    const-string v1, "null"

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", wifi: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

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

.method public static getOnAppStatusChangedListener()Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->mOnAppStatusChangedListener:Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;

    return-object v0
.end method

.method public static getSimpleNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "fail"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "NetworkUtil"

    const-string v2, "Exception"

    invoke-static {v1, v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "wwan"

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, "wifi"

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static declared-synchronized registerReceiver(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sAlreadyRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sAlreadyRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2

    new-instance v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$MyBroadcastReceiver;-><init>(Lcom/cloud/tmc/kernel/utils/a;)V

    sput-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_3
    const-string v1, "NetworkUtil"

    const-string v2, "registerReceiver error"

    invoke-static {v1, v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static removeListener(Landroid/content/Context;Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->unRegisterReceiver(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static transferNetworkType(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$2;->$SwitchMap$com$cloud$tmc$kernel$utils$NetworkUtil$Network:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "WIFI"

    return-object p0

    :pswitch_1
    const-string p0, "5G"

    return-object p0

    :pswitch_2
    const-string p0, "4G"

    return-object p0

    :pswitch_3
    const-string p0, "3G"

    return-object p0

    :pswitch_4
    const-string p0, "2G"

    return-object p0

    :pswitch_5
    const-string p0, "none"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized unRegisterReceiver(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sAlreadyRegistered:Z

    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "NetworkUtil"

    const-string v2, "unRegisterReceiver error"

    invoke-static {v1, v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static updateNetwork(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NetworkUtil"

    const-string v1, "exception detail"

    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sCurrentNetworkType:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->detectNetwork(Landroid/net/NetworkInfo;)Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    move-result-object p0

    sput-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sCurrentNetworkType:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    if-eqz v0, :cond_4

    if-ne p0, v0, :cond_1

    goto :goto_3

    :cond_1
    const-string p0, "NetworkUtil"

    const-string v1, "onNetworkChanged"

    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sListenerList:Ljava/util/List;

    monitor-enter p0

    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;

    if-eqz v2, :cond_2

    sget-object v3, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sCurrentNetworkType:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    invoke-interface {v2, v0, v3}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;->onNetworkChanged(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_3
    return-void
.end method
