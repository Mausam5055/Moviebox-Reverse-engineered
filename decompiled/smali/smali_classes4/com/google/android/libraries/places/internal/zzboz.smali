.class final Lcom/google/android/libraries/places/internal/zzboz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbpm;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbpa;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpa;Lcom/google/android/libraries/places/internal/zzbpm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzboz;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzboz;->zzb:Lcom/google/android/libraries/places/internal/zzbpa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzboz;->zzb:Lcom/google/android/libraries/places/internal/zzbpa;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzH(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzboz;->zzb:Lcom/google/android/libraries/places/internal/zzbpa;

    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbpa;->zza:Lcom/google/android/libraries/places/internal/zzboy;

    iget-boolean v2, v2, Lcom/google/android/libraries/places/internal/zzboy;->zzc:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzboz;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    invoke-virtual {v2, v4}, Lcom/google/android/libraries/places/internal/zzbpd;->zza(Lcom/google/android/libraries/places/internal/zzbpm;)Lcom/google/android/libraries/places/internal/zzbpd;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbpo;->zzV(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpd;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzboz;->zzb:Lcom/google/android/libraries/places/internal/zzbpa;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbpo;->zzae(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpd;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzboz;->zzb:Lcom/google/android/libraries/places/internal/zzbpa;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzF(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpn;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzF(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbpn;->zza()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzboz;->zzb:Lcom/google/android/libraries/places/internal/zzbpa;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzboy;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzH(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/libraries/places/internal/zzboy;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/google/android/libraries/places/internal/zzbpo;->zzT(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzboy;)V

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzboz;->zzb:Lcom/google/android/libraries/places/internal/zzbpa;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbpd;->zzb()Lcom/google/android/libraries/places/internal/zzbpd;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzV(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpd;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzboz;->zzb:Lcom/google/android/libraries/places/internal/zzbpa;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v1, v3}, Lcom/google/android/libraries/places/internal/zzbpo;->zzT(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzboy;)V

    goto :goto_1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzboz;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzboz;->zzb:Lcom/google/android/libraries/places/internal/zzbpa;

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbpm;->zza:Lcom/google/android/libraries/places/internal/zzbfr;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbpl;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-direct {v3, v1, v0}, Lcom/google/android/libraries/places/internal/zzbpl;-><init>(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpm;)V

    invoke-interface {v2, v3}, Lcom/google/android/libraries/places/internal/zzbfr;->zzo(Lcom/google/android/libraries/places/internal/zzbft;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzboz;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpm;->zza:Lcom/google/android/libraries/places/internal/zzbfr;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v2, "Unneeded hedging"

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzboz;->zzb:Lcom/google/android/libraries/places/internal/zzbpa;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzM(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbpa;

    invoke-direct {v2, v0, v3}, Lcom/google/android/libraries/places/internal/zzbpa;-><init>(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzboy;)V

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzz(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbje;

    move-result-object v0

    iget-wide v4, v0, Lcom/google/android/libraries/places/internal/zzbje;->zzb:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/libraries/places/internal/zzboy;->zzb(Ljava/util/concurrent/Future;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzboz;->zzb:Lcom/google/android/libraries/places/internal/zzbpa;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzboz;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzX(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpm;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
