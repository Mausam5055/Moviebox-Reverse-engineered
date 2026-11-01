.class final Lcom/google/android/libraries/places/internal/zzib;
.super Lcom/google/android/libraries/places/internal/zzik;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzik;-><init>(Lcom/google/android/libraries/places/internal/zzjt;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V

    return-void
.end method


# virtual methods
.method protected final zze()Ljava/lang/String;
    .locals 1

    const-string v0, "autocomplete/json"

    return-object v0
.end method

.method public final zzf()Ljava/util/Map;
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzfi;->zzb()Lcom/google/android/libraries/places/internal/zzjt;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypesFilter()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    const-string v6, "^\\s+"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\\s+$"

    const-string v7, " "

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v6, "input"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v6, "types"

    if-nez v4, :cond_1

    const-string v2, "|"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v2, v5}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzje;->zza(Lcom/google/android/libraries/places/api/model/TypeFilter;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_1
    invoke-static {v0, v6, v2, v5}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v2

    const-string v3, "sessiontoken"

    invoke-static {v0, v3, v2, v5}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getOrigin()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzjc;->zzb(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "origin"

    invoke-static {v0, v3, v2, v5}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzjc;->zzc(Lcom/google/android/libraries/places/api/model/LocationBias;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "locationbias"

    invoke-static {v0, v3, v2, v5}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzjc;->zzd(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "locationrestriction"

    invoke-static {v0, v3, v2, v5}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getCountries()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v3, v5

    goto :goto_4

    :cond_4
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "country:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x7c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_7

    move-object v1, v5

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    const-string v2, "components"

    invoke-static {v0, v2, v1, v5}, Lcom/google/android/libraries/places/internal/zzik;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
