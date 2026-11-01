.class public final Lcom/google/android/libraries/places/internal/zzbaa;
.super Lcom/google/android/libraries/places/internal/zzbdd;


# instance fields
.field private final zza:Ljava/net/SocketAddress;

.field private final zzb:Ljava/net/InetSocketAddress;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzazz;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbdd;-><init>()V

    const-string p5, "proxyAddress"

    invoke-static {p1, p5}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "targetAddress"

    invoke-static {p2, p5}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p5, p1, Ljava/net/InetSocketAddress;

    if-eqz p5, :cond_0

    move-object p5, p1

    check-cast p5, Ljava/net/InetSocketAddress;

    invoke-virtual {p5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    const-string v0, "The proxy address %s is not resolved"

    invoke-static {p5, v0, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzr(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zza:Ljava/net/SocketAddress;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzb:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzazy;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzazy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzazy;-><init>(Lcom/google/android/libraries/places/internal/zzazx;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbaa;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbaa;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zza:Ljava/net/SocketAddress;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbaa;->zza:Ljava/net/SocketAddress;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzb:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbaa;->zzb:Ljava/net/InetSocketAddress;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbaa;->zzc:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzd:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbaa;->zzd:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zza:Ljava/net/SocketAddress;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzb:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzd:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "proxyAddr"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zza:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "targetAddr"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzb:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "username"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "hasPassword"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzmm;->zze(Ljava/lang/String;Z)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zzb:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final zze()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbaa;->zza:Ljava/net/SocketAddress;

    return-object v0
.end method
