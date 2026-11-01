.class public abstract Lcom/google/android/libraries/places/api/model/SpecialDay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Lcom/google/android/libraries/places/api/model/LocalDate;)Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;
    .locals 1
    .param p0    # Lcom/google/android/libraries/places/api/model/LocalDate;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/api/model/zzaf;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzaf;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/zzaf;->setDate(Lcom/google/android/libraries/places/api/model/LocalDate;)Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;->setExceptional(Z)Lcom/google/android/libraries/places/api/model/SpecialDay$Builder;

    return-object v0
.end method


# virtual methods
.method public abstract getDate()Lcom/google/android/libraries/places/api/model/LocalDate;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract isExceptional()Z
.end method
