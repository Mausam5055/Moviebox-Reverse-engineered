.class public final Lcom/google/android/libraries/places/internal/zzed;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/android/libraries/places/internal/zzaka;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    new-instance v2, Lcom/google/android/libraries/places/internal/zzec;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/libraries/places/internal/zzec;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/libraries/places/internal/zzaka;Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzakb;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/google/android/libraries/places/internal/zzajx;->zza(Lcom/google/android/libraries/places/internal/zzaka;Lcom/google/android/libraries/places/internal/zzajv;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
