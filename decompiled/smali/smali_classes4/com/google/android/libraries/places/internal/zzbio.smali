.class abstract Lcom/google/android/libraries/places/internal/zzbio;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbft;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbio;->zza()Lcom/google/android/libraries/places/internal/zzbft;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza()Lcom/google/android/libraries/places/internal/zzbft;
.end method

.method public zzd(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbio;->zza()Lcom/google/android/libraries/places/internal/zzbft;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbft;->zze(Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/libraries/places/internal/zzbqq;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbio;->zza()Lcom/google/android/libraries/places/internal/zzbft;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbqr;->zzf(Lcom/google/android/libraries/places/internal/zzbqq;)V

    return-void
.end method

.method public final zzg()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbio;->zza()Lcom/google/android/libraries/places/internal/zzbft;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqr;->zzg()V

    return-void
.end method
