.class final Lcom/google/android/libraries/places/internal/zzbpp;
.super Ljava/lang/Object;


# instance fields
.field final zza:I

.field final zzb:J

.field final zzc:J

.field final zzd:D

.field final zze:Ljava/lang/Long;

.field final zzf:Ljava/util/Set;


# direct methods
.method constructor <init>(IJJDLjava/lang/Long;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zza:I

    iput-wide p2, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzb:J

    iput-wide p4, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzc:J

    iput-wide p6, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzd:D

    iput-object p8, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zze:Ljava/lang/Long;

    invoke-static {p9}, Lcom/google/android/libraries/places/internal/zzob;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzob;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzf:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbpp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbpp;

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zza:I

    iget v2, p1, Lcom/google/android/libraries/places/internal/zzbpp;->zza:I

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzb:J

    iget-wide v4, p1, Lcom/google/android/libraries/places/internal/zzbpp;->zzb:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzc:J

    iget-wide v4, p1, Lcom/google/android/libraries/places/internal/zzbpp;->zzc:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzd:D

    iget-wide v4, p1, Lcom/google/android/libraries/places/internal/zzbpp;->zzd:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zze:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbpp;->zze:Ljava/lang/Long;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzf:Ljava/util/Set;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbpp;->zzf:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzd:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zze:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzf:Ljava/util/Set;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "maxAttempts"

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zza:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzb(Ljava/lang/String;I)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "initialBackoffNanos"

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzb:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzmm;->zzc(Ljava/lang/String;J)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "maxBackoffNanos"

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzc:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzmm;->zzc(Ljava/lang/String;J)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "backoffMultiplier"

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzd:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzmm;->zza(Ljava/lang/String;D)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "perAttemptRecvTimeoutNanos"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zze:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "retryableStatusCodes"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbpp;->zzf:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
