.class public Lcom/transsion/api/gateway/dns/GateWayDns;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Dns;


# static fields
.field public static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile mInstance:Lcom/transsion/api/gateway/dns/GateWayDns;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/api/gateway/dns/GateWayDns;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/api/gateway/dns/GateWayDns;
    .locals 2

    sget-object v0, Lcom/transsion/api/gateway/dns/GateWayDns;->mInstance:Lcom/transsion/api/gateway/dns/GateWayDns;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/api/gateway/dns/GateWayDns;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/api/gateway/dns/GateWayDns;->mInstance:Lcom/transsion/api/gateway/dns/GateWayDns;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/api/gateway/dns/GateWayDns;

    invoke-direct {v1}, Lcom/transsion/api/gateway/dns/GateWayDns;-><init>()V

    sput-object v1, Lcom/transsion/api/gateway/dns/GateWayDns;->mInstance:Lcom/transsion/api/gateway/dns/GateWayDns;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/api/gateway/dns/GateWayDns;->mInstance:Lcom/transsion/api/gateway/dns/GateWayDns;

    return-object v0
.end method


# virtual methods
.method public getIsUseGatewayDns()Z
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/dns/GateWayDns;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    const-string v1, "look up"

    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/api/gateway/config/b;->a()Lcom/transsion/api/gateway/config/b;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    iget-boolean v0, v0, Lcom/transsion/api/gateway/config/a;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    const-string v1, "dns function closed"

    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/GatewayUtils;->canUseGateWay(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/api/gateway/dns/GateWayDns;->getIsUseGatewayDns()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    const-string v1, "use dns"

    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/transsion/api/gateway/dns/c;->a()Lcom/transsion/api/gateway/dns/c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/transsion/api/gateway/dns/c;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/transsion/api/gateway/dns/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/api/gateway/dns/b;

    iget-object v6, v5, Lcom/transsion/api/gateway/dns/b;->a:Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v4, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_5
    if-eqz v4, :cond_6

    new-instance v3, Lcom/transsion/api/gateway/dns/b;

    invoke-direct {v3, v4}, Lcom/transsion/api/gateway/dns/b;-><init>(Lcom/transsion/api/gateway/dns/b;)V

    monitor-exit v1

    goto :goto_1

    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v3, :cond_8

    iget-object v1, v3, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, v3, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/api/gateway/dns/d;

    :try_start_1
    iget-object v2, v2, Lcom/transsion/api/gateway/dns/d;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/api/gateway/utils/GatewayUtils;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p1, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    sget-object p1, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    const-string v1, "use nodns ips"

    invoke-virtual {p1, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    sget-object v2, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    const-string v1, "use dns"

    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setIsUseGatewayDns(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/dns/GateWayDns;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
