.class final Lcom/google/android/libraries/places/internal/zzbps;
.super Ljava/lang/Object;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbpv;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbps;->zza:Lcom/google/android/libraries/places/internal/zzbpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbps;->zza:Lcom/google/android/libraries/places/internal/zzbpv;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbpv;->zzf(Lcom/google/android/libraries/places/internal/zzbpv;)Lcom/google/android/libraries/places/internal/zzbpq;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbpq;->zzb()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbps;->zza:Lcom/google/android/libraries/places/internal/zzbpv;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbpv;->zzf(Lcom/google/android/libraries/places/internal/zzbpv;)Lcom/google/android/libraries/places/internal/zzbpq;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbpr;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/places/internal/zzbpr;-><init>(Lcom/google/android/libraries/places/internal/zzbpv;)V

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbpq;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method
