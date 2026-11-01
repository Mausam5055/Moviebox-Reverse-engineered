.class public abstract Lcom/google/android/libraries/places/api/model/Place;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;,
        Lcom/google/android/libraries/places/api/model/Place$Builder;,
        Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;,
        Lcom/google/android/libraries/places/api/model/Place$Type;,
        Lcom/google/android/libraries/places/api/model/Place$Field;
    }
.end annotation


# static fields
.field public static final PRICE_LEVEL_MAX_VALUE:I = 0x4

.field public static final PRICE_LEVEL_MIN_VALUE:I = 0x0

.field public static final RATING_MAX_VALUE:D = 5.0

.field public static final RATING_MIN_VALUE:D = 1.0


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/api/model/zzw;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzw;-><init>()V

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;->UNKNOWN:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/zzw;->setCurbsidePickup(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setDelivery(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setDineIn(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setReservable(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesBeer(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesBreakfast(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesBrunch(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesDinner(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesLunch(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesVegetarianFood(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setServesWine(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setTakeout(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setWheelchairAccessibleEntrance(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    return-object v0
.end method


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getAddressComponents()Lcom/google/android/libraries/places/api/model/AddressComponents;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getAttributions()Ljava/util/List;
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

.method public abstract getBusinessStatus()Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getCurbsidePickup()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getCurrentOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getDelivery()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getDineIn()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getEditorialSummary()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getEditorialSummaryLanguageCode()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getIconBackgroundColor()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getIconUrl()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getNameLanguageCode()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getPhoneNumber()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getPhotoMetadatas()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlaceTypes()Ljava/util/List;
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

.method public abstract getPlusCode()Lcom/google/android/libraries/places/api/model/PlusCode;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getPriceLevel()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getPrimaryType()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getRating()Ljava/lang/Double;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getReservable()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getReviews()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Review;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSecondaryOpeningHours()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/OpeningHours;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServesBeer()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getServesBreakfast()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getServesBrunch()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getServesDinner()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getServesLunch()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getServesVegetarianFood()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getServesWine()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getTakeout()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getTypes()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUserRatingsTotal()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getUtcOffsetMinutes()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getWebsiteUri()Landroid/net/Uri;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getWheelchairAccessibleEntrance()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public isOpen()Ljava/lang/Boolean;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/api/model/Place;->isOpen(J)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOpen(J)Ljava/lang/Boolean;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/api/model/zzce;->zzb(Lcom/google/android/libraries/places/api/model/Place;J)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
