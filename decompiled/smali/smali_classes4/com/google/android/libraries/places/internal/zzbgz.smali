.class public Lcom/google/android/libraries/places/internal/zzbgz;
.super Lcom/google/android/libraries/places/internal/zzayo;


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzayo;


# instance fields
.field private final zzc:Ljava/util/concurrent/ScheduledFuture;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/libraries/places/internal/zzazj;

.field private volatile zzf:Z

.field private zzg:Lcom/google/android/libraries/places/internal/zzayn;

.field private zzh:Lcom/google/android/libraries/places/internal/zzayo;

.field private zzi:Lcom/google/android/libraries/places/internal/zzbdo;

.field private zzj:Ljava/util/List;

.field private zzk:Lcom/google/android/libraries/places/internal/zzbgy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/libraries/places/internal/zzbgz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbgz;->zza:Ljava/util/logging/Logger;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbgs;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbgs;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbgz;->zzb:Lcom/google/android/libraries/places/internal/zzayo;

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzazn;)V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzayo;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzj:Ljava/util/List;

    const-string v0, "callExecutor"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzd:Ljava/util/concurrent/Executor;

    const-string p1, "scheduler"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazj;->zzb()Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zze:Lcom/google/android/libraries/places/internal/zzazj;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1}, Lcom/google/android/libraries/places/internal/zzazn;->zzb(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {p3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    div-long/2addr v2, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-virtual {p3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    rem-long/2addr v6, v4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    const-string v4, "ClientCall started after CallOptions deadline was exceeded. Deadline has been exceeded for "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v4, "Deadline CallOptions will be exceeded in "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, ".%09d"

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s. "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbgl;

    invoke-direct {v2, p0, p3}, Lcom/google/android/libraries/places/internal/zzbgl;-><init>(Lcom/google/android/libraries/places/internal/zzbgz;Ljava/lang/StringBuilder;)V

    invoke-interface {p2, v2, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzc:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbgz;)Lcom/google/android/libraries/places/internal/zzayo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzh:Lcom/google/android/libraries/places/internal/zzayo;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbgz;)Lcom/google/android/libraries/places/internal/zzazj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zze:Lcom/google/android/libraries/places/internal/zzazj;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/libraries/places/internal/zzbgz;Lcom/google/android/libraries/places/internal/zzbdo;Z)V
    .locals 0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbgz;->zzl(Lcom/google/android/libraries/places/internal/zzbdo;Z)V

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbgz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbgz;->zzn()V

    return-void
.end method

.method private final zzl(Lcom/google/android/libraries/places/internal/zzbdo;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzh:Lcom/google/android/libraries/places/internal/zzayo;

    if-nez v0, :cond_0

    sget-object p2, Lcom/google/android/libraries/places/internal/zzbgz;->zzb:Lcom/google/android/libraries/places/internal/zzayo;

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzbgz;->zzo(Lcom/google/android/libraries/places/internal/zzayo;)V

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzg:Lcom/google/android/libraries/places/internal/zzayn;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzi:Lcom/google/android/libraries/places/internal/zzbdo;

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-nez p2, :cond_3

    const/4 p2, 0x0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzbgo;

    invoke-direct {p2, p0, p1}, Lcom/google/android/libraries/places/internal/zzbgo;-><init>(Lcom/google/android/libraries/places/internal/zzbgz;Lcom/google/android/libraries/places/internal/zzbdo;)V

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzbgz;->zzm(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzd:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbgt;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/libraries/places/internal/zzbgt;-><init>(Lcom/google/android/libraries/places/internal/zzbgz;Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbdo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbgz;->zzn()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbgz;->zzk()V

    return-void

    :cond_3
    :try_start_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzm(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzn()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzj:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzf:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzk:Lcom/google/android/libraries/places/internal/zzbgy;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzd:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbgm;

    invoke-direct {v2, p0, v0}, Lcom/google/android/libraries/places/internal/zzbgm;-><init>(Lcom/google/android/libraries/places/internal/zzbgz;Lcom/google/android/libraries/places/internal/zzbgy;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzj:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzj:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final zzo(Lcom/google/android/libraries/places/internal/zzayo;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzh:Lcom/google/android/libraries/places/internal/zzayo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "realCall already set to %s"

    invoke-static {v2, v3, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzr(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzc:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzh:Lcom/google/android/libraries/places/internal/zzayo;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "realCall"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzh:Lcom/google/android/libraries/places/internal/zzayo;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Call cancelled without message"

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    :cond_1
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbgz;->zzl(Lcom/google/android/libraries/places/internal/zzbdo;Z)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbgr;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbgr;-><init>(Lcom/google/android/libraries/places/internal/zzbgz;)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbgz;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(I)V
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzf:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzh:Lcom/google/android/libraries/places/internal/zzayo;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzayo;->zzc(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbgq;

    invoke-direct {p1, p0, v0}, Lcom/google/android/libraries/places/internal/zzbgq;-><init>(Lcom/google/android/libraries/places/internal/zzbgz;I)V

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbgz;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzh:Lcom/google/android/libraries/places/internal/zzayo;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzayo;->zzd(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbgp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbgp;-><init>(Lcom/google/android/libraries/places/internal/zzbgz;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbgz;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzg:Lcom/google/android/libraries/places/internal/zzayn;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzg:Lcom/google/android/libraries/places/internal/zzayn;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzi:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzf:Z

    if-nez v1, :cond_1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbgy;

    invoke-direct {v2, p1}, Lcom/google/android/libraries/places/internal/zzbgy;-><init>(Lcom/google/android/libraries/places/internal/zzayn;)V

    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzk:Lcom/google/android/libraries/places/internal/zzbgy;

    move-object p1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzd:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbgt;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzbgt;-><init>(Lcom/google/android/libraries/places/internal/zzbgz;Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbdo;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzh:Lcom/google/android/libraries/places/internal/zzayo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzayo;->zze(Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbgn;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbgn;-><init>(Lcom/google/android/libraries/places/internal/zzbgz;Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbcf;)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbgz;->zzm(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzh(Lcom/google/android/libraries/places/internal/zzayo;)Ljava/lang/Runnable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zzh:Lcom/google/android/libraries/places/internal/zzayo;

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbgz;->zzo(Lcom/google/android/libraries/places/internal/zzayo;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgz;->zze:Lcom/google/android/libraries/places/internal/zzazj;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbgk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbgk;-><init>(Lcom/google/android/libraries/places/internal/zzbgz;Lcom/google/android/libraries/places/internal/zzazj;)V

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected zzk()V
    .locals 0

    return-void
.end method
