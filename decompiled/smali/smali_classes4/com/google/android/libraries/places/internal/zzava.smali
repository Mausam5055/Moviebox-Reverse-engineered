.class final Lcom/google/android/libraries/places/internal/zzava;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Lcom/google/android/libraries/places/internal/zzauz;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzauz;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzauz;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzauz;->zzb()Lcom/google/android/libraries/places/internal/zzauz;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzauz;->zzd(Lcom/google/android/libraries/places/internal/zzauz;)V

    :cond_1
    return-object p0
.end method
