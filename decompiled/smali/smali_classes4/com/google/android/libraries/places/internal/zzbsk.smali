.class Lcom/google/android/libraries/places/internal/zzbsk;
.super Ljava/lang/Object;


# static fields
.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Lcom/google/android/libraries/places/internal/zzbtl;

.field private static final zzd:Lcom/google/android/libraries/places/internal/zzbsk;


# instance fields
.field protected final zza:Lcom/google/android/libraries/places/internal/zzbtl;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lcom/google/android/libraries/places/internal/zzbsk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbsk;->zzb:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbtl;->zze()Lcom/google/android/libraries/places/internal/zzbtl;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbsk;->zzc:Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Unable to find Conscrypt. Skipping"

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbsk;->zzb:Ljava/util/logging/Logger;

    const-string v4, "io.grpc.okhttp.OkHttpProtocolNegotiator"

    const-string v5, "createNegotiator"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsj;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbsk;->zzc:Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbsj;-><init>(Lcom/google/android/libraries/places/internal/zzbtl;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Unable to find any OpenSSLSocketImpl. Skipping"

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbsk;->zzb:Ljava/util/logging/Logger;

    const-string v3, "io.grpc.okhttp.OkHttpProtocolNegotiator"

    const-string v4, "createNegotiator"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsk;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbsk;->zzc:Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbsk;-><init>(Lcom/google/android/libraries/places/internal/zzbtl;)V

    :goto_1
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbsk;->zzd:Lcom/google/android/libraries/places/internal/zzbsk;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbtl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "platform"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    return-void
.end method

.method public static zzd()Lcom/google/android/libraries/places/internal/zzbsk;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsk;->zzd:Lcom/google/android/libraries/places/internal/zzbsk;

    return-object v0
.end method

.method static bridge synthetic zze()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsk;->zzb:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public zza(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbtl;->zza(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsk;->zzc(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsk;->zza(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-virtual {p3, p1}, Lcom/google/android/libraries/places/internal/zzbtl;->zzd(Ljavax/net/ssl/SSLSocket;)V

    return-object p2

    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TLS ALPN negotiation failed with protocols: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-virtual {p3, p1}, Lcom/google/android/libraries/places/internal/zzbtl;->zzd(Ljavax/net/ssl/SSLSocket;)V

    throw p2
.end method

.method protected zzc(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbtl;->zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
