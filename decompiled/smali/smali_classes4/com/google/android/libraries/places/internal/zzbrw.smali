.class final Lcom/google/android/libraries/places/internal/zzbrw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbec;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbry;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbry;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrw;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 4

    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrw;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbry;->zzC(Lcom/google/android/libraries/places/internal/zzbry;)Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbrx;->zzJ(Lcom/google/android/libraries/places/internal/zzbrx;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrw;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbry;->zzC(Lcom/google/android/libraries/places/internal/zzbry;)Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbrx;->zzK(Lcom/google/android/libraries/places/internal/zzbrx;Lcom/google/android/libraries/places/internal/zzbdo;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbra;ZZI)V
    .locals 2

    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbry;->zzG()Lcom/google/android/libraries/places/internal/zzbwb;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbsn;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbsn;->zze()Lcom/google/android/libraries/places/internal/zzbwb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrw;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbry;->zzH(Lcom/google/android/libraries/places/internal/zzbry;I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrw;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbry;->zzC(Lcom/google/android/libraries/places/internal/zzbry;)Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbrx;->zzJ(Lcom/google/android/libraries/places/internal/zzbrx;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrw;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbry;->zzC(Lcom/google/android/libraries/places/internal/zzbry;)Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbrx;->zzL(Lcom/google/android/libraries/places/internal/zzbrx;Lcom/google/android/libraries/places/internal/zzbwb;ZZ)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrw;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbry;->zzA(Lcom/google/android/libraries/places/internal/zzbry;)Lcom/google/android/libraries/places/internal/zzbqz;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/libraries/places/internal/zzbqz;->zzd(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc(Lcom/google/android/libraries/places/internal/zzbcf;[B)V
    .locals 2

    sget p2, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrw;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbry;->zzy(Lcom/google/android/libraries/places/internal/zzbry;)Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbcl;->zzf()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrw;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbry;->zzC(Lcom/google/android/libraries/places/internal/zzbry;)Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbrx;->zzJ(Lcom/google/android/libraries/places/internal/zzbrx;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrw;->zza:Lcom/google/android/libraries/places/internal/zzbry;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbry;->zzC(Lcom/google/android/libraries/places/internal/zzbry;)Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/android/libraries/places/internal/zzbrx;->zzM(Lcom/google/android/libraries/places/internal/zzbrx;Lcom/google/android/libraries/places/internal/zzbcf;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
