.class final Lcom/google/android/libraries/places/internal/zzbse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/libraries/places/internal/zzbtq;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzbtr;

.field zzb:Z

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbsf;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbsi;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtr;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbsi;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v1, Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-direct {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbsi;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzb:Z

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zza:Lcom/google/android/libraries/places/internal/zzbtr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "OkHttpClientTransport"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zza:Lcom/google/android/libraries/places/internal/zzbtr;

    invoke-interface {v2, p0}, Lcom/google/android/libraries/places/internal/zzbtr;->zza(Lcom/google/android/libraries/places/internal/zzbtq;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzo(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbkh;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzo(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbkh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbkh;->zza()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzl(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    :try_start_2
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v3, "End of stream or IOException"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v3

    :cond_2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbtp;->zzg:Lcom/google/android/libraries/places/internal/zzbtp;

    invoke-static {v2, v1, v4, v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzO(Lcom/google/android/libraries/places/internal/zzbsf;ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbtp;->zzb:Lcom/google/android/libraries/places/internal/zzbtp;

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v6, "error in frame handler"

    invoke-virtual {v5, v6}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v2

    invoke-static {v3, v1, v4, v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzO(Lcom/google/android/libraries/places/internal/zzbsf;ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    :try_start_6
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zza:Lcom/google/android/libraries/places/internal/zzbtr;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v1

    goto :goto_4

    :goto_3
    const-string v2, "bio == null"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_3
    throw v1

    :goto_4
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsf;->zzD()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler"

    const-string v5, "run"

    const-string v6, "Exception closing frame reader"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzp(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbmk;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbmk;->zze()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v1

    :try_start_7
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zza:Lcom/google/android/libraries/places/internal/zzbtr;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_8

    :catch_2
    move-exception v2

    goto :goto_6

    :catch_3
    move-exception v2

    move-object v8, v2

    goto :goto_7

    :goto_6
    const-string v3, "bio == null"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    throw v2

    :goto_7
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsf;->zzD()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler"

    const-string v6, "run"

    const-string v7, "Exception closing frame reader"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_8
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzp(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbmk;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbmk;->zze()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method

.method public final zza(ZILcom/google/android/libraries/places/internal/zzbwd;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p3

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbwl;

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 v2, 0x1

    move v3, p2

    move v5, p4

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbsi;->zza(IILcom/google/android/libraries/places/internal/zzbwb;IZ)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzr(I)Lcom/google/android/libraries/places/internal/zzbry;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzU(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzi:Lcom/google/android/libraries/places/internal/zzbtp;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/libraries/places/internal/zzbrk;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long p1, p4

    invoke-interface {p3, p1, p2}, Lcom/google/android/libraries/places/internal/zzbwd;->zzF(J)V

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzbtp;->zzb:Lcom/google/android/libraries/places/internal/zzbtp;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Received data for unknown stream: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzN(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtp;Ljava/lang/String;)V

    return-void

    :cond_1
    int-to-long v1, p4

    invoke-interface {p3, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zzD(J)V

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    check-cast p3, Lcom/google/android/libraries/places/internal/zzbwl;

    iget-object p3, p3, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-virtual {p2, p3, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzbrx;->zzI()Lcom/google/android/libraries/places/internal/zzbvs;

    sget p3, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v0

    sub-int p4, p5, p4

    invoke-virtual {v0, p2, p1, p4}, Lcom/google/android/libraries/places/internal/zzbrx;->zzO(Lcom/google/android/libraries/places/internal/zzbwb;ZI)V

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzf(Lcom/google/android/libraries/places/internal/zzbsf;)I

    move-result p2

    add-int/2addr p2, p5

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzI(Lcom/google/android/libraries/places/internal/zzbsf;I)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzf(Lcom/google/android/libraries/places/internal/zzbsf;)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzg(Lcom/google/android/libraries/places/internal/zzbsf;)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p3, p4

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_2

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_3
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    move-result-object p3

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzf(Lcom/google/android/libraries/places/internal/zzbsf;)I

    move-result p2

    int-to-long p4, p2

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p4, p5}, Lcom/google/android/libraries/places/internal/zzbrk;->zzk(IJ)V

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzI(Lcom/google/android/libraries/places/internal/zzbsf;I)V

    return-void

    :catchall_1
    move-exception p2

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2

    :cond_2
    return-void

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public final zzb(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbwf;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsi;->zzb(IILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbwf;)V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtp;->zzo:Lcom/google/android/libraries/places/internal/zzbtp;

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzbwf;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsf;->zzD()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object v0, v4, v1

    const-string v1, "%s: Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler"

    const-string v5, "goAway"

    invoke-virtual {v2, v3, v4, v5, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "too_many_pings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzx(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbrs;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbrs;->zza:Lcom/google/android/libraries/places/internal/zzben;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzben;->zza()V

    :cond_0
    iget p2, p2, Lcom/google/android/libraries/places/internal/zzbtp;->zzs:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbjb;->zza(J)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p2

    const-string v0, "Received Goaway"

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p2

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzbwf;->zzf()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p2

    :cond_1
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    const/4 v0, 0x0

    invoke-static {p3, p1, v0, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzO(Lcom/google/android/libraries/places/internal/zzbsf;ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method

.method public final zzc(ZII)V
    .locals 10

    int-to-long v0, p2

    int-to-long v2, p3

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/16 v5, 0x20

    shl-long/2addr v0, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    or-long/2addr v0, v2

    const/4 v2, 0x1

    invoke-virtual {v4, v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzbsi;->zzd(IJ)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    move-result-object v0

    invoke-virtual {v0, v2, p2, p3}, Lcom/google/android/libraries/places/internal/zzbrk;->zzb(ZII)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzn(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbjh;

    move-result-object p3

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzn(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbjh;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbjh;->zza()J

    move-result-wide p2

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzn(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbjh;

    move-result-object p3

    invoke-static {p2, v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzK(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbjh;)V

    move-object v3, p3

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsf;->zzD()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler"

    const-string v5, "ping"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Received unexpected ping ack. Expecting %d, got %d"

    iget-object v8, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v8}, Lcom/google/android/libraries/places/internal/zzbsf;->zzn(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbjh;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/libraries/places/internal/zzbjh;->zza()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v1, v9

    aput-object v0, v1, v2

    invoke-static {v6, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsf;->zzD()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler"

    const-string v1, "ping"

    const-string v2, "Received unexpected ping ack. No ping outstanding"

    invoke-virtual {p2, p3, v0, v1, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbjh;->zzc()Z

    :cond_3
    return-void

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method public final zzd(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsi;->zzf(IIILjava/util/List;)V

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    move-result-object p3

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtp;->zzb:Lcom/google/android/libraries/places/internal/zzbtp;

    invoke-virtual {p3, p1, v0}, Lcom/google/android/libraries/places/internal/zzbrk;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zze(ILcom/google/android/libraries/places/internal/zzbtp;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/libraries/places/internal/zzbsi;->zzg(IILcom/google/android/libraries/places/internal/zzbtp;)V

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzm(Lcom/google/android/libraries/places/internal/zzbtp;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    const-string v2, "Rst Stream"

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    move-result-object v0

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzb:Lcom/google/android/libraries/places/internal/zzbdj;

    if-eq v0, v2, :cond_0

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    move-result-object v0

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zze:Lcom/google/android/libraries/places/internal/zzbdj;

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    move v7, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzB(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzbry;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbrx;->zzI()Lcom/google/android/libraries/places/internal/zzbvs;

    sget v1, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzk:Lcom/google/android/libraries/places/internal/zzbtp;

    if-ne p2, v1, :cond_2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbfs;->zzb:Lcom/google/android/libraries/places/internal/zzbfs;

    :goto_2
    move-object v6, p2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    goto :goto_2

    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/libraries/places/internal/zzbsf;->zzP(ILcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbcf;)V

    :cond_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzf(ZLcom/google/android/libraries/places/internal/zzbue;)V
    .locals 5

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/google/android/libraries/places/internal/zzbsi;->zzh(ILcom/google/android/libraries/places/internal/zzbue;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzbue;->zzf(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzbue;->zza(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzJ(Lcom/google/android/libraries/places/internal/zzbsf;I)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzbue;->zzf(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzbue;->zza(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzt(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbsu;->zzh(I)Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzb:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzp(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbmk;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzk(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzaye;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/libraries/places/internal/zzbmk;->zza(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzaye;

    invoke-static {v1, v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzG(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzaye;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzp(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbmk;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbmk;->zzc()V

    iput-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzb:Z

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/libraries/places/internal/zzbrk;->zza(Lcom/google/android/libraries/places/internal/zzbue;)V

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzt(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbsu;->zzg()V

    :cond_3
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzS(Lcom/google/android/libraries/places/internal/zzbsf;)Z

    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final zzg(IJ)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsi;->zzj(IIJ)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzt(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsu;

    move-result-object p1

    const/4 v1, 0x0

    long-to-int p2, p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzbsu;->zza(Lcom/google/android/libraries/places/internal/zzbsq;I)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzB(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzbry;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzt(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsu;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbrx;->zzH()Lcom/google/android/libraries/places/internal/zzbsq;

    move-result-object v2

    long-to-int p2, p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzbsu;->zza(Lcom/google/android/libraries/places/internal/zzbsq;I)I

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzU(I)Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzbtp;->zzb:Lcom/google/android/libraries/places/internal/zzbtp;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received window_update for unknown stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzN(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtp;Ljava/lang/String;)V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzh(ZZIILjava/util/List;I)V
    .locals 6

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    const/4 p4, 0x1

    invoke-virtual {p1, p4, p3, p5, p2}, Lcom/google/android/libraries/places/internal/zzbsi;->zzc(IILjava/util/List;Z)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzh(Lcom/google/android/libraries/places/internal/zzbsf;)I

    move-result p1

    const p6, 0x7fffffff

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eq p1, p6, :cond_2

    const-wide/16 v2, 0x0

    move p1, v1

    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p6

    if-ge p1, p6, :cond_0

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/google/android/libraries/places/internal/zzbtt;

    iget-object v4, p6, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    iget-object p6, p6, Lcom/google/android/libraries/places/internal/zzbtt;->zzi:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-virtual {p6}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result p6

    add-int/2addr v4, p6

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/2addr p1, p4

    goto :goto_0

    :cond_0
    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    iget-object p6, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p6}, Lcom/google/android/libraries/places/internal/zzbsf;->zzh(Lcom/google/android/libraries/places/internal/zzbsf;)I

    move-result p6

    if-le p1, p6, :cond_2

    sget-object p6, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eq p4, p2, :cond_1

    const-string v2, "header"

    goto :goto_1

    :cond_1
    const-string v2, "trailer"

    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzh(Lcom/google/android/libraries/places/internal/zzbsf;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v3, v4, p4

    const/4 v2, 0x2

    aput-object p1, v4, v2

    const-string p1, "Response %s metadata larger than %d: %d"

    invoke-static {v0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p6, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p6}, Lcom/google/android/libraries/places/internal/zzbsf;->zzB(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/util/Map;

    move-result-object p6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/google/android/libraries/places/internal/zzbry;

    if-nez p6, :cond_3

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzU(I)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    move-result-object p2

    sget-object p4, Lcom/google/android/libraries/places/internal/zzbtp;->zzi:Lcom/google/android/libraries/places/internal/zzbtp;

    invoke-virtual {p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbrk;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V

    :goto_2
    move p4, v1

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p6}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzbrx;->zzI()Lcom/google/android/libraries/places/internal/zzbvs;

    sget p4, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    invoke-virtual {p6}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object p4

    invoke-virtual {p4, p5, p2}, Lcom/google/android/libraries/places/internal/zzbrx;->zzP(Ljava/util/List;Z)V

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    move-result-object p2

    sget-object p4, Lcom/google/android/libraries/places/internal/zzbtp;->zzl:Lcom/google/android/libraries/places/internal/zzbtp;

    invoke-virtual {p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbrk;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V

    :cond_5
    invoke-virtual {p6}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    move-result-object p2

    new-instance p4, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {p4}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    sget-object p5, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    invoke-virtual {p2, v0, p5, v1, p4}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    goto :goto_2

    :cond_6
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_7

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbtp;->zzb:Lcom/google/android/libraries/places/internal/zzbtp;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Received header for unknown stream: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzN(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtp;Ljava/lang/String;)V

    :cond_7
    return-void

    :goto_4
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
