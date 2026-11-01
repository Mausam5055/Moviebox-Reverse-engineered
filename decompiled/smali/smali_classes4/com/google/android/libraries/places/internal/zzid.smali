.class public final Lcom/google/android/libraries/places/internal/zzid;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Lcom/google/android/libraries/places/internal/zzic;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzic;->status:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzjb;->zza(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/PlacesStatusCodes;->isError(I)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzic;->predictions:[Lcom/google/android/libraries/places/internal/zzhq;

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzhq;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzhq;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->builder(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzhq;->zzd()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setDistanceMeters(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzhq;->zzc()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzix;->zze(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzix;->zzd(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setPlaceTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzhq;->zzc()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzix;->zzf(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzix;->zzd(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzhq;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zznb;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setFullText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzhq;->zzb()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzid;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzhq;->zza()Lcom/google/android/libraries/places/internal/zzhq$zza;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzhq$zza;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zznb;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setPrimaryText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzhq$zza;->zza()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzid;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->zzc(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzhq$zza;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zznb;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setSecondaryText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzhq$zza;->zzb()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzid;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->zzd(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->build()Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const-string v2, "Unexpected server error: Place ID not provided for an autocomplete prediction result"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzic;->status:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzic;->errorMessage:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/google/android/libraries/places/internal/zzjb;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v1
.end method

.method private static zzb(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Lcom/google/android/libraries/places/internal/zznx;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zznx;->zzq(I)Lcom/google/android/libraries/places/internal/zzoy;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzhq$zzb;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    const-string v4, "Unexpected server error: Place ID not provided for an autocomplete prediction result"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/google/android/libraries/places/internal/zzhq$zzb;->offset:Ljava/lang/Integer;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzhq$zzb;->length:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/api/model/zzby;->zzc()Lcom/google/android/libraries/places/api/model/zzbx;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/api/model/zzbx;->zzb(I)Lcom/google/android/libraries/places/api/model/zzbx;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/api/model/zzbx;->zza(I)Lcom/google/android/libraries/places/api/model/zzbx;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/model/zzbx;->zzc()Lcom/google/android/libraries/places/api/model/zzby;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p0

    :cond_2
    return-object v0
.end method
