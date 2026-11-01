.class final Lcom/google/android/libraries/places/internal/zzbsd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbsf;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbsf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsd;->zza:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsd;->zza:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzC(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzs(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbse;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsd;->zza:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsd;->zza:Lcom/google/android/libraries/places/internal/zzbsf;

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzJ(Lcom/google/android/libraries/places/internal/zzbsf;I)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsd;->zza:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzS(Lcom/google/android/libraries/places/internal/zzbsf;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
