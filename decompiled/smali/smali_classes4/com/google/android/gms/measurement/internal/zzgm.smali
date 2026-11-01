.class public final Lcom/google/android/gms/measurement/internal/zzgm;
.super Ljava/lang/Object;


# static fields
.field private static zza:Lcom/google/android/gms/measurement/internal/zzgm;

.field private static final zzb:Ljava/time/Duration;


# instance fields
.field private final zzc:Lcom/google/android/gms/measurement/internal/zzhy;

.field private final zzd:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

.field private final zze:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/a;->a(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgm;->zzb:Ljava/time/Duration;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzhy;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->builder()Lcom/google/android/gms/common/internal/TelemetryLoggingOptions$Builder;

    move-result-object v0

    const-string v1, "measurement:api"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions$Builder;->setApi(Ljava/lang/String;)Lcom/google/android/gms/common/internal/TelemetryLoggingOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions$Builder;->build()Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/TelemetryLogging;->getClient(Landroid/content/Context;Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;)Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zzc:Lcom/google/android/gms/measurement/internal/zzhy;

    return-void
.end method

.method static zza(Lcom/google/android/gms/measurement/internal/zzhy;)Lcom/google/android/gms/measurement/internal/zzgm;
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgm;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzgm;-><init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzhy;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    :cond_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized zza(IIJJI)V
    .locals 19

    move-object/from16 v1, p0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zzc:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgm;->zzb:Ljava/time/Duration;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/time/Duration;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    new-instance v5, Lcom/google/android/gms/common/internal/TelemetryData;

    new-instance v18, Lcom/google/android/gms/common/internal/MethodInvocation;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v7, 0x8dcd

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, v18

    move/from16 v8, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move/from16 v17, p7

    invoke-direct/range {v6 .. v17}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/gms/common/internal/MethodInvocation;

    aput-object v18, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/common/internal/TelemetryLoggingClient;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzgl;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgl;-><init>(Lcom/google/android/gms/measurement/internal/zzgm;J)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final synthetic zza(JLjava/lang/Exception;)V
    .locals 0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
