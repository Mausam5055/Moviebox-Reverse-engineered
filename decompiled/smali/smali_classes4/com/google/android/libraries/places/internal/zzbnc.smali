.class final Lcom/google/android/libraries/places/internal/zzbnc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbbl;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbnj;

.field private zzb:Lcom/google/android/libraries/places/internal/zzazf;

.field private zzc:Lcom/google/android/libraries/places/internal/zzbni;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbnj;Lcom/google/android/libraries/places/internal/zzbnb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zza:Lcom/google/android/libraries/places/internal/zzbnj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzazf;->zzb(Lcom/google/android/libraries/places/internal/zzaze;)Lcom/google/android/libraries/places/internal/zzazf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzb:Lcom/google/android/libraries/places/internal/zzazf;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbnc;)Lcom/google/android/libraries/places/internal/zzazf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzb:Lcom/google/android/libraries/places/internal/zzazf;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzbnc;Lcom/google/android/libraries/places/internal/zzazf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzb:Lcom/google/android/libraries/places/internal/zzazf;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/libraries/places/internal/zzbnc;Lcom/google/android/libraries/places/internal/zzbni;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzc:Lcom/google/android/libraries/places/internal/zzbni;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzazf;)V
    .locals 6

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbnj;->zzj()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzc:Lcom/google/android/libraries/places/internal/zzbni;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbni;->zzd(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzbbj;

    move-result-object v2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v5, v3

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const-string v3, "onSubchannelState"

    const-string v4, "Received health status {0} for subchannel {1}"

    const-string v2, "io.grpc.internal.PickFirstLeafLoadBalancer$HealthListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzb:Lcom/google/android/libraries/places/internal/zzazf;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zza:Lcom/google/android/libraries/places/internal/zzbnj;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzi(Lcom/google/android/libraries/places/internal/zzbnj;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzh(Lcom/google/android/libraries/places/internal/zzbnj;)Lcom/google/android/libraries/places/internal/zzbnd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbnd;->zzc()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbni;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbni;->zzf(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzbnc;

    move-result-object p1

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zza:Lcom/google/android/libraries/places/internal/zzbnj;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzc:Lcom/google/android/libraries/places/internal/zzbni;

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzl(Lcom/google/android/libraries/places/internal/zzbnj;Lcom/google/android/libraries/places/internal/zzbni;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbnj;->zzj()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "onSubchannelState"

    const-string v2, "Health listener received state change after subchannel was removed"

    const-string v3, "io.grpc.internal.PickFirstLeafLoadBalancer$HealthListener"

    invoke-virtual {p1, v0, v3, v1, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
