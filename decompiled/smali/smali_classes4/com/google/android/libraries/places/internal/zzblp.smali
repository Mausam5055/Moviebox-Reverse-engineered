.class final Lcom/google/android/libraries/places/internal/zzblp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzblq;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzblq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblp;->zza:Lcom/google/android/libraries/places/internal/zzblq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblp;->zza:Lcom/google/android/libraries/places/internal/zzblq;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblq;->zzd:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzF(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzF(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblp;->zza:Lcom/google/android/libraries/places/internal/zzblq;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblq;->zzd:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzF(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblp;->zza:Lcom/google/android/libraries/places/internal/zzblq;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblq;->zzd:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzg:Lcom/google/android/libraries/places/internal/zzbji;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzE(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbji;->zzc(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblp;->zza:Lcom/google/android/libraries/places/internal/zzblq;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblq;->zzd:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzM(Lcom/google/android/libraries/places/internal/zzbma;Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblp;->zza:Lcom/google/android/libraries/places/internal/zzblq;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblq;->zzd:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzK(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblp;->zza:Lcom/google/android/libraries/places/internal/zzblq;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblq;->zzd:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzz(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblz;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzblz;->zza:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbma;->zzd:Lcom/google/android/libraries/places/internal/zzbdo;

    monitor-enter v1

    :try_start_0
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzblz;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    if-eqz v3, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzblz;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzblz;->zzb:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblz;->zzd:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzu(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbhg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbhg;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method
