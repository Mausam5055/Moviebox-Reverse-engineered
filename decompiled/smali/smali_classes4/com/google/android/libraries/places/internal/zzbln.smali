.class final Lcom/google/android/libraries/places/internal/zzbln;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzblq;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbls;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbls;Lcom/google/android/libraries/places/internal/zzblq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbln;->zza:Lcom/google/android/libraries/places/internal/zzblq;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbln;->zzb:Lcom/google/android/libraries/places/internal/zzbls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbln;->zzb:Lcom/google/android/libraries/places/internal/zzbls;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbls;->zze(Lcom/google/android/libraries/places/internal/zzbls;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbma;->zzl()Lcom/google/android/libraries/places/internal/zzbam;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbln;->zzb:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzF(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzM(Lcom/google/android/libraries/places/internal/zzbma;Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbln;->zzb:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbma;->zzg:Lcom/google/android/libraries/places/internal/zzbji;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzE(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbji;->zzc(Ljava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbln;->zzb:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbln;->zza:Lcom/google/android/libraries/places/internal/zzblq;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzF(Lcom/google/android/libraries/places/internal/zzbma;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbln;->zza:Lcom/google/android/libraries/places/internal/zzblq;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzblq;->zzl()V

    return-void
.end method
