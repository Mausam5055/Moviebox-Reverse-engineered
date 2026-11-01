.class final Lcom/google/android/libraries/places/internal/zzblk;
.super Lcom/google/android/libraries/places/internal/zzayk;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbls;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbls;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzayk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;
    .locals 9

    new-instance v8, Lcom/google/android/libraries/places/internal/zzbfq;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0, p2}, Lcom/google/android/libraries/places/internal/zzbma;->zzJ(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzayj;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzv(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbkt;

    move-result-object v4

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzaa(Lcom/google/android/libraries/places/internal/zzbma;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzs(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbfw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbfw;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzq(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbfg;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzbfq;-><init>(Lcom/google/android/libraries/places/internal/zzbcl;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbfp;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzbfg;Lcom/google/android/libraries/places/internal/zzbam;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzj(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzazq;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzn(Lcom/google/android/libraries/places/internal/zzazq;)Lcom/google/android/libraries/places/internal/zzbfq;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzi(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzazd;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzm(Lcom/google/android/libraries/places/internal/zzazd;)Lcom/google/android/libraries/places/internal/zzbfq;

    return-object v8
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbls;->zzd(Lcom/google/android/libraries/places/internal/zzbls;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
