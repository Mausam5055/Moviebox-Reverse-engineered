.class final Lcom/mbridge/msdk/thrid/okio/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/e;


# instance fields
.field public final a:Lcom/mbridge/msdk/thrid/okio/c;

.field public final b:Lcom/mbridge/msdk/thrid/okio/s;

.field c:Z


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okio/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/c;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okio/c;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(B)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okio/n;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    cmp-long v0, p4, p2

    if-ltz v0, :cond_3

    :goto_0
    cmp-long v0, p2, p4

    const-wide/16 v7, -0x1

    if-gez v0, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/thrid/okio/c;->a(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    iget-wide v1, v0, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    cmp-long v3, v1, p4

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const/4 p2, 0x1

    aput-object p3, p4, p2

    const-string p2, "fromIndex=%s toIndex=%s"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lcom/mbridge/msdk/thrid/okio/c;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    return-object v0
.end method

.method public b(Lcom/mbridge/msdk/thrid/okio/c;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    iget-boolean v2, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    iget-wide v3, v2, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    iget-wide v0, v0, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/c;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide p1

    return-wide p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(J)Lcom/mbridge/msdk/thrid/okio/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/thrid/okio/c;->b(J)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/mbridge/msdk/thrid/okio/t;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/s;->b()Lcom/mbridge/msdk/thrid/okio/t;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(J)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/thrid/okio/c;->c(J)[B

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/s;->close()V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->k()V

    return-void
.end method

.method public d(J)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    move-wide v5, v0

    goto :goto_0

    :cond_0
    add-long v5, p1, v3

    :goto_0
    const/16 v8, 0xa

    const-wide/16 v9, 0x0

    move-object v7, p0

    move-wide v11, v5

    invoke-virtual/range {v7 .. v12}, Lcom/mbridge/msdk/thrid/okio/n;->a(BJJ)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {p1, v7, v8}, Lcom/mbridge/msdk/thrid/okio/c;->h(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v0, v5, v0

    if-gez v0, :cond_2

    invoke-virtual {p0, v5, v6}, Lcom/mbridge/msdk/thrid/okio/n;->f(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    sub-long v1, v5, v3

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/c;->f(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/mbridge/msdk/thrid/okio/n;->f(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0, v5, v6}, Lcom/mbridge/msdk/thrid/okio/c;->f(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {p1, v5, v6}, Lcom/mbridge/msdk/thrid/okio/c;->h(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v6, Lcom/mbridge/msdk/thrid/okio/c;

    invoke-direct {v6}, Lcom/mbridge/msdk/thrid/okio/c;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okio/c;->a(Lcom/mbridge/msdk/thrid/okio/c;JJ)Lcom/mbridge/msdk/thrid/okio/c;

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/mbridge/msdk/thrid/okio/c;->o()Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okio/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->e()I

    move-result v0

    return v0
.end method

.method public e(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/thrid/okio/n;->f(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public f()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    iget-wide v1, v0, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->g()S

    move-result v0

    return v0
.end method

.method public i()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lcom/mbridge/msdk/thrid/okio/n;->f(J)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/mbridge/msdk/thrid/okio/c;->f(J)B

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_0

    const/16 v5, 0x39

    if-le v4, v5, :cond_2

    :cond_0
    const/16 v5, 0x61

    if-lt v4, v5, :cond_1

    const/16 v5, 0x66

    if-le v4, v5, :cond_2

    :cond_1
    const/16 v5, 0x41

    if-lt v4, v5, :cond_3

    const/16 v5, 0x46

    if-le v4, v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v1, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/n$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okio/n$a;-><init>(Lcom/mbridge/msdk/thrid/okio/n;)V

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    iget-wide v1, v0, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okio/c;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->readByte()B

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okio/c;->readFully([B)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    iget-wide v3, v2, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    long-to-int v3, v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/mbridge/msdk/thrid/okio/c;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    throw v0
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->readInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->readShort()S

    move-result v0

    return v0
.end method

.method public skip(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    iget-wide v3, v2, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v2, v0, v1}, Lcom/mbridge/msdk/thrid/okio/c;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
