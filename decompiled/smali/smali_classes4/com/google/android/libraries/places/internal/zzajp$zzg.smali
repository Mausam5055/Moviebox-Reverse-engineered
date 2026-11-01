.class final Lcom/google/android/libraries/places/internal/zzajp$zzg;
.super Lcom/google/android/libraries/places/internal/zzajp$zza;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzajr;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzajp$zza;-><init>(Lcom/google/android/libraries/places/internal/zzajo;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzd;)Lcom/google/android/libraries/places/internal/zzajp$zzd;
    .locals 1

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzajp;->zzb(Lcom/google/android/libraries/places/internal/zzajp;)Lcom/google/android/libraries/places/internal/zzajp$zzd;

    move-result-object v0

    if-eq v0, p2, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzajp;->zzg(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzd;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzb(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzj;)Lcom/google/android/libraries/places/internal/zzajp$zzj;
    .locals 1

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzajp;->zzc(Lcom/google/android/libraries/places/internal/zzajp;)Lcom/google/android/libraries/places/internal/zzajp$zzj;

    move-result-object v0

    if-eq v0, p2, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzajp;->zzi(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzj;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzc(Lcom/google/android/libraries/places/internal/zzajp$zzj;Lcom/google/android/libraries/places/internal/zzajp$zzj;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/libraries/places/internal/zzajp$zzj;->next:Lcom/google/android/libraries/places/internal/zzajp$zzj;

    return-void
.end method

.method final zzd(Lcom/google/android/libraries/places/internal/zzajp$zzj;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/libraries/places/internal/zzajp$zzj;->thread:Ljava/lang/Thread;

    return-void
.end method

.method final zze(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzd;Lcom/google/android/libraries/places/internal/zzajp$zzd;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzajp;->zzb(Lcom/google/android/libraries/places/internal/zzajp;)Lcom/google/android/libraries/places/internal/zzajp$zzd;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzajp;->zzg(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzd;)V

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzf(Lcom/google/android/libraries/places/internal/zzajp;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzajp;->zzd(Lcom/google/android/libraries/places/internal/zzajp;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzajp;->zzh(Lcom/google/android/libraries/places/internal/zzajp;Ljava/lang/Object;)V

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzg(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzj;Lcom/google/android/libraries/places/internal/zzajp$zzj;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzajp;->zzc(Lcom/google/android/libraries/places/internal/zzajp;)Lcom/google/android/libraries/places/internal/zzajp$zzj;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzajp;->zzi(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzj;)V

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
