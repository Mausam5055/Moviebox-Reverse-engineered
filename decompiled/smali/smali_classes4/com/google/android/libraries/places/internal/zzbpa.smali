.class final Lcom/google/android/libraries/places/internal/zzbpa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzboy;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbpo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzboy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbpa;->zza:Lcom/google/android/libraries/places/internal/zzboy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    move-result-object v0

    iget v0, v0, Lcom/google/android/libraries/places/internal/zzbpd;->zze:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbpo;->zzE(Lcom/google/android/libraries/places/internal/zzbpo;IZ)Lcom/google/android/libraries/places/internal/zzbpm;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbpa;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzK(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzboz;

    invoke-direct {v2, p0, v0}, Lcom/google/android/libraries/places/internal/zzboz;-><init>(Lcom/google/android/libraries/places/internal/zzbpa;Lcom/google/android/libraries/places/internal/zzbpm;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
