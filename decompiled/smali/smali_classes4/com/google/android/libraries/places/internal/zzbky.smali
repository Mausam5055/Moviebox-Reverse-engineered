.class final Lcom/google/android/libraries/places/internal/zzbky;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private zza:Ljava/util/concurrent/Executor;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbqn;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbqn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbky;->zzb:Lcom/google/android/libraries/places/internal/zzbqn;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbky;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final declared-synchronized zza()Ljava/util/concurrent/Executor;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbky;->zza:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbky;->zzb:Lcom/google/android/libraries/places/internal/zzbqn;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbqn;->zzb()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbky;->zza:Ljava/util/concurrent/Executor;

    const-string v2, "%s.getObject()"

    invoke-static {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbky;->zza:Ljava/util/concurrent/Executor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbky;->zza:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final declared-synchronized zzb()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbky;->zza:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbky;->zzb:Lcom/google/android/libraries/places/internal/zzbqn;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbqn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbky;->zza:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
