.class final Lcom/google/android/libraries/places/internal/zzbhf;
.super Lcom/google/android/libraries/places/internal/zzbhy;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbhg;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbbf;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzazj;

.field private final zzd:[Lcom/google/android/libraries/places/internal/zzayx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbhg;Lcom/google/android/libraries/places/internal/zzbbf;[Lcom/google/android/libraries/places/internal/zzayx;Lcom/google/android/libraries/places/internal/zzbhe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zza:Lcom/google/android/libraries/places/internal/zzbhg;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbhy;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazj;->zzb()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zzc:Lcom/google/android/libraries/places/internal/zzazj;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zzb:Lcom/google/android/libraries/places/internal/zzbbf;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zzd:[Lcom/google/android/libraries/places/internal/zzayx;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbhf;)Lcom/google/android/libraries/places/internal/zzbbf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zzb:Lcom/google/android/libraries/places/internal/zzbbf;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbhf;Lcom/google/android/libraries/places/internal/zzbfu;)Ljava/lang/Runnable;
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zzc:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazj;->zza()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zzb:Lcom/google/android/libraries/places/internal/zzbbf;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbbf;->zzc()Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbbf;->zzb()Lcom/google/android/libraries/places/internal/zzbcf;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbbf;->zza()Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zzd:[Lcom/google/android/libraries/places/internal/zzayx;

    invoke-interface {p1, v2, v3, v1, v4}, Lcom/google/android/libraries/places/internal/zzbfu;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zzc:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzazj;->zze(Lcom/google/android/libraries/places/internal/zzazj;)V

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbhy;->zze(Lcom/google/android/libraries/places/internal/zzbfr;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zzc:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzazj;->zze(Lcom/google/android/libraries/places/internal/zzazj;)V

    throw p1
.end method


# virtual methods
.method protected final zzc(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zzd:[Lcom/google/android/libraries/places/internal/zzayx;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzg(Lcom/google/android/libraries/places/internal/zzbjj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zzb:Lcom/google/android/libraries/places/internal/zzbbf;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbf;->zza()Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzayj;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wait_for_ready"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbjj;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbjj;

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/libraries/places/internal/zzbhy;->zzg(Lcom/google/android/libraries/places/internal/zzbjj;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/libraries/places/internal/zzbhy;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zza:Lcom/google/android/libraries/places/internal/zzbhg;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbhg;->zzg(Lcom/google/android/libraries/places/internal/zzbhg;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zza:Lcom/google/android/libraries/places/internal/zzbhg;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhg;->zzi(Lcom/google/android/libraries/places/internal/zzbhg;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhg;->zzk(Lcom/google/android/libraries/places/internal/zzbhg;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zza:Lcom/google/android/libraries/places/internal/zzbhg;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbhg;->zzn()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zza:Lcom/google/android/libraries/places/internal/zzbhg;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhg;->zze(Lcom/google/android/libraries/places/internal/zzbhg;)Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhg;->zzh(Lcom/google/android/libraries/places/internal/zzbhg;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zza:Lcom/google/android/libraries/places/internal/zzbhg;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhg;->zzb(Lcom/google/android/libraries/places/internal/zzbhg;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhg;->zze(Lcom/google/android/libraries/places/internal/zzbhg;)Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhg;->zzi(Lcom/google/android/libraries/places/internal/zzbhg;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zza:Lcom/google/android/libraries/places/internal/zzbhg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbhg;->zzl(Lcom/google/android/libraries/places/internal/zzbhg;Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhf;->zza:Lcom/google/android/libraries/places/internal/zzbhg;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbhg;->zze(Lcom/google/android/libraries/places/internal/zzbhg;)Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
