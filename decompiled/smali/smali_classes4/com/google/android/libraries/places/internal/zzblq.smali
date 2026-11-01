.class final Lcom/google/android/libraries/places/internal/zzblq;
.super Lcom/google/android/libraries/places/internal/zzbgz;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzazj;

.field final zzb:Lcom/google/android/libraries/places/internal/zzbcl;

.field final zzc:Lcom/google/android/libraries/places/internal/zzayj;

.field final synthetic zzd:Lcom/google/android/libraries/places/internal/zzbls;

.field private final zze:J


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbls;Lcom/google/android/libraries/places/internal/zzazj;Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblq;->zzd:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0, p4}, Lcom/google/android/libraries/places/internal/zzbma;->zzJ(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzayj;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzy(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblu;

    move-result-object p1

    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzayj;->zzi()Lcom/google/android/libraries/places/internal/zzazn;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbgz;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzazn;)V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzblq;->zza:Lcom/google/android/libraries/places/internal/zzazj;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzblq;->zzb:Lcom/google/android/libraries/places/internal/zzbcl;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzblq;->zzc:Lcom/google/android/libraries/places/internal/zzayj;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzblq;->zze:J

    return-void
.end method


# virtual methods
.method protected final zzk()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzblp;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzblp;-><init>(Lcom/google/android/libraries/places/internal/zzblq;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzblq;->zzd:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method

.method final zzl()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblq;->zza:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazj;->zza()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzblq;->zzc:Lcom/google/android/libraries/places/internal/zzayj;

    sget-object v2, Lcom/google/android/libraries/places/internal/zzayx;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/libraries/places/internal/zzblq;->zze:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzayj;->zze(Lcom/google/android/libraries/places/internal/zzayh;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzblq;->zzd:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzblq;->zzb:Lcom/google/android/libraries/places/internal/zzbcl;

    invoke-static {v2, v3, v1}, Lcom/google/android/libraries/places/internal/zzbls;->zzc(Lcom/google/android/libraries/places/internal/zzbls;Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzblq;->zza:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzazj;->zze(Lcom/google/android/libraries/places/internal/zzazj;)V

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzbgz;->zzh(Lcom/google/android/libraries/places/internal/zzayo;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblq;->zzd:Lcom/google/android/libraries/places/internal/zzbls;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzblp;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzblp;-><init>(Lcom/google/android/libraries/places/internal/zzblq;)V

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzblq;->zzd:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzblq;->zzc:Lcom/google/android/libraries/places/internal/zzayj;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbma;->zzJ(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzayj;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzblo;

    invoke-direct {v2, p0, v0}, Lcom/google/android/libraries/places/internal/zzblo;-><init>(Lcom/google/android/libraries/places/internal/zzblq;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzblq;->zza:Lcom/google/android/libraries/places/internal/zzazj;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzazj;->zze(Lcom/google/android/libraries/places/internal/zzazj;)V

    throw v1
.end method
