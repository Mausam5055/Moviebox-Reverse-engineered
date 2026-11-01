.class public final Lcom/google/android/libraries/places/internal/zziu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzev;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzki;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzfa;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzfg;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzjr;

.field private final zze:Lcom/google/android/libraries/places/internal/zzdv;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzhv;

.field private final zzg:Lcom/google/android/libraries/places/internal/zzhz;

.field private final zzh:Lcom/google/android/libraries/places/internal/zzid;

.field private final zzi:Lcom/google/android/libraries/places/internal/zzih;

.field private final zzj:Lcom/google/android/libraries/places/internal/zzjs;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzjs;Lcom/google/android/libraries/places/internal/zzki;Lcom/google/android/libraries/places/internal/zzfa;Lcom/google/android/libraries/places/internal/zzfg;Lcom/google/android/libraries/places/internal/zzjr;Lcom/google/android/libraries/places/internal/zzdv;Lcom/google/android/libraries/places/internal/zzhv;Lcom/google/android/libraries/places/internal/zzhz;Lcom/google/android/libraries/places/internal/zzid;Lcom/google/android/libraries/places/internal/zzih;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zziu;->zzj:Lcom/google/android/libraries/places/internal/zzjs;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zziu;->zza:Lcom/google/android/libraries/places/internal/zzki;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zziu;->zzb:Lcom/google/android/libraries/places/internal/zzfa;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zziu;->zzc:Lcom/google/android/libraries/places/internal/zzfg;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zziu;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zziu;->zzf:Lcom/google/android/libraries/places/internal/zzhv;

    iput-object p8, p0, Lcom/google/android/libraries/places/internal/zziu;->zzg:Lcom/google/android/libraries/places/internal/zzhz;

    iput-object p9, p0, Lcom/google/android/libraries/places/internal/zziu;->zzh:Lcom/google/android/libraries/places/internal/zzid;

    iput-object p10, p0, Lcom/google/android/libraries/places/internal/zziu;->zzi:Lcom/google/android/libraries/places/internal/zzih;

    return-void
.end method

