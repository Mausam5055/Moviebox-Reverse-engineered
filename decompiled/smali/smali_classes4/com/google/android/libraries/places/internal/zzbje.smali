.class final Lcom/google/android/libraries/places/internal/zzbje;
.super Ljava/lang/Object;


# instance fields
.field final zza:I

.field final zzb:J

.field final zzc:Ljava/util/Set;


# direct methods
.method constructor <init>(IJLjava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbje;->zza:I

    iput-wide p2, p0, Lcom/google/android/libraries/places/internal/zzbje;->zzb:J

    invoke-static {p4}, Lcom/google/android/libraries/places/internal/zzob;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzob;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbje;->zzc:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/libraries/places/internal/zzbje;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbje;

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbje;->zza:I

    iget v3, p1, Lcom/google/android/libraries/places/internal/zzbje;->zza:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbje;->zzb:J

    iget-wide v4, p1, Lcom/google/android/libraries/places/internal/zzbje;->zzb:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbje;->zzc:Ljava/util/Set;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbje;->zzc:Ljava/util/Set;

    invoke-static {v2, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbje;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbje;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbje;->zzc:Ljava/util/Set;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "maxAttempts"

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbje;->zza:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzb(Ljava/lang/String;I)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "hedgingDelayNanos"

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbje;->zzb:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzmm;->zzc(Ljava/lang/String;J)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "nonFatalStatusCodes"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbje;->zzc:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
