.class final Lcom/google/android/libraries/places/internal/zzbpg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzboy;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbpm;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbpl;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpl;Lcom/google/android/libraries/places/internal/zzboy;Lcom/google/android/libraries/places/internal/zzbpm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbpg;->zza:Lcom/google/android/libraries/places/internal/zzboy;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbpg;->zzb:Lcom/google/android/libraries/places/internal/zzbpm;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpg;->zzc:Lcom/google/android/libraries/places/internal/zzbpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpg;->zza:Lcom/google/android/libraries/places/internal/zzboy;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzboy;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbpg;->zza:Lcom/google/android/libraries/places/internal/zzboy;

    iget-boolean v2, v1, Lcom/google/android/libraries/places/internal/zzboy;->zzc:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzboy;->zza()Ljava/util/concurrent/Future;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpg;->zzc:Lcom/google/android/libraries/places/internal/zzbpl;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzK(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbpf;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbpf;-><init>(Lcom/google/android/libraries/places/internal/zzbpg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
