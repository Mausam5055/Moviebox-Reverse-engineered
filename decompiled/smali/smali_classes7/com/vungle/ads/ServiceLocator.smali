.class public final Lcom/vungle/ads/ServiceLocator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/ServiceLocator$a;,
        Lcom/vungle/ads/ServiceLocator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/ServiceLocator$Companion;

.field private static volatile INSTANCE:Lcom/vungle/ads/ServiceLocator;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final creators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/vungle/ads/ServiceLocator$a;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/ServiceLocator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/ServiceLocator;->ctx:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/ServiceLocator;->cache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/vungle/ads/ServiceLocator;->buildCreators()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vungle/ads/ServiceLocator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getCtx$p(Lcom/vungle/ads/ServiceLocator;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/vungle/ads/ServiceLocator;->ctx:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/vungle/ads/ServiceLocator;
    .locals 1

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->INSTANCE:Lcom/vungle/ads/ServiceLocator;

    return-object v0
.end method

.method public static final synthetic access$getOrBuild(Lcom/vungle/ads/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/vungle/ads/ServiceLocator;)V
    .locals 0

    sput-object p0, Lcom/vungle/ads/ServiceLocator;->INSTANCE:Lcom/vungle/ads/ServiceLocator;

    return-void
.end method

.method private final buildCreators()V
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$h;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$h;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/task/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$i;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$i;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/task/d;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$j;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$j;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$k;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$k;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/platform/d;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$l;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$l;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/executor/a;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$m;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$m;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/omsdk/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$n;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$n;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/omsdk/c$b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$o;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$o;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/persistence/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$p;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$p;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lfz/a;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$b;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$b;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$c;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$c;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/util/p;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$d;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$d;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/downloader/Downloader;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$e;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$e;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/util/c;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$f;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$f;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/signals/SignalManager;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    new-instance v1, Lcom/vungle/ads/ServiceLocator$g;

    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$g;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/network/h;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/vungle/ads/ServiceLocator;->getServiceClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/ServiceLocator$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vungle/ads/ServiceLocator$a;->create()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vungle/ads/ServiceLocator$a;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown class"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private final getServiceClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dependency for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final bindService$vungle_ads_release(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;TT;)V"
        }
    .end annotation

    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized isCreated(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->cache:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/vungle/ads/ServiceLocator;->getServiceClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
