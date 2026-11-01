.class final Lcom/google/android/libraries/places/internal/zzbvd;
.super Lcom/google/android/libraries/places/internal/zzbbm;


# instance fields
.field final synthetic zzf:Lcom/google/android/libraries/places/internal/zzbvg;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbvg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvd;->zzf:Lcom/google/android/libraries/places/internal/zzbvg;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvd;->zzf:Lcom/google/android/libraries/places/internal/zzbvg;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbvg;->zzh(Lcom/google/android/libraries/places/internal/zzbvg;)Lcom/google/android/libraries/places/internal/zzbbd;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbbc;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbbe;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/libraries/places/internal/zzbbc;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/libraries/places/internal/zzbbi;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GracefulSwitchLoadBalancer must switch to a load balancing policy before handling ResolvedAddresses"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zze()V
    .locals 0

    return-void
.end method
