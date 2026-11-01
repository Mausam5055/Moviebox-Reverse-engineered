.class final Lcom/google/android/libraries/places/internal/zzbob;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzboe;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzboe;Lcom/google/android/libraries/places/internal/zzboa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbob;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbob;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zzj(Lcom/google/android/libraries/places/internal/zzboe;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzboe;->zzg(Lcom/google/android/libraries/places/internal/zzboe;Ljava/util/concurrent/ScheduledFuture;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zzb(Lcom/google/android/libraries/places/internal/zzboe;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zza(Lcom/google/android/libraries/places/internal/zzboe;)J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbob;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zze(Lcom/google/android/libraries/places/internal/zzboe;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v5, Lcom/google/android/libraries/places/internal/zzbod;

    invoke-direct {v5, v0, v2}, Lcom/google/android/libraries/places/internal/zzbod;-><init>(Lcom/google/android/libraries/places/internal/zzboe;Lcom/google/android/libraries/places/internal/zzboc;)V

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zza(Lcom/google/android/libraries/places/internal/zzboe;)J

    move-result-wide v6

    sub-long/2addr v6, v3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v6, v7, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzboe;->zzg(Lcom/google/android/libraries/places/internal/zzboe;Ljava/util/concurrent/ScheduledFuture;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbob;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzboe;->zzf(Lcom/google/android/libraries/places/internal/zzboe;Z)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbob;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzboe;->zzg(Lcom/google/android/libraries/places/internal/zzboe;Ljava/util/concurrent/ScheduledFuture;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbob;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zzc(Lcom/google/android/libraries/places/internal/zzboe;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
