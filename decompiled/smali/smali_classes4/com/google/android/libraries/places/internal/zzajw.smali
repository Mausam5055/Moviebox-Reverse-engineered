.class final Lcom/google/android/libraries/places/internal/zzajw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Ljava/util/concurrent/Future;

.field final zzb:Lcom/google/android/libraries/places/internal/zzajv;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/libraries/places/internal/zzajv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzajw;->zza:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzajw;->zzb:Lcom/google/android/libraries/places/internal/zzajv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzajw;->zza:Ljava/util/concurrent/Future;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzake;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzakf;->zza(Lcom/google/android/libraries/places/internal/zzake;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzajw;->zza:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    const-string v2, "Future was expected to be done: %s"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzr(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzajw;->zzb:Lcom/google/android/libraries/places/internal/zzajv;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzajv;->zzb(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v0

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_2
    throw v0
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    const/4 v1, 0x1

    goto :goto_0

    :goto_3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzajw;->zzb:Lcom/google/android/libraries/places/internal/zzajv;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzajv;->zza(Ljava/lang/Throwable;)V

    return-void

    :goto_4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzajw;->zzb:Lcom/google/android/libraries/places/internal/zzajv;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzajv;->zza(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzajw;->zzb:Lcom/google/android/libraries/places/internal/zzajv;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzajv;->zza(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzajw;->zzb:Lcom/google/android/libraries/places/internal/zzajv;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzmm;->zzf(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
