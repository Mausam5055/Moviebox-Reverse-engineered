.class final Lcom/mbridge/msdk/tracker/network/toolbox/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/tracker/network/toolbox/k$b;
    }
.end annotation


# direct methods
.method static a(Lcom/mbridge/msdk/tracker/network/t;JLjava/util/List;)Lcom/mbridge/msdk/tracker/network/q;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;J",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/network/g;",
            ">;)",
            "Lcom/mbridge/msdk/tracker/network/q;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->d()Lcom/mbridge/msdk/tracker/network/b$a;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/mbridge/msdk/tracker/network/q;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v1, 0x130

    move-object v0, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/mbridge/msdk/tracker/network/q;-><init>(I[BZJLjava/util/List;)V

    return-object p0

    :cond_0
    invoke-static {p3, p0}, Lcom/mbridge/msdk/tracker/network/toolbox/f;->a(Ljava/util/List;Lcom/mbridge/msdk/tracker/network/b$a;)Ljava/util/List;

    move-result-object v10

    new-instance p3, Lcom/mbridge/msdk/tracker/network/q;

    iget-object v6, p0, Lcom/mbridge/msdk/tracker/network/b$a;->a:[B

    const/16 v5, 0x130

    const/4 v7, 0x1

    move-object v4, p3

    move-wide v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/mbridge/msdk/tracker/network/q;-><init>(I[BZJLjava/util/List;)V

    return-object p3
.end method

.method static a(Lcom/mbridge/msdk/tracker/network/t;Ljava/io/IOException;JLcom/mbridge/msdk/tracker/network/toolbox/g;[B)Lcom/mbridge/msdk/tracker/network/toolbox/k$b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;",
            "Ljava/io/IOException;",
            "J",
            "Lcom/mbridge/msdk/tracker/network/toolbox/g;",
            "[B)",
            "Lcom/mbridge/msdk/tracker/network/toolbox/k$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/tracker/network/b0;
        }
    .end annotation

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/mbridge/msdk/tracker/network/toolbox/k$b;

    new-instance p1, Lcom/mbridge/msdk/tracker/network/z;

    invoke-direct {p1}, Lcom/mbridge/msdk/tracker/network/z;-><init>()V

    const-string p2, "socket"

    invoke-direct {p0, p2, p1, v1}, Lcom/mbridge/msdk/tracker/network/toolbox/k$b;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/tracker/network/b0;Lcom/mbridge/msdk/tracker/network/toolbox/k$a;)V

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/net/MalformedURLException;

    if-nez v0, :cond_7

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/mbridge/msdk/tracker/network/toolbox/g;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->t()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const-string v0, "Unexpected response code %d for %s"

    invoke-static {v0, v3}, Lcom/mbridge/msdk/tracker/network/c0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p5, :cond_4

    invoke-virtual {p4}, Lcom/mbridge/msdk/tracker/network/toolbox/g;->c()Ljava/util/List;

    move-result-object v8

    new-instance p4, Lcom/mbridge/msdk/tracker/network/q;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v6, v2, p2

    const/4 v5, 0x0

    move-object v2, p4

    move v3, p1

    move-object v4, p5

    invoke-direct/range {v2 .. v8}, Lcom/mbridge/msdk/tracker/network/q;-><init>(I[BZJLjava/util/List;)V

    const/16 p2, 0x190

    if-lt p1, p2, :cond_2

    const/16 p2, 0x1f3

    if-le p1, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/mbridge/msdk/tracker/network/d;

    invoke-direct {p0, p4}, Lcom/mbridge/msdk/tracker/network/d;-><init>(Lcom/mbridge/msdk/tracker/network/q;)V

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/tracker/network/b0;->a(I)V

    throw p0

    :cond_2
    :goto_0
    new-instance p2, Lcom/mbridge/msdk/tracker/network/y;

    invoke-direct {p2, p4}, Lcom/mbridge/msdk/tracker/network/y;-><init>(Lcom/mbridge/msdk/tracker/network/q;)V

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/tracker/network/b0;->a(I)V

    const/16 p3, 0x1f4

    if-lt p1, p3, :cond_3

    const/16 p3, 0x257

    if-gt p1, p3, :cond_3

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->B()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/mbridge/msdk/tracker/network/toolbox/k$b;

    const-string p1, "server"

    invoke-direct {p0, p1, p2, v1}, Lcom/mbridge/msdk/tracker/network/toolbox/k$b;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/tracker/network/b0;Lcom/mbridge/msdk/tracker/network/toolbox/k$a;)V

    return-object p0

    :cond_3
    throw p2

    :cond_4
    new-instance p0, Lcom/mbridge/msdk/tracker/network/o;

    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/network/o;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/tracker/network/b0;->a(I)V

    new-instance p1, Lcom/mbridge/msdk/tracker/network/toolbox/k$b;

    const-string p2, "network"

    invoke-direct {p1, p2, p0, v1}, Lcom/mbridge/msdk/tracker/network/toolbox/k$b;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/tracker/network/b0;Lcom/mbridge/msdk/tracker/network/toolbox/k$a;)V

    return-object p1

    :cond_5
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->A()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/mbridge/msdk/tracker/network/toolbox/k$b;

    new-instance p1, Lcom/mbridge/msdk/tracker/network/r;

    invoke-direct {p1}, Lcom/mbridge/msdk/tracker/network/r;-><init>()V

    const-string p2, "connection"

    invoke-direct {p0, p2, p1, v1}, Lcom/mbridge/msdk/tracker/network/toolbox/k$b;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/tracker/network/b0;Lcom/mbridge/msdk/tracker/network/toolbox/k$a;)V

    return-object p0

    :cond_6
    new-instance p0, Lcom/mbridge/msdk/tracker/network/r;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/network/r;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_7
    new-instance p1, Lcom/mbridge/msdk/tracker/network/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad URL "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/tracker/network/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(JLcom/mbridge/msdk/tracker/network/t;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;[BI)V"
        }
    .end annotation

    const-wide/16 v0, 0xbb8

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    if-eqz p3, :cond_0

    array-length p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2}, Lcom/mbridge/msdk/tracker/network/t;->o()Lcom/mbridge/msdk/tracker/network/x;

    move-result-object p4

    invoke-interface {p4}, Lcom/mbridge/msdk/tracker/network/x;->c()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const-string p0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {p0, v0}, Lcom/mbridge/msdk/tracker/network/c0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static a(Lcom/mbridge/msdk/tracker/network/p;)V
    .locals 2

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/tracker/network/p;->c(J)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/mbridge/msdk/tracker/network/p;I)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/p;->B()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/tracker/network/p;->c(J)V

    :cond_0
    return-void
