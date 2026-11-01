.class public final Luc/a;
.super Ljava/io/InputStream;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lcom/google/firebase/perf/metrics/i;

.field private final c:Lcom/google/firebase/perf/util/Timer;

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/firebase/perf/metrics/i;Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Luc/a;->d:J

    iput-wide v0, p0, Luc/a;->f:J

    iput-object p3, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    iput-object p1, p0, Luc/a;->a:Ljava/io/InputStream;

    iput-object p2, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {p2}, Lcom/google/firebase/perf/metrics/i;->c()J

    move-result-wide p1

    iput-wide p1, p0, Luc/a;->e:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Luc/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    iget-object v2, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    iget-object v1, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-static {v1}, Luc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    throw v0
.end method

.method public close()V
    .locals 6

    iget-object v0, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    iget-wide v2, p0, Luc/a;->f:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Luc/a;->f:J

    :cond_0
    :try_start_0
    iget-object v0, p0, Luc/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-wide v0, p0, Luc/a;->d:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->m(J)Lcom/google/firebase/perf/metrics/i;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v0, p0, Luc/a;->e:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->p(J)Lcom/google/firebase/perf/metrics/i;

    :cond_2
    iget-object v0, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    iget-wide v1, p0, Luc/a;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    iget-object v0, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/i;->a()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object v1, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    iget-object v2, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    iget-object v1, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-static {v1}, Luc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    throw v0
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Luc/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Luc/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 7

    :try_start_0
    iget-object v0, p0, Luc/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    iget-wide v3, p0, Luc/a;->e:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iput-wide v1, p0, Luc/a;->e:J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-wide v3, p0, Luc/a;->f:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iput-wide v1, p0, Luc/a;->f:J

    iget-object v3, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    iget-object v1, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/i;->a()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Luc/a;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Luc/a;->d:J

    iget-object v3, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/perf/metrics/i;->m(J)Lcom/google/firebase/perf/metrics/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :goto_2
    iget-object v1, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    iget-object v2, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    iget-object v1, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-static {v1}, Luc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    throw v0
.end method

.method public read([B)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Luc/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    iget-object v0, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    iget-wide v2, p0, Luc/a;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Luc/a;->e:J

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    iget-wide v2, p0, Luc/a;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-wide v0, p0, Luc/a;->f:J

    iget-object v2, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    iget-object v0, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/i;->a()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Luc/a;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Luc/a;->d:J

    iget-object v2, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->m(J)Lcom/google/firebase/perf/metrics/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return p1

    :goto_2
    iget-object v0, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    iget-object v1, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    iget-object v0, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-static {v0}, Luc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    throw p1
.end method

.method public read([BII)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Luc/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget-object p2, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide p2

    iget-wide v0, p0, Luc/a;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p2, p0, Luc/a;->e:J

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Luc/a;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput-wide p2, p0, Luc/a;->f:J

    iget-object v0, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    iget-object p2, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {p2}, Lcom/google/firebase/perf/metrics/i;->a()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_1

    :cond_1
    iget-wide p2, p0, Luc/a;->d:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Luc/a;->d:J

    iget-object v0, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/i;->m(J)Lcom/google/firebase/perf/metrics/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return p1

    :goto_2
    iget-object p2, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    iget-object p3, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    iget-object p2, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-static {p2}, Luc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    throw p1
.end method

.method public reset()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Luc/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    iget-object v2, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    iget-object v1, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-static {v1}, Luc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    throw v0
.end method

.method public skip(J)J
    .locals 6

    :try_start_0
    iget-object v0, p0, Luc/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    iget-object v0, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    iget-wide v2, p0, Luc/a;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Luc/a;->e:J

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Luc/a;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-wide v0, p0, Luc/a;->f:J

    iget-object v2, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Luc/a;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Luc/a;->d:J

    iget-object v2, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->m(J)Lcom/google/firebase/perf/metrics/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-wide p1

    :goto_2
    iget-object p2, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    iget-object v0, p0, Luc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    iget-object p2, p0, Luc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-static {p2}, Luc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    throw p1
.end method
