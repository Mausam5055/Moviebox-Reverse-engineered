.class final Lcom/google/android/libraries/places/internal/zzbfc;
.super Lcom/google/android/libraries/places/internal/zzbip;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbfd;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbgf;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile zze:Lcom/google/android/libraries/places/internal/zzbdo;

.field private zzf:Lcom/google/android/libraries/places/internal/zzbdo;

.field private final zzg:Lcom/google/android/libraries/places/internal/zzbmx;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbfd;Lcom/google/android/libraries/places/internal/zzbgf;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zza:Lcom/google/android/libraries/places/internal/zzbfd;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbip;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v0, -0x7fffffff

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbfb;

    invoke-direct {p1, p0}, Lcom/google/android/libraries/places/internal/zzbfb;-><init>(Lcom/google/android/libraries/places/internal/zzbfc;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zzg:Lcom/google/android/libraries/places/internal/zzbmx;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zzb:Lcom/google/android/libraries/places/internal/zzbgf;

    const-string p1, "authority"

    invoke-static {p3, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_0

    new-instance p1, Lcom/google/android/libraries/places/internal/zzbil;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zze:Lcom/google/android/libraries/places/internal/zzbdo;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbil;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;[Lcom/google/android/libraries/places/internal/zzayx;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zzb:Lcom/google/android/libraries/places/internal/zzbgf;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbfu;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object p1

    return-object p1
.end method

.method protected final zzb()Lcom/google/android/libraries/places/internal/zzbgf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zzb:Lcom/google/android/libraries/places/internal/zzbgf;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zze:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfc;->zzf:Lcom/google/android/libraries/places/internal/zzbdo;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lcom/google/android/libraries/places/internal/zzbip;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void

    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
