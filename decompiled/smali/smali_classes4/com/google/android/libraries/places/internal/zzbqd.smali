.class final Lcom/google/android/libraries/places/internal/zzbqd;
.super Lcom/google/android/libraries/places/internal/zzbpz;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbqc;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbpz;-><init>(Lcom/google/android/libraries/places/internal/zzbpy;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbqe;I)V
    .locals 0

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzbqe;->zzb(Lcom/google/android/libraries/places/internal/zzbqe;I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbqe;II)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbqe;->zza(Lcom/google/android/libraries/places/internal/zzbqe;)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzbqe;->zzb(Lcom/google/android/libraries/places/internal/zzbqe;I)V

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
