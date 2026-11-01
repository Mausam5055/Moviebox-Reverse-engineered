.class public final Lcom/google/android/libraries/places/internal/zzoh;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzmd;)Ljava/util/List;
    .locals 1

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/libraries/places/internal/zzoe;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzoe;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzmd;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzog;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzog;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzmd;)V

    :goto_0
    return-object v0
.end method