.method static final synthetic zzi(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzhy;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhy;->status:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzjb;->zza(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/PlacesStatusCodes;->isError(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhy;->result:Lcom/google/android/libraries/places/internal/zzja;

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzhy;->htmlAttributions:[Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zznx;->zzk([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lcom/google/android/libraries/places/internal/zzix;->zzg(Lcom/google/android/libraries/places/internal/zzja;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;->newInstance(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzhy;->status:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzhy;->errorMessage:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/google/android/libraries/places/internal/zzjb;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v1
.end method

.method static final synthetic zzj(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzig;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzig;->status:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzjb;->zza(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/PlacesStatusCodes;->isError(I)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzig;->predictions:[Lcom/google/android/libraries/places/internal/zziz;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zziz;->zza()Lcom/google/android/libraries/places/internal/zzja;

    move-result-object v4

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zziz;->zzb()Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zziz;->zza()Lcom/google/android/libraries/places/internal/zzja;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzig;->htmlAttributions:[Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zznx;->zzk([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/zzix;->zzg(Lcom/google/android/libraries/places/internal/zzja;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/api/model/PlaceLikelihood;->newInstance(Lcom/google/android/libraries/places/api/model/Place;D)Lcom/google/android/libraries/places/api/model/PlaceLikelihood;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Unexpected server error: PlaceLikelihood returned without a likelihood value"

    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Unexpected server error: PlaceLikelihood returned without a Place value"

    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p0

    :cond_3
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzig;->status:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzig;->errorMessage:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/google/android/libraries/places/internal/zzjb;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 5

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2334

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Must include max width or max height in request."

    invoke-direct {p2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, p2

    const-string p2, "Max Width must not be < 1, but was: %d."

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, p2

    const-string p2, "Max Height must not be < 1, but was: %d."

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v3, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zziu;->zzj:Lcom/google/android/libraries/places/internal/zzjs;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzhr;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzjs;->zzf()Z

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zziu;->zza:Lcom/google/android/libraries/places/internal/zzki;

    invoke-direct {v2, p1, v3, p2, v1}, Lcom/google/android/libraries/places/internal/zzhr;-><init>(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zziu;->zzc:Lcom/google/android/libraries/places/internal/zzfg;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v3

    new-instance p1, Lcom/google/android/libraries/places/internal/zzhs;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzhs;-><init>()V

    invoke-virtual {p2, v2, p1}, Lcom/google/android/libraries/places/internal/zzfg;->zzb(Lcom/google/android/libraries/places/internal/zzfi;Lcom/google/android/libraries/places/internal/zzhs;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzim;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/zzim;-><init>(Lcom/google/android/libraries/places/internal/zziu;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzin;

    invoke-direct {p2, p0, v3, v4, v0}, Lcom/google/android/libraries/places/internal/zzin;-><init>(Lcom/google/android/libraries/places/internal/zziu;JI)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x2334

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Place ID must not be empty."

    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Place Fields must not be empty."

    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zzj:Lcom/google/android/libraries/places/internal/zzjs;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzhx;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zzb()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zzf()Z

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zziu;->zza:Lcom/google/android/libraries/places/internal/zzki;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzhx;-><init>(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zzb:Lcom/google/android/libraries/places/internal/zzfa;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v1

    const-class p1, Lcom/google/android/libraries/places/internal/zzhy;

    invoke-virtual {v0, v7, p1}, Lcom/google/android/libraries/places/internal/zzfa;->zza(Lcom/google/android/libraries/places/internal/zzfi;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzis;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzis;-><init>(Lcom/google/android/libraries/places/internal/zziu;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzit;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzit;-><init>(Lcom/google/android/libraries/places/internal/zziu;JI)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zzj:Lcom/google/android/libraries/places/internal/zzjs;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzib;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zzb()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zzf()Z

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zziu;->zza:Lcom/google/android/libraries/places/internal/zzki;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzib;-><init>(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zzb:Lcom/google/android/libraries/places/internal/zzfa;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v1

    const-class p1, Lcom/google/android/libraries/places/internal/zzic;

    invoke-virtual {v0, v7, p1}, Lcom/google/android/libraries/places/internal/zzfa;->zza(Lcom/google/android/libraries/places/internal/zzfi;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzio;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzio;-><init>(Lcom/google/android/libraries/places/internal/zziu;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzip;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzip;-><init>(Lcom/google/android/libraries/places/internal/zziu;JI)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zznx;->zzl()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/zznx;I)Lcom/google/android/gms/tasks/Task;
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x2334

    const-string p4, "Place Fields must not be empty."

    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zziu;->zzj:Lcom/google/android/libraries/places/internal/zzjs;

    new-instance v8, Lcom/google/android/libraries/places/internal/zzif;

    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzjs;->zzb()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzjs;->zzf()Z

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zziu;->zza:Lcom/google/android/libraries/places/internal/zzki;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzif;-><init>(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/zznx;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zziu;->zzb:Lcom/google/android/libraries/places/internal/zzfa;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide p3

    const-class p1, Lcom/google/android/libraries/places/internal/zzig;

    invoke-virtual {p2, v8, p1}, Lcom/google/android/libraries/places/internal/zzfa;->zza(Lcom/google/android/libraries/places/internal/zzfi;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zziq;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/zziq;-><init>(Lcom/google/android/libraries/places/internal/zziu;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzir;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p3, p4, v0}, Lcom/google/android/libraries/places/internal/zzir;-><init>(Lcom/google/android/libraries/places/internal/zziu;JI)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(JILcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v6, 0x1

    move-object v1, p4

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzjr;->zzb(Lcom/google/android/gms/tasks/Task;JJI)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;

    return-object p1
.end method

.method final synthetic zzf(JILcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zziu;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v7, 0x2

    move-object v2, p4

    move-wide v3, p1

    move v8, p3

    invoke-interface/range {v1 .. v8}, Lcom/google/android/libraries/places/internal/zzjr;->zzl(Lcom/google/android/gms/tasks/Task;JJII)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    return-object p1
.end method

.method final synthetic zzg(JILcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zziu;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v7, 0x2

    move-object v2, p4

    move-wide v3, p1

    move v8, p3

    invoke-interface/range {v1 .. v8}, Lcom/google/android/libraries/places/internal/zzjr;->zzn(Lcom/google/android/gms/tasks/Task;JJII)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    return-object p1
.end method

.method final synthetic zzh(JILcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v6, 0x1

    move-object v1, p4

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzjr;->zzf(Lcom/google/android/gms/tasks/Task;JJI)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    return-object p1
.end method
