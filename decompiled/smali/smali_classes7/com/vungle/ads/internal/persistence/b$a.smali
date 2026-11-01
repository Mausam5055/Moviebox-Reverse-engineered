.class public final Lcom/vungle/ads/internal/persistence/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/persistence/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/internal/persistence/b$a;-><init>()V

    return-void
.end method

.method public static synthetic get$default(Lcom/vungle/ads/internal/persistence/b$a;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/p;Ljava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/persistence/b;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "settings_vungle"

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/ads/internal/persistence/b$a;->get(Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/p;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getFILENAME$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final declared-synchronized get(Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/p;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "ioExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/vungle/ads/internal/persistence/b;->access$getFilePreferenceMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/vungle/ads/internal/persistence/b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/vungle/ads/internal/persistence/b;-><init>(Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/p;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "filePreferenceMap.getOrP\u2026, filename)\n            }"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/vungle/ads/internal/persistence/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
