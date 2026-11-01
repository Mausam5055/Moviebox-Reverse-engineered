.class public final Lcom/google/android/libraries/places/internal/zzbdb;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static zzb:Lcom/google/android/libraries/places/internal/zzbdb;


# instance fields
.field private final zzc:Lcom/google/android/libraries/places/internal/zzbcq;

.field private zzd:Ljava/lang/String;

.field private final zze:Ljava/util/LinkedHashSet;

.field private zzf:Lcom/google/android/libraries/places/internal/zzoa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzbdb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbdb;->zza:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbcy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzbcy;-><init>(Lcom/google/android/libraries/places/internal/zzbdb;Lcom/google/android/libraries/places/internal/zzbcx;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdb;->zzc:Lcom/google/android/libraries/places/internal/zzbcq;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdb;->zzd:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdb;->zze:Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzoa;->zzd()Lcom/google/android/libraries/places/internal/zzoa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdb;->zzf:Lcom/google/android/libraries/places/internal/zzoa;

    return-void
.end method

.method public static declared-synchronized zzb()Lcom/google/android/libraries/places/internal/zzbdb;
    .locals 9

    const-class v0, Lcom/google/android/libraries/places/internal/zzbdb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdb;->zzb:Lcom/google/android/libraries/places/internal/zzbdb;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v2, Lcom/google/android/libraries/places/internal/zzbii;

    sget v3, Lcom/google/android/libraries/places/internal/zzbii;->a:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v8, v2

    :try_start_2
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdb;->zza:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "io.grpc.NameResolverRegistry"

    const-string v6, "getHardCodedClasses"

    const-string v7, "Unable to find DNS NameResolver"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/google/android/libraries/places/internal/zzbcw;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbda;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/libraries/places/internal/zzbda;-><init>(Lcom/google/android/libraries/places/internal/zzbcz;)V

    const-class v4, Lcom/google/android/libraries/places/internal/zzbcw;

    invoke-static {v4, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbdi;->zza(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lcom/google/android/libraries/places/internal/zzbdh;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdb;->zza:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "io.grpc.NameResolverRegistry"

    const-string v5, "getDefaultRegistry"

    const-string v6, "No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration"

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbdb;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzbdb;-><init>()V

    sput-object v2, Lcom/google/android/libraries/places/internal/zzbdb;->zzb:Lcom/google/android/libraries/places/internal/zzbdb;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbcw;

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdb;->zza:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Service loader found "

    const-string v7, "io.grpc.NameResolverRegistry"

    const-string v8, "getDefaultRegistry"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v8, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdb;->zzb:Lcom/google/android/libraries/places/internal/zzbdb;

    invoke-direct {v3, v2}, Lcom/google/android/libraries/places/internal/zzbdb;->zze(Lcom/google/android/libraries/places/internal/zzbcw;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdb;->zzb:Lcom/google/android/libraries/places/internal/zzbdb;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzbdb;->zzf()V

    :cond_2
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdb;->zzb:Lcom/google/android/libraries/places/internal/zzbdb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private final declared-synchronized zze(Lcom/google/android/libraries/places/internal/zzbcw;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbcw;->zze()Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdb;->zze:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzf()V
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbdb;->zze:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "unknown"

    const/high16 v3, -0x80000000

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/zzbcw;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbcq;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/places/internal/zzbcw;

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbcw;->zzc()I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbcw;->zzc()I

    const/4 v5, 0x5

    if-ge v3, v5, :cond_1

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbcw;->zzc()I

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbcq;->zzb()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzoa;->zzc(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzoa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdb;->zzf:Lcom/google/android/libraries/places/internal/zzoa;

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbdb;->zzd:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbcw;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdb;->zzd()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbcw;

    return-object p1
.end method

.method public final declared-synchronized zzc()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdb;->zzd:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final declared-synchronized zzd()Ljava/util/Map;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdb;->zzf:Lcom/google/android/libraries/places/internal/zzoa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
