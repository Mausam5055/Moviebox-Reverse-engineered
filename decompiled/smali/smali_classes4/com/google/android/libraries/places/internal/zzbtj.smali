.class final Lcom/google/android/libraries/places/internal/zzbtj;
.super Lcom/google/android/libraries/places/internal/zzbtl;


# instance fields
.field private final zzb:Ljava/lang/reflect/Method;

.field private final zzc:Ljava/lang/reflect/Method;

.field private final zzd:Ljava/lang/reflect/Method;

.field private final zze:Ljava/lang/Class;

.field private final zzf:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;Ljava/security/Provider;)V
    .locals 0

    invoke-direct {p0, p6}, Lcom/google/android/libraries/places/internal/zzbtl;-><init>(Ljava/security/Provider;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzb:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzc:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzd:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zze:Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzf:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final zza(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzc:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbtk;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbtk;->zzb(Lcom/google/android/libraries/places/internal/zzbtk;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbtk;->zza(Lcom/google/android/libraries/places/internal/zzbtk;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "io.grpc.okhttp.internal.Platform$JdkWithJettyBootPlatform"

    const-string v3, "getSelectedProtocol"

    const-string v4, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?"

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbtk;->zzb(Lcom/google/android/libraries/places/internal/zzbtk;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbtk;->zza(Lcom/google/android/libraries/places/internal/zzbtk;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 7

    const/4 p2, 0x2

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/zzbtm;

    sget-object v6, Lcom/google/android/libraries/places/internal/zzbtm;->zza:Lcom/google/android/libraries/places/internal/zzbtm;

    if-eq v5, v6, :cond_0

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbtm;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    :try_start_0
    const-class p3, Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zze:Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzf:Ljava/lang/Class;

    new-array v5, p2, [Ljava/lang/Class;

    aput-object v2, v5, v3

    aput-object v4, v5, v0

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtk;

    invoke-direct {v2, v1}, Lcom/google/android/libraries/places/internal/zzbtk;-><init>(Ljava/util/List;)V

    invoke-static {p3, v5, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzb:Ljava/lang/reflect/Method;

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    aput-object p3, p2, v0

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :goto_2
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public final zzc()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzd(Ljavax/net/ssl/SSLSocket;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtj;->zzd:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v5, p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "afterHandshake"

    const-string v4, "Failed to remove SSLSocket from Jetty ALPN"

    const-string v2, "io.grpc.okhttp.internal.Platform$JdkWithJettyBootPlatform"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
