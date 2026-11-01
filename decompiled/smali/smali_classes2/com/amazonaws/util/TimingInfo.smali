.class public Lcom/amazonaws/util/TimingInfo;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:J

.field private c:Ljava/lang/Long;


# direct methods
.method protected constructor <init>(Ljava/lang/Long;JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/util/TimingInfo;->a:Ljava/lang/Long;

    iput-wide p2, p0, Lcom/amazonaws/util/TimingInfo;->b:J

    iput-object p4, p0, Lcom/amazonaws/util/TimingInfo;->c:Ljava/lang/Long;

    return-void
.end method

.method public static b(JJ)D
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr p2, p0

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide p2, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static m()Lcom/amazonaws/util/TimingInfo;
    .locals 5

    new-instance v0, Lcom/amazonaws/util/TimingInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/util/TimingInfo;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static n()Lcom/amazonaws/util/TimingInfo;
    .locals 5

    new-instance v0, Lcom/amazonaws/util/TimingInfoFullSupport;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static o(J)Lcom/amazonaws/util/TimingInfo;
    .locals 2

    new-instance v0, Lcom/amazonaws/util/TimingInfoFullSupport;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, v1}, Lcom/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static p(JLjava/lang/Long;)Lcom/amazonaws/util/TimingInfo;
    .locals 2

    new-instance v0, Lcom/amazonaws/util/TimingInfoUnmodifiable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/amazonaws/util/TimingInfoUnmodifiable;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V
    .locals 0

    return-void
.end method

.method public c()Lcom/amazonaws/util/TimingInfo;
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/TimingInfo;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public d()Ljava/util/Map;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/amazonaws/util/TimingInfo;->b:J

    return-wide v0
.end method

.method public g()Ljava/util/Map;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final h()D
    .locals 2

    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->i()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final i()Ljava/lang/Double;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/util/TimingInfo;->b:J

    iget-object v2, p0, Lcom/amazonaws/util/TimingInfo;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/amazonaws/util/TimingInfo;->b(JJ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->h()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
