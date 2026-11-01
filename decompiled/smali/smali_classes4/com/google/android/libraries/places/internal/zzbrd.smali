.class final Lcom/google/android/libraries/places/internal/zzbrd;
.super Lcom/google/android/libraries/places/internal/zzbrh;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzbvq;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbri;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbri;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrd;->zzb:Lcom/google/android/libraries/places/internal/zzbri;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzbrh;-><init>(Lcom/google/android/libraries/places/internal/zzbri;Lcom/google/android/libraries/places/internal/zzbrg;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbvr;->zza()Lcom/google/android/libraries/places/internal/zzbvq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrd;->zza:Lcom/google/android/libraries/places/internal/zzbvq;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    sget v1, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrd;->zzb:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbri;->zze(Lcom/google/android/libraries/places/internal/zzbri;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbrd;->zzb:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbri;->zzg(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwb;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbri;->zzg(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/libraries/places/internal/zzbwb;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbrd;->zzb:Lcom/google/android/libraries/places/internal/zzbri;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzbri;->zzj(Lcom/google/android/libraries/places/internal/zzbri;Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrd;->zzb:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbri;->zzh(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwq;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrd;->zzb:Lcom/google/android/libraries/places/internal/zzbri;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbri;->zzh(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbwq;->flush()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
