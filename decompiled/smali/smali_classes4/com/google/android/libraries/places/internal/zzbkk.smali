.class final Lcom/google/android/libraries/places/internal/zzbkk;
.super Ljava/lang/Object;


# direct methods
.method public static zza()Lcom/google/android/libraries/places/internal/zzbkj;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbnz;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnz;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbnz;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbep;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbep;-><init>()V

    return-object v0
.end method
