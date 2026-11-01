.class final Lcom/google/android/libraries/places/internal/zzblh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzblj;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzblj;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzblh;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblh;->zzb:Lcom/google/android/libraries/places/internal/zzblj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbma;->zza:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzblh;->zzb:Lcom/google/android/libraries/places/internal/zzblj;

    iget-object v2, v6, Lcom/google/android/libraries/places/internal/zzblj;->zzc:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbma;->zzc()Lcom/google/android/libraries/places/internal/zzbap;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzblh;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    const/4 v9, 0x1

    aput-object v7, v5, v9

    const-string v3, "handleErrorInSyncContext"

    const-string v4, "[{0}] Failed to resolve name. status={1}"

    const-string v2, "io.grpc.internal.ManagedChannelImpl$NameResolverListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzblj;->zzc:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzx(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbls;->zzf()V

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzblj;->zzc:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzac(Lcom/google/android/libraries/places/internal/zzbma;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzg(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzaym;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v7, v1, v8

    const-string v3, "Failed to resolve name: {0}"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzblj;->zzc:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzbma;->zzad(Lcom/google/android/libraries/places/internal/zzbma;I)V

    :cond_0
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzblj;->zza:Lcom/google/android/libraries/places/internal/zzblg;

    iget-object v1, v6, Lcom/google/android/libraries/places/internal/zzblj;->zzc:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzw(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblg;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblg;->zza:Lcom/google/android/libraries/places/internal/zzbeq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbeq;->zza()Lcom/google/android/libraries/places/internal/zzbbm;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/libraries/places/internal/zzbbm;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method
