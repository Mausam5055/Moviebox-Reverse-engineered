.class final Lcom/google/android/libraries/places/internal/zzbnu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbde;


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zznc;

.field private static final zze:Lcom/google/android/libraries/places/internal/zzbns;


# instance fields
.field private final zzc:Lcom/google/android/libraries/places/internal/zznc;

.field private final zzd:Ljava/net/InetSocketAddress;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzbns;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzbnu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbns;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbns;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbnu;->zze:Lcom/google/android/libraries/places/internal/zzbns;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnt;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbnt;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbnu;->zzb:Lcom/google/android/libraries/places/internal/zznc;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbnu;->zzb:Lcom/google/android/libraries/places/internal/zznc;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbnu;->zze:Lcom/google/android/libraries/places/internal/zzbns;

    const-string v2, "GRPC_PROXY_EXP"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnu;->zzc:Lcom/google/android/libraries/places/internal/zznc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnu;->zzf:Lcom/google/android/libraries/places/internal/zzbns;

    if-eqz v2, :cond_1

    const-string v0, ":"

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    :goto_0
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "overrideProxy"

    const-string v5, "Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM."

    const-string v6, "io.grpc.internal.ProxyDetectorImpl"

    invoke-virtual {v2, v3, v6, v4, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnu;->zzd:Ljava/net/InetSocketAddress;

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnu;->zzd:Ljava/net/InetSocketAddress;

    return-void
.end method

.method static bridge synthetic zzb()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static final zzc(Ljava/net/InetSocketAddress;)Lcom/google/android/libraries/places/internal/zzbdd;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzbjd;->zze(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v9, Ljava/net/URI;

    const-string v2, "https"

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    const-string v2, "detectProxy"

    const-string v3, "io.grpc.internal.ProxyDetectorImpl"

    if-nez v1, :cond_0

    sget-object p0, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "proxy selector is null, so continuing without proxy lookup"

    invoke-virtual {p0, v1, v3, v2, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v1, v9}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "More than 1 proxy detected, gRPC will select the first one"

    invoke-virtual {v4, v5, v3, v2, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbjd;->zze(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    const-string v6, ""

    const/4 v7, 0x0

    const-string v5, "https"

    invoke-static/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/zzbns;->zza(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v4, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v1, v4

    :cond_3
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbaa;->zza()Lcom/google/android/libraries/places/internal/zzazy;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/libraries/places/internal/zzazy;->zzc(Ljava/net/InetSocketAddress;)Lcom/google/android/libraries/places/internal/zzazy;

    invoke-virtual {v3, v1}, Lcom/google/android/libraries/places/internal/zzazy;->zzb(Ljava/net/SocketAddress;)Lcom/google/android/libraries/places/internal/zzazy;

    if-nez v2, :cond_4

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzazy;->zze()Lcom/google/android/libraries/places/internal/zzbaa;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/libraries/places/internal/zzazy;->zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzazy;

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/libraries/places/internal/zzazy;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzazy;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzazy;->zze()Lcom/google/android/libraries/places/internal/zzbaa;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    move-object v6, p0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "detectProxy"

    const-string v5, "Failed to construct URI for proxy lookup, proceeding without proxy"

    const-string v3, "io.grpc.internal.ProxyDetectorImpl"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v12

    sget-object v7, Lcom/google/android/libraries/places/internal/zzbnu;->zza:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "detectProxy"

    const-string v11, "Failed to get host for proxy lookup, proceeding without proxy"

    const-string v9, "io.grpc.internal.ProxyDetectorImpl"

    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/net/SocketAddress;)Lcom/google/android/libraries/places/internal/zzbdd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnu;->zzd:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbaa;->zza()Lcom/google/android/libraries/places/internal/zzazy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzazy;->zzb(Ljava/net/SocketAddress;)Lcom/google/android/libraries/places/internal/zzazy;

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzazy;->zzc(Ljava/net/InetSocketAddress;)Lcom/google/android/libraries/places/internal/zzazy;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzazy;->zze()Lcom/google/android/libraries/places/internal/zzbaa;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbnu;->zzc(Ljava/net/InetSocketAddress;)Lcom/google/android/libraries/places/internal/zzbdd;

    move-result-object p1

    return-object p1
.end method
