.class final Lcom/google/android/libraries/places/internal/zzbfj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/libraries/places/internal/zzazg;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbfq;

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:J

.field private volatile zze:Ljava/util/concurrent/ScheduledFuture;

.field private volatile zzf:Z


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbfq;Lcom/google/android/libraries/places/internal/zzazn;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzb:Z

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzc:Z

    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzd:J

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzc:Z

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzazn;->zzb(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    goto :goto_0
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbfj;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzd:J

    return-wide v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzo(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbfj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V

    return-void
.end method

.method final zzb()Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 12

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzd:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    div-long/2addr v1, v6

    iget-wide v6, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzd:J

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    rem-long/2addr v6, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzb:Z

    if-eq v4, v5, :cond_0

    const-string v5, "CallOptions"

    goto :goto_0

    :cond_0
    const-string v5, "Context"

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " deadline exceeded after "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzd:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    const/16 v5, 0x2d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const-string v2, ".%09d"

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s. "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbfq;->zzg(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzayj;

    move-result-object v2

    sget-object v5, Lcom/google/android/libraries/places/internal/zzayx;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    invoke-virtual {v2, v5}, Lcom/google/android/libraries/places/internal/zzayj;->zzl(Lcom/google/android/libraries/places/internal/zzayh;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_2

    const-wide/16 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbfq;->zzf()D

    move-result-wide v7

    div-double/2addr v5, v7

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const-string v0, "Name resolution delay %.9f seconds."

    invoke-static {v1, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzo(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbjj;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbjj;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzo(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfr;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzg(Lcom/google/android/libraries/places/internal/zzbjj;)V

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zze:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    return-object v0
.end method

.method final zzc()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzf:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzc:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzb:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzq(Lcom/google/android/libraries/places/internal/zzbfq;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzq(Lcom/google/android/libraries/places/internal/zzbfq;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbki;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbki;-><init>(Ljava/lang/Runnable;)V

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzd:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zze:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzh(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzazj;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzakb;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzazj;->zzd(Lcom/google/android/libraries/places/internal/zzazg;Ljava/util/concurrent/Executor;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzf:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbfj;->zzd()V

    :cond_2
    :goto_0
    return-void
.end method

.method final zzd()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzf:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zze:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
