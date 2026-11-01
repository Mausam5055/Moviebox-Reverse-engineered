.class public Lcom/google/android/libraries/places/internal/zzbtl;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Ljava/util/logging/Logger;

.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:Lcom/google/android/libraries/places/internal/zzbtl;


# instance fields
.field private final zzd:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    const-string v0, "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider"

    const-string v1, "com.google.android.libraries.stitch.sslguard.SslGuardProvider"

    const-string v2, "com.google.android.gms.org.conscrypt.OpenSSLProvider"

    const-string v3, "org.conscrypt.OpenSSLProvider"

    const-string v4, "com.android.org.conscrypt.OpenSSLProvider"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtl;->zzb:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbtl;->zzh()Lcom/google/android/libraries/places/internal/zzbtl;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtl;->zzc:Lcom/google/android/libraries/places/internal/zzbtl;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtl;->zzd:Ljava/security/Provider;

    return-void
.end method

.method public static zze()Lcom/google/android/libraries/places/internal/zzbtl;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtl;->zzc:Lcom/google/android/libraries/places/internal/zzbtl;

    return-object v0
.end method

.method public static zzg(Ljava/util/List;)[B
    .locals 5

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzbtm;

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbtm;->zza:Lcom/google/android/libraries/places/internal/zzbtm;

    if-eq v3, v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbtm;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbtm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzs(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwb;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzH(J)[B

    move-result-object p0

    return-object p0
.end method

.method private static zzh()Lcom/google/android/libraries/places/internal/zzbtl;
    .locals 22

    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    const-string v1, "getApplicationProtocol"

    const/4 v3, 0x1

    const-class v4, Lcom/google/android/libraries/places/internal/zzbtl;

    const-class v5, Ljava/net/Socket;

    const-class v6, Ljavax/net/ssl/SSLSocket;

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const/4 v11, 0x0

    if-ge v10, v8, :cond_2

    aget-object v12, v7, v10

    sget-object v13, Lcom/google/android/libraries/places/internal/zzbtl;->zzb:[Ljava/lang/String;

    array-length v14, v13

    move v14, v9

    :goto_1
    const/4 v15, 0x5

    if-ge v14, v15, :cond_1

    aget-object v15, v13, v14

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v16, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    sget-object v17, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v19, "getAndroidSecurityProvider"

    const-string v20, "Found registered provider {0}"

    const-string v18, "io.grpc.okhttp.internal.Platform"

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v20, v12

    goto :goto_2

    :cond_0
    add-int/2addr v14, v3

    goto :goto_1

    :cond_1
    add-int/2addr v10, v3

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "getAndroidSecurityProvider"

    const-string v10, "Unable to find Conscrypt"

    const-string v12, "io.grpc.okhttp.internal.Platform"

    invoke-virtual {v2, v7, v12, v8, v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v11

    :goto_2
    if-eqz v20, :cond_5

    new-instance v14, Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v9

    const-string v1, "setUseSessionTickets"

    invoke-direct {v14, v11, v1, v0}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v9

    const-string v1, "setHostname"

    invoke-direct {v15, v11, v1, v0}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v0, v9, [Ljava/lang/Class;

    const-string v2, "getAlpnSelectedProtocol"

    const-class v6, [B

    invoke-direct {v1, v6, v2, v0}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v0, v3, [Ljava/lang/Class;

    aput-object v6, v0, v9

    const-string v6, "setAlpnProtocols"

    invoke-direct {v2, v11, v6, v0}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    :try_start_0
    const-string v0, "android.net.TrafficStats"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "tagSocket"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v5, v7, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v7, "untagSocket"

    new-array v8, v3, [Ljava/lang/Class;

    aput-object v5, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_3
    move-object/from16 v16, v6

    move-object/from16 v17, v11

    goto :goto_4

    :catch_1
    move-object v6, v11

    goto :goto_3

    :goto_4
    invoke-virtual/range {v20 .. v20}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "GmsCore_OpenSSL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Conscrypt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Ssl_Guard"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_5
    move/from16 v21, v3

    goto :goto_6

    :cond_4
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v5, "android.net.Network"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v11, v0

    sget-object v6, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "isAtLeastAndroid5"

    const-string v10, "Can\'t find class"

    const-string v8, "io.grpc.okhttp.internal.Platform"

    invoke-virtual/range {v6 .. v11}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "android.app.ActivityOptions"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v21, 0x2

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v9, v0

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "isAtLeastAndroid41"

    const-string v8, "Can\'t find class"

    const-string v6, "io.grpc.okhttp.internal.Platform"

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x3

    move/from16 v21, v0

    :goto_6
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtg;

    move-object v13, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v13 .. v21}, Lcom/google/android/libraries/places/internal/zzbtg;-><init>(Lcom/google/android/libraries/places/internal/zzbtf;Lcom/google/android/libraries/places/internal/zzbtf;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/google/android/libraries/places/internal/zzbtf;Lcom/google/android/libraries/places/internal/zzbtf;Ljava/security/Provider;I)V

    return-object v0

    :cond_5
    :try_start_4
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v2
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    const-string v4, "TLS"

    invoke-static {v4, v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    invoke-virtual {v4, v11, v11, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v4

    const-class v5, Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v4, Ljavax/net/ssl/SSLParameters;

    const-string v5, "setApplicationProtocols"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, [Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v6, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v5, Lcom/google/android/libraries/places/internal/zzbti;

    invoke-direct {v5, v2, v4, v1, v11}, Lcom/google/android/libraries/places/internal/zzbti;-><init>(Ljava/security/Provider;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/google/android/libraries/places/internal/zzbth;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_4

    return-object v5

    :catch_4
    :try_start_6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "$Provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$ClientProvider"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$ServerProvider"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    const-string v0, "put"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v6, v5, v9

    aput-object v4, v5, v3

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const-string v0, "get"

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v6, v4, v9

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    const-string v0, "remove"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v6, v3, v9

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtj;

    move-object v12, v0

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/google/android/libraries/places/internal/zzbtj;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;Ljava/security/Provider;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5

    return-object v0

    :catch_5
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-direct {v0, v2}, Lcom/google/android/libraries/places/internal/zzbtl;-><init>(Ljava/security/Provider;)V

    return-object v0

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public zza(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public zzc()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public zzd(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method

.method public final zzf()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtl;->zzd:Ljava/security/Provider;

    return-object v0
.end method
