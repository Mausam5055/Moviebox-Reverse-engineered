.class public final Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;
.super Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$WifiP2PReceive;
    }
.end annotation


# instance fields
.field private final e:Lkotlin/Lazy;

.field private f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$WifiP2PReceive;

.field private g:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private h:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private i:Ljava/net/InetAddress;

.field private j:Z

.field private k:I

.field private l:I

.field private final m:Landroid/os/Handler;

.field private n:Ljava/lang/Runnable;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;-><init>()V

    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/b;

    invoke-direct {v0}, Lcom/transsion/transfer/wifi/connect/adapter/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->e:Lkotlin/Lazy;

    const/16 v0, 0xa

    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->l:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->m:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/c;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/wifi/connect/adapter/c;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V

    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->n:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->y()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->g:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-void
.end method

.method private final A(I)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onFail() --> reason = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->h()Lcom/transsion/transfer/wifi/connect/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/transfer/wifi/connect/b;->b(I)V

    :cond_0
    return-void
.end method

.method private final B()V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->i:Ljava/net/InetAddress;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onSuccess() --> mAddress = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->o:Z

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->h()Lcom/transsion/transfer/wifi/connect/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->i:Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/wifi/connect/b;->c(Ljava/net/InetAddress;)V

    :cond_0
    return-void
.end method

