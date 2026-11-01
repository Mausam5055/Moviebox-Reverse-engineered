.class public Lcom/google/firebase/perf/application/d;
.super Ljava/lang/Object;


# static fields
.field private static final e:Lsc/a;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroidx/core/app/g;

.field private final c:Ljava/util/Map;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsc/a;->e()Lsc/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroidx/core/app/g;

    invoke-direct {v0}, Landroidx/core/app/g;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/perf/application/d;-><init>(Landroid/app/Activity;Landroidx/core/app/g;Ljava/util/Map;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/core/app/g;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/application/d;->d:Z

    iput-object p1, p0, Lcom/google/firebase/perf/application/d;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/firebase/perf/application/d;->b:Landroidx/core/app/g;

    iput-object p3, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    return-void
.end method

.method static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private b()Lcom/google/firebase/perf/util/e;
    .locals 2

    iget-boolean v0, p0, Lcom/google/firebase/perf/application/d;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    const-string v1, "No recording has been started."

    invoke-virtual {v0, v1}, Lsc/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/d;->b:Landroidx/core/app/g;

    invoke-virtual {v0}, Landroidx/core/app/g;->b()[Landroid/util/SparseIntArray;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    const-string v1, "FrameMetricsAggregator.mMetrics is uninitialized."

    invoke-virtual {v0, v1}, Lsc/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    const-string v1, "FrameMetricsAggregator.mMetrics[TOTAL_INDEX] is uninitialized."

    invoke-virtual {v0, v1}, Lsc/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {v0}, Lcom/google/firebase/perf/metrics/g;->a([Landroid/util/SparseIntArray;)Lcom/google/firebase/perf/metrics/g$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/util/e;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/firebase/perf/application/d;->d:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "FrameMetricsAggregator is already recording %s"

    invoke-virtual {v1, v2, v0}, Lsc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/application/d;->b:Landroidx/core/app/g;

    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroidx/core/app/g;->a(Landroid/app/Activity;)V

    iput-boolean v0, p0, Lcom/google/firebase/perf/application/d;->d:Z

    return-void
.end method

.method public d(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/firebase/perf/application/d;->d:Z

    if-nez v2, :cond_0

    sget-object p1, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    const-string v0, "Cannot start sub-recording because FrameMetricsAggregator is not recording"

    invoke-virtual {p1, v0}, Lsc/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Cannot start sub-recording because one is already ongoing with the key %s"

    invoke-virtual {v2, p1, v1}, Lsc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/perf/application/d;->b()Lcom/google/firebase/perf/util/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v2, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "startFragment(%s): snapshot() failed"

    invoke-virtual {v2, p1, v1}, Lsc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/metrics/g$a;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e()Lcom/google/firebase/perf/util/e;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/firebase/perf/application/d;->d:Z

    if-nez v1, :cond_0

    sget-object v0, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    const-string v1, "Cannot stop because no recording was started"

    invoke-virtual {v0, v1}, Lsc/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    const-string v2, "Sub-recordings are still ongoing! Sub-recordings should be stopped first before stopping Activity screen trace."

    invoke-virtual {v1, v2}, Lsc/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/perf/application/d;->b()Lcom/google/firebase/perf/util/e;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->b:Landroidx/core/app/g;

    iget-object v3, p0, Lcom/google/firebase/perf/application/d;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroidx/core/app/g;->c(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    instance-of v2, v1, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    throw v1

    :cond_3
    :goto_1
    sget-object v2, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v1, "View not hardware accelerated. Unable to collect FrameMetrics. %s"

    invoke-virtual {v2, v1, v3}, Lsc/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->b:Landroidx/core/app/g;

    invoke-virtual {v2}, Landroidx/core/app/g;->d()[Landroid/util/SparseIntArray;

    iput-boolean v0, p0, Lcom/google/firebase/perf/application/d;->d:Z

    return-object v1
.end method

.method public f(Landroidx/fragment/app/Fragment;)Lcom/google/firebase/perf/util/e;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/firebase/perf/application/d;->d:Z

    if-nez v2, :cond_0

    sget-object p1, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    const-string v0, "Cannot stop sub-recording because FrameMetricsAggregator is not recording"

    invoke-virtual {p1, v0}, Lsc/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Sub-recording associated with key %s was not started or does not exist"

    invoke-virtual {v2, p1, v1}, Lsc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v2, p0, Lcom/google/firebase/perf/application/d;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/g$a;

    invoke-direct {p0}, Lcom/google/firebase/perf/application/d;->b()Lcom/google/firebase/perf/util/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/perf/util/e;->d()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v2, Lcom/google/firebase/perf/application/d;->e:Lsc/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "stopFragment(%s): snapshot() failed"

    invoke-virtual {v2, p1, v1}, Lsc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/firebase/perf/util/e;->a()Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v3}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/metrics/g$a;

    invoke-virtual {p1, v2}, Lcom/google/firebase/perf/metrics/g$a;->a(Lcom/google/firebase/perf/metrics/g$a;)Lcom/google/firebase/perf/metrics/g$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/util/e;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/e;

    move-result-object p1

    return-object p1
.end method
