.class final Lcom/google/android/libraries/places/internal/zzbhd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbhg;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbhg;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbhd;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhd;->zzb:Lcom/google/android/libraries/places/internal/zzbhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhd;->zzb:Lcom/google/android/libraries/places/internal/zzbhg;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhg;->zzf(Lcom/google/android/libraries/places/internal/zzbhg;)Lcom/google/android/libraries/places/internal/zzbmk;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbkx;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkx;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzK(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Channel must have been shut down"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    return-void
.end method
