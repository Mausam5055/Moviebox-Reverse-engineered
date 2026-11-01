.class final Lcom/google/android/libraries/places/internal/zzjz;
.super Lcom/google/android/libraries/places/internal/zzkb;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private final zzc:I


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzjy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzkb;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzjz;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/libraries/places/internal/zzjz;->zzb:I

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzjz;->zzc:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzkb;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzkb;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzjz;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkb;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzjz;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkb;->zza()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzjz;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkb;->zzc()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjz;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzjz;->zzb:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzjz;->zzc:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzjz;->zzc:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "AUTOCOMPLETE_WIDGET"

    goto :goto_0

    :cond_0
    const-string v0, "PROGRAMMATIC_API"

    :goto_0
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzjz;->zzb:I

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzjz;->zza:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientProfile{packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestSource="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzjz;->zzb:I

    return v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjz;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzjz;->zzc:I

    return v0
.end method
