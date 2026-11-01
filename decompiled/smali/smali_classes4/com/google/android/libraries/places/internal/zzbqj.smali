.class final Lcom/google/android/libraries/places/internal/zzbqj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbqk;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbql;

.field final synthetic zzc:Ljava/lang/Object;

.field final synthetic zzd:Lcom/google/android/libraries/places/internal/zzbqm;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbqm;Lcom/google/android/libraries/places/internal/zzbqk;Lcom/google/android/libraries/places/internal/zzbql;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zza:Lcom/google/android/libraries/places/internal/zzbqk;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzb:Lcom/google/android/libraries/places/internal/zzbql;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzc:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzd:Lcom/google/android/libraries/places/internal/zzbqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzd:Lcom/google/android/libraries/places/internal/zzbqm;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zza:Lcom/google/android/libraries/places/internal/zzbqk;

    iget v1, v1, Lcom/google/android/libraries/places/internal/zzbqk;->zzb:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzb:Lcom/google/android/libraries/places/internal/zzbql;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzc:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/google/android/libraries/places/internal/zzbql;->zzb(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzd:Lcom/google/android/libraries/places/internal/zzbqm;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbqm;->zze(Lcom/google/android/libraries/places/internal/zzbqm;)Ljava/util/IdentityHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzb:Lcom/google/android/libraries/places/internal/zzbql;

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzd:Lcom/google/android/libraries/places/internal/zzbqm;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbqm;->zze(Lcom/google/android/libraries/places/internal/zzbqm;)Ljava/util/IdentityHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzd:Lcom/google/android/libraries/places/internal/zzbqm;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbqm;->zzf(Lcom/google/android/libraries/places/internal/zzbqm;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzd:Lcom/google/android/libraries/places/internal/zzbqm;

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbqm;->zzg(Lcom/google/android/libraries/places/internal/zzbqm;Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzd:Lcom/google/android/libraries/places/internal/zzbqm;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbqm;->zze(Lcom/google/android/libraries/places/internal/zzbqm;)Ljava/util/IdentityHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzb:Lcom/google/android/libraries/places/internal/zzbql;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzd:Lcom/google/android/libraries/places/internal/zzbqm;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbqm;->zze(Lcom/google/android/libraries/places/internal/zzbqm;)Ljava/util/IdentityHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzd:Lcom/google/android/libraries/places/internal/zzbqm;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbqm;->zzf(Lcom/google/android/libraries/places/internal/zzbqm;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbqj;->zzd:Lcom/google/android/libraries/places/internal/zzbqm;

    invoke-static {v3, v1}, Lcom/google/android/libraries/places/internal/zzbqm;->zzg(Lcom/google/android/libraries/places/internal/zzbqm;Ljava/util/concurrent/ScheduledExecutorService;)V

    :goto_0
    throw v2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
