.class final Lcom/google/android/libraries/places/internal/zzqw;
.super Lcom/google/android/libraries/places/internal/zzrc;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzqw;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzqw;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzrc;->zze()Lcom/google/android/libraries/places/internal/zzrc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzqw;-><init>(Lcom/google/android/libraries/places/internal/zzrc;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzqw;->zza:Lcom/google/android/libraries/places/internal/zzqw;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzrc;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzrc;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzqw;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final zzb()Lcom/google/android/libraries/places/internal/zzqw;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzqw;->zza:Lcom/google/android/libraries/places/internal/zzqw;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzpy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzqw;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzrc;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzrc;->zza()Lcom/google/android/libraries/places/internal/zzpy;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzrp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzqw;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzrc;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzrc;->zzc()Lcom/google/android/libraries/places/internal/zzrp;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzqw;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzrc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzrc;->zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    const/4 p1, 0x0

    return p1
.end method
