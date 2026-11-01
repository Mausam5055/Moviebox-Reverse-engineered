.class final Lcom/google/android/libraries/places/api/net/zzaa;
.super Lcom/google/android/libraries/places/api/net/SearchByTextRequest;


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/CancellationToken;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/libraries/places/api/model/LocationBias;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:Z

.field private final zzh:Ljava/util/List;

.field private final zzi:Ljava/util/List;

.field private final zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzk:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzl:Z

.field private final zzm:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/tasks/CancellationToken;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/lang/Integer;Ljava/lang/Double;ZLjava/util/List;Ljava/util/List;Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/libraries/places/api/net/zzz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    iput-object p2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    iput-object p4, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    iput-object p5, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zze:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzf:Ljava/lang/Double;

    iput-boolean p7, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzg:Z

    iput-object p8, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzh:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzi:Ljava/util/List;

    iput-object p10, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    iput-object p11, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzk:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzl:Z

    iput-object p13, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast p1, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;

    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzjt;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzjt;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzb:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getIncludedType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getIncludedType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_3
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zze:Ljava/lang/Integer;

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMaxResultCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMaxResultCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_4
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzf:Ljava/lang/Double;

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMinRating()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMinRating()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_5
    iget-boolean v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzg:Z

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->isOpenNow()Z

    move-result v3

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzh:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzi:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getPriceLevels()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getRankPreference()Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getRankPreference()Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_6
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzk:Ljava/lang/String;

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getRegionCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getRegionCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    :goto_7
    iget-boolean v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzl:Z

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->isStrictTypeFiltering()Z

    move-result v3

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzm:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getTextQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    :goto_8
    return v2
.end method

.method public final getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    return-object v0
.end method

.method public final getIncludedType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object v0
.end method

.method public final getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object v0
.end method

.method public final getMaxResultCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zze:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMinRating()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzf:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPlaceFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzh:Ljava/util/List;

    return-object v0
.end method

.method public final getPriceLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzi:Ljava/util/List;

    return-object v0
.end method

.method public final getRankPreference()Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    return-object v0
.end method

.method public final getRegionCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzm:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzb:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    const v3, 0xf4243

    xor-int/2addr v0, v3

    iget-object v4, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    mul-int/2addr v0, v3

    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    xor-int/2addr v0, v4

    mul-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zze:Ljava/lang/Integer;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzf:Ljava/lang/Double;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_5
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    iget-boolean v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzg:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    const/4 v6, 0x1

    if-eq v6, v2, :cond_6

    move v2, v5

    goto :goto_6

    :cond_6
    move v2, v4

    :goto_6
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzh:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzi:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzk:Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    iget-boolean v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzl:Z

    if-eq v6, v1, :cond_9

    move v4, v5

    :cond_9
    xor-int/2addr v0, v4

    mul-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final isOpenNow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzg:Z

    return v0
.end method

.method public final isStrictTypeFiltering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzl:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzi:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzh:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    iget-object v4, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    iget-object v5, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SearchByTextRequest{cancellationToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", includedType="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", locationBias="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", locationRestriction="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", maxResultCount="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zze:Ljava/lang/Integer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", minRating="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzf:Ljava/lang/Double;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", openNow="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzg:Z

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", placeFields="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", priceLevels="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rankPreference="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", regionCode="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzk:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", strictTypeFiltering="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzl:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", textQuery="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzm:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
