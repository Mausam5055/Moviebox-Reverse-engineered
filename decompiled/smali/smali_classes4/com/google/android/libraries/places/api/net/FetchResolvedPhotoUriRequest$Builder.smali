.class public abstract Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;
    .locals 8
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;->zza()Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->zza()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string v6, "To construct the FetchResolvedPhotoUriRequest, the provided PhotoMetadata must be fetched from Places API (New). You must first call initializeWithNewPlacesApiEnabled to initialize the PlaceClient and retrieve the PhotoMetadata. Once you have the PhotoMetadata, you must pass it into the FetchResolvedPhotoUriRequest."

    invoke-static {v3, v6}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    const/16 v3, 0x12c0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    const-string v7, "Max width must not be < 1, but was: %s."

    invoke-static {v6, v7, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v3, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    const-string v7, "Max width must not be > %s, but was: %s."

    invoke-static {v6, v7, v3, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzk(ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_4

    move v6, v5

    goto :goto_3

    :cond_4
    move v6, v4

    :goto_3
    const-string v7, "Max height must not be < 1, but was: %s."

    invoke-static {v6, v7, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v3, :cond_5

    move v6, v5

    goto :goto_4

    :cond_5
    move v6, v4

    :goto_4
    const-string v7, "Max height must not be > %s, but was: %s."

    invoke-static {v6, v7, v3, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzk(ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_6
    if-nez v1, :cond_8

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->getWidth()I

    move-result v1

    if-lez v1, :cond_7

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;->setMaxWidth(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->getHeight()I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;->setMaxHeight(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    :cond_9
    move v4, v5

    :cond_a
    const-string v0, "Must include max width or max height in the request."

    invoke-static {v4, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;->zzc()Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getMaxHeight()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getMaxWidth()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setMaxHeight(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setMaxWidth(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method abstract zza()Lcom/google/android/libraries/places/api/model/PhotoMetadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method abstract zzc()Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;
.end method
