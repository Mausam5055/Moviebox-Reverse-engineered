.class public abstract Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzjt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    .locals 1
    .param p0    # Lcom/google/android/libraries/places/api/model/PhotoMetadata;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/api/net/zzi;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/net/zzi;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/net/zzi;->zzb(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;
    .locals 0
    .param p0    # Lcom/google/android/libraries/places/api/model/PhotoMetadata;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;->builder(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;->build()Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

.method public abstract getPhotoMetadata()Lcom/google/android/libraries/places/api/model/PhotoMetadata;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method
