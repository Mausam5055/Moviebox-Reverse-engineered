.class final Lcom/google/android/libraries/places/internal/zzho;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzhh;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzhh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzho;->zza:Lcom/google/android/libraries/places/internal/zzhh;

    return-void
.end method

.method static final zzb(Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzamj;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzamj;->zzc()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzamj;->zza()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzamj;->zzc()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-static {}, Lcom/google/android/libraries/places/api/model/zzby;->zzc()Lcom/google/android/libraries/places/api/model/zzbx;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/zzbx;->zzb(I)Lcom/google/android/libraries/places/api/model/zzbx;

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/api/model/zzbx;->zza(I)Lcom/google/android/libraries/places/api/model/zzbx;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/model/zzbx;->zzc()Lcom/google/android/libraries/places/api/model/zzby;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzamm;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzamm;->zza()Lcom/google/android/libraries/places/internal/zzamf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzamm;->zzd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzho;->zza:Lcom/google/android/libraries/places/internal/zzhh;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzamf;->zzh()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzhh;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zznx;->zzl()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzamf;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->builder(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzamf;->zza()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setDistanceMeters(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setPlaceTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzamf;->zzh()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzamf;->zzc()Lcom/google/android/libraries/places/internal/zzamd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzamd;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setFullText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzamf;->zzc()Lcom/google/android/libraries/places/internal/zzamd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzamd;->zze()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzho;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzamf;->zzf()Lcom/google/android/libraries/places/internal/zzaml;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzaml;->zza()Lcom/google/android/libraries/places/internal/zzamd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzamd;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setPrimaryText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzamf;->zzf()Lcom/google/android/libraries/places/internal/zzaml;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzaml;->zza()Lcom/google/android/libraries/places/internal/zzamd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzamd;->zze()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzho;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->zzc(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzamf;->zzf()Lcom/google/android/libraries/places/internal/zzaml;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzaml;->zzc()Lcom/google/android/libraries/places/internal/zzamd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzamd;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->setSecondaryText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzamf;->zzf()Lcom/google/android/libraries/places/internal/zzaml;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzaml;->zzc()Lcom/google/android/libraries/places/internal/zzamd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzamd;->zze()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzho;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->zzd(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;->build()Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Suggestion does not contain a PlacePrediction."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
