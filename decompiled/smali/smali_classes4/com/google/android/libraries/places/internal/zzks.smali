.class public abstract Lcom/google/android/libraries/places/internal/zzks;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;
.end method

.method public abstract zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract zzd(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/internal/zzks;
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract zze(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/internal/zzks;
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract zzf(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/internal/zzks;
.end method

.method public abstract zzg(Lcom/google/android/libraries/places/internal/zzkr;)Lcom/google/android/libraries/places/internal/zzks;
.end method

.method public abstract zzh(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;
.end method

.method public abstract zzi(I)Lcom/google/android/libraries/places/internal/zzks;
.end method

.method public abstract zzj(I)Lcom/google/android/libraries/places/internal/zzks;
.end method

.method public abstract zzk(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract zzl(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/internal/zzks;
    .param p1    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract zzm(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;
.end method

.method public abstract zzn()Lcom/google/android/libraries/places/internal/zzkt;
.end method

.method public final zzo(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zznx;->zzl()Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zznx;->zzm(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;

    move-result-object p1

    return-object p1
.end method
