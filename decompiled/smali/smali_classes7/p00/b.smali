.class public Lp00/b;
.super Lo00/b;


# instance fields
.field private final c:[B

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:J

.field private h:J

.field private final i:Ljava/io/InputStream;

.field private j:Lp00/a;

.field private final k:Lorg/apache/commons/compress/archivers/zip/r;

.field final l:Ljava/lang/String;

.field private m:Ljava/util/Map;

.field private final n:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lp00/b;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lp00/b;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lp00/b;-><init>(Ljava/io/InputStream;IILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lo00/b;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lp00/b;->c:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp00/b;->m:Ljava/util/Map;

    iput-object p1, p0, Lp00/b;->i:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lp00/b;->f:Z

    iput-object p4, p0, Lp00/b;->l:Ljava/lang/String;

    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/s;->a(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/r;

    move-result-object p1

    iput-object p1, p0, Lp00/b;->k:Lorg/apache/commons/compress/archivers/zip/r;

    iput p3, p0, Lp00/b;->d:I

    iput p2, p0, Lp00/b;->e:I

    iput-boolean p5, p0, Lp00/b;->n:Z

    return-void
.end method

.method private T()V
    .locals 2

    iget-object v0, p0, Lp00/b;->j:Lp00/a;

    invoke-virtual {v0}, Lp00/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lp00/b;->r()[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lp00/b;->j:Lp00/a;

    goto :goto_0

    :cond_1
    new-instance v1, Lp00/c;

    invoke-direct {v1, v0}, Lp00/c;-><init>([B)V

    invoke-virtual {v1}, Lp00/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    :goto_0
    return-void
.end method

.method private Z()V
    .locals 7

    invoke-direct {p0}, Lp00/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lp00/b;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget v4, p0, Lp00/b;->d:I

    int-to-long v5, v4

    rem-long v5, v0, v5

    cmp-long v2, v5, v2

    if-eqz v2, :cond_0

    int-to-long v2, v4

    div-long v2, v0, v2

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v2, v0

    iget-object v0, p0, Lp00/b;->i:Ljava/io/InputStream;

    invoke-static {v0, v2, v3}, Lq00/c;->c(Ljava/io/InputStream;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo00/b;->h(J)V

    :cond_0
    return-void
.end method

.method private a0()V
    .locals 4

    iget-object v0, p0, Lp00/b;->i:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lp00/b;->i:Ljava/io/InputStream;

    iget v2, p0, Lp00/b;->d:I

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lp00/b;->U()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lp00/b;->u([B)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget v0, p0, Lp00/b;->d:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lo00/b;->l(J)V

    iget-object v0, p0, Lp00/b;->i:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    iget v0, p0, Lp00/b;->d:I

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lo00/b;->l(J)V

    iget-object v0, p0, Lp00/b;->i:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_2
    throw v1
.end method

.method private m(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lp00/b;->j:Lp00/a;

    invoke-virtual {v0, p1}, Lp00/a;->C(Ljava/util/Map;)V

    return-void
.end method

.method private n()V
    .locals 6

    invoke-virtual {p0}, Lo00/b;->k()J

    move-result-wide v0

    iget v2, p0, Lp00/b;->e:I

    int-to-long v3, v2

    rem-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lp00/b;->i:Ljava/io/InputStream;

    int-to-long v4, v2

    sub-long/2addr v4, v0

    invoke-static {v3, v4, v5}, Lq00/c;->c(Ljava/io/InputStream;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo00/b;->h(J)V

    :cond_0
    return-void
.end method

.method private r()[B
    .locals 2

    invoke-virtual {p0}, Lp00/b;->U()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lp00/b;->u([B)Z

    move-result v1

    invoke-virtual {p0, v1}, Lp00/b;->V(Z)V

    invoke-virtual {p0}, Lp00/b;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lp00/b;->a0()V

    invoke-direct {p0}, Lp00/b;->n()V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private t()Z
    .locals 1

    iget-object v0, p0, Lp00/b;->j:Lp00/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp00/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private w()V
    .locals 1

    invoke-virtual {p0, p0}, Lp00/b;->v(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lp00/b;->p()Lo00/a;

    invoke-direct {p0, v0}, Lp00/b;->m(Ljava/util/Map;)V

    return-void
.end method

.method private x()V
    .locals 1

    invoke-virtual {p0, p0}, Lp00/b;->v(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lp00/b;->m:Ljava/util/Map;

    invoke-virtual {p0}, Lp00/b;->p()Lo00/a;

    return-void
.end method


# virtual methods
.method protected U()[B
    .locals 3

    iget v0, p0, Lp00/b;->d:I

    new-array v0, v0, [B

    iget-object v1, p0, Lp00/b;->i:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lq00/c;->a(Ljava/io/InputStream;[B)I

    move-result v1

    invoke-virtual {p0, v1}, Lo00/b;->b(I)V

    iget v2, p0, Lp00/b;->d:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected final V(Z)V
    .locals 0

    iput-boolean p1, p0, Lp00/b;->f:Z

    return-void
.end method

.method public available()I
    .locals 8

    invoke-direct {p0}, Lp00/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v0, p0, Lp00/b;->g:J

    iget-wide v2, p0, Lp00/b;->h:J

    sub-long v4, v0, v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    const v0, 0x7fffffff

    return v0

    :cond_1
    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lp00/b;->i:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected o()[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    iget-object v1, p0, Lp00/b;->c:[B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iget-object v3, p0, Lp00/b;->c:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp00/b;->p()Lo00/a;

    iget-object v1, p0, Lp00/b;->j:Lp00/a;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    array-length v3, v0

    if-eq v1, v3, :cond_3

    new-array v3, v1, [B

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    :cond_3
    return-object v0
.end method

.method public p()Lo00/a;
    .locals 1

    invoke-virtual {p0}, Lp00/b;->q()Lp00/a;

    move-result-object v0

    return-object v0
.end method

.method public q()Lp00/a;
    .locals 5

    invoke-virtual {p0}, Lp00/b;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lp00/b;->j:Lp00/a;

    if-eqz v0, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {p0, v2, v3}, Lq00/c;->c(Ljava/io/InputStream;J)J

    invoke-direct {p0}, Lp00/b;->Z()V

    :cond_1
    invoke-direct {p0}, Lp00/b;->r()[B

    move-result-object v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lp00/b;->j:Lp00/a;

    return-object v1

    :cond_2
    :try_start_0
    new-instance v2, Lp00/a;

    iget-object v3, p0, Lp00/b;->k:Lorg/apache/commons/compress/archivers/zip/r;

    iget-boolean v4, p0, Lp00/b;->n:Z

    invoke-direct {v2, v0, v3, v4}, Lp00/a;-><init>([BLorg/apache/commons/compress/archivers/zip/r;Z)V

    iput-object v2, p0, Lp00/b;->j:Lp00/a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lp00/b;->h:J

    invoke-virtual {v2}, Lp00/a;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lp00/b;->g:J

    iget-object v0, p0, Lp00/b;->j:Lp00/a;

    invoke-virtual {v0}, Lp00/a;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lp00/b;->o()[B

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v2, p0, Lp00/b;->j:Lp00/a;

    iget-object v3, p0, Lp00/b;->k:Lorg/apache/commons/compress/archivers/zip/r;

    invoke-interface {v3, v0}, Lorg/apache/commons/compress/archivers/zip/r;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lp00/a;->w(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lp00/b;->j:Lp00/a;

    invoke-virtual {v0}, Lp00/a;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lp00/b;->o()[B

    move-result-object v0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    iget-object v1, p0, Lp00/b;->j:Lp00/a;

    iget-object v2, p0, Lp00/b;->k:Lorg/apache/commons/compress/archivers/zip/r;

    invoke-interface {v2, v0}, Lorg/apache/commons/compress/archivers/zip/r;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lp00/a;->y(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lp00/b;->j:Lp00/a;

    invoke-virtual {v0}, Lp00/a;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lp00/b;->x()V

    :cond_7
    iget-object v0, p0, Lp00/b;->j:Lp00/a;

    invoke-virtual {v0}, Lp00/a;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lp00/b;->w()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lp00/b;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lp00/b;->m:Ljava/util/Map;

    invoke-direct {p0, v0}, Lp00/b;->m(Ljava/util/Map;)V

    :cond_9
    :goto_0
    iget-object v0, p0, Lp00/b;->j:Lp00/a;

    invoke-virtual {v0}, Lp00/a;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lp00/b;->T()V

    :cond_a
    iget-object v0, p0, Lp00/b;->j:Lp00/a;

    invoke-virtual {v0}, Lp00/a;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lp00/b;->g:J

    iget-object v0, p0, Lp00/b;->j:Lp00/a;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error detected parsing the header"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read([BII)I
    .locals 6

    invoke-virtual {p0}, Lp00/b;->s()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    invoke-direct {p0}, Lp00/b;->t()Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v2, p0, Lp00/b;->h:J

    iget-wide v4, p0, Lp00/b;->g:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lp00/b;->j:Lp00/a;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lp00/b;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lp00/b;->i:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v1, :cond_2

    if-gtz p3, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lp00/b;->V(Z)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Truncated TAR archive"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0, p1}, Lo00/b;->b(I)V

    iget-wide p2, p0, Lp00/b;->h:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lp00/b;->h:J

    :goto_0
    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No current tar entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return v1
.end method

.method public declared-synchronized reset()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected final s()Z
    .locals 1

    iget-boolean v0, p0, Lp00/b;->f:Z

    return v0
.end method

.method public skip(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    invoke-direct {p0}, Lp00/b;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lp00/b;->g:J

    iget-wide v2, p0, Lp00/b;->h:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lp00/b;->i:Ljava/io/InputStream;

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {v2, p1, p2}, Lq00/c;->c(Ljava/io/InputStream;J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo00/b;->h(J)V

    iget-wide v0, p0, Lp00/b;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lp00/b;->h:J

    return-wide p1

    :cond_1
    :goto_0
    return-wide v0
.end method

.method protected u([B)Z
    .locals 1

    if-eqz p1, :cond_1

    iget v0, p0, Lp00/b;->d:I

    invoke-static {p1, v0}, Lq00/a;->a([BI)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method v(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lp00/b;->m:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    const/4 v6, 0x1

    add-int/2addr v2, v6

    const/16 v7, 0xa

    if-ne v4, v7, :cond_1

    goto :goto_3

    :cond_1
    const/16 v7, 0x20

    if-ne v4, v7, :cond_6

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v7, v5, :cond_5

    add-int/2addr v2, v6

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_4

    const-string v8, "UTF-8"

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sub-int/2addr v3, v2

    if-ne v3, v6, :cond_2

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    new-array v2, v3, [B

    invoke-static {p1, v2}, Lq00/c;->a(Ljava/io/InputStream;[B)I

    move-result v6

    if-ne v6, v3, :cond_3

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v6, v2, v1, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read Paxheader. Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes, read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_5
    :goto_2
    move v4, v7

    goto :goto_3

    :cond_6
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    goto :goto_0

    :cond_7
    :goto_3
    if-ne v4, v5, :cond_0

    return-object v0
.end method
