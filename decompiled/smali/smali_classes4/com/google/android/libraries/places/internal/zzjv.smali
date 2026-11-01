.class public final Lcom/google/android/libraries/places/internal/zzjv;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zznx;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    const-string v25, "viewport"

    const-string v26, "websiteUri"

    const-string v0, "iconMaskBaseUri"

    const-string v1, "id"

    const-string v2, "internationalPhoneNumber"

    const-string v3, "location"

    const-string v4, "photos"

    const-string v5, "plusCode"

    const-string v6, "priceLevel"

    const-string v7, "primaryType"

    const-string v8, "primaryTypeDisplayName"

    const-string v9, "rating"

    const-string v10, "regularOpeningHours"

    const-string v11, "regularSecondaryOpeningHours"

    const-string v12, "reservable"

    const-string v13, "reviews"

    const-string v14, "servesBeer"

    const-string v15, "servesBreakfast"

    const-string v16, "servesBrunch"

    const-string v17, "servesDinner"

    const-string v18, "servesLunch"

    const-string v19, "servesVegetarianFood"

    const-string v20, "servesWine"

    const-string v21, "takeout"

    const-string v22, "types"

    const-string v23, "userRatingCount"

    const-string v24, "utcOffsetMinutes"

    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v39

    const-string v37, "formattedAddress"

    const-string v38, "iconBackgroundColor"

    const-string v27, "accessibilityOptions"

    const-string v28, "addressComponents"

    const-string v29, "attributions"

    const-string v30, "businessStatus"

    const-string v31, "curbsidePickup"

    const-string v32, "currentOpeningHours"

    const-string v33, "delivery"

    const-string v34, "dineIn"

    const-string v35, "displayName"

    const-string v36, "editorialSummary"

    invoke-static/range {v27 .. v39}, Lcom/google/android/libraries/places/internal/zznx;->zzo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzjv;->zza:Lcom/google/android/libraries/places/internal/zznx;

    return-void
.end method

.method public static zza(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "attributions"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/google/android/libraries/places/internal/zzjv;->zzc(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "attributions"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/libraries/places/internal/zzjv;->zzc(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzc(Ljava/util/List;Z)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "places."

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p0, ","

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmh;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzmh;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzmh;->zzf(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
