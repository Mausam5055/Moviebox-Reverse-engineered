.class public abstract Lcom/google/android/libraries/places/api/net/SearchByTextRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzjt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;,
        Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .locals 2
    .param p0    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/api/net/zzy;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/net/zzy;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/net/zzy;->setOpenNow(Z)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;->setPlaceFields(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;->setPriceLevels(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;->setTextQuery(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;->setStrictTypeFiltering(Z)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest;
    .locals 0
    .param p0    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchByTextRequest;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->builder(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;->build()Lcom/google/android/libraries/places/api/net/SearchByTextRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getIncludedType()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getMaxResultCount()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getMinRating()Ljava/lang/Double;
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

.method public abstract getPriceLevels()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRankPreference()Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getRegionCode()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getTextQuery()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract isOpenNow()Z
.end method

.method public abstract isStrictTypeFiltering()Z
.end method
