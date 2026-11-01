.class final Lcom/google/android/libraries/places/internal/zzec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzajv;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzaka;

.field final synthetic zzc:Lcom/google/android/gms/tasks/CancellationTokenSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/libraries/places/internal/zzaka;Lcom/google/android/gms/tasks/CancellationTokenSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzec;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzec;->zzb:Lcom/google/android/libraries/places/internal/zzaka;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzec;->zzc:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzec;->zzb:Lcom/google/android/libraries/places/internal/zzaka;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzec;->zzc:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/CancellationTokenSource;->cancel()V

    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzec;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzec;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzec;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
