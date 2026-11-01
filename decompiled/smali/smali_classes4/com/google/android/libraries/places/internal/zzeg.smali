.class final Lcom/google/android/libraries/places/internal/zzeg;
.super Lcom/google/android/libraries/places/internal/zzei;


# instance fields
.field private final zza:J

.field private final zzb:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzei;-><init>()V

    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzeg;->zza:J

    iput-wide p3, p0, Lcom/google/android/libraries/places/internal/zzeg;->zzb:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzei;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzei;

    iget-wide v3, p0, Lcom/google/android/libraries/places/internal/zzeg;->zza:J

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzei;->zza()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/libraries/places/internal/zzeg;->zzb:J

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzei;->zzb()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzeg;->zzb:J

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzeg;->zza:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    ushr-long v3, v0, v4

    xor-long/2addr v0, v3

    const v3, 0xf4243

    xor-int/2addr v2, v3

    mul-int/2addr v2, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrimesInstant{elapsedRealtimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzeg;->zza:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzeg;->zzb:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzeg;->zza:J

    return-wide v0
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzeg;->zzb:J

    return-wide v0
.end method
