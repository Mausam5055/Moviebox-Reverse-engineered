.class public abstract Lcom/google/android/libraries/places/api/model/PhotoMetadata;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/api/model/zzu;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzu;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/zzu;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setWidth(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setHeight(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setAttributions(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    return-object v0
.end method


# virtual methods
.method public abstract getAttributions()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getAuthorAttributions()Lcom/google/android/libraries/places/api/model/AuthorAttributions;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract zza()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract zzb()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method
