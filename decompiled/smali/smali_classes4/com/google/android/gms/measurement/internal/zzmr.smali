.class final Lcom/google/android/gms/measurement/internal/zzmr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzgb;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzmq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmq;Lcom/google/android/gms/measurement/internal/zzgb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zza:Lcom/google/android/gms/measurement/internal/zzgb;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zzb:Lcom/google/android/gms/measurement/internal/zzmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zzb:Lcom/google/android/gms/measurement/internal/zzmq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zzb:Lcom/google/android/gms/measurement/internal/zzmq;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzmq;->zza(Lcom/google/android/gms/measurement/internal/zzmq;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zzb:Lcom/google/android/gms/measurement/internal/zzmq;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmq;->zza:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zzal()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zzb:Lcom/google/android/gms/measurement/internal/zzmq;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmq;->zza:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Connected to remote service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zzb:Lcom/google/android/gms/measurement/internal/zzmq;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmq;->zza:Lcom/google/android/gms/measurement/internal/zzls;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmr;->zza:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzgb;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
