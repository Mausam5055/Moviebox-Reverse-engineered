.class public final Lcom/google/firebase/perf/config/e;
.super Lcom/google/firebase/perf/config/u;


# static fields
.field private static a:Lcom/google/firebase/perf/config/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/config/u;-><init>()V

    return-void
.end method

.method protected static declared-synchronized e()Lcom/google/firebase/perf/config/e;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/config/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/e;->a:Lcom/google/firebase/perf/config/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/perf/config/e;

    invoke-direct {v1}, Lcom/google/firebase/perf/config/e;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/config/e;->a:Lcom/google/firebase/perf/config/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/perf/config/e;->a:Lcom/google/firebase/perf/config/e;
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

    const-string v0, "com.google.firebase.perf.FragmentSamplingRate"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "fragment_sampling_percentage"

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_vc_fragment_sampling_rate"

    return-object v0
.end method

.method protected d()Ljava/lang/Double;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
