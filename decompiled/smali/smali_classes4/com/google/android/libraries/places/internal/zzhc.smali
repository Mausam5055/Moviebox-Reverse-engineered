.class public final Lcom/google/android/libraries/places/internal/zzhc;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzapv;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzjw;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzjr;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzdv;

.field private final zze:Lcom/google/android/libraries/places/internal/zzhk;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzhm;

.field private final zzg:Lcom/google/android/libraries/places/internal/zzgk;

.field private final zzh:Lcom/google/android/libraries/places/internal/zzgh;

.field private final zzi:Lcom/google/android/libraries/places/internal/zzgc;

.field private final zzj:Lcom/google/android/libraries/places/internal/zzho;

.field private final zzk:Lcom/google/android/libraries/places/internal/zzhe;

.field private final zzl:Lcom/google/android/libraries/places/internal/zzjs;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzjs;Lcom/google/android/libraries/places/internal/zzapv;Lcom/google/android/libraries/places/internal/zzjr;Lcom/google/android/libraries/places/internal/zzdv;Lcom/google/android/libraries/places/internal/zzhm;Lcom/google/android/libraries/places/internal/zzhk;Lcom/google/android/libraries/places/internal/zzgk;Lcom/google/android/libraries/places/internal/zzgh;Lcom/google/android/libraries/places/internal/zzgc;Lcom/google/android/libraries/places/internal/zzhe;Lcom/google/android/libraries/places/internal/zzho;Lcom/google/android/libraries/places/internal/zzjw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzl:Lcom/google/android/libraries/places/internal/zzjs;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzhc;->zza:Lcom/google/android/libraries/places/internal/zzapv;

    iput-object p12, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzb:Lcom/google/android/libraries/places/internal/zzjw;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzc:Lcom/google/android/libraries/places/internal/zzjr;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzd:Lcom/google/android/libraries/places/internal/zzdv;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzf:Lcom/google/android/libraries/places/internal/zzhm;

    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzhc;->zze:Lcom/google/android/libraries/places/internal/zzhk;

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzg:Lcom/google/android/libraries/places/internal/zzgk;

    iput-object p9, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzi:Lcom/google/android/libraries/places/internal/zzgc;

    iput-object p8, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzh:Lcom/google/android/libraries/places/internal/zzgh;

    iput-object p10, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzk:Lcom/google/android/libraries/places/internal/zzhe;

    iput-object p11, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzj:Lcom/google/android/libraries/places/internal/zzho;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/libraries/places/internal/zzamn;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzamn;->zzd()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzamm;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzj:Lcom/google/android/libraries/places/internal/zzho;

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzho;->zza(Lcom/google/android/libraries/places/internal/zzamm;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(Lcom/google/android/libraries/places/internal/zzaps;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzk:Lcom/google/android/libraries/places/internal/zzhe;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzhe;->zza(Lcom/google/android/libraries/places/internal/zzaps;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;->newInstance(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/libraries/places/internal/zzarr;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzarr;->zzd()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzaps;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzk:Lcom/google/android/libraries/places/internal/zzhe;

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzhe;->zza(Lcom/google/android/libraries/places/internal/zzaps;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/android/libraries/places/api/net/SearchByTextResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/libraries/places/internal/zzarc;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzarc;->zzd()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzaps;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzk:Lcom/google/android/libraries/places/internal/zzhe;

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzhe;->zza(Lcom/google/android/libraries/places/internal/zzaps;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/android/libraries/places/api/net/SearchNearbyResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 9

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getRegionCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2334

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Region code must not be an empty string."

    invoke-direct {p2, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Query must not be null."

    invoke-direct {p2, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zznx;->zzl()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzd:Lcom/google/android/libraries/places/internal/zzdv;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzhc;->zza:Lcom/google/android/libraries/places/internal/zzapv;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzb:Lcom/google/android/libraries/places/internal/zzjw;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzl:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v5

    const-string v1, ""

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/libraries/places/internal/zzjw;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbcf;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbva;->zza(Lcom/google/android/libraries/places/internal/zzbcf;)Lcom/google/android/libraries/places/internal/zzayp;

    move-result-object v1

    new-array v3, v0, [Lcom/google/android/libraries/places/internal/zzayp;

    aput-object v1, v3, p2

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbur;->zze([Lcom/google/android/libraries/places/internal/zzayp;)Lcom/google/android/libraries/places/internal/zzbur;

    move-result-object v1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaly;->zza()Lcom/google/android/libraries/places/internal/zzalt;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzalt;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzalt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getInputOffset()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzalt;->zzd(I)Lcom/google/android/libraries/places/internal/zzalt;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getRegionCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzalt;->zzh(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzalt;

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v3

    if-eqz v3, :cond_a

    instance-of v4, v3, Lcom/google/android/libraries/places/api/model/CircularBounds;

    if-nez v4, :cond_6

    instance-of v7, v3, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    if-eqz v7, :cond_7

    :cond_6
    move v7, v0

    goto :goto_1

    :cond_7
    move v7, p2

    :goto_1
    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzmt;->zze(Z)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzalv;->zza()Lcom/google/android/libraries/places/internal/zzalu;

    move-result-object v7

    if-eqz v4, :cond_8

    move-object v4, v3

    check-cast v4, Lcom/google/android/libraries/places/api/model/CircularBounds;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzge;->zza(Lcom/google/android/libraries/places/api/model/CircularBounds;)Lcom/google/android/libraries/places/internal/zzamq;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/google/android/libraries/places/internal/zzalu;->zza(Lcom/google/android/libraries/places/internal/zzamq;)Lcom/google/android/libraries/places/internal/zzalu;

    :cond_8
    instance-of v4, v3, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    if-eqz v4, :cond_9

    check-cast v3, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzge;->zzb(Lcom/google/android/libraries/places/api/model/RectangularBounds;)Lcom/google/android/libraries/places/internal/zzaki;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/libraries/places/internal/zzalu;->zzb(Lcom/google/android/libraries/places/internal/zzaki;)Lcom/google/android/libraries/places/internal/zzalu;

    :cond_9
    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzalv;

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzalt;->zze(Lcom/google/android/libraries/places/internal/zzalv;)Lcom/google/android/libraries/places/internal/zzalt;

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v3

    if-eqz v3, :cond_f

    instance-of v4, v3, Lcom/google/android/libraries/places/api/model/CircularBounds;

    if-nez v4, :cond_b

    instance-of v7, v3, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    if-eqz v7, :cond_c

    :cond_b
    move p2, v0

    :cond_c
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzmt;->zze(Z)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzalx;->zza()Lcom/google/android/libraries/places/internal/zzalw;

    move-result-object p2

    if-eqz v4, :cond_d

    move-object v4, v3

    check-cast v4, Lcom/google/android/libraries/places/api/model/CircularBounds;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzge;->zza(Lcom/google/android/libraries/places/api/model/CircularBounds;)Lcom/google/android/libraries/places/internal/zzamq;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/libraries/places/internal/zzalw;->zza(Lcom/google/android/libraries/places/internal/zzamq;)Lcom/google/android/libraries/places/internal/zzalw;

    :cond_d
    instance-of v4, v3, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    if-eqz v4, :cond_e

    check-cast v3, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzge;->zzb(Lcom/google/android/libraries/places/api/model/RectangularBounds;)Lcom/google/android/libraries/places/internal/zzaki;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/android/libraries/places/internal/zzalw;->zzb(Lcom/google/android/libraries/places/internal/zzaki;)Lcom/google/android/libraries/places/internal/zzalw;

    :cond_e
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/zzalx;

    invoke-virtual {v2, p2}, Lcom/google/android/libraries/places/internal/zzalt;->zzf(Lcom/google/android/libraries/places/internal/zzalx;)Lcom/google/android/libraries/places/internal/zzalt;

    :cond_f
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getOrigin()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaxp;->zzf()Lcom/google/android/libraries/places/internal/zzaxo;

    move-result-object v3

    iget-wide v7, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v7, v8}, Lcom/google/android/libraries/places/internal/zzaxo;->zza(D)Lcom/google/android/libraries/places/internal/zzaxo;

    iget-wide v7, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v3, v7, v8}, Lcom/google/android/libraries/places/internal/zzaxo;->zzb(D)Lcom/google/android/libraries/places/internal/zzaxo;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/zzaxp;

    invoke-virtual {v2, p2}, Lcom/google/android/libraries/places/internal/zzalt;->zzg(Lcom/google/android/libraries/places/internal/zzaxp;)Lcom/google/android/libraries/places/internal/zzalt;

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getCountries()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzalt;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzalt;

    goto :goto_2

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/libraries/places/internal/zzalt;->zzi(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzalt;

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypesFilter()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzalt;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzalt;

    goto :goto_3

    :cond_13
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/zzaly;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbur;->zzd()Lcom/google/android/libraries/places/internal/zzayk;

    move-result-object v2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzapw;->zzb()Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbur;->zzc()Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/libraries/places/internal/zzayk;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/libraries/places/internal/zzbux;->zza(Lcom/google/android/libraries/places/internal/zzayo;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzaka;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    if-eqz p1, :cond_14

    new-instance v1, Lcom/google/android/libraries/places/internal/zzgn;

    invoke-direct {v1, p2}, Lcom/google/android/libraries/places/internal/zzgn;-><init>(Lcom/google/android/libraries/places/internal/zzaka;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    :cond_14
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzed;->zza(Lcom/google/android/libraries/places/internal/zzaka;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzgt;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/zzgt;-><init>(Lcom/google/android/libraries/places/internal/zzhc;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzgu;

    invoke-direct {p2, p0, v5, v6, v0}, Lcom/google/android/libraries/places/internal/zzgu;-><init>(Lcom/google/android/libraries/places/internal/zzhc;JI)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 6

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzd:Lcom/google/android/libraries/places/internal/zzdv;

    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzl:Lcom/google/android/libraries/places/internal/zzjs;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzb:Lcom/google/android/libraries/places/internal/zzjw;

    const-string v3, ""

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lcom/google/android/libraries/places/internal/zzjw;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbcf;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbva;->zza(Lcom/google/android/libraries/places/internal/zzbcf;)Lcom/google/android/libraries/places/internal/zzayp;

    move-result-object p2

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/google/android/libraries/places/internal/zzayp;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzhc;->zza:Lcom/google/android/libraries/places/internal/zzapv;

    invoke-virtual {p2, v3}, Lcom/google/android/libraries/places/internal/zzbur;->zze([Lcom/google/android/libraries/places/internal/zzayp;)Lcom/google/android/libraries/places/internal/zzbur;

    move-result-object p2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzanx;->zza()Lcom/google/android/libraries/places/internal/zzanw;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;->getPhotoMetadata()Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "/media"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzanw;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzanw;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzanw;->zza(I)Lcom/google/android/libraries/places/internal/zzanw;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzanw;->zzb(I)Lcom/google/android/libraries/places/internal/zzanw;

    :cond_1
    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzanw;->zzd(Z)Lcom/google/android/libraries/places/internal/zzanw;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzanx;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbur;->zzd()Lcom/google/android/libraries/places/internal/zzayk;

    move-result-object v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzapw;->zzc()Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbur;->zzc()Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object p2

    invoke-virtual {v4, v5, p2}, Lcom/google/android/libraries/places/internal/zzayk;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/google/android/libraries/places/internal/zzbux;->zza(Lcom/google/android/libraries/places/internal/zzayo;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzaka;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v3, Lcom/google/android/libraries/places/internal/zzgq;

    invoke-direct {v3, p2}, Lcom/google/android/libraries/places/internal/zzgq;-><init>(Lcom/google/android/libraries/places/internal/zzaka;)V

    invoke-virtual {p1, v3}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    :cond_2
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzed;->zza(Lcom/google/android/libraries/places/internal/zzaka;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzgr;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzgr;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzgs;

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgs;-><init>(Lcom/google/android/libraries/places/internal/zzhc;JI)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 7

    const/4 p2, 0x1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/16 v1, 0x2334

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Place id must not be an empty string."

    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Place fields must not be empty."

    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getRegionCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Region code must not be an empty string."

    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzd:Lcom/google/android/libraries/places/internal/zzdv;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzhg;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzjv;->zzb(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzhc;->zza:Lcom/google/android/libraries/places/internal/zzapv;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzb:Lcom/google/android/libraries/places/internal/zzjw;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzl:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/google/android/libraries/places/internal/zzjw;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbcf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbva;->zza(Lcom/google/android/libraries/places/internal/zzbcf;)Lcom/google/android/libraries/places/internal/zzayp;

    move-result-object v0

    new-array v4, p2, [Lcom/google/android/libraries/places/internal/zzayp;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzbur;->zze([Lcom/google/android/libraries/places/internal/zzayp;)Lcom/google/android/libraries/places/internal/zzbur;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzl:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzjs;->zzb()Ljava/util/Locale;

    move-result-object v3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaoa;->zza()Lcom/google/android/libraries/places/internal/zzanz;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "places/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/zzanz;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzanz;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getRegionCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/zzanz;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzanz;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/zzanz;->zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzanz;

    :cond_5
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/places/internal/zzanz;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzanz;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzaoa;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbur;->zzd()Lcom/google/android/libraries/places/internal/zzayk;

    move-result-object v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzapw;->zzd()Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbur;->zzc()Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/google/android/libraries/places/internal/zzayk;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzbux;->zza(Lcom/google/android/libraries/places/internal/zzayo;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzaka;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v3, Lcom/google/android/libraries/places/internal/zzgv;

    invoke-direct {v3, v0}, Lcom/google/android/libraries/places/internal/zzgv;-><init>(Lcom/google/android/libraries/places/internal/zzaka;)V

    invoke-virtual {p1, v3}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    :cond_6
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzed;->zza(Lcom/google/android/libraries/places/internal/zzaka;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzgw;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzgw;-><init>(Lcom/google/android/libraries/places/internal/zzhc;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzgx;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzgx;-><init>(Lcom/google/android/libraries/places/internal/zzhc;JI)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzh(JILcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p4

    :cond_0
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzd:Lcom/google/android/libraries/places/internal/zzdv;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzc:Lcom/google/android/libraries/places/internal/zzjr;

    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x1

    move-object v1, p4

    move-wide v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzjr;->zzn(Lcom/google/android/gms/tasks/Task;JJII)V

    return-object p4
.end method

.method final synthetic zzi(JILcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p4

    :cond_0
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzd:Lcom/google/android/libraries/places/internal/zzdv;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzc:Lcom/google/android/libraries/places/internal/zzjr;

    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v1, p4

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzjr;->zzd(Lcom/google/android/gms/tasks/Task;JJI)V

    return-object p4
.end method

.method final synthetic zzj(JILcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p4

    :cond_0
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzd:Lcom/google/android/libraries/places/internal/zzdv;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzc:Lcom/google/android/libraries/places/internal/zzjr;

    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x1

    move-object v1, p4

    move-wide v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzjr;->zzl(Lcom/google/android/gms/tasks/Task;JJII)V

    return-object p4
.end method

.method final synthetic zzk(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;JILcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result p4

    if-eqz p4, :cond_0

    return-object p5

    :cond_0
    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzd:Lcom/google/android/libraries/places/internal/zzdv;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzc:Lcom/google/android/libraries/places/internal/zzjr;

    invoke-interface {p4}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p5

    move-wide v3, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzjr;->zzh(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;Lcom/google/android/gms/tasks/Task;JJI)V

    return-object p5
.end method

.method final synthetic zzl(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;JILcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result p4

    if-eqz p4, :cond_0

    return-object p5

    :cond_0
    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzd:Lcom/google/android/libraries/places/internal/zzdv;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzc:Lcom/google/android/libraries/places/internal/zzjr;

    invoke-interface {p4}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p5

    move-wide v3, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzjr;->zzj(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;Lcom/google/android/gms/tasks/Task;JJI)V

    return-object p5
.end method

.method public final zzm(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 11

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/16 v3, 0x2334

    if-eqz v2, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Place fields must not be empty."

    invoke-direct {p2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getTextQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Text query must not be an empty string."

    invoke-direct {p2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getIncludedType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Included type must not be an empty string."

    invoke-direct {p2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getRegionCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Region code must not be an empty string."

    invoke-direct {p2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzd:Lcom/google/android/libraries/places/internal/zzdv;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v6

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzhg;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzjv;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzhc;->zza:Lcom/google/android/libraries/places/internal/zzapv;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzb:Lcom/google/android/libraries/places/internal/zzjw;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzl:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/libraries/places/internal/zzjw;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbcf;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbva;->zza(Lcom/google/android/libraries/places/internal/zzbcf;)Lcom/google/android/libraries/places/internal/zzayp;

    move-result-object v1

    new-array v3, v0, [Lcom/google/android/libraries/places/internal/zzayp;

    aput-object v1, v3, p2

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbur;->zze([Lcom/google/android/libraries/places/internal/zzayp;)Lcom/google/android/libraries/places/internal/zzbur;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzl:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzjs;->zzb()Ljava/util/Locale;

    move-result-object v2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaro;->zza()Lcom/google/android/libraries/places/internal/zzare;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getIncludedType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzare;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzare;

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v4

    if-eqz v4, :cond_a

    instance-of v5, v4, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    if-nez v5, :cond_7

    instance-of v8, v4, Lcom/google/android/libraries/places/api/model/CircularBounds;

    if-eqz v8, :cond_8

    :cond_7
    move p2, v0

    :cond_8
    const-string v8, "LocationBias must be of type RectangularBounds or CircularBounds."

    invoke-static {p2, v8}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzarj;->zza()Lcom/google/android/libraries/places/internal/zzari;

    move-result-object p2

    if-eqz v5, :cond_9

    check-cast v4, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzge;->zzb(Lcom/google/android/libraries/places/api/model/RectangularBounds;)Lcom/google/android/libraries/places/internal/zzaki;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/libraries/places/internal/zzari;->zzb(Lcom/google/android/libraries/places/internal/zzaki;)Lcom/google/android/libraries/places/internal/zzari;

    goto :goto_2

    :cond_9
    check-cast v4, Lcom/google/android/libraries/places/api/model/CircularBounds;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzge;->zza(Lcom/google/android/libraries/places/api/model/CircularBounds;)Lcom/google/android/libraries/places/internal/zzamq;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/libraries/places/internal/zzari;->zza(Lcom/google/android/libraries/places/internal/zzamq;)Lcom/google/android/libraries/places/internal/zzari;

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/zzarj;

    invoke-virtual {v3, p2}, Lcom/google/android/libraries/places/internal/zzare;->zzd(Lcom/google/android/libraries/places/internal/zzarj;)Lcom/google/android/libraries/places/internal/zzare;

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object p2

    if-eqz p2, :cond_b

    instance-of v4, p2, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    const-string v5, "LocationRestriction must be of type RectangularBounds."

    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzarl;->zza()Lcom/google/android/libraries/places/internal/zzark;

    move-result-object v4

    check-cast p2, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzge;->zzb(Lcom/google/android/libraries/places/api/model/RectangularBounds;)Lcom/google/android/libraries/places/internal/zzaki;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/google/android/libraries/places/internal/zzark;->zza(Lcom/google/android/libraries/places/internal/zzaki;)Lcom/google/android/libraries/places/internal/zzark;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/zzarl;

    invoke-virtual {v3, p2}, Lcom/google/android/libraries/places/internal/zzare;->zze(Lcom/google/android/libraries/places/internal/zzarl;)Lcom/google/android/libraries/places/internal/zzare;

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMaxResultCount()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/google/android/libraries/places/internal/zzare;->zzf(I)Lcom/google/android/libraries/places/internal/zzare;

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMinRating()Ljava/lang/Double;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/libraries/places/internal/zzare;->zzg(D)Lcom/google/android/libraries/places/internal/zzare;

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->isOpenNow()Z

    move-result p2

    invoke-virtual {v3, p2}, Lcom/google/android/libraries/places/internal/zzare;->zzh(Z)Lcom/google/android/libraries/places/internal/zzare;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getPriceLevels()Ljava/util/List;

    move-result-object p2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v5, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_12

    if-eq v5, v0, :cond_11

    if-eq v5, v10, :cond_10

    if-eq v5, v9, :cond_f

    if-eq v5, v8, :cond_e

    goto :goto_3

    :cond_e
    sget-object v5, Lcom/google/android/libraries/places/internal/zzaqb;->zzf:Lcom/google/android/libraries/places/internal/zzaqb;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_f
    sget-object v5, Lcom/google/android/libraries/places/internal/zzaqb;->zze:Lcom/google/android/libraries/places/internal/zzaqb;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    sget-object v5, Lcom/google/android/libraries/places/internal/zzaqb;->zzd:Lcom/google/android/libraries/places/internal/zzaqb;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_11
    sget-object v5, Lcom/google/android/libraries/places/internal/zzaqb;->zzc:Lcom/google/android/libraries/places/internal/zzaqb;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_12
    sget-object v5, Lcom/google/android/libraries/places/internal/zzaqb;->zzb:Lcom/google/android/libraries/places/internal/zzaqb;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_13
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzare;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzare;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getRankPreference()Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    move-result-object p2

    if-nez p2, :cond_14

    move v8, v10

    goto :goto_4

    :cond_14
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_4

    :cond_15
    move v8, v9

    :goto_4
    invoke-virtual {v3, v8}, Lcom/google/android/libraries/places/internal/zzare;->zzl(I)Lcom/google/android/libraries/places/internal/zzare;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getRegionCode()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_16

    invoke-virtual {v3, p2}, Lcom/google/android/libraries/places/internal/zzare;->zzi(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzare;

    :cond_16
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->isStrictTypeFiltering()Z

    move-result p2

    invoke-virtual {v3, p2}, Lcom/google/android/libraries/places/internal/zzare;->zzj(Z)Lcom/google/android/libraries/places/internal/zzare;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getTextQuery()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/google/android/libraries/places/internal/zzare;->zzk(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzare;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/google/android/libraries/places/internal/zzare;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzare;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/zzaro;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbur;->zzd()Lcom/google/android/libraries/places/internal/zzayk;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzapw;->zzf()Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbur;->zzc()Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzayk;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/libraries/places/internal/zzbux;->zza(Lcom/google/android/libraries/places/internal/zzayo;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzaka;

    move-result-object p2

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzjt;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v1, Lcom/google/android/libraries/places/internal/zzhb;

    invoke-direct {v1, p2}, Lcom/google/android/libraries/places/internal/zzhb;-><init>(Lcom/google/android/libraries/places/internal/zzaka;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    :cond_17
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzed;->zza(Lcom/google/android/libraries/places/internal/zzaka;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzgo;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzgo;-><init>(Lcom/google/android/libraries/places/internal/zzhc;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzgp;

    const/4 v8, 0x1

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/libraries/places/internal/zzgp;-><init>(Lcom/google/android/libraries/places/internal/zzhc;Lcom/google/android/libraries/places/api/net/SearchByTextRequest;JI)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzn(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 7

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getPlaceFields()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x2334

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Place fields must not be empty."

    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Region code must not be an empty string."

    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzd:Lcom/google/android/libraries/places/internal/zzdv;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v4

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzhg;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzjv;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhc;->zza:Lcom/google/android/libraries/places/internal/zzapv;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzb:Lcom/google/android/libraries/places/internal/zzjw;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzl:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/google/android/libraries/places/internal/zzjw;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbcf;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbva;->zza(Lcom/google/android/libraries/places/internal/zzbcf;)Lcom/google/android/libraries/places/internal/zzayp;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/libraries/places/internal/zzayp;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbur;->zze([Lcom/google/android/libraries/places/internal/zzayp;)Lcom/google/android/libraries/places/internal/zzbur;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhc;->zzl:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zzb()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaqz;->zza()Lcom/google/android/libraries/places/internal/zzaqu;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaqu;->zze(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzaqu;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaqu;->zzh(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzaqu;

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getIncludedTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaqu;->zzd(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzaqu;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getExcludedTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaqu;->zzb(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzaqu;

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getIncludedPrimaryTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaqu;->zzc(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzaqu;

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getExcludedPrimaryTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaqu;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzaqu;

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getMaxResultCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaqu;->zzg(I)Lcom/google/android/libraries/places/internal/zzaqu;

    :cond_8
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaqy;->zza()Lcom/google/android/libraries/places/internal/zzaqx;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/model/CircularBounds;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzge;->zza(Lcom/google/android/libraries/places/api/model/CircularBounds;)Lcom/google/android/libraries/places/internal/zzamq;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzaqx;->zza(Lcom/google/android/libraries/places/internal/zzamq;)Lcom/google/android/libraries/places/internal/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaqy;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaqu;->zzf(Lcom/google/android/libraries/places/internal/zzaqy;)Lcom/google/android/libraries/places/internal/zzaqu;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getRankPreference()Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;

    move-result-object v0

    if-nez v0, :cond_9

    const/4 v0, 0x2

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    goto :goto_1

    :cond_a
    const/4 v0, 0x3

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaqu;->zzi(I)Lcom/google/android/libraries/places/internal/zzaqu;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaqz;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbur;->zzd()Lcom/google/android/libraries/places/internal/zzayk;

    move-result-object v1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzapw;->zze()Lcom/google/android/libraries/places/internal/zzbcl;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbur;->zzc()Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzayk;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/google/android/libraries/places/internal/zzbux;->zza(Lcom/google/android/libraries/places/internal/zzayo;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzaka;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Lcom/google/android/libraries/places/internal/zzgy;

    invoke-direct {v1, p2}, Lcom/google/android/libraries/places/internal/zzgy;-><init>(Lcom/google/android/libraries/places/internal/zzaka;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    :cond_b
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzed;->zza(Lcom/google/android/libraries/places/internal/zzaka;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzgz;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzgz;-><init>(Lcom/google/android/libraries/places/internal/zzhc;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzha;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzha;-><init>(Lcom/google/android/libraries/places/internal/zzhc;Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;JI)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
