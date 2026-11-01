.class final Lcom/google/android/libraries/places/internal/zzblj;
.super Lcom/google/android/libraries/places/internal/zzbcr;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzblg;

.field final zzb:Lcom/google/android/libraries/places/internal/zzbcv;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbma;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzblg;Lcom/google/android/libraries/places/internal/zzbcv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblj;->zzc:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbcr;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzblj;->zza:Lcom/google/android/libraries/places/internal/zzblg;

    const-string p1, "resolver"

    invoke-static {p3, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzblj;->zzb:Lcom/google/android/libraries/places/internal/zzbcv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "the error status must not be OK"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzblh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzblh;-><init>(Lcom/google/android/libraries/places/internal/zzblj;Lcom/google/android/libraries/places/internal/zzbdo;)V

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzblj;->zzc:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbma;->zzf:Lcom/google/android/libraries/places/internal/zzbdw;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    return-void
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbct;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