.end method

.method static a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/toolbox/k$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;",
            "Lcom/mbridge/msdk/tracker/network/toolbox/k$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/tracker/network/b0;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->o()Lcom/mbridge/msdk/tracker/network/x;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, p1, Lcom/mbridge/msdk/tracker/network/toolbox/k$b;->b:Lcom/mbridge/msdk/tracker/network/b0;

    invoke-interface {p0, v0}, Lcom/mbridge/msdk/tracker/network/x;->a(Lcom/mbridge/msdk/tracker/network/b0;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p1, Lcom/mbridge/msdk/tracker/network/toolbox/k$b;->b:Lcom/mbridge/msdk/tracker/network/b0;

    throw p0

    :cond_1
    iget-object p0, p1, Lcom/mbridge/msdk/tracker/network/toolbox/k$b;->b:Lcom/mbridge/msdk/tracker/network/b0;

    throw p0

    :cond_2
    new-instance p0, Lcom/mbridge/msdk/tracker/network/a0;

    const-string p1, "retry info is null when retrying"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/network/a0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/mbridge/msdk/tracker/network/a0;

    const-string p1, "request is null when retrying"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/network/a0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/io/InputStream;ILcom/mbridge/msdk/tracker/network/toolbox/c;Lcom/mbridge/msdk/tracker/network/p;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error occurred when closing InputStream"

    new-instance v1, Lcom/mbridge/msdk/tracker/network/toolbox/n;

    invoke-direct {v1, p2, p1}, Lcom/mbridge/msdk/tracker/network/toolbox/n;-><init>(Lcom/mbridge/msdk/tracker/network/toolbox/c;I)V

    invoke-static {p3}, Lcom/mbridge/msdk/tracker/network/toolbox/k;->a(Lcom/mbridge/msdk/tracker/network/p;)V

    const/16 p1, 0x400

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/tracker/network/toolbox/c;->a(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, p1, v2, v3}, Lcom/mbridge/msdk/tracker/network/toolbox/n;->write([BII)V

    invoke-static {p3, v3}, Lcom/mbridge/msdk/tracker/network/toolbox/k;->a(Lcom/mbridge/msdk/tracker/network/p;I)V

    goto :goto_0

    :catchall_0
    move-exception p3

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/mbridge/msdk/tracker/network/c0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/tracker/network/toolbox/c;->a([B)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/tracker/network/toolbox/n;->close()V

    return-object p3

    :catchall_1
    move-exception p3

    const/4 p1, 0x0

    :goto_2
    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/mbridge/msdk/tracker/network/c0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_3
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/tracker/network/toolbox/c;->a([B)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/tracker/network/toolbox/n;->close()V

    throw p3
.end method
