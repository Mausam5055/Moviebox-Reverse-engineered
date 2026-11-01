.class final Lcom/google/android/libraries/places/internal/zzbua;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbts;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbwc;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbwb;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbtv;

.field private zzd:I

.field private zze:Z


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbwc;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbtv;

    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzbtv;-><init>(IZLcom/google/android/libraries/places/internal/zzbwb;)V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzc:Lcom/google/android/libraries/places/internal/zzbtv;

    const/16 p1, 0x4000

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzd:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zze:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/libraries/places/internal/zzbue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zze:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzd:I

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbue;->zzc(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzd:I

    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/google/android/libraries/places/internal/zzbua;->zzl(IIBB)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbwc;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzb(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zze:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzbua;->zzl(IIBB)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {p1, p2}, Lcom/google/android/libraries/places/internal/zzbwc;->zzw(I)Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {p1, p3}, Lcom/google/android/libraries/places/internal/zzbwc;->zzw(I)Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbwc;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zze:Z

    if-nez v0, :cond_1

    iget v0, p2, Lcom/google/android/libraries/places/internal/zzbtp;->zzs:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzbua;->zzl(IIBB)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    iget p2, p2, Lcom/google/android/libraries/places/internal/zzbtp;->zzs:I

    invoke-interface {p1, p2}, Lcom/google/android/libraries/places/internal/zzbwc;->zzw(I)Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbwc;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzd:I

    return v0
.end method

.method public final declared-synchronized zze()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zze:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzg()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzg()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzh()Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, ">> CONNECTION %s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "io.grpc.okhttp.internal.framed.Http2$Writer"

    const-string v5, "connectionPreface"

    invoke-virtual {v1, v2, v4, v5, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzh()Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbwf;->zzp()[B

    move-result-object v2

    const-string v3, "source"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Lcom/google/android/libraries/places/internal/zzbwk;

    iget-boolean v3, v3, Lcom/google/android/libraries/places/internal/zzbwk;->zzc:Z

    if-nez v3, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/google/android/libraries/places/internal/zzbwk;

    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzbwk;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    const-string v4, "source"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v2

    invoke-virtual {v3, v2, v0, v4}, Lcom/google/android/libraries/places/internal/zzbwb;->zzl([BII)Lcom/google/android/libraries/places/internal/zzbwb;

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbwk;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbwk;->zza()Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbwc;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzf(ZILcom/google/android/libraries/places/internal/zzbwb;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zze:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p4, v0, p1}, Lcom/google/android/libraries/places/internal/zzbua;->zzl(IIBB)V

    if-lez p4, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwq;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzg()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zze:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbwc;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzh(ILcom/google/android/libraries/places/internal/zzbtp;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zze:Z

    if-nez p1, :cond_1

    iget p1, p2, Lcom/google/android/libraries/places/internal/zzbtp;->zzs:I

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    const/16 p1, 0x8

    const/4 p3, 0x7

    invoke-virtual {p0, v0, p1, p3, v0}, Lcom/google/android/libraries/places/internal/zzbua;->zzl(IIBB)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {p1, v0}, Lcom/google/android/libraries/places/internal/zzbwc;->zzw(I)Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    iget p2, p2, Lcom/google/android/libraries/places/internal/zzbtp;->zzs:I

    invoke-interface {p1, p2}, Lcom/google/android/libraries/places/internal/zzbwc;->zzw(I)Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbwc;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "errorCode.httpCode == -1"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzbub;->zzf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzi(Lcom/google/android/libraries/places/internal/zzbue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zze:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbue;->zzd()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbua;->zzl(IIBB)V

    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Lcom/google/android/libraries/places/internal/zzbue;->zzf(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne v2, v1, :cond_0

    const/4 v0, 0x3

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_1

    :cond_0
    const/4 v0, 0x7

    if-ne v2, v0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    move-object v4, v3

    check-cast v4, Lcom/google/android/libraries/places/internal/zzbwk;

    iget-boolean v4, v4, Lcom/google/android/libraries/places/internal/zzbwk;->zzc:Z

    if-nez v4, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/google/android/libraries/places/internal/zzbwk;

    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbwk;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {v4, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzq(I)Lcom/google/android/libraries/places/internal/zzbwb;

    check-cast v3, Lcom/google/android/libraries/places/internal/zzbwk;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbwk;->zza()Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbue;->zza(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/libraries/places/internal/zzbwc;->zzw(I)Lcom/google/android/libraries/places/internal/zzbwc;

    move v2, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbwc;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzj(ZZIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zze:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzc:Lcom/google/android/libraries/places/internal/zzbtv;

    invoke-virtual {p1, p5}, Lcom/google/android/libraries/places/internal/zzbtv;->zzb(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide p1

    iget p4, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzd:I

    int-to-long p4, p4

    invoke-static {p4, p5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    long-to-int p4, p4

    int-to-long v0, p4

    cmp-long p5, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez p5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p0, p3, p4, v5, v4}, Lcom/google/android/libraries/places/internal/zzbua;->zzl(IIBB)V

    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-interface {p4, v4, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwq;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    if-lez p5, :cond_2

    sub-long/2addr p1, v0

    :goto_1
    const-wide/16 p4, 0x0

    cmp-long v0, p1, p4

    if-lez v0, :cond_2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzd:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v4, v0

    sub-long/2addr p1, v4

    cmp-long p4, p1, p4

    if-nez p4, :cond_1

    move p4, v3

    goto :goto_2

    :cond_1
    move p4, v2

    :goto_2
    const/16 p5, 0x9

    invoke-virtual {p0, p3, v0, p5, p4}, Lcom/google/android/libraries/places/internal/zzbua;->zzl(IIBB)V

    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object p5, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-interface {p4, p5, v4, v5}, Lcom/google/android/libraries/places/internal/zzbwq;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzk(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zze:Z

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-eqz v3, :cond_0

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/google/android/libraries/places/internal/zzbua;->zzl(IIBB)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lcom/google/android/libraries/places/internal/zzbwc;->zzw(I)Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbwc;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzbub;->zzf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final zzl(IIBB)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzg()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzg()Ljava/util/logging/Logger;

    move-result-object v2

    invoke-static {v1, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbty;->zza(ZIIBB)Ljava/lang/String;

    move-result-object v4

    const-string v5, "io.grpc.okhttp.internal.framed.Http2$Writer"

    const-string v6, "frameHeader"

    invoke-virtual {v2, v3, v5, v6, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbua;->zzd:I

    if-gt p2, v2, :cond_2

    const/high16 v2, -0x80000000

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbwc;->zzv(I)Lcom/google/android/libraries/places/internal/zzbwc;

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbwc;->zzv(I)Lcom/google/android/libraries/places/internal/zzbwc;

    and-int/lit16 p2, p2, 0xff

    invoke-interface {v0, p2}, Lcom/google/android/libraries/places/internal/zzbwc;->zzv(I)Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {p2, p3}, Lcom/google/android/libraries/places/internal/zzbwc;->zzv(I)Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    invoke-interface {p2, p4}, Lcom/google/android/libraries/places/internal/zzbwc;->zzv(I)Lcom/google/android/libraries/places/internal/zzbwc;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbua;->zza:Lcom/google/android/libraries/places/internal/zzbwc;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbwc;->zzw(I)Lcom/google/android/libraries/places/internal/zzbwc;

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzbub;->zzf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    aput-object p2, p3, v0

    const-string p1, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzbub;->zzf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method
