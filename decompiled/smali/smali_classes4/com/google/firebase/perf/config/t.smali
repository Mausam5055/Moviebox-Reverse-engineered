.class public final Lcom/google/firebase/perf/config/t;
.super Lcom/google/firebase/perf/config/u;


# static fields
.field private static a:Lcom/google/firebase/perf/config/t;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/config/u;-><init>()V

    return-void
.end method

.method protected static declared-synchronized f()Lcom/google/firebase/perf/config/t;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/config/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/t;->a:Lcom/google/firebase/perf/config/t;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/perf/config/t;

    invoke-direct {v1}, Lcom/google/firebase/perf/config/t;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/config/t;->a:Lcom/google/firebase/perf/config/t;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/perf/config/t;->a:Lcom/google/firebase/perf/config/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.TraceSamplingRate"

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_vc_trace_sampling_rate"

    return-object v0
.end method

.method protected d()Ljava/lang/Double;
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/Double;
    .locals 4

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/t;->d()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
