.class final Lcom/google/android/libraries/places/internal/zzbhc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbmk;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbhg;Lcom/google/android/libraries/places/internal/zzbmk;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbhc;->zza:Lcom/google/android/libraries/places/internal/zzbmk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhc;->zza:Lcom/google/android/libraries/places/internal/zzbmk;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbkx;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkx;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzK(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "Channel must have been shut down"

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkx;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbma;->zzO(Lcom/google/android/libraries/places/internal/zzbma;Z)V

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkx;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbma;->zzT(Lcom/google/android/libraries/places/internal/zzbma;Z)V

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkx;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzQ(Lcom/google/android/libraries/places/internal/zzbma;)V

    return-void
.end method
