.class public abstract Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzjt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;,
        Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 1
    .param p0    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/model/LocationRestriction;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/api/net/zzac;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/net/zzac;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/net/zzac;->setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->setPlaceFields(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;
    .locals 0
    .param p0    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/model/LocationRestriction;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->builder(Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;->build()Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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
