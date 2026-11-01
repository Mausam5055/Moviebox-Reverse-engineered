.class public final Lcom/google/android/libraries/places/internal/zzga;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/api/net/PlacesClient;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzev;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzel;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzeq;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzjr;

.field private final zze:Lcom/google/android/libraries/places/internal/zzdv;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzhc;

.field private final zzg:Lcom/google/android/libraries/places/internal/zzjs;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzjs;Lcom/google/android/libraries/places/internal/zzev;Lcom/google/android/libraries/places/internal/zzel;Lcom/google/android/libraries/places/internal/zzeq;Lcom/google/android/libraries/places/internal/zzjr;Lcom/google/android/libraries/places/internal/zzdv;Lcom/google/android/libraries/places/internal/zzhc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzga;->zzg:Lcom/google/android/libraries/places/internal/zzjs;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zza:Lcom/google/android/libraries/places/internal/zzev;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzga;->zzb:Lcom/google/android/libraries/places/internal/zzel;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzga;->zzc:Lcom/google/android/libraries/places/internal/zzeq;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzga;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    return-void
.end method

.method private static zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V
    .locals 3
    .param p1    # Lcom/google/android/libraries/places/internal/zzej;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "Duration"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/google/android/libraries/places/internal/zzef;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v1}, Lcom/google/android/libraries/places/internal/zzef;->zza(Lcom/google/android/libraries/places/internal/zzef;[Lcom/google/android/libraries/places/internal/zzef;)Lcom/google/android/libraries/places/internal/zzef;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    const-string p1, "Battery"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    new-array v0, v0, [Lcom/google/android/libraries/places/internal/zzef;

    aput-object p1, v0, v2

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzef;->zza(Lcom/google/android/libraries/places/internal/zzef;[Lcom/google/android/libraries/places/internal/zzef;)Lcom/google/android/libraries/places/internal/zzef;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    return-void
.end method


# virtual methods
.method public final fetchPhoto(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final fetchPlace(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zzb(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final fetchResolvedPhotoUri(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zzc(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final findAutocompletePredictions(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zzd(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final findCurrentPlace(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzga;->zze(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final isOpen(Lcom/google/android/libraries/places/api/net/IsOpenRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/IsOpenRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/IsOpenResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zzf(Lcom/google/android/libraries/places/api/net/IsOpenRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final searchByText(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/SearchByTextRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/SearchByTextResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zzh(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final searchNearby(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zzi(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    :try_start_0
    const-string p2, "Request must not be null."

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zza:Lcom/google/android/libraries/places/internal/zzev;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzev;->zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/google/android/libraries/places/internal/zzfw;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzfw;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    :try_start_0
    const-string v0, "Request must not be null."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzga;->zzg:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzjs;->zzh()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Lcom/google/android/libraries/places/internal/zzhc;->zzg(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v2, Lcom/google/android/libraries/places/internal/zzfu;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/libraries/places/internal/zzfu;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzga;->zza:Lcom/google/android/libraries/places/internal/zzev;

    invoke-interface {v1, p1, p2}, Lcom/google/android/libraries/places/internal/zzev;->zzb(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzfv;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzfv;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zzc(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    :try_start_0
    const-string p2, "Request must not be null."

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzhc;->zzf(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/google/android/libraries/places/internal/zzft;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzft;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zzd(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    :try_start_0
    const-string v0, "Request must not be null."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzga;->zzg:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzjs;->zzh()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Lcom/google/android/libraries/places/internal/zzhc;->zze(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v2, Lcom/google/android/libraries/places/internal/zzfp;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/libraries/places/internal/zzfp;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzga;->zza:Lcom/google/android/libraries/places/internal/zzev;

    invoke-interface {v1, p1, p2}, Lcom/google/android/libraries/places/internal/zzev;->zzc(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzfq;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzfq;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zze(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    const-string p2, "Request must not be null."

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    move-result-object v6

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzb:Lcom/google/android/libraries/places/internal/zzel;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzel;->zza(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance p3, Lcom/google/android/libraries/places/internal/zzfn;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p3, p0, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzfn;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Ljava/lang/String;I)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance p3, Lcom/google/android/libraries/places/internal/zzfo;

    const/4 v5, 0x1

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzfo;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JILcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zzf(Lcom/google/android/libraries/places/api/net/IsOpenRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 8

    const/4 p2, 0x1

    :try_start_0
    const-string v0, "Request must not be null."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/IsOpenRequest;->getPlace()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/IsOpenRequest;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/IsOpenRequest;->getUtcTimeMillis()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    if-nez v0, :cond_0

    sget v5, Lcom/google/android/libraries/places/api/model/zzce;->zza:I

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/android/libraries/places/api/model/Place$Field;

    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->BUSINESS_STATUS:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->CURRENT_OPENING_HOURS:Lcom/google/android/libraries/places/api/model/Place$Field;

    aput-object v6, v5, p2

    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->OPENING_HOURS:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->UTC_OFFSET:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_1

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getBusinessStatus()Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v7, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;->OPERATIONAL:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    if-ne v6, v7, :cond_5

    :cond_1
    if-nez v6, :cond_2

    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->BUSINESS_STATUS:Lcom/google/android/libraries/places/api/model/Place$Field;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getCurrentOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->CURRENT_OPENING_HOURS:Lcom/google/android/libraries/places/api/model/Place$Field;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->OPENING_HOURS:Lcom/google/android/libraries/places/api/model/Place$Field;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getUtcOffsetMinutes()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->UTC_OFFSET:Lcom/google/android/libraries/places/api/model/Place$Field;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    if-eqz v0, :cond_6

    invoke-static {v0, v2, v3}, Lcom/google/android/libraries/places/api/model/zzce;->zza(Lcom/google/android/libraries/places/api/model/Place;J)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/api/net/IsOpenResponse;->newInstance(Ljava/lang/Boolean;)Lcom/google/android/libraries/places/api/net/IsOpenResponse;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_6
    throw v7

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-eqz v1, :cond_a

    invoke-static {v1, v5}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->builder(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/IsOpenRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;->setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;->build()Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;

    move-result-object p1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzga;->zzg:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzjs;->zzh()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    invoke-virtual {v5, p1, p2}, Lcom/google/android/libraries/places/internal/zzhc;->zzg(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    new-instance v6, Lcom/google/android/libraries/places/internal/zzfx;

    invoke-direct {v6, p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzfx;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfy;

    invoke-direct {p2, v0, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzfy;-><init>(Lcom/google/android/libraries/places/api/model/Place;JLcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzga;->zza:Lcom/google/android/libraries/places/internal/zzev;

    invoke-interface {v5, p1, p2}, Lcom/google/android/libraries/places/internal/zzev;->zzb(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    new-instance v6, Lcom/google/android/libraries/places/internal/zzfz;

    invoke-direct {v6, p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzfz;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfm;

    invoke-direct {p2, v0, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzfm;-><init>(Lcom/google/android/libraries/places/api/model/Place;JLcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_a
    throw v7
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method final synthetic zzg(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Ljava/lang/String;ILandroid/location/Location;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "Location must not be null."

    invoke-static {p4, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzc:Lcom/google/android/libraries/places/internal/zzeq;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzeq;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzga;->zza:Lcom/google/android/libraries/places/internal/zzev;

    const/4 v0, 0x1

    invoke-interface {p3, p1, p4, p2, v0}, Lcom/google/android/libraries/places/internal/zzev;->zzd(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/zznx;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    :try_start_0
    const-string p2, "Request must not be null."

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzhc;->zzm(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/google/android/libraries/places/internal/zzfl;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzfl;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/SearchByTextRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zzi(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    :try_start_0
    const-string p2, "Request must not be null."

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzhc;->zzn(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;I)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/google/android/libraries/places/internal/zzfs;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzfs;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method final synthetic zzj(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/google/android/libraries/places/internal/zzjr;->zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;I)V

    const-string p1, "FetchPhoto"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;

    return-object p1
.end method

.method final synthetic zzk(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzjr;->zzk(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;II)V

    const-string p1, "GetPlace"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    return-object p1
.end method

.method final synthetic zzl(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzjr;->zzk(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;II)V

    const-string p1, "FetchPlace"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    return-object p1
.end method

.method final synthetic zzm(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzjr;->zzo(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;II)V

    const-string p1, "IsOpenFetchPlace"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    return-object p1
.end method

.method final synthetic zzn(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzjr;->zzo(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;II)V

    const-string p1, "IsOpenGetPlace"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    return-object p1
.end method

.method final synthetic zzo(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/google/android/libraries/places/internal/zzjr;->zzc(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;I)V

    const-string p1, "GetPhotoMedia"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriResponse;

    return-object p1
.end method

.method final synthetic zzp(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzjr;->zzm(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;II)V

    const-string p1, "FindAutocompletePredictionsOnePlatform"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    return-object p1
.end method

.method final synthetic zzq(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzjr;->zzm(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;II)V

    const-string p1, "FindAutocompletePredictions"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    return-object p1
.end method

.method final synthetic zzr(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zzga;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    invoke-interface {p4}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    move-result-wide v5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p6

    move-wide v3, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzjr;->zze(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/tasks/Task;JJI)V

    const-string p1, "FindCurrentPlace"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-static {p1, p5}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p6}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    return-object p1
.end method

.method final synthetic zzs(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/SearchByTextResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/google/android/libraries/places/internal/zzjr;->zzg(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;I)V

    const-string p1, "SearchByText"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/SearchByTextResponse;

    return-object p1
.end method

.method final synthetic zzt(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/SearchNearbyResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/google/android/libraries/places/internal/zzjr;->zzi(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;I)V

    const-string p1, "SearchNearby"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/SearchNearbyResponse;

    return-object p1
.end method
