.class public Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/bridge/NetworkBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkReceiver"
.end annotation


# static fields
.field private static ETHERNET_TIME:J = 0x0L

.field private static LAST_TYPE:I = -0x3

.field private static final NETWORK_MOBILE:I = 0x1

.field private static final NETWORK_NONE:I = -0x1

.field private static final NETWORK_WIFI:I = 0x0

.field private static NONE_TIME:J = 0x0L

.field private static TAG:Ljava/lang/String; = "NetworkReceiver"

.field private static WIFI_TIME:J


# instance fields
.field private lastNetworkType:Ljava/lang/String;

.field private list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->lastNetworkType:Ljava/lang/String;

    new-instance v0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private buildResJson(Ljava/lang/String;Z)Lcom/google/gson/JsonObject;
    .locals 2

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "networkType"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "weakNet"

    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v0
.end method


# virtual methods
.method public addAll(Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    if-nez v0, :cond_1

    new-instance v0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clearNetworkChangeListenModel(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;

    iget-wide v2, v2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->appNodeId:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "none"

    const-string v1, "WIFI"

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->WIFI_TIME:J

    cmp-long p2, v2, v4

    if-eqz p2, :cond_6

    sget-wide v4, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->ETHERNET_TIME:J

    cmp-long p2, v2, v4

    if-eqz p2, :cond_6

    sget-wide v4, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->NONE_TIME:J

    cmp-long p2, v2, v4

    if-eqz p2, :cond_6

    invoke-static {p1}, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->getNetworkState(Landroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_1

    sget v4, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->LAST_TYPE:I

    if-eqz v4, :cond_1

    sput-wide v2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->WIFI_TIME:J

    sput p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->LAST_TYPE:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "wifi\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->lastNetworkType:Ljava/lang/String;

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;

    iget-object v0, p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iget-object v2, p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p2, p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    invoke-direct {p0, v1, p2}, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->buildResJson(Ljava/lang/String;Z)Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    sput-wide v2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->ETHERNET_TIME:J

    sput p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->LAST_TYPE:I

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->getDetailNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6570\u636e\u7f51\u7edc\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->lastNetworkType:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->lastNetworkType:Ljava/lang/String;

    const-string p2, "2G"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;

    iget-object v2, v1, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iget-object v3, v1, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->buildResJson(Ljava/lang/String;Z)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    if-ne p2, p1, :cond_6

    sget v4, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->LAST_TYPE:I

    if-eq v4, p1, :cond_6

    sput-wide v2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->NONE_TIME:J

    sput p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->LAST_TYPE:I

    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->lastNetworkType:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u65e0\u7f51\u7edc\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->list:Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModelList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;

    iget-object v2, p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iget-object v3, p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object p2, p2, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkTaskModel;->pageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_5

    if-eqz v2, :cond_5

    invoke-direct {p0, v0, v1}, Lcom/cloud/tmc/integration/bridge/NetworkBridge$NetworkReceiver;->buildResJson(Ljava/lang/String;Z)Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    :cond_6
    return-void
.end method
