.class abstract Lcom/google/android/libraries/places/internal/zzkk;
.super Lcom/google/android/libraries/places/internal/zzkt;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

.field private final zzb:Lcom/google/android/libraries/places/internal/zznx;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzkr;

.field private final zzd:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/libraries/places/api/model/LocationBias;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzh:Lcom/google/android/libraries/places/internal/zznx;

.field private final zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzj:Lcom/google/android/libraries/places/internal/zznx;

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Lcom/google/android/libraries/places/internal/zznx;Lcom/google/android/libraries/places/internal/zzkr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Lcom/google/android/libraries/places/internal/zznx;Lcom/google/android/libraries/places/api/model/TypeFilter;Lcom/google/android/libraries/places/internal/zznx;IILjava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzkt;-><init>()V

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-eqz p2, :cond_3

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzc:Lcom/google/android/libraries/places/internal/zzkr;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzkk;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-eqz p8, :cond_1

    iput-object p8, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzh:Lcom/google/android/libraries/places/internal/zznx;

    iput-object p9, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    if-eqz p10, :cond_0

    iput-object p10, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzj:Lcom/google/android/libraries/places/internal/zznx;

    iput p11, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzk:I

    iput p12, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzl:I

    iput-object p13, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzm:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null typesFilter"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null countries"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null origin"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null placeFields"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null mode"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzkt;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    check-cast p1, Lcom/google/android/libraries/places/internal/zzkt;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzh()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzj()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/zznx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzc:Lcom/google/android/libraries/places/internal/zzkr;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzf()Lcom/google/android/libraries/places/internal/zzkr;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzd:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzm()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zze:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzc()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzc()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzd()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzd()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzh:Lcom/google/android/libraries/places/internal/zznx;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzi()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/zznx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zze()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zze()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzj:Lcom/google/android/libraries/places/internal/zznx;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzk()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/zznx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzk:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zza()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzl:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzb()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzm:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzn()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzkt;->zzn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    return v0

    :cond_8
    :goto_6
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    mul-int/2addr v0, v1

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zznx;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzc:Lcom/google/android/libraries/places/internal/zzkr;

    mul-int/2addr v0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzd:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zze:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzh:Lcom/google/android/libraries/places/internal/zznx;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zznx;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzj:Lcom/google/android/libraries/places/internal/zznx;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zznx;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzk:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzl:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzm:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzj:Lcom/google/android/libraries/places/internal/zznx;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzh:Lcom/google/android/libraries/places/internal/zznx;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzc:Lcom/google/android/libraries/places/internal/zzkr;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzkk;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AutocompleteOptions{mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", placeFields="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", origin="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", initialQuery="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzd:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", hint="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzkk;->zze:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", locationBias="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", locationRestriction="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", countries="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", typeFilter="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", typesFilter="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", primaryColor="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzk:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", primaryColorDark="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzl:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", regionCode="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzm:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzk:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzl:I

    return v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/api/model/LocationBias;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object v0
.end method

.method public final zze()Lcom/google/android/libraries/places/api/model/TypeFilter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/libraries/places/internal/zzkr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzc:Lcom/google/android/libraries/places/internal/zzkr;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/libraries/places/internal/zzks;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzkj;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzkj;-><init>(Lcom/google/android/libraries/places/internal/zzkt;)V

    return-object v0
.end method

.method public final zzh()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzh:Lcom/google/android/libraries/places/internal/zznx;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/libraries/places/internal/zznx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzj:Lcom/google/android/libraries/places/internal/zznx;

    return-object v0
.end method

.method public final zzl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkk;->zzm:Ljava/lang/String;

    return-object v0
.end method
