.class public final Lcom/google/android/libraries/places/internal/zzbag;
.super Ljava/lang/Object;


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/security/cert/Certificate;

.field public final zzc:Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSession;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    if-eqz v4, :cond_1

    aget-object v3, v4, v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v10, v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbah;->zzb()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string p1, "Peer cert not available for peerHost=%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "io.grpc.InternalChannelz$Tls"

    const-string v8, "<init>"

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbag;->zza:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbag;->zzb:Ljava/security/cert/Certificate;

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbag;->zzc:Ljava/security/cert/Certificate;

    return-void
.end method
