.class public final Lcom/google/android/libraries/places/internal/zzbbq;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static zzb:Lcom/google/android/libraries/places/internal/zzbbq;

.field private static final zzc:Ljava/lang/Iterable;


# instance fields
.field private final zzd:Ljava/util/LinkedHashSet;

.field private final zze:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lcom/google/android/libraries/places/internal/zzbbq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbbq;->zza:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-class v1, Lcom/google/android/libraries/places/internal/zzbnq;

    sget-boolean v2, Lcom/google/android/libraries/places/internal/zzbnq;->zza:Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Unable to find pick-first LoadBalancer"

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbbq;->zza:Ljava/util/logging/Logger;

    const-string v4, "io.grpc.LoadBalancerRegistry"

    const-string v5, "getHardCodedClasses"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    const-class v1, Lcom/google/android/libraries/places/internal/zzbvo;

    sget v2, Lcom/google/android/libraries/places/internal/zzbvo;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v7, v1

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Unable to find round-robin LoadBalancer"

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbbq;->zza:Ljava/util/logging/Logger;

    const-string v4, "io.grpc.LoadBalancerRegistry"

    const-string v5, "getHardCodedClasses"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbbq;->zzc:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbq;->zzd:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbq;->zze:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static declared-synchronized zzb()Lcom/google/android/libraries/places/internal/zzbbq;
    .locals 9

    const-class v0, Lcom/google/android/libraries/places/internal/zzbbq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbbq;->zzb:Lcom/google/android/libraries/places/internal/zzbbq;

    if-nez v1, :cond_1

    const-class v1, Lcom/google/android/libraries/places/internal/zzbbo;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbbq;->zzc:Ljava/lang/Iterable;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbbp;

    invoke-direct {v3}, Lcom/google/android/libraries/places/internal/zzbbp;-><init>()V

    const-class v4, Lcom/google/android/libraries/places/internal/zzbbo;

    invoke-static {v4, v2, v1, v3}, Lcom/google/android/libraries/places/internal/zzbdi;->zza(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lcom/google/android/libraries/places/internal/zzbdh;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbbq;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzbbq;-><init>()V

    sput-object v2, Lcom/google/android/libraries/places/internal/zzbbq;->zzb:Lcom/google/android/libraries/places/internal/zzbbq;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbbo;

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbbq;->zza:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Service loader found "

    const-string v7, "io.grpc.LoadBalancerRegistry"

    const-string v8, "getDefaultRegistry"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v8, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbbq;->zzb:Lcom/google/android/libraries/places/internal/zzbbq;

    invoke-direct {v3, v2}, Lcom/google/android/libraries/places/internal/zzbbq;->zzc(Lcom/google/android/libraries/places/internal/zzbbo;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbbq;->zzb:Lcom/google/android/libraries/places/internal/zzbbq;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzbbq;->zzd()V

    :cond_1
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbbq;->zzb:Lcom/google/android/libraries/places/internal/zzbbq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final declared-synchronized zzc(Lcom/google/android/libraries/places/internal/zzbbo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbo;->zze()Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbq;->zzd:Ljava/util/LinkedHashSet;

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

.method private final declared-synchronized zzd()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbq;->zze:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbq;->zzd:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbbo;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbbo;->zzd()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbbq;->zze:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzbbo;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbbo;->zzb()I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbbq;->zze:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbbo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbbq;->zze:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbbo;
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
