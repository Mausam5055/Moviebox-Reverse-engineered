.class public final Lcom/transsion/startup/pref/consume/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:Z


# direct methods
.method public constructor <init>(JJJJJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/startup/pref/consume/b;->a:J

    iput-wide p3, p0, Lcom/transsion/startup/pref/consume/b;->b:J

    iput-wide p5, p0, Lcom/transsion/startup/pref/consume/b;->c:J

    iput-wide p7, p0, Lcom/transsion/startup/pref/consume/b;->d:J

    iput-wide p9, p0, Lcom/transsion/startup/pref/consume/b;->e:J

    iput-boolean p11, p0, Lcom/transsion/startup/pref/consume/b;->f:Z

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/b;->b:J

    return-wide v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/startup/pref/consume/b;->f:Z

    return v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/b;->c:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/b;->e:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/b;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/startup/pref/consume/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/startup/pref/consume/b;

    iget-wide v3, p0, Lcom/transsion/startup/pref/consume/b;->a:J

    iget-wide v5, p1, Lcom/transsion/startup/pref/consume/b;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/startup/pref/consume/b;->b:J

    iget-wide v5, p1, Lcom/transsion/startup/pref/consume/b;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/startup/pref/consume/b;->c:J

    iget-wide v5, p1, Lcom/transsion/startup/pref/consume/b;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/startup/pref/consume/b;->d:J

    iget-wide v5, p1, Lcom/transsion/startup/pref/consume/b;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/transsion/startup/pref/consume/b;->e:J

    iget-wide v5, p1, Lcom/transsion/startup/pref/consume/b;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/transsion/startup/pref/consume/b;->f:Z

    iget-boolean p1, p1, Lcom/transsion/startup/pref/consume/b;->f:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/b;->d:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/b;->a:J

    invoke-static {v0, v1}, Landroidx/collection/s;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/startup/pref/consume/b;->b:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/startup/pref/consume/b;->c:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/startup/pref/consume/b;->d:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/startup/pref/consume/b;->e:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/startup/pref/consume/b;->f:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/b;->a:J

    iget-wide v2, p0, Lcom/transsion/startup/pref/consume/b;->b:J

    iget-wide v4, p0, Lcom/transsion/startup/pref/consume/b;->c:J

    iget-wide v6, p0, Lcom/transsion/startup/pref/consume/b;->d:J

    iget-wide v8, p0, Lcom/transsion/startup/pref/consume/b;->e:J

    iget-boolean v10, p0, Lcom/transsion/startup/pref/consume/b;->f:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "StartupMetrics(splashTTID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", adWaitDuration="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mainActivityTTID="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalTTFD="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", realTTFD="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", hasAd="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
