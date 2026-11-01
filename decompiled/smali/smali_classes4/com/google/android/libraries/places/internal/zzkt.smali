.class public abstract Lcom/google/android/libraries/places/internal/zzkt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzo(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;Lcom/google/android/libraries/places/internal/zzkr;)Lcom/google/android/libraries/places/internal/zzks;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzkj;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzkj;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzkj;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzks;->zzm(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzks;->zzf(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzks;->zzh(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzks;->zzg(Lcom/google/android/libraries/places/internal/zzkr;)Lcom/google/android/libraries/places/internal/zzks;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzks;->zzi(I)Lcom/google/android/libraries/places/internal/zzks;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzks;->zzj(I)Lcom/google/android/libraries/places/internal/zzks;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()I
.end method

.method public abstract zzc()Lcom/google/android/libraries/places/api/model/LocationBias;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzd()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zze()Lcom/google/android/libraries/places/api/model/TypeFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract zzf()Lcom/google/android/libraries/places/internal/zzkr;
.end method

.method public abstract zzg()Lcom/google/android/libraries/places/internal/zzks;
.end method

.method public abstract zzh()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;
.end method

.method public abstract zzi()Lcom/google/android/libraries/places/internal/zznx;
.end method

.method public abstract zzj()Lcom/google/android/libraries/places/internal/zznx;
.end method

.method public abstract zzk()Lcom/google/android/libraries/places/internal/zznx;
.end method

.method public abstract zzl()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzm()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzn()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
