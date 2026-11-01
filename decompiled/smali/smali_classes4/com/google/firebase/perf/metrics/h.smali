.class public Lcom/google/firebase/perf/metrics/h;
.super Ljava/lang/Object;


# static fields
.field private static final f:Lsc/a;


# instance fields
.field private final a:Lcom/google/firebase/perf/metrics/i;

.field private final b:Lcom/google/firebase/perf/util/Timer;

.field private final c:Ljava/util/Map;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsc/a;->e()Lsc/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/metrics/h;->f:Lsc/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lvc/k;Lcom/google/firebase/perf/util/Timer;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/firebase/perf/metrics/h;->d:Z

    iput-boolean v1, p0, Lcom/google/firebase/perf/metrics/h;->e:Z

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/h;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/firebase/perf/metrics/h;->b:Lcom/google/firebase/perf/util/Timer;

    invoke-static {p3}, Lcom/google/firebase/perf/metrics/i;->b(Lvc/k;)Lcom/google/firebase/perf/metrics/i;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/firebase/perf/metrics/i;->q(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/i;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/firebase/perf/metrics/i;->f(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/i;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/h;->a:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {p2}, Lcom/google/firebase/perf/metrics/i;->h()V

    invoke-static {}, Lcom/google/firebase/perf/config/a;->g()Lcom/google/firebase/perf/config/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/config/a;->K()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/firebase/perf/metrics/h;->f:Lsc/a;

    const-string p3, "HttpMetric feature is disabled. URL %s"

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p1, p4, v1

    invoke-virtual {p2, p3, p4}, Lsc/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/h;->e:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/h;->a:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/metrics/i;->g(I)Lcom/google/firebase/perf/metrics/i;

    return-void
.end method
