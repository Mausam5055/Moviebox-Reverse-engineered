.class final Lcom/google/android/libraries/places/internal/zzbsj;
.super Lcom/google/android/libraries/places/internal/zzbsk;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzbtf;

.field private static final zzc:Lcom/google/android/libraries/places/internal/zzbtf;

.field private static final zzd:Lcom/google/android/libraries/places/internal/zzbtf;

.field private static final zze:Lcom/google/android/libraries/places/internal/zzbtf;

.field private static final zzf:Lcom/google/android/libraries/places/internal/zzbtf;

.field private static final zzg:Lcom/google/android/libraries/places/internal/zzbtf;

.field private static final zzh:Ljava/lang/reflect/Method;

.field private static final zzi:Ljava/lang/reflect/Method;

.field private static final zzj:Ljava/lang/reflect/Method;

.field private static final zzk:Ljava/lang/reflect/Method;

.field private static final zzl:Ljava/lang/reflect/Method;

.field private static final zzm:Ljava/lang/reflect/Method;

.field private static final zzn:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-class v0, Ljavax/net/ssl/SSLParameters;

    const-class v1, Ljavax/net/ssl/SSLSocket;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v7, 0x0

    const-string v8, "setUseSessionTickets"

    invoke-direct {v2, v7, v8, v5}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zzb:Lcom/google/android/libraries/places/internal/zzbtf;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    const-class v5, Ljava/lang/String;

    new-array v9, v4, [Ljava/lang/Class;

    aput-object v5, v9, v6

    const-string v10, "setHostname"

    invoke-direct {v2, v7, v10, v9}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zzc:Lcom/google/android/libraries/places/internal/zzbtf;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, [B

    const-string v11, "getAlpnSelectedProtocol"

    invoke-direct {v2, v10, v11, v9}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zzd:Lcom/google/android/libraries/places/internal/zzbtf;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v9, v4, [Ljava/lang/Class;

    aput-object v10, v9, v6

    const-string v11, "setAlpnProtocols"

    invoke-direct {v2, v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zze:Lcom/google/android/libraries/places/internal/zzbtf;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    const-string v9, "getNpnSelectedProtocol"

    new-array v11, v6, [Ljava/lang/Class;

    invoke-direct {v2, v10, v9, v11}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zzf:Lcom/google/android/libraries/places/internal/zzbtf;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v9, v4, [Ljava/lang/Class;

    aput-object v10, v9, v6

    const-string v10, "setNpnProtocols"

    invoke-direct {v2, v7, v10, v9}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zzg:Lcom/google/android/libraries/places/internal/zzbtf;

    :try_start_0
    const-string v2, "setApplicationProtocols"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, [Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    const-string v9, "getApplicationProtocols"

    invoke-virtual {v0, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    const-string v10, "getApplicationProtocol"

    invoke-virtual {v1, v10, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    const-string v11, "android.net.ssl.SSLSockets"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "isSupportedSocket"

    new-array v13, v4, [Ljava/lang/Class;

    aput-object v1, v13, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v13, 0x2

    :try_start_4
    new-array v13, v13, [Ljava/lang/Class;

    aput-object v1, v13, v6

    aput-object v3, v13, v4

    invoke-virtual {v11, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_f

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    move-object v13, v1

    move-object v1, v9

    move-object v3, v10

    move-object v14, v12

    goto/16 :goto_b

    :goto_1
    move-object v13, v1

    move-object v1, v9

    move-object v3, v10

    move-object v14, v12

    goto/16 :goto_e

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :goto_2
    move-object v13, v1

    move-object v14, v7

    move-object v1, v9

    move-object v3, v10

    goto :goto_b

    :goto_3
    move-object v13, v1

    move-object v14, v7

    move-object v1, v9

    move-object v3, v10

    goto/16 :goto_e

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_5

    :goto_4
    move-object v13, v1

    move-object v3, v7

    move-object v14, v3

    move-object v1, v9

    goto :goto_b

    :goto_5
    move-object v13, v1

    move-object v3, v7

    move-object v14, v3

    move-object v1, v9

    goto :goto_e

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_8

    :goto_6
    move-object v13, v1

    move-object v1, v7

    move-object v3, v1

    :goto_7
    move-object v14, v3

    goto :goto_b

    :goto_8
    move-object v13, v1

    move-object v1, v7

    move-object v3, v1

    :goto_9
    move-object v14, v3

    goto :goto_e

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v1

    goto :goto_d

    :goto_a
    move-object v13, v1

    move-object v1, v7

    move-object v2, v1

    move-object v3, v2

    goto :goto_7

    :goto_b
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v11, "<clinit>"

    const-string v12, "Failed to find Android 10.0+ APIs"

    const-string v10, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    invoke-virtual/range {v8 .. v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    move-object v9, v1

    move-object v10, v3

    move-object v1, v7

    move-object v12, v14

    goto :goto_f

    :goto_d
    move-object v13, v1

    move-object v1, v7

    move-object v2, v1

    move-object v3, v2

    goto :goto_9

    :goto_e
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v11, "<clinit>"

    const-string v12, "Failed to find Android 10.0+ APIs"

    const-string v10, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    invoke-virtual/range {v8 .. v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :goto_f
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zzj:Ljava/lang/reflect/Method;

    sput-object v9, Lcom/google/android/libraries/places/internal/zzbsj;->zzk:Ljava/lang/reflect/Method;

    sput-object v10, Lcom/google/android/libraries/places/internal/zzbsj;->zzl:Ljava/lang/reflect/Method;

    sput-object v12, Lcom/google/android/libraries/places/internal/zzbsj;->zzh:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbsj;->zzi:Ljava/lang/reflect/Method;

    :try_start_5
    const-string v1, "setServerNames"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_c

    :try_start_6
    const-string v1, "javax.net.ssl.SNIHostName"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    aput-object v5, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_16

    :catch_a
    move-exception v1

    goto :goto_10

    :catch_b
    move-exception v1

    goto :goto_11

    :goto_10
    move-object v6, v1

    goto :goto_13

    :goto_11
    move-object v6, v1

    goto :goto_15

    :catch_c
    move-exception v0

    move-object v1, v0

    goto :goto_12

    :catch_d
    move-exception v0

    move-object v1, v0

    goto :goto_14

    :goto_12
    move-object v6, v1

    move-object v0, v7

    :goto_13
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v4, "<clinit>"

    const-string v5, "Failed to find Android 7.0+ APIs"

    const-string v3, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :goto_14
    move-object v6, v1

    move-object v0, v7

    :goto_15
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v4, "<clinit>"

    const-string v5, "Failed to find Android 7.0+ APIs"

    const-string v3, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbsj;->zzm:Ljava/lang/reflect/Method;

    sput-object v7, Lcom/google/android/libraries/places/internal/zzbsj;->zzn:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbtl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsk;-><init>(Lcom/google/android/libraries/places/internal/zzbtl;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 10

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsj;->zzl:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "getSelectedProtocol"

    const-string v4, "Socket unsupported for getApplicationProtocol, will try old methods"

    const-string v5, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    invoke-virtual {v0, v2, v5, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbtl;->zzc()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    :try_start_1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsj;->zzd:Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/libraries/places/internal/zzbtf;->zzb(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/String;

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbto;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    :catch_2
    move-exception v0

    move-object v9, v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "getSelectedProtocol"

    const-string v8, "Failed calling getAlpnSelectedProtocol()"

    const-string v6, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbtl;->zzc()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    :try_start_2
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsj;->zzf:Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/libraries/places/internal/zzbtf;->zzb(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbto;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    return-object v0

    :catch_3
    move-exception p1

    move-object v7, p1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "getSelectedProtocol"

    const-string v6, "Failed calling getNpnSelectedProtocol()"

    const-string v4, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v1
.end method

.method public final zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsk;->zza(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsk;->zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected final zzc(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/zzbtm;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbtm;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    :try_start_0
    const-string v5, "_"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbjd;->zzf(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    const-string v6, "Userinfo must not be present on authority: \'%s\'"

    invoke-static {v5, v6, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbsj;->zzh:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_3

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbsj;->zzi:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v6, v0

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    goto/16 :goto_7

    :catch_2
    move-exception p1

    goto/16 :goto_8

    :cond_3
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbsj;->zzb:Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v6, v0, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v6, v1

    invoke-virtual {v5, p1, v6}, Lcom/google/android/libraries/places/internal/zzbtf;->zza(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbsj;->zzm:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_4

    sget-object v6, Lcom/google/android/libraries/places/internal/zzbsj;->zzn:Ljava/lang/reflect/Constructor;

    if-eqz v6, :cond_4

    new-array v7, v0, [Ljava/lang/Object;

    aput-object p2, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p2, v6, v1

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbsj;->zzc:Lcom/google/android/libraries/places/internal/zzbtf;

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p2, v6, v1

    invoke-virtual {v5, p1, v6}, Lcom/google/android/libraries/places/internal/zzbtf;->zza(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :catch_3
    :cond_5
    :goto_3
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbsj;->zzl:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p2, :cond_6

    :try_start_3
    invoke-virtual {p2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbsj;->zzj:Ljava/lang/reflect/Method;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {p2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0

    move p2, v0

    goto :goto_4

    :catch_4
    move-exception p2

    :try_start_4
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/UnsupportedOperationException;

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v6, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    const-string v7, "configureTlsExtensions"

    const-string v8, "setApplicationProtocol unsupported, will try old methods"

    invoke-virtual {p2, v5, v6, v7, v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move p2, v1

    goto :goto_4

    :cond_7
    throw p2

    :goto_4
    invoke-virtual {p1, v3}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    if-eqz p2, :cond_9

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbsj;->zzk:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v3

    invoke-virtual {p2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p2
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    return-void

    :cond_9
    :goto_5
    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzbtl;->zzg(Ljava/util/List;)[B

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbtl;->zzc()I

    move-result p2

    if-ne p2, v0, :cond_a

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbsj;->zze:Lcom/google/android/libraries/places/internal/zzbtf;

    invoke-virtual {p2, p1, p3}, Lcom/google/android/libraries/places/internal/zzbtf;->zzb(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbtl;->zzc()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_b

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbsj;->zzg:Lcom/google/android/libraries/places/internal/zzbtf;

    invoke-virtual {p2, p1, p3}, Lcom/google/android/libraries/places/internal/zzbtf;->zzb(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_7
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_8
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
