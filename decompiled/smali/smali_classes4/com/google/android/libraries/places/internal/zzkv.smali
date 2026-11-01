.class public abstract Lcom/google/android/libraries/places/internal/zzkv;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzg()Lcom/google/android/libraries/places/internal/zzkv;
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzkv;->zzr(I)Lcom/google/android/libraries/places/internal/zzku;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzku;->zzf()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object v0

    return-object v0
.end method

.method public static zzh(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzkv;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzkv;->zzr(I)Lcom/google/android/libraries/places/internal/zzku;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzku;->zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzku;->zzf()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p0

    return-object p0
.end method

.method public static zzi(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzkv;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzkv;->zzr(I)Lcom/google/android/libraries/places/internal/zzku;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzku;->zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzku;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzku;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzku;->zzf()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p0

    return-object p0
.end method

.method public static zzj(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzkv;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzkv;->zzr(I)Lcom/google/android/libraries/places/internal/zzku;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzku;->zzc(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzku;->zzf()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p0

    return-object p0
.end method

.method public static zzk()Lcom/google/android/libraries/places/internal/zzkv;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzkv;->zzr(I)Lcom/google/android/libraries/places/internal/zzku;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzku;->zzf()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object v0

    return-object v0
.end method

.method public static zzl()Lcom/google/android/libraries/places/internal/zzkv;
    .locals 3

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzkv;->zzr(I)Lcom/google/android/libraries/places/internal/zzku;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzku;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzku;->zzf()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object v0

    return-object v0
.end method

.method public static zzm(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzkv;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzkv;->zzr(I)Lcom/google/android/libraries/places/internal/zzku;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzku;->zzb(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Lcom/google/android/libraries/places/internal/zzku;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzku;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzku;->zzf()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p0

    return-object p0
.end method

.method public static zzn(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/internal/zzkv;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzkv;->zzr(I)Lcom/google/android/libraries/places/internal/zzku;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzku;->zza(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzku;->zzf()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p0

    return-object p0
.end method

.method public static zzo()Lcom/google/android/libraries/places/internal/zzkv;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzkv;->zzr(I)Lcom/google/android/libraries/places/internal/zzku;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzku;->zzf()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object v0

    return-object v0
.end method

.method public static zzp()Lcom/google/android/libraries/places/internal/zzkv;
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzkv;->zzr(I)Lcom/google/android/libraries/places/internal/zzku;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzku;->zzf()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object v0

    return-object v0
.end method

.method public static zzq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzkv;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzkv;->zzr(I)Lcom/google/android/libraries/places/internal/zzku;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzku;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzku;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzku;->zzf()Lcom/google/android/libraries/places/internal/zzkv;

    move-result-object p0

    return-object p0
.end method

.method private static zzr(I)Lcom/google/android/libraries/places/internal/zzku;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzkn;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzkn;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzkn;->zzg(I)Lcom/google/android/libraries/places/internal/zzku;

    return-object v0
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/gms/common/api/Status;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzb()Lcom/google/android/libraries/places/api/model/AutocompletePrediction;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzc()Lcom/google/android/libraries/places/api/model/Place;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzd()Lcom/google/android/libraries/places/internal/zznx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zze()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzf()I
.end method
