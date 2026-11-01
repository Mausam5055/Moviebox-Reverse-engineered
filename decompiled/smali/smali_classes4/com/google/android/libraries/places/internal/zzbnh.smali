.class final Lcom/google/android/libraries/places/internal/zzbnh;
.super Lcom/google/android/libraries/places/internal/zzbbk;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbnj;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbnj;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbnj;Lcom/google/android/libraries/places/internal/zzbnj;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnh;->zza:Lcom/google/android/libraries/places/internal/zzbnj;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbk;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnh;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbnh;->zzb:Lcom/google/android/libraries/places/internal/zzbnj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbbe;
    .locals 2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnh;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnh;->zza:Lcom/google/android/libraries/places/internal/zzbnj;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzg(Lcom/google/android/libraries/places/internal/zzbnj;)Lcom/google/android/libraries/places/internal/zzbbd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbd;->zzb()Lcom/google/android/libraries/places/internal/zzbdw;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnh;->zzb:Lcom/google/android/libraries/places/internal/zzbnj;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbng;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/zzbng;-><init>(Lcom/google/android/libraries/places/internal/zzbnj;)V

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbbe;->zzc()Lcom/google/android/libraries/places/internal/zzbbe;

    move-result-object p1

    return-object p1
.end method
