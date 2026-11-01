.class Lvc/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final k:Lsc/a;

.field private static final l:J


# instance fields
.field private final a:Lcom/google/firebase/perf/util/a;

.field private final b:Z

.field private c:Lcom/google/firebase/perf/util/Timer;

.field private d:Lcom/google/firebase/perf/util/g;

.field private e:J

.field private f:D

.field private g:Lcom/google/firebase/perf/util/g;

.field private h:Lcom/google/firebase/perf/util/g;

.field private i:J

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lsc/a;->e()Lsc/a;

    move-result-object v0

    sput-object v0, Lvc/d$a;->k:Lsc/a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lvc/d$a;->l:J

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/perf/util/g;JLcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/config/a;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lvc/d$a;->a:Lcom/google/firebase/perf/util/a;

    iput-wide p2, p0, Lvc/d$a;->e:J

    iput-object p1, p0, Lvc/d$a;->d:Lcom/google/firebase/perf/util/g;

    long-to-double p1, p2

    iput-wide p1, p0, Lvc/d$a;->f:D

    invoke-virtual {p4}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iput-object p1, p0, Lvc/d$a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {p0, p5, p6, p7}, Lvc/d$a;->g(Lcom/google/firebase/perf/config/a;Ljava/lang/String;Z)V

    iput-boolean p7, p0, Lvc/d$a;->b:Z

    return-void
.end method

.method private static c(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->E()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->q()J

    move-result-wide p0

    return-wide p0
.end method

.method private static d(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->t()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->t()J

    move-result-wide p0

    return-wide p0
.end method

.method private static e(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->F()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->r()J

    move-result-wide p0

    return-wide p0
.end method

.method private static f(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->t()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->t()J

    move-result-wide p0

    return-wide p0
.end method

.method private g(Lcom/google/firebase/perf/config/a;Ljava/lang/String;Z)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static/range {p1 .. p2}, Lvc/d$a;->f(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J

    move-result-wide v8

    invoke-static/range {p1 .. p2}, Lvc/d$a;->e(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J

    move-result-wide v11

    new-instance v13, Lcom/google/firebase/perf/util/g;

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, v13

    move-wide v6, v11

    move-object/from16 v10, v19

    invoke-direct/range {v5 .. v10}, Lcom/google/firebase/perf/util/g;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    iput-object v13, v0, Lvc/d$a;->g:Lcom/google/firebase/perf/util/g;

    iput-wide v11, v0, Lvc/d$a;->i:J

    if-eqz p3, :cond_0

    sget-object v5, Lvc/d$a;->k:Lsc/a;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p2, v7, v3

    aput-object v13, v7, v2

    aput-object v6, v7, v1

    const-string v6, "Foreground %s logging rate:%f, burst capacity:%d"

    invoke-virtual {v5, v6, v7}, Lsc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static/range {p1 .. p2}, Lvc/d$a;->d(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J

    move-result-wide v17

    invoke-static/range {p1 .. p2}, Lvc/d$a;->c(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J

    move-result-wide v5

    new-instance v7, Lcom/google/firebase/perf/util/g;

    move-object v14, v7

    move-wide v15, v5

    invoke-direct/range {v14 .. v19}, Lcom/google/firebase/perf/util/g;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    iput-object v7, v0, Lvc/d$a;->h:Lcom/google/firebase/perf/util/g;

    iput-wide v5, v0, Lvc/d$a;->j:J

    if-eqz p3, :cond_1

    sget-object v8, Lvc/d$a;->k:Lsc/a;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    aput-object v7, v4, v2

    aput-object v5, v4, v1

    const-string v1, "Background %s logging rate:%f, capacity:%d"

    invoke-virtual {v8, v1, v4}, Lsc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lvc/d$a;->g:Lcom/google/firebase/perf/util/g;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lvc/d$a;->h:Lcom/google/firebase/perf/util/g;

    :goto_0
    iput-object v0, p0, Lvc/d$a;->d:Lcom/google/firebase/perf/util/g;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lvc/d$a;->i:J

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lvc/d$a;->j:J

    :goto_1
    iput-wide v0, p0, Lvc/d$a;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized b(Lcom/google/firebase/perf/v1/g;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lvc/d$a;->a:Lcom/google/firebase/perf/util/a;

    invoke-virtual {p1}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iget-object v0, p0, Lvc/d$a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lvc/d$a;->d:Lcom/google/firebase/perf/util/g;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/g;->a()D

    move-result-wide v2

    mul-double/2addr v0, v2

    sget-wide v2, Lvc/d$a;->l:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lvc/d$a;->f:D

    add-double/2addr v2, v0

    iget-wide v0, p0, Lvc/d$a;->e:J

    long-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lvc/d$a;->f:D

    iput-object p1, p0, Lvc/d$a;->c:Lcom/google/firebase/perf/util/Timer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-wide v0, p0, Lvc/d$a;->f:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lvc/d$a;->f:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    :try_start_1
    iget-boolean p1, p0, Lvc/d$a;->b:Z

    if-eqz p1, :cond_2

    sget-object p1, Lvc/d$a;->k:Lsc/a;

    const-string v0, "Exceeded log rate limit, dropping the log."

    invoke-virtual {p1, v0}, Lsc/a;->j(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
