.class public final Lcom/google/android/libraries/places/internal/zzbih;
.super Lcom/google/android/libraries/places/internal/zzbcv;


# static fields
.field static final zza:Z

.field static final zzb:Z

.field protected static final zzc:Z

.field private static final zzg:Ljava/util/logging/Logger;

.field private static final zzh:Ljava/util/Set;

.field private static final zzi:Ljava/lang/String;

.field private static final zzj:Ljava/lang/String;

.field private static final zzk:Ljava/lang/String;

.field private static final zzl:Lcom/google/android/libraries/places/internal/zzbig;

.field private static zzm:Ljava/lang/String;


# instance fields
.field private zzA:Z

.field private zzB:Lcom/google/android/libraries/places/internal/zzbcr;

.field final zzd:Lcom/google/android/libraries/places/internal/zzbde;

.field protected volatile zze:Lcom/google/android/libraries/places/internal/zzbhz;

.field protected zzf:Z

.field private final zzn:Ljava/util/Random;

.field private final zzo:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzp:Ljava/lang/String;

.field private final zzq:Ljava/lang/String;

.field private final zzr:I

.field private final zzs:Lcom/google/android/libraries/places/internal/zzbql;

.field private final zzt:J

.field private final zzu:Lcom/google/android/libraries/places/internal/zzbdw;

.field private final zzv:Lcom/google/android/libraries/places/internal/zzna;

.field private zzw:Z

.field private zzx:Ljava/util/concurrent/Executor;

.field private final zzy:Z

