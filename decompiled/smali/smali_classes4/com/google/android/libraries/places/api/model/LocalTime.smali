.class public abstract Lcom/google/android/libraries/places/api/model/LocalTime;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/libraries/places/api/model/LocalTime;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/google/android/libraries/places/api/model/LocalTime;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/libraries/places/api/model/zzo;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/zzo;->zza(I)Lcom/google/android/libraries/places/api/model/zzcb;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/api/model/zzcb;->zzb(I)Lcom/google/android/libraries/places/api/model/zzcb;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/zzcb;->zzc()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalTime;->getHours()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzok;->zzb(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzok;->zzd(Ljava/lang/Comparable;)Z

    move-result v1

    const-string v2, "Hours must not be out-of-range: 0 to 23, but was: %s."

    invoke-static {v1, v2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzq(ZLjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalTime;->getMinutes()I

    move-result p1

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzok;->zzb(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzok;->zzd(Ljava/lang/Comparable;)Z

    move-result v0

    const-string v1, "Minutes must not be out-of-range: 0 to 59, but was: %s."

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzq(ZLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public compareTo(Lcom/google/android/libraries/places/api/model/LocalTime;)I
    .locals 2
    .param p1    # Lcom/google/android/libraries/places/api/model/LocalTime;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const-string v0, "compare must not be null."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalTime;->getHours()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/LocalTime;->getHours()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalTime;->getMinutes()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/LocalTime;->getMinutes()I

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalTime;->getHours()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/LocalTime;->getHours()I

    move-result p1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/libraries/places/api/model/LocalTime;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/api/model/LocalTime;->compareTo(Lcom/google/android/libraries/places/api/model/LocalTime;)I

    move-result p1

    return p1
.end method

.method public abstract getHours()I
.end method

.method public abstract getMinutes()I
.end method
