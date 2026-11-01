.class public final Lcom/tmc/network/strategy/LocalDnsStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Dns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmc/network/strategy/LocalDnsStrategy$b;,
        Lcom/tmc/network/strategy/LocalDnsStrategy$a;,
        Lcom/tmc/network/strategy/LocalDnsStrategy$c;
    }
.end annotation


# static fields
.field public static final c:Lcom/tmc/network/strategy/LocalDnsStrategy$a;

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tmc/network/strategy/LocalDnsStrategy$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tmc/network/strategy/LocalDnsStrategy$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tmc/network/strategy/LocalDnsStrategy;->c:Lcom/tmc/network/strategy/LocalDnsStrategy$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tmc/network/strategy/LocalDnsStrategy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tmc/network/strategy/LocalDnsStrategy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tmc/network/strategy/LocalDnsStrategy;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/tmc/network/strategy/LocalDnsStrategy;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tmc/network/strategy/LocalDnsStrategy;->g(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/tmc/network/strategy/LocalDnsStrategy;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/tmc/network/strategy/LocalDnsStrategy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tmc/network/strategy/LocalDnsStrategy;->k(Ljava/lang/String;Lcom/tmc/network/strategy/LocalDnsStrategy;)V

    return-void
.end method

.method public static final synthetic c(Lcom/tmc/network/strategy/LocalDnsStrategy;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/tmc/network/strategy/LocalDnsStrategy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/tmc/network/strategy/LocalDnsStrategy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic e(Lcom/tmc/network/strategy/LocalDnsStrategy;)V
    .locals 0

    invoke-direct {p0}, Lcom/tmc/network/strategy/LocalDnsStrategy;->j()V

    return-void
.end method

.method private final f(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    invoke-virtual {v1}, Lcom/tmc/network/NetworkMonitor;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, p0, Lcom/tmc/network/strategy/LocalDnsStrategy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v3, :cond_0

    new-instance v3, Lcom/tmc/network/strategy/StrategyTable;

    invoke-direct {v3, v1}, Lcom/tmc/network/strategy/StrategyTable;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v4, p0, Lcom/tmc/network/strategy/LocalDnsStrategy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/tmc/network/strategy/StrategyTable;

    invoke-virtual {v1, p1}, Lcom/tmc/network/strategy/StrategyTable;->queryStrategyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    sget-object v3, Lgg/c;->c:Lgg/c$a;

    invoke-virtual {v3}, Lgg/c$a;->a()Lgg/c;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/tmc/network/strategy/a;

    invoke-direct {v4, v2, p1, p0}, Lcom/tmc/network/strategy/a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/tmc/network/strategy/LocalDnsStrategy;)V

    invoke-virtual {v3, v4}, Lgg/c;->a(Ljava/lang/Runnable;)V

    :goto_1
    return-object v1

    :cond_3
    :goto_2
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v3, v1

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/tmc/network/strategy/StrategyTable;

    const-string v3, "ips"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->O0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/tmc/network/strategy/StrategyTable;->addStrategyList(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/tmc/network/strategy/LocalDnsStrategy;->l()V

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->K0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_5
    :goto_3
    return-object v0

    :goto_4
    sget-object v1, Lgg/b;->a:Lgg/b;

    invoke-virtual {v1, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static final g(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/tmc/network/strategy/LocalDnsStrategy;)V
    .locals 2

    const-string v0, "$table"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/tmc/network/strategy/StrategyTable;

    invoke-virtual {v0, p1}, Lcom/tmc/network/strategy/StrategyTable;->checkIsExpire(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/tmc/network/strategy/StrategyTable;

    invoke-virtual {v0, p1}, Lcom/tmc/network/strategy/StrategyTable;->removeStrategy(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/tmc/network/strategy/StrategyTable;

    const-string v1, "ips"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->O0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tmc/network/strategy/StrategyTable;->addStrategyList(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p2}, Lcom/tmc/network/strategy/LocalDnsStrategy;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    sget-object p1, Lgg/b;->a:Lgg/b;

    invoke-virtual {p1, p0}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private final j()V
    .locals 3

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkMonitor;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tmc/network/strategy/LocalDnsStrategy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lgg/b;->a:Lgg/b;

    const-string v1, "map already has this strategy."

    invoke-virtual {v0, v1}, Lgg/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lgg/c;->c:Lgg/c$a;

    invoke-virtual {v1}, Lgg/c$a;->a()Lgg/c;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/tmc/network/strategy/b;

    invoke-direct {v2, v0, p0}, Lcom/tmc/network/strategy/b;-><init>(Ljava/lang/String;Lcom/tmc/network/strategy/LocalDnsStrategy;)V

    invoke-virtual {v1, v2}, Lgg/c;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final k(Ljava/lang/String;Lcom/tmc/network/strategy/LocalDnsStrategy;)V
    .locals 3

    const-string v0, "$netId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknown"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lgg/b;->a:Lgg/b;

    const-string p1, "network is invalid."

    invoke-virtual {p0, p1}, Lgg/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lfg/b;->a:Lfg/b;

    invoke-virtual {v0, p0}, Lfg/b;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tmc/network/strategy/StrategyTable;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/tmc/network/strategy/StrategyTable;->removeExpired()V

    iget-object v2, p1, Lcom/tmc/network/strategy/LocalDnsStrategy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tmc/network/strategy/StrategyTable;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Lcom/tmc/network/strategy/StrategyTable;->convertTable(Lcom/tmc/network/strategy/StrategyTable;)Lcom/tmc/network/strategy/StrategyTable;

    :goto_0
    iget-object p1, p1, Lcom/tmc/network/strategy/LocalDnsStrategy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lgg/b;->a:Lgg/b;

    const-string p1, "restore file "

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgg/b;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lfg/b;->j()V

    return-void
.end method

.method private final l()V
    .locals 5

    sget-object v0, Lcom/tmc/network/strategy/LocalDnsStrategy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lgg/c;->c:Lgg/c$a;

    invoke-virtual {v0}, Lgg/c$a;->a()Lgg/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tmc/network/strategy/LocalDnsStrategy$updateLocalDnsStrategy$1;

    invoke-direct {v1, p0}, Lcom/tmc/network/strategy/LocalDnsStrategy$updateLocalDnsStrategy$1;-><init>(Lcom/tmc/network/strategy/LocalDnsStrategy;)V

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lgg/c;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final h(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/tmc/network/strategy/LocalDnsStrategy;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/tmc/network/strategy/LocalDnsStrategy;->j()V

    sget-object p1, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    new-instance v0, Lcom/tmc/network/strategy/LocalDnsStrategy$c;

    invoke-direct {v0, p0}, Lcom/tmc/network/strategy/LocalDnsStrategy$c;-><init>(Lcom/tmc/network/strategy/LocalDnsStrategy;)V

    invoke-virtual {p1, v0}, Lcom/tmc/network/NetworkMonitor;->registerListener(Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lgg/b;->a:Lgg/b;

    invoke-virtual {v0, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/net/InetAddress;)V
    .locals 2

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tmc/network/strategy/LocalDnsStrategy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    invoke-virtual {v1}, Lcom/tmc/network/NetworkMonitor;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tmc/network/strategy/StrategyTable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/tmc/network/strategy/StrategyTable;->removeStrategy(Ljava/lang/String;Ljava/net/InetAddress;)V

    invoke-direct {p0}, Lcom/tmc/network/strategy/LocalDnsStrategy;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lgg/b;->a:Lgg/b;

    invoke-virtual {p2, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tmc/network/strategy/LocalDnsStrategy;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->isNetworkImproveEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tmc/network/strategy/LocalDnsStrategy;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    sget-object v1, Lgg/b;->a:Lgg/b;

    const-string v2, "LocalDnsStrategy"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lgg/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
