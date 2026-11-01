.class public abstract Lcom/google/android/libraries/places/api/model/AuthorAttribution;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/api/model/zzd;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/zzd;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;

    return-object v0
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getPhotoUri()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getUri()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method
