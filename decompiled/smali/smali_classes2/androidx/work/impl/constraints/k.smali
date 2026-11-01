.class final Landroidx/work/impl/constraints/k;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# static fields
.field public static final a:Landroidx/work/impl/constraints/k;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/Map;

.field private static d:Landroid/net/NetworkCapabilities;

.field private static e:Z

.field private static f:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/constraints/k;

    invoke-direct {v0}, Landroidx/work/impl/constraints/k;-><init>()V

    sput-object v0, Landroidx/work/impl/constraints/k;->a:Landroidx/work/impl/constraints/k;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/impl/constraints/k;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Landroidx/work/impl/constraints/k;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Landroid/net/ConnectivityManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/constraints/k;->c(Lkotlin/jvm/functions/Function1;Landroid/net/ConnectivityManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lkotlin/jvm/functions/Function1;Landroid/net/ConnectivityManager;)Lkotlin/Unit;
    .locals 3

    sget-object v0, Landroidx/work/impl/constraints/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/work/impl/constraints/k;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p0

    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkRequestConstraintController unregister shared callback"

    invoke-virtual {p0, v1, v2}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroidx/work/impl/constraints/k;->a:Landroidx/work/impl/constraints/k;

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p0, 0x0

    sput-object p0, Landroidx/work/impl/constraints/k;->f:Ljava/lang/Boolean;

    sput-object p0, Landroidx/work/impl/constraints/k;->d:Landroid/net/NetworkCapabilities;

    const/4 p0, 0x0

    sput-boolean p0, Landroidx/work/impl/constraints/k;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private final d(Landroid/net/NetworkRequest;Landroid/net/NetworkCapabilities;)Z
    .locals 1

    sget-object v0, Landroidx/work/impl/constraints/k;->f:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Landroidx/work/impl/constraints/i;->a(Landroid/net/NetworkRequest;Landroid/net/NetworkCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final e()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroidx/work/impl/constraints/k;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Landroidx/work/impl/constraints/k;->e:Z

    if-eqz v2, :cond_4

    sget-object v2, Landroidx/work/impl/constraints/k;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    sget-object v2, Landroidx/work/impl/constraints/k;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkRequest;

    sget-object v5, Landroidx/work/impl/constraints/k;->a:Landroidx/work/impl/constraints/k;

    sget-object v6, Landroidx/work/impl/constraints/k;->d:Landroid/net/NetworkCapabilities;

    invoke-direct {v5, v3, v6}, Landroidx/work/impl/constraints/k;->d(Landroid/net/NetworkRequest;Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroidx/work/impl/constraints/b$a;->a:Landroidx/work/impl/constraints/b$a;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    new-instance v3, Landroidx/work/impl/constraints/b$b;

    const/4 v5, 0x7

    invoke-direct {v3, v5}, Landroidx/work/impl/constraints/b$b;-><init>(I)V

    :goto_1
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/constraints/b;

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_3
    :try_start_1
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not dispatching constraint state yet: isBlocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/work/impl/constraints/k;->f:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", capabilitiesInitialized="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Landroidx/work/impl/constraints/k;->e:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function0;
    .locals 4

    const-string v0, "connManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConstraintState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/work/impl/constraints/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/work/impl/constraints/k;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p2

    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkRequestConstraintController register shared callback"

    invoke-virtual {p2, v1, v2}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Landroidx/work/impl/constraints/k;->a:Landroidx/work/impl/constraints/k;

    invoke-static {p1, p2}, Lf2/b;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    sget-boolean v1, Landroidx/work/impl/constraints/k;->e:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/work/impl/constraints/k;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkRequestConstraintController send initial capabilities"

    invoke-virtual {v1, v2, v3}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroidx/work/impl/constraints/k;->d:Landroid/net/NetworkCapabilities;

    sget-object v2, Landroidx/work/impl/constraints/k;->a:Landroidx/work/impl/constraints/k;

    invoke-direct {v2, p2, v1}, Landroidx/work/impl/constraints/k;->d(Landroid/net/NetworkRequest;Landroid/net/NetworkCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/work/impl/constraints/b$a;->a:Landroidx/work/impl/constraints/b$a;

    goto :goto_0

    :cond_1
    new-instance p2, Landroidx/work/impl/constraints/b$b;

    const/4 v1, 0x7

    invoke-direct {p2, v1}, Landroidx/work/impl/constraints/b$b;-><init>(I)V

    :goto_0
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance p2, Landroidx/work/impl/constraints/j;

    invoke-direct {p2, p3, p1}, Landroidx/work/impl/constraints/j;-><init>(Lkotlin/jvm/functions/Function1;Landroid/net/ConnectivityManager;)V

    return-object p2

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 3

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkRequestConstraintController onBlockedStatusChanged callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroidx/work/impl/constraints/k;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v0, Landroidx/work/impl/constraints/k;->f:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    :try_start_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sput-object p2, Landroidx/work/impl/constraints/k;->f:Ljava/lang/Boolean;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    invoke-direct {p0}, Landroidx/work/impl/constraints/k;->e()V

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkRequestConstraintController onCapabilitiesChanged callback"

    invoke-virtual {p1, v0, v1}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroidx/work/impl/constraints/k;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sput-object p2, Landroidx/work/impl/constraints/k;->d:Landroid/net/NetworkCapabilities;

    const/4 p2, 0x1

    sput-boolean p2, Landroidx/work/impl/constraints/k;->e:Z

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    invoke-direct {p0}, Landroidx/work/impl/constraints/k;->e()V

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkRequestConstraintController onLost callback"

    invoke-virtual {p1, v0, v1}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroidx/work/impl/constraints/k;->b:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroidx/work/impl/constraints/k;->d:Landroid/net/NetworkCapabilities;

    sget-object v0, Landroidx/work/impl/constraints/k;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Landroidx/work/impl/constraints/b$b;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroidx/work/impl/constraints/b$b;-><init>(I)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw v0
.end method
