.class public final Le10/a;
.super Ljava/io/BufferedInputStream;


# instance fields
.field private final a:Z

.field private final b:I

.field private c:J

.field private d:J

.field private e:I

.field private f:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Le10/a;->d:J

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ltz p3, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->d(Z)V

    iput p3, p0, Le10/a;->b:I

    iput p3, p0, Le10/a;->e:I

    if-eqz p3, :cond_1

    move p1, p2

    :cond_1
    iput-boolean p1, p0, Le10/a;->a:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Le10/a;->c:J

    return-void
.end method

.method private d()Z
    .locals 6

    iget-wide v0, p0, Le10/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Le10/a;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Le10/a;->d:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static k(Ljava/io/InputStream;II)Le10/a;
    .locals 1

    instance-of v0, p0, Le10/a;

    if-eqz v0, :cond_0

    check-cast p0, Le10/a;

    goto :goto_0

    :cond_0
    new-instance v0, Le10/a;

    invoke-direct {v0, p0, p1, p2}, Le10/a;-><init>(Ljava/io/InputStream;II)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public h(I)Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v2, v3}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const v2, 0x8000

    if-eqz v0, :cond_2

    if-ge p1, v2, :cond_2

    move v2, p1

    :cond_2
    new-array v3, v2, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_2
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_5

    if-lt v2, p1, :cond_4

    invoke-virtual {v4, v3, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_4
    sub-int/2addr p1, v2

    :cond_5
    invoke-virtual {v4, v3, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2
.end method

.method public i(JJ)Le10/a;
    .locals 0

    iput-wide p1, p0, Le10/a;->c:J

    const-wide/32 p1, 0xf4240

    mul-long/2addr p3, p1

    iput-wide p3, p0, Le10/a;->d:J

    return-object p0
.end method

.method public read([BII)I
    .locals 2

    iget-boolean v0, p0, Le10/a;->f:Z

    const/4 v1, -0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Le10/a;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Le10/a;->e:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Le10/a;->f:Z

    return v1

    :cond_1
    invoke-direct {p0}, Le10/a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Le10/a;->a:Z

    if-eqz v0, :cond_2

    iget v0, p0, Le10/a;->e:I

    if-le p3, v0, :cond_2

    move p3, v0

    :cond_2
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    iget p2, p0, Le10/a;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Le10/a;->e:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_3
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string p2, "Read timeout"

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return v1
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V

    iget v0, p0, Le10/a;->b:I

    iget v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v0, v1

    iput v0, p0, Le10/a;->e:I

    return-void
.end method
