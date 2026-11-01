.class final Lcom/google/android/libraries/places/api/net/zzi;
.super Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Ljava/lang/Integer;

.field private zzc:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

.field private zzd:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzd:Lcom/google/android/gms/tasks/CancellationToken;

    return-object v0
.end method

.method public final getMaxHeight()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzb:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxWidth()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzi;->zza:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzd:Lcom/google/android/gms/tasks/CancellationToken;

    return-object p0
.end method

.method public final setMaxHeight(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzb:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setMaxWidth(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzi;->zza:Ljava/lang/Integer;

    return-object p0
.end method

.method final zza()Lcom/google/android/libraries/places/api/model/PhotoMetadata;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzc:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"photoMetadata\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzb(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzc:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null photoMetadata"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzc()Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;
    .locals 7

    iget-object v3, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzc:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    if-eqz v3, :cond_0

    new-instance v6, Lcom/google/android/libraries/places/api/net/zzk;

    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzi;->zza:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzb:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzd:Lcom/google/android/gms/tasks/CancellationToken;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/api/net/zzk;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/libraries/places/api/model/PhotoMetadata;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/libraries/places/api/net/zzj;)V

    return-object v6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: photoMetadata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
