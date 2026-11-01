.class final Lcom/google/android/libraries/places/internal/zzboe;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Ljava/lang/Runnable;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzna;

.field private zze:J

.field private zzf:Z

.field private zzg:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzna;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzc:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzboe;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzd:Lcom/google/android/libraries/places/internal/zzna;

    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzna;->zzd()Lcom/google/android/libraries/places/internal/zzna;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzboe;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzboe;->zze:J

    return-wide v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzboe;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzboe;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzboe;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzc:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/libraries/places/internal/zzboe;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzb:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzboe;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzboe;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzboe;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzf:Z

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzboe;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzg:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzboe;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzf:Z

    return p0
.end method

.method private final zzk()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzd:Lcom/google/android/libraries/places/internal/zzna;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzna;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method final zzh(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzf:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzg:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzg:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method final zzi(JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzboe;->zzk()J

    move-result-wide v0

    add-long/2addr v0, p1

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzf:Z

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzboe;->zze:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-ltz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzg:Ljava/util/concurrent/ScheduledFuture;

    if-nez p3, :cond_2

    :cond_0
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzg:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzboe;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbod;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/libraries/places/internal/zzbod;-><init>(Lcom/google/android/libraries/places/internal/zzboe;Lcom/google/android/libraries/places/internal/zzboc;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, v2, p1, p2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzboe;->zzg:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzboe;->zze:J

    return-void
.end method