.field private final zzz:Lcom/google/android/libraries/places/internal/zzbcu;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-class v0, Lcom/google/android/libraries/places/internal/zzbih;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    new-instance v1, Ljava/util/HashSet;

    const-string v3, "clientHostname"

    const-string v4, "serviceConfig"

    const-string v5, "clientLanguage"

    const-string v6, "percentage"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbih;->zzh:Ljava/util/Set;

    const-string v1, "io.grpc.internal.DnsNameResolverProvider.enable_jndi"

    const-string v3, "true"

    invoke-static {v1, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbih;->zzi:Ljava/lang/String;

    const-string v3, "io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost"

    const-string v4, "false"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/google/android/libraries/places/internal/zzbih;->zzj:Ljava/lang/String;

    const-string v5, "io.grpc.internal.DnsNameResolverProvider.enable_service_config"

    invoke-static {v5, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/android/libraries/places/internal/zzbih;->zzk:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/libraries/places/internal/zzbih;->zza:Z

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/libraries/places/internal/zzbih;->zzb:Z

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/libraries/places/internal/zzbih;->zzc:Z

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "io.grpc.internal.JndiResourceResolverFactory"

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/libraries/places/internal/zzbig;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbig;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbig;->zzb()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbig;->zzb()Ljava/lang/Throwable;

    move-result-object v7

    const-string v5, "getResourceResolverFactory"

    const-string v6, "JndiResourceResolverFactory not available, skipping."

    const-string v4, "io.grpc.internal.DnsNameResolver"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v7, v0

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Can\'t construct JndiResourceResolverFactory, skipping."

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    const-string v4, "io.grpc.internal.DnsNameResolver"

    const-string v5, "getResourceResolverFactory"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v13

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v12, "Can\'t find JndiResourceResolverFactory ctor, skipping."

    sget-object v8, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    const-string v10, "io.grpc.internal.DnsNameResolver"

    const-string v11, "getResourceResolverFactory"

    invoke-virtual/range {v8 .. v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v7, v0

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v7, v0

    goto :goto_1

    :goto_0
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Unable to cast JndiResourceResolverFactory, skipping."

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    const-string v4, "io.grpc.internal.DnsNameResolver"

    const-string v5, "getResourceResolverFactory"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Unable to find JndiResourceResolverFactory, skipping."

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    const-string v4, "io.grpc.internal.DnsNameResolver"

    const-string v5, "getResourceResolverFactory"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbih;->zzl:Lcom/google/android/libraries/places/internal/zzbig;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbco;Lcom/google/android/libraries/places/internal/zzbql;Lcom/google/android/libraries/places/internal/zzna;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzbcv;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzn:Ljava/util/Random;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbic;->zza:Lcom/google/android/libraries/places/internal/zzbic;

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbih;->zze:Lcom/google/android/libraries/places/internal/zzbhz;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzo:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v2, "args"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzs:Lcom/google/android/libraries/places/internal/zzbql;

    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "//"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const-string v7, "Invalid DNS name: %s"

    invoke-static {v4, v7, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v4, "nameUri (%s) doesn\'t have an authority"

    invoke-static {v1, v4, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/places/internal/zzbco;->zza()I

    move-result v1

    iput v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzr:I

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v1

    iput v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzr:I

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/places/internal/zzbco;->zzd()Lcom/google/android/libraries/places/internal/zzbde;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzd:Lcom/google/android/libraries/places/internal/zzbde;

    const-wide/16 v1, 0x0

    if-eqz p6, :cond_2

    goto :goto_3

    :cond_2
    const-string v4, "networkaddress.cache.ttl"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x1e

    if-eqz v7, :cond_3

    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object v10, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x3

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v4, v15, v5

    aput-object v7, v15, v6

    const/4 v4, 0x2

    aput-object v12, v15, v4

    const-string v13, "getNetworkAddressCacheTtlNanos"

    const-string v14, "Property({0}) valid is not valid number format({1}), fall back to default({2})"

    const-string v12, "io.grpc.internal.DnsNameResolver"

    invoke-virtual/range {v10 .. v15}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    cmp-long v1, v8, v1

    if-lez v1, :cond_4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    goto :goto_3

    :cond_4
    move-wide v1, v8

    :goto_3
    iput-wide v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzt:J

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzv:Lcom/google/android/libraries/places/internal/zzna;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/places/internal/zzbco;->zze()Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzu:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/places/internal/zzbco;->zzf()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzx:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_5

    move v5, v6

    :cond_5
    iput-boolean v5, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzy:Z

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/places/internal/zzbco;->zzc()Lcom/google/android/libraries/places/internal/zzbcu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbih;->zzz:Lcom/google/android/libraries/places/internal/zzbcu;

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzbih;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzt:J

    return-wide v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzna;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzv:Lcom/google/android/libraries/places/internal/zzna;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzazs;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzr:I

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzd:Lcom/google/android/libraries/places/internal/zzbde;

    invoke-static {v0, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/libraries/places/internal/zzbde;->zza(Ljava/net/SocketAddress;)Lcom/google/android/libraries/places/internal/zzbdd;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/libraries/places/internal/zzazs;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaye;->zza:Lcom/google/android/libraries/places/internal/zzaye;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzazs;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzaye;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzbdw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzu:Lcom/google/android/libraries/places/internal/zzbdw;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbih;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzk()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbih;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzA:Z

    return-void
.end method

.method private static zzm()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbih;->zzm:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbih;->zzm:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbih;->zzm:Ljava/lang/String;

    return-object v0
.end method

.method private final zzn()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzA:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzw:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzf:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzv:Lcom/google/android/libraries/places/internal/zzna;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzna;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzt:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzA:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzx:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbie;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzB:Lcom/google/android/libraries/places/internal/zzbcr;

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/places/internal/zzbie;-><init>(Lcom/google/android/libraries/places/internal/zzbih;Lcom/google/android/libraries/places/internal/zzbcr;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzp:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzB:Lcom/google/android/libraries/places/internal/zzbcr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbih;->zzn()V

    return-void
.end method

.method public final zzc()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzw:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzw:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzx:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzy:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzs:Lcom/google/android/libraries/places/internal/zzbql;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbqm;->zzc(Lcom/google/android/libraries/places/internal/zzbql;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzx:Ljava/util/concurrent/Executor;

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbcr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzB:Lcom/google/android/libraries/places/internal/zzbcr;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzy:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzs:Lcom/google/android/libraries/places/internal/zzbql;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbqm;->zza(Lcom/google/android/libraries/places/internal/zzbql;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzx:Ljava/util/concurrent/Executor;

    :cond_1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbih;->zzB:Lcom/google/android/libraries/places/internal/zzbcr;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbih;->zzn()V

    return-void
.end method

.method protected final zzi(Z)Lcom/google/android/libraries/places/internal/zzbib;
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "serviceConfig"

    new-instance v5, Lcom/google/android/libraries/places/internal/zzbib;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/android/libraries/places/internal/zzbib;-><init>(Lcom/google/android/libraries/places/internal/zzbia;)V

    :try_start_0
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    new-instance v9, Lcom/google/android/libraries/places/internal/zzazs;

    new-instance v10, Ljava/net/InetSocketAddress;

    iget v11, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzr:I

    invoke-direct {v10, v8, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    sget-object v8, Lcom/google/android/libraries/places/internal/zzaye;->zza:Lcom/google/android/libraries/places/internal/zzaye;

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lcom/google/android/libraries/places/internal/zzazs;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzaye;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/libraries/places/internal/zzbib;->zzd(Lcom/google/android/libraries/places/internal/zzbib;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget-boolean v0, Lcom/google/android/libraries/places/internal/zzbih;->zzc:Z

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    sget-boolean v8, Lcom/google/android/libraries/places/internal/zzbih;->zza:Z

    sget-boolean v9, Lcom/google/android/libraries/places/internal/zzbih;->zzb:Z

    if-nez v8, :cond_1

    :goto_1
    move-object v0, v6

    goto :goto_4

    :cond_1
    const-string v8, "localhost"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v9, :cond_7

    goto :goto_1

    :cond_2
    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v2

    move v9, v3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_6

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_5

    const/16 v11, 0x30

    if-lt v10, v11, :cond_4

    const/16 v11, 0x39

    if-gt v10, v11, :cond_4

    move v10, v3

    goto :goto_3

    :cond_4
    move v10, v2

    :goto_3
    and-int/2addr v9, v10

    :cond_5
    add-int/2addr v8, v3

    goto :goto_2

    :cond_6
    if-eqz v9, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbif;

    if-nez v0, :cond_8

    sget-object v8, Lcom/google/android/libraries/places/internal/zzbih;->zzl:Lcom/google/android/libraries/places/internal/zzbig;

    if-eqz v8, :cond_8

    invoke-interface {v8}, Lcom/google/android/libraries/places/internal/zzbig;->zza()Lcom/google/android/libraries/places/internal/zzbif;

    move-result-object v0

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    :try_start_2
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbif;->zza()Ljava/util/List;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v13, v0

    sget-object v8, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v11, "resolveServiceConfig"

    const-string v12, "ServiceConfig resolution failure"

    const-string v10, "io.grpc.internal.DnsNameResolver"

    invoke-virtual/range {v8 .. v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzn:Ljava/util/Random;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbih;->zzm()Ljava/lang/String;

    move-result-object v8

    :try_start_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "grpc_config="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    sget-object v12, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "io.grpc.internal.DnsNameResolver"

    const-string v15, "parseTxtResults"

    const-string v16, "Ignoring non service config {0}"

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v10, v11, v2

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_e

    :catch_3
    move-exception v0

    goto/16 :goto_e

    :cond_a
    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzbkf;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Ljava/util/List;

    if-eqz v11, :cond_b

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzbkg;->zzf(Ljava/util/List;)Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wrong type "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_c
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v9, v6

    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    :try_start_4
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    sget-object v12, Lcom/google/android/libraries/places/internal/zzbih;->zzh:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "Bad key: %s"

    invoke-static {v12, v13, v11}, Lcom/google/android/libraries/places/internal/zzng;->zza(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_c

    :cond_e
    const-string v10, "clientLanguage"

    invoke-static {v9, v10}, Lcom/google/android/libraries/places/internal/zzbkg;->zzi(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_11

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_11

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "java"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_9

    :cond_10
    :goto_8
    move-object v9, v6

    goto :goto_b

    :cond_11
    :goto_9
    const-string v10, "percentage"

    invoke-static {v9, v10}, Lcom/google/android/libraries/places/internal/zzbkg;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    if-eqz v10, :cond_13

    invoke-virtual {v10}, Ljava/lang/Double;->intValue()I

    move-result v11

    const/16 v12, 0x64

    if-ltz v11, :cond_12

    if-gt v11, v12, :cond_12

    move v13, v3

    goto :goto_a

    :cond_12
    move v13, v2

    :goto_a
    const-string v14, "Bad percentage: %s"

    invoke-static {v13, v14, v10}, Lcom/google/android/libraries/places/internal/zzng;->zza(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    if-lt v10, v11, :cond_13

    goto :goto_8

    :cond_13
    const-string v10, "clientHostname"

    invoke-static {v9, v10}, Lcom/google/android/libraries/places/internal/zzbkg;->zzi(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_15

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_15

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_15
    invoke-static {v9, v4}, Lcom/google/android/libraries/places/internal/zzbkg;->zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_16

    move-object v9, v10

    :goto_b
    if-eqz v9, :cond_d

    goto :goto_d

    :cond_16
    new-instance v0, Lcom/google/android/libraries/places/internal/zznh;

    const-string v7, "key \'%s\' missing in \'%s\'"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v2

    aput-object v4, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/libraries/places/internal/zznh;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_c
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v3, "failed to pick service config choice"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbcp;

    move-result-object v0

    goto :goto_f

    :cond_17
    :goto_d
    if-nez v9, :cond_18

    move-object v0, v6

    goto :goto_f

    :cond_18
    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzbcp;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbcp;

    move-result-object v0

    goto :goto_f

    :goto_e
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v3, "failed to parse TXT records"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbcp;

    move-result-object v0

    :goto_f
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zzc()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zzc()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbcp;

    move-result-object v6

    goto :goto_10

    :cond_19
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zzd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzz:Lcom/google/android/libraries/places/internal/zzbcu;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzbcu;->zza(Ljava/util/Map;)Lcom/google/android/libraries/places/internal/zzbcp;

    move-result-object v6

    goto :goto_10

    :cond_1a
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    sget-object v7, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v0, v12, v2

    const-string v10, "resolveServiceConfig"

    const-string v11, "No TXT records found for {0}"

    const-string v9, "io.grpc.internal.DnsNameResolver"

    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    :goto_10
    invoke-static {v5, v6}, Lcom/google/android/libraries/places/internal/zzbib;->zze(Lcom/google/android/libraries/places/internal/zzbib;Lcom/google/android/libraries/places/internal/zzbcp;)V

    :cond_1c
    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_11

    :catch_5
    move-exception v0

    move-object v6, v0

    goto :goto_12

    :goto_11
    move-object v11, v6

    goto :goto_13

    :goto_12
    :try_start_5
    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zznd;->zza(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_13
    if-eqz v11, :cond_1d

    :try_start_6
    sget-object v6, Lcom/google/android/libraries/places/internal/zzbih;->zzg:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "io.grpc.internal.DnsNameResolver"

    const-string v9, "resolveAddresses"

    const-string v10, "Address resolution failure"

    invoke-virtual/range {v6 .. v11}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_14
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbih;->zzq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v4, "Unable to resolve host "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/libraries/places/internal/zzbib;->zzf(Lcom/google/android/libraries/places/internal/zzbib;Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-object v5
.end method
