.class abstract Lcom/google/android/libraries/places/api/model/zzj;
.super Lcom/google/android/libraries/places/api/model/zzby;


# instance fields
.field private final zza:I

.field private final zzb:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/zzby;-><init>()V

    iput p1, p0, Lcom/google/android/libraries/places/api/model/zzj;->zza:I

    iput p2, p0, Lcom/google/android/libraries/places/api/model/zzj;->zzb:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/zzby;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/libraries/places/api/model/zzby;

    iget v1, p0, Lcom/google/android/libraries/places/api/model/zzj;->zza:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/zzby;->zzb()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/libraries/places/api/model/zzj;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/zzby;->zza()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/api/model/zzj;->zza:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/libraries/places/api/model/zzj;->zzb:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubstringMatch{offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/libraries/places/api/model/zzj;->zza:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/libraries/places/api/model/zzj;->zzb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/api/model/zzj;->zzb:I

    return v0
.end method

.method final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/api/model/zzj;->zza:I

    return v0
.end method
