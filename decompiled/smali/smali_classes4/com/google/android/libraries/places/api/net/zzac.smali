.class final Lcom/google/android/libraries/places/api/net/zzac;
.super Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/List;

.field private zzc:Ljava/util/List;

.field private zzd:Ljava/util/List;

.field private zze:Ljava/util/List;

.field private zzf:Ljava/lang/Integer;

.field private zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

.field private zzh:Ljava/util/List;

.field private zzi:Lcom/google/android/gms/tasks/CancellationToken;

.field private zzj:Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzi:Lcom/google/android/gms/tasks/CancellationToken;

    return-object v0
.end method

.method public final getExcludedPrimaryTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zze:Ljava/util/List;

    return-object v0
.end method

.method public final getExcludedTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzc:Ljava/util/List;

    return-object v0
.end method

.method public final getIncludedPrimaryTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzd:Ljava/util/List;

    return-object v0
.end method

.method public final getIncludedTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzb:Ljava/util/List;

    return-object v0
.end method

.method public final getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"locationRestriction\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMaxResultCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzf:Ljava/lang/Integer;

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

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzh:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"placeFields\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRankPreference()Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzj:Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;

    return-object v0
.end method

.method public final getRegionCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzi:Lcom/google/android/gms/tasks/CancellationToken;

    return-object p0
.end method

.method public final setExcludedPrimaryTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zze:Ljava/util/List;

    return-object p0
.end method

.method public final setExcludedTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzc:Ljava/util/List;

    return-object p0
.end method

.method public final setIncludedPrimaryTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzd:Ljava/util/List;

    return-object p0
.end method

.method public final setIncludedTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzb:Ljava/util/List;

    return-object p0
.end method

.method public final setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null locationRestriction"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setMaxResultCount(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzf:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setPlaceFields(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzh:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null placeFields"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setRankPreference(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzj:Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;

    return-object p0
.end method

.method public final setRegionCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zza:Ljava/lang/String;

    return-object p0
.end method

.method final zza()Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;
    .locals 13

    iget-object v7, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-eqz v7, :cond_1

    iget-object v8, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzh:Ljava/util/List;

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v12, Lcom/google/android/libraries/places/api/net/zzae;

    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzb:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzc:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzd:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/libraries/places/api/net/zzac;->zze:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzf:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzi:Lcom/google/android/gms/tasks/CancellationToken;

    iget-object v10, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzj:Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/libraries/places/api/net/zzae;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/util/List;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;Lcom/google/android/libraries/places/api/net/zzad;)V

    return-object v12

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v1, :cond_2

    const-string v1, " locationRestriction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzh:Ljava/util/List;

    if-nez v1, :cond_3

    const-string v1, " placeFields"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
