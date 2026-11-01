.class final Lcom/google/android/libraries/places/api/net/zzy;
.super Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;


# instance fields
.field private zza:Lcom/google/android/gms/tasks/CancellationToken;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

.field private zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

.field private zze:Ljava/lang/Integer;

.field private zzf:Ljava/lang/Double;

.field private zzg:Z

.field private zzh:Ljava/util/List;

.field private zzi:Ljava/util/List;

.field private zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

.field private zzk:Ljava/lang/String;

.field private zzl:Z

.field private zzm:Ljava/lang/String;

.field private zzn:B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    return-object v0
.end method

.method public final getIncludedType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object v0
.end method

.method public final getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object v0
.end method

.method public final getMaxResultCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zze:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMinRating()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzf:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPlaceFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzh:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"placeFields\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPriceLevels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzi:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"priceLevels\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRankPreference()Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    return-object v0
.end method

.method public final getRegionCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextQuery()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzm:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"textQuery\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isOpenNow()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzn:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzg:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"openNow\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isStrictTypeFiltering()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzn:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzl:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"strictTypeFiltering\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    return-object p0
.end method

.method public final setIncludedType(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object p0
.end method

.method public final setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object p0
.end method

.method public final setMaxResultCount(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zze:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setMinRating(Ljava/lang/Double;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzf:Ljava/lang/Double;

    return-object p0
.end method

.method public final setOpenNow(Z)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzg:Z

    iget-byte p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzn:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzn:B

    return-object p0
.end method

.method public final setPlaceFields(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzh:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null placeFields"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setPriceLevels(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzi:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null priceLevels"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setRankPreference(Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    return-object p0
.end method

.method public final setRegionCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzk:Ljava/lang/String;

    return-object p0
.end method

.method public final setStrictTypeFiltering(Z)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzl:Z

    iget-byte p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzn:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzn:B

    return-object p0
.end method

.method public final setTextQuery(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzy;->zzm:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null textQuery"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zza()Lcom/google/android/libraries/places/api/net/SearchByTextRequest;
    .locals 18

    move-object/from16 v0, p0

    iget-byte v1, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzn:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v11, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzh:Ljava/util/List;

    if-eqz v11, :cond_1

    iget-object v12, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzi:Ljava/util/List;

    if-eqz v12, :cond_1

    iget-object v1, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzm:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/libraries/places/api/net/zzaa;

    iget-object v4, v0, Lcom/google/android/libraries/places/api/net/zzy;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    iget-object v5, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzb:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    iget-object v7, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    iget-object v8, v0, Lcom/google/android/libraries/places/api/net/zzy;->zze:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzf:Ljava/lang/Double;

    iget-boolean v10, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzg:Z

    iget-object v13, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    iget-object v14, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzk:Ljava/lang/String;

    iget-boolean v15, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzl:Z

    const/16 v17, 0x0

    move-object v3, v2

    move-object/from16 v16, v1

    invoke-direct/range {v3 .. v17}, Lcom/google/android/libraries/places/api/net/zzaa;-><init>(Lcom/google/android/gms/tasks/CancellationToken;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/lang/Integer;Ljava/lang/Double;ZLjava/util/List;Ljava/util/List;Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/libraries/places/api/net/zzz;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v2, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzn:B

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    const-string v2, " openNow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzh:Ljava/util/List;

    if-nez v2, :cond_3

    const-string v2, " placeFields"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzi:Ljava/util/List;

    if-nez v2, :cond_4

    const-string v2, " priceLevels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v2, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzn:B

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    const-string v2, " strictTypeFiltering"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v2, v0, Lcom/google/android/libraries/places/api/net/zzy;->zzm:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v2, " textQuery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
