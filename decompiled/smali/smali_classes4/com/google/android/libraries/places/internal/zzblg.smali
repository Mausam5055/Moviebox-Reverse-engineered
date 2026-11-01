.class final Lcom/google/android/libraries/places/internal/zzblg;
.super Lcom/google/android/libraries/places/internal/zzbbd;


# instance fields
.field zza:Lcom/google/android/libraries/places/internal/zzbeq;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbma;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzblf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbba;)Lcom/google/android/libraries/places/internal/zzbbj;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzab(Lcom/google/android/libraries/places/internal/zzbma;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Channel is being terminated"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzblx;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzblx;-><init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbba;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzbdw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    return-object v0
.end method

.method public final zzc()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzy(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblu;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbld;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbld;-><init>(Lcom/google/android/libraries/places/internal/zzblg;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzd()V

    const-string v0, "newState"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzble;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/libraries/places/internal/zzble;-><init>(Lcom/google/android/libraries/places/internal/zzblg;Lcom/google/android/libraries/places/internal/zzbbk;Lcom/google/android/libraries/places/internal/zzaze;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method
