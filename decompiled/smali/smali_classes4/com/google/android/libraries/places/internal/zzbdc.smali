.class abstract Lcom/google/android/libraries/places/internal/zzbdc;
.super Lcom/google/android/libraries/places/internal/zzayo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzayo;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdc;->zzf()Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdc;->zzf()Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzayo;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbdc;->zzf()Lcom/google/android/libraries/places/internal/zzayo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzayo;->zzb()V

    return-void
.end method

.method public zzc(I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract zzf()Lcom/google/android/libraries/places/internal/zzayo;
.end method
