.class final Lcom/google/android/libraries/places/internal/zzkn;
.super Lcom/google/android/libraries/places/internal/zzku;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/libraries/places/internal/zznx;

.field private zzc:Lcom/google/android/libraries/places/api/model/Place;

.field private zzd:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

.field private zze:Lcom/google/android/gms/common/api/Status;

.field private zzf:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzku;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/internal/zzku;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkn;->zzc:Lcom/google/android/libraries/places/api/model/Place;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Lcom/google/android/libraries/places/internal/zzku;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkn;->zzd:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    return-object p0
.end method

.method public final zzc(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzku;
    .locals 0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkn;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzku;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkn;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzku;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkn;->zze:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/libraries/places/internal/zzkv;
    .locals 9

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzkn;->zzf:I

    if-eqz v1, :cond_0

    new-instance v8, Lcom/google/android/libraries/places/internal/zzkp;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzkn;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzkn;->zzb:Lcom/google/android/libraries/places/internal/zznx;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzkn;->zzc:Lcom/google/android/libraries/places/api/model/Place;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzkn;->zzd:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzkn;->zze:Lcom/google/android/gms/common/api/Status;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzkp;-><init>(ILjava/lang/String;Lcom/google/android/libraries/places/internal/zznx;Lcom/google/android/libraries/places/api/model/Place;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/common/api/Status;Lcom/google/android/libraries/places/internal/zzko;)V

    return-object v8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzg(I)Lcom/google/android/libraries/places/internal/zzku;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzkn;->zzf:I

    return-object p0
.end method
