.class final Lcom/google/android/play/core/appupdate/internal/zzq;
.super Lcom/google/android/play/core/appupdate/internal/zzn;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzb:Lcom/google/android/play/core/appupdate/internal/zzn;

.field final synthetic zzc:Lcom/google/android/play/core/appupdate/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/appupdate/internal/h;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/appupdate/internal/zzn;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzb:Lcom/google/android/play/core/appupdate/internal/zzn;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->e(Lcom/google/android/play/core/appupdate/internal/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v2}, Lcom/google/android/play/core/appupdate/internal/h;->k(Lcom/google/android/play/core/appupdate/internal/h;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->g(Lcom/google/android/play/core/appupdate/internal/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/h;->d(Lcom/google/android/play/core/appupdate/internal/h;)Lcom/google/android/play/core/appupdate/internal/f;

    move-result-object v2

    const-string v3, "Already connected to the service."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/play/core/appupdate/internal/f;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzb:Lcom/google/android/play/core/appupdate/internal/zzn;

    invoke-static {v0, v2}, Lcom/google/android/play/core/appupdate/internal/h;->m(Lcom/google/android/play/core/appupdate/internal/h;Lcom/google/android/play/core/appupdate/internal/zzn;)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
