.class abstract Lcom/google/android/libraries/places/api/model/zzt;
.super Lcom/google/android/libraries/places/api/model/Period;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/api/model/TimeOfWeek;Lcom/google/android/libraries/places/api/model/TimeOfWeek;)V
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/TimeOfWeek;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/libraries/places/api/model/TimeOfWeek;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzt;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    iput-object p2, p0, Lcom/google/android/libraries/places/api/model/zzt;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/Period;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/android/libraries/places/api/model/Period;

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzt;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzt;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    :cond_4
    :goto_2
    return v2
.end method

.method public final getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzt;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-object v0
.end method

.method public final getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzt;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzt;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/api/model/zzt;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzt;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzt;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Period{open="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", close="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
