.class public final Lcom/google/firebase/perf/config/k;
.super Lcom/google/firebase/perf/config/u;


# static fields
.field private static a:Lcom/google/firebase/perf/config/k;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/config/u;-><init>()V

    return-void
.end method

.method protected static declared-synchronized e()Lcom/google/firebase/perf/config/k;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/config/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/k;->a:Lcom/google/firebase/perf/config/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/perf/config/k;

    invoke-direct {v1}, Lcom/google/firebase/perf/config/k;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/config/k;->a:Lcom/google/firebase/perf/config/k;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/perf/config/k;->a:Lcom/google/firebase/perf/config/k;
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

    const-string v0, "com.google.firebase.perf.SdkEnabled"

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_enabled"

    return-object v0
.end method

.method protected d()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method
