.class public final Lcom/google/android/libraries/places/internal/zznu;
.super Lcom/google/android/libraries/places/internal/zznr;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zznr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzns;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/libraries/places/internal/zznr;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznr;

    return-object p0
.end method

.method public final zze(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznu;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/libraries/places/internal/zznr;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznr;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zznu;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/libraries/places/internal/zznr;->zzc(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzns;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/libraries/places/internal/zznx;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zznr;->zzc:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zznr;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zznr;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zznx;->zzi([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/zznx;

    move-result-object v0

    return-object v0
.end method
