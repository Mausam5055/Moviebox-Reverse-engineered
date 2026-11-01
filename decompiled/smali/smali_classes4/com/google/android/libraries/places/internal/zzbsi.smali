.class final Lcom/google/android/libraries/places/internal/zzbsi;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/util/logging/Logger;

.field private final zzb:Ljava/util/logging/Level;


# direct methods
.method constructor <init>(Ljava/util/logging/Level;Ljava/lang/Class;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "level"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zzb:Ljava/util/logging/Level;

    const-string p1, "logger"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zza:Ljava/util/logging/Logger;

    return-void
.end method

.method private static zzk(Lcom/google/android/libraries/places/internal/zzbwb;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v0

    const-wide/16 v2, 0x40

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzz()Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzA(I)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "..."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzl()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zza:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zzb:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final zza(IILcom/google/android/libraries/places/internal/zzbwb;IZ)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsi;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zza:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zzb:Ljava/util/logging/Level;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsg;->zza(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzbsi;->zzk(Lcom/google/android/libraries/places/internal/zzbwb;)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " DATA: streamId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " endStream="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " length="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "io.grpc.okhttp.OkHttpFrameLogger"

    const-string p3, "logData"

    invoke-virtual {v0, v1, p2, p3, p1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final zzb(IILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbwf;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsi;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zza:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zzb:Ljava/util/logging/Level;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsg;->zza(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v2

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-direct {v3}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    invoke-virtual {v3, p4}, Lcom/google/android/libraries/places/internal/zzbwb;->zzk(Lcom/google/android/libraries/places/internal/zzbwf;)Lcom/google/android/libraries/places/internal/zzbwb;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbsi;->zzk(Lcom/google/android/libraries/places/internal/zzbwb;)Ljava/lang/String;

    move-result-object p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " GO_AWAY: lastStreamId="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorCode="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " length="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "io.grpc.okhttp.OkHttpFrameLogger"

    const-string p3, "logGoAway"

    invoke-virtual {v0, v1, p2, p3, p1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final zzc(IILjava/util/List;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsi;->zzl()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zza:Ljava/util/logging/Logger;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zzb:Ljava/util/logging/Level;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INBOUND HEADERS: streamId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " headers="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " endStream="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "io.grpc.okhttp.OkHttpFrameLogger"

    const-string p4, "logHeaders"

    invoke-virtual {p1, v0, p3, p4, p2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final zzd(IJ)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsi;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zza:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zzb:Ljava/util/logging/Level;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsg;->zza(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " PING: ack=false bytes="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "io.grpc.okhttp.OkHttpFrameLogger"

    const-string p3, "logPing"

    invoke-virtual {v0, v1, p2, p3, p1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final zze(IJ)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsi;->zzl()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zza:Ljava/util/logging/Logger;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zzb:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbsg;->zza(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " PING: ack=true bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "io.grpc.okhttp.OkHttpFrameLogger"

    const-string v1, "logPingAck"

    invoke-virtual {p1, v0, p3, v1, p2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final zzf(IIILjava/util/List;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsi;->zzl()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zza:Ljava/util/logging/Logger;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zzb:Ljava/util/logging/Level;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INBOUND PUSH_PROMISE: streamId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " promisedStreamId="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " headers="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "io.grpc.okhttp.OkHttpFrameLogger"

    const-string p4, "logPushPromise"

    invoke-virtual {p1, v0, p3, p4, p2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final zzg(IILcom/google/android/libraries/places/internal/zzbtp;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsi;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zza:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zzb:Ljava/util/logging/Level;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsg;->zza(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " RST_STREAM: streamId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorCode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "io.grpc.okhttp.OkHttpFrameLogger"

    const-string p3, "logRstStream"

    invoke-virtual {v0, v1, p2, p3, p1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final zzh(ILcom/google/android/libraries/places/internal/zzbue;)V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsi;->zzl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zza:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zzb:Ljava/util/logging/Level;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsg;->zza(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/google/android/libraries/places/internal/zzbsh;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsh;->values()[Lcom/google/android/libraries/places/internal/zzbsh;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzbsh;->zza()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/google/android/libraries/places/internal/zzbue;->zzf(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzbsh;->zza()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/google/android/libraries/places/internal/zzbue;->zza(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SETTINGS: ack=false settings="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "io.grpc.okhttp.OkHttpFrameLogger"

    const-string v2, "logSettings"

    invoke-virtual {v0, v1, p2, v2, p1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method final zzi(I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsi;->zzl()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zza:Ljava/util/logging/Logger;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zzb:Ljava/util/logging/Level;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsg;->zza(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "logSettingsAck"

    const-string v3, " SETTINGS: ack=true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "io.grpc.okhttp.OkHttpFrameLogger"

    invoke-virtual {p1, v0, v3, v2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final zzj(IIJ)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbsi;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zza:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsi;->zzb:Ljava/util/logging/Level;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsg;->zza(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WINDOW_UPDATE: streamId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " windowSizeIncrement="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "io.grpc.okhttp.OkHttpFrameLogger"

    const-string p3, "logWindowsUpdate"

    invoke-virtual {v0, v1, p2, p3, p1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
