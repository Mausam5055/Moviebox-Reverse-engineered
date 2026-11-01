.class final Lcom/google/android/libraries/places/api/net/zze;
.super Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/List;

.field private zzc:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

.field private zzd:Lcom/google/android/gms/tasks/CancellationToken;

.field private zze:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zze;->zzd:Lcom/google/android/gms/tasks/CancellationToken;

    return-object v0
.end method

.method public final getRegionCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zze;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zze;->zzc:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    return-object v0
.end method

.method public final setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zze;->zzd:Lcom/google/android/gms/tasks/CancellationToken;

    return-object p0
.end method

.method public final setRegionCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zze;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final setSessionToken(Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zze;->zzc:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    return-object p0
.end method

.method final zza(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zze;->zzb:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null placeFields"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zze;->zza:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null placeId"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzc()Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;
    .locals 8

    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zze;->zza:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zze;->zzb:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/google/android/libraries/places/api/net/zzg;

    iget-object v3, p0, Lcom/google/android/libraries/places/api/net/zze;->zzc:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    iget-object v4, p0, Lcom/google/android/libraries/places/api/net/zze;->zzd:Lcom/google/android/gms/tasks/CancellationToken;

    iget-object v5, p0, Lcom/google/android/libraries/places/api/net/zze;->zze:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/places/api/net/zzg;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;Lcom/google/android/gms/tasks/CancellationToken;Ljava/lang/String;Lcom/google/android/libraries/places/api/net/zzf;)V

    return-object v7

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zze;->zza:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " placeId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zze;->zzb:Ljava/util/List;

    if-nez v1, :cond_3

    const-string v1, " placeFields"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
