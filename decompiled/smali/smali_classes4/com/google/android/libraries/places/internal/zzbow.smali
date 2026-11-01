.class final Lcom/google/android/libraries/places/internal/zzbow;
.super Lcom/google/android/libraries/places/internal/zzayx;


# instance fields
.field zzb:J

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbpo;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbpm;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzc:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzayx;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzd:Lcom/google/android/libraries/places/internal/zzbpm;

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzc:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpd;->zzf:Lcom/google/android/libraries/places/internal/zzbpm;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzc:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzH(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzc:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbpd;->zzf:Lcom/google/android/libraries/places/internal/zzbpm;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzd:Lcom/google/android/libraries/places/internal/zzbpm;

    iget-boolean v2, v1, Lcom/google/android/libraries/places/internal/zzbpm;->zzb:Z

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzb:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzb:J

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzc:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzi(Lcom/google/android/libraries/places/internal/zzbpo;)J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-gtz p2, :cond_2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzf(Lcom/google/android/libraries/places/internal/zzbpo;)J

    move-result-wide v4

    cmp-long p2, v2, v4

    const/4 v4, 0x1

    if-lez p2, :cond_3

    iput-boolean v4, v1, Lcom/google/android/libraries/places/internal/zzbpm;->zzc:Z

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzB(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbox;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzi(Lcom/google/android/libraries/places/internal/zzbpo;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {p2, v2, v3}, Lcom/google/android/libraries/places/internal/zzbox;->zza(J)J

    move-result-wide p1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzc:Lcom/google/android/libraries/places/internal/zzbpo;

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzb:J

    invoke-static {v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbpo;->zzS(Lcom/google/android/libraries/places/internal/zzbpo;J)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzc:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzd(Lcom/google/android/libraries/places/internal/zzbpo;)J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzd:Lcom/google/android/libraries/places/internal/zzbpm;

    iput-boolean v4, p1, Lcom/google/android/libraries/places/internal/zzbpm;->zzc:Z

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzd:Lcom/google/android/libraries/places/internal/zzbpm;

    iget-boolean p2, p1, Lcom/google/android/libraries/places/internal/zzbpm;->zzc:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbow;->zzc:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzI(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpm;)Ljava/lang/Runnable;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    :try_start_1
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
