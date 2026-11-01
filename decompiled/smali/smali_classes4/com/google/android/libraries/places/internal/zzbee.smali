.class public abstract Lcom/google/android/libraries/places/internal/zzbee;
.super Lcom/google/android/libraries/places/internal/zzbei;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbqo;

.field private zzb:Z

.field private zzc:Lcom/google/android/libraries/places/internal/zzbft;

.field private zzd:Lcom/google/android/libraries/places/internal/zzazq;

.field private zze:Z

.field private zzf:Ljava/lang/Runnable;

.field private volatile zzg:Z

.field private zzh:Z

.field private zzi:Z


# direct methods
.method protected constructor <init>(ILcom/google/android/libraries/places/internal/zzbqo;Lcom/google/android/libraries/places/internal/zzbqz;Lcom/google/android/libraries/places/internal/zzayj;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbei;-><init>(ILcom/google/android/libraries/places/internal/zzbqo;Lcom/google/android/libraries/places/internal/zzbqz;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazq;->zzb()Lcom/google/android/libraries/places/internal/zzazq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzd:Lcom/google/android/libraries/places/internal/zzazq;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zze:Z

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbee;->zza:Lcom/google/android/libraries/places/internal/zzbqo;

    return-void
.end method

.method private final zzA(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzb:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zza:Lcom/google/android/libraries/places/internal/zzbqo;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbqo;->zzm(Lcom/google/android/libraries/places/internal/zzbdo;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbei;->zzm()Lcom/google/android/libraries/places/internal/zzbqz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqz;->zze(Z)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzc:Lcom/google/android/libraries/places/internal/zzbft;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbft;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    :cond_0
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbee;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbee;->zzA(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzbee;Lcom/google/android/libraries/places/internal/zzazq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzc:Lcom/google/android/libraries/places/internal/zzbft;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already called start"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    const-string v0, "decompressorRegistry"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzd:Lcom/google/android/libraries/places/internal/zzazq;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/libraries/places/internal/zzbee;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzg:Z

    return-void
.end method


# virtual methods
.method protected final synthetic zza()Lcom/google/android/libraries/places/internal/zzbqr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzc:Lcom/google/android/libraries/places/internal/zzbft;

    return-object v0
.end method

.method public zze(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzh:Z

    const-string v1, "status should have been reported on deframer closed"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zze:Z

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzi:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v1, "Encountered end-of-stream mid-frame"

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    sget-object v2, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzf:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzf:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method protected final zzf(Lcom/google/android/libraries/places/internal/zzbnv;)V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzh:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbef;->zzf()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "io.grpc.internal.AbstractClientStream$TransportState"

    const-string v4, "inboundDataReceived"

    const-string v5, "Received data on closed stream"

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbnv;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbei;->zzq(Lcom/google/android/libraries/places/internal/zzbnv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbnv;->close()V

    :cond_1
    throw v1
.end method

.method protected final zzg(Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzh:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Received headers on closed stream"

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zza:Lcom/google/android/libraries/places/internal/zzbqo;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbqo;->zzb()V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zze:Lcom/google/android/libraries/places/internal/zzbca;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbcf;->zzb(Lcom/google/android/libraries/places/internal/zzbca;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzc:Lcom/google/android/libraries/places/internal/zzbca;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbcf;->zzb(Lcom/google/android/libraries/places/internal/zzbca;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzd:Lcom/google/android/libraries/places/internal/zzazq;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzazq;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzazo;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Can\'t find decompressor for %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    invoke-interface {p0, v0}, Lcom/google/android/libraries/places/internal/zzbmm;->zzF(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaza;->zza:Lcom/google/android/libraries/places/internal/zzazb;

    if-eq v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbei;->zzw(Lcom/google/android/libraries/places/internal/zzazo;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzc:Lcom/google/android/libraries/places/internal/zzbft;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbft;->zze(Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method

.method protected final zzh(Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzh:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbef;->zzf()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v0

    const/4 p2, 0x1

    aput-object p1, v7, p2

    const-string v5, "inboundTrailersReceived"

    const-string v6, "Received trailers on closed stream:\n {1}\n {2}"

    const-string v4, "io.grpc.internal.AbstractClientStream$TransportState"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zza:Lcom/google/android/libraries/places/internal/zzbqo;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzbqo;->zzc(Lcom/google/android/libraries/places/internal/zzbcf;)V

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    invoke-virtual {p0, p2, v1, v0, p1}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/libraries/places/internal/zzbft;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzc:Lcom/google/android/libraries/places/internal/zzbft;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already called setListener"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzc:Lcom/google/android/libraries/places/internal/zzbft;

    return-void
.end method

.method public final zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "trailers"

    invoke-static {p4, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzh:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzh:Z

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzi:Z

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbei;->zzu()V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zze:Z

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzf:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/libraries/places/internal/zzbee;->zzA(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void

    :cond_2
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbed;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/google/android/libraries/places/internal/zzbed;-><init>(Lcom/google/android/libraries/places/internal/zzbee;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzf:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Lcom/google/android/libraries/places/internal/zzbei;->zzp(Z)V

    return-void
.end method

.method protected final zzk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzg:Z

    return v0
.end method