.method private final C(Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v1, "wifi_p2p_state"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_2

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> registerReceiver() --> onReceive() --> Wi-Fi P2P \u5df2\u542f\u7528 -- Wi-Fi P2P is enabled."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3, v4, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> registerReceiver() --> onReceive() --> Wi-Fi P2P \u672a\u542f\u7528 -- Wi-Fi P2P is not enabled."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3, v4, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_2

    :sswitch_1
    const-string p1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v1, "wifiP2pDevice"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_4

    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> registerReceiver() --> onReceive() --> \u672c\u8bbe\u5907\u7684 Wi-Fi \u72b6\u6001\u5df2\u66f4\u6539 --> CONNECTED = 0\uff5cINVITED = 1\uff5cFAILED = 2\uff5cAVAILABLE = 3\uff5cUNAVAILABLE = 4 --> "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3, v4, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    sget-object v2, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> registerReceiver() --> onReceive() --> networkInfo = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3, v4, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> registerReceiver() --> onReceive() --> \u5df2\u8fde\u63a5\u5230\u5bf9\u7b49\u8bbe\u5907 --> requestConnectionInfo()"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3, v4, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v0, "p2pGroupInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->h:Landroid/net/wifi/p2p/WifiP2pDevice;

    :cond_6
    const-string v0, "wifiP2pInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pInfo;

    if-eqz p1, :cond_7

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_7

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    iput-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->i:Ljava/net/InetAddress;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->B()V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->G()V

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    :cond_9
    sget-object p1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, p1, :cond_a

    iput-boolean v3, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->j:Z

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->F()V

    :cond_a
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x69a8390a -> :sswitch_3
        -0x5d62fb1d -> :sswitch_2
        -0x532207c3 -> :sswitch_1
        0x6511c17d -> :sswitch_0
    .end sparse-switch
.end method

.method private final D()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$WifiP2PReceive;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$WifiP2PReceive;

    invoke-direct {v1}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$WifiP2PReceive;-><init>()V

    iput-object v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$WifiP2PReceive;

    new-instance v2, Lcom/transsion/transfer/wifi/connect/adapter/d;

    invoke-direct {v2, p0}, Lcom/transsion/transfer/wifi/connect/adapter/d;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$WifiP2PReceive;->a(Lkotlin/jvm/functions/Function2;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$WifiP2PReceive;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> registerReceiver() --> \u5e7f\u64ad\u6ce8\u518c\u6210\u529f"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final E(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Landroid/content/Context;Landroid/content/Intent;)Lkotlin/Unit;
    .locals 2

    iget-boolean p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->o:Z

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->C(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object p2

    iget-boolean p0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->o:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> isSuccess = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " --> \u5982\u679c\u5df2\u7ecf\u8fde\u63a5\u6210\u529f\u4e86\uff0c\u540e\u7eed\u7684\u5e7f\u64ad\u5c31\u4e0d\u518d\u5904\u7406\u4e86\uff0c \u8fd9\u4e00\u4e2a\u64cd\u4f5c\u662f\u4e3a\u4e86\u517c\u5bb9\u4e1a\u52a1 --> \u8fd9\u91cc\u5c06\u5bfc\u81f4\u65ad\u5f00\u91cd\u8fde\u529f\u80fd\u5931\u6548"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, p2, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final F()V
    .locals 13

    iget-boolean v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->j:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->k:I

    iget v4, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->l:I

    const-string v5, " --> retryCount = "

    const-string v6, " --> requestConnect() --> connectRetry = "

    if-ge v0, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->k:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->g()Lkotlinx/coroutines/n0;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v10, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;

    invoke-direct {v10, p0, v3}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->k:I

    iget v8, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->l:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2, v1, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->x()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->k:I

    iget v8, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->l:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " --> \u91cd\u8bd5\u6b21\u6570\u7528\u5b8c\u4e86,\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2, v1, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    const/16 v0, 0x7e4

    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->A(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->j:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> requestConnect() --> mConnecting = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2, v1, v3}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final G()V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> requestConnectionInfo() --> start..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->g:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->y()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/transsion/transfer/wifi/connect/adapter/a;

    invoke-direct {v2, p0}, Lcom/transsion/transfer/wifi/connect/adapter/a;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_0
    if-nez v4, :cond_2

    :cond_1
    const/16 v0, 0x7e7

    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->A(I)V

    :cond_2
    return-void
.end method

.method private static final H(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 13

    sget-object v2, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> requestConnectionInfo() --> start --> info = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-boolean v3, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v3, :cond_0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    iput-object v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->i:Ljava/net/InetAddress;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> requestConnectionInfo() --> start --> 11111"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v4, v5, v6}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->B()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->g()Lkotlinx/coroutines/n0;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v10, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnectionInfo$1$1$1;

    invoke-direct {v10, p0, v6}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnectionInfo$1$1$1;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->g()Lkotlinx/coroutines/n0;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v3, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnectionInfo$1$1$2;

    invoke-direct {v3, p0, v6}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnectionInfo$1$1$2;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    :goto_0
    return-void
.end method

.method private static final I(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V
    .locals 1

    const/16 v0, 0x7e6

    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->A(I)V

    return-void
.end method

.method private final J()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$WifiP2PReceive;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> unregisterReceiver() --> success"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic l()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    invoke-static {}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->z()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Landroid/content/Context;Landroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->E(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Landroid/content/Context;Landroid/content/Intent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->H(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    return-void
.end method

.method public static synthetic o(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->I(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V

    return-void
.end method

.method public static final synthetic p(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->x()V

    return-void
.end method

.method public static final synthetic q(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)I
    .locals 0

    iget p0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->k:I

    return p0
.end method

.method public static final synthetic r(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->g:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->y()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)I
    .locals 0

    iget p0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->l:I

    return p0
.end method

.method public static final synthetic u(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->F()V

    return-void
.end method

.method public static final synthetic v(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->G()V

    return-void
.end method

.method public static final synthetic w(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->j:Z

    return-void
.end method

.method private final x()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->j:Z

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->g:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->y()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    sget-object v1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Llv/a;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->h:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v3, v4}, Lcom/transsion/transfer/wifi/util/WifiUtils;->f(Llv/a;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x7e5

    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->A(I)V

    return-void

    :cond_1
    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> connectP2P() --> \u5f00\u59cb\u8fde\u63a5 --> mWifiP2pManager.connect()"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->y()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$connectP2P$1$1;

    invoke-direct {v2, p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$connectP2P$1$1;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V

    invoke-virtual {v3, v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_2
    if-nez v2, :cond_4

    :cond_3
    const/16 v0, 0x7e7

    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->A(I)V

    :cond_4
    return-void
.end method

.method private final y()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method private static final z()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->m:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->h:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->i:Ljava/net/InetAddress;

    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->k:I

    iput-boolean v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->j:Z

    sget-object v3, Lcom/transsion/transfer/wifi/util/i;->a:Lcom/transsion/transfer/wifi/util/i;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->y()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->g:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/16 v10, 0x3c

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lcom/transsion/transfer/wifi/util/i;->e(Lcom/transsion/transfer/wifi/util/i;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZZZZILjava/lang/Object;)V

    iput-object v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->g:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->J()V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> stop() --> p2p stop Exception = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v3, v2, v0, v4, v1}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public d()V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> start() --> \u5f00\u542f\u76f4\u8fde...."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->D()V

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->F()V

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->n:Ljava/lang/Runnable;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
