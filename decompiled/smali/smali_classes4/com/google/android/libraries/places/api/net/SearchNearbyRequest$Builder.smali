.class public abstract Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;
    .locals 7
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/libraries/places/api/model/CircularBounds;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->getIncludedTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->getExcludedTypes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->getIncludedPrimaryTypes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->getExcludedPrimaryTypes()Ljava/util/List;

    move-result-object v5

    const-string v6, "LocationRestriction must be of type CircularBounds."

    invoke-static {v1, v6}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->setPlaceFields(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->setIncludedTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;

    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->setExcludedTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->setIncludedPrimaryTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;

    :cond_2
    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->setExcludedPrimaryTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->zza()Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getExcludedPrimaryTypes()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExcludedTypes()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIncludedPrimaryTypes()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIncludedTypes()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getMaxResultCount()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getPlaceFields()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRankPreference()Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getRegionCode()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setExcludedPrimaryTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation
.end method

.method public abstract setExcludedTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation
.end method

.method public abstract setIncludedPrimaryTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation
.end method

.method public abstract setIncludedTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation
.end method

.method public abstract setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setMaxResultCount(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setPlaceFields(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation
.end method

.method public abstract setRankPreference(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .param p1    # Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setRegionCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method abstract zza()Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;
.end method
