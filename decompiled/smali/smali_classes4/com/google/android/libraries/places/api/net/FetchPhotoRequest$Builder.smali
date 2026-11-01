.class public abstract Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;
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
.method public build()Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;->zza()Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;->setMaxWidth(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;->setMaxHeight(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;->zzc()Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;

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

.method public abstract setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setMaxHeight(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setMaxWidth(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
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

.method abstract zzc()Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;
.end method
