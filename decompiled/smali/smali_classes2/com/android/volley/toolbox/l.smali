.class abstract Lcom/android/volley/toolbox/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/l$b;
    }
.end annotation


# direct methods
.method static a(Lcom/android/volley/Request;Lcom/android/volley/toolbox/l$b;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/k;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v4

    :try_start_0
    invoke-static {p1}, Lcom/android/volley/toolbox/l$b;->a(Lcom/android/volley/toolbox/l$b;)Lcom/android/volley/VolleyError;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/volley/k;->b(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lcom/android/volley/toolbox/l$b;->b(Lcom/android/volley/toolbox/l$b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    const-string p1, "%s-retry [timeout=%s]"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v3

    invoke-static {p1}, Lcom/android/volley/toolbox/l$b;->b(Lcom/android/volley/toolbox/l$b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object v4, v2, v0

    const-string p1, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    throw v3
.end method

.method static b(Lcom/android/volley/Request;JLjava/util/List;)Lcom/android/volley/g;
    .locals 11

    invoke-virtual {p0}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/c$a;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/volley/g;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v1, 0x130

    move-object v0, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/g;-><init>(I[BZJLjava/util/List;)V

    return-object p0

    :cond_0
    invoke-static {p3, p0}, Lcom/android/volley/toolbox/d;->a(Ljava/util/List;Lcom/android/volley/c$a;)Ljava/util/List;

    move-result-object v10

    new-instance p3, Lcom/android/volley/g;

    iget-object v6, p0, Lcom/android/volley/c$a;->a:[B

    const/4 v7, 0x1

    const/16 v5, 0x130

    move-object v4, p3

    move-wide v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/volley/g;-><init>(I[BZJLjava/util/List;)V

    return-object p3
.end method

.method static c(Ljava/io/InputStream;ILcom/android/volley/toolbox/ByteArrayPool;)[B
    .locals 5

    const-string v0, "Error occurred when closing InputStream"

    new-instance v1, Lcom/android/volley/toolbox/m;

    invoke-direct {v1, p2, p1}, Lcom/android/volley/toolbox/m;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    const/16 p1, 0x400

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->a(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/volley/toolbox/m;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/android/volley/l;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->b([B)V

    invoke-virtual {v1}, Lcom/android/volley/toolbox/m;->close()V

    return-object v3

    :catchall_1
    move-exception v3

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

    invoke-static {v0, p0}, Lcom/android/volley/l;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_3
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->b([B)V

    invoke-virtual {v1}, Lcom/android/volley/toolbox/m;->close()V

    throw v3
.end method

.method static d(JLcom/android/volley/Request;[BI)V
    .locals 2

    sget-boolean v0, Lcom/android/volley/l;->b:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0xbb8

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    if-eqz p3, :cond_1

    array-length p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/k;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/volley/k;->a()I

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

    invoke-static {p0, v0}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static e(Lcom/android/volley/Request;Ljava/io/IOException;JLcom/android/volley/toolbox/e;[B)Lcom/android/volley/toolbox/l$b;
    .locals 9

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/volley/toolbox/l$b;

    new-instance p1, Lcom/android/volley/TimeoutError;

    invoke-direct {p1}, Lcom/android/volley/TimeoutError;-><init>()V

    const-string p2, "socket"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/l$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/l$a;)V

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/net/MalformedURLException;

    if-nez v0, :cond_9

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lcom/android/volley/toolbox/e;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const-string v0, "Unexpected response code %d for %s"

    invoke-static {v0, v3}, Lcom/android/volley/l;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p5, :cond_6

    invoke-virtual {p4}, Lcom/android/volley/toolbox/e;->c()Ljava/util/List;

    move-result-object v8

    new-instance p4, Lcom/android/volley/g;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v6, v2, p2

    const/4 v5, 0x0

    move-object v2, p4

    move v3, p1

    move-object v4, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/volley/g;-><init>(I[BZJLjava/util/List;)V

    const/16 p2, 0x191

    if-eq p1, p2, :cond_5

    const/16 p2, 0x193

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x190

    if-lt p1, p2, :cond_3

    const/16 p2, 0x1f3

    if-le p1, p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/android/volley/ClientError;

    invoke-direct {p0, p4}, Lcom/android/volley/ClientError;-><init>(Lcom/android/volley/g;)V

    throw p0

    :cond_3
    :goto_0
    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_4

    const/16 p2, 0x257

    if-gt p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/android/volley/Request;->shouldRetryServerErrors()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/android/volley/toolbox/l$b;

    new-instance p1, Lcom/android/volley/ServerError;

    invoke-direct {p1, p4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/g;)V

    const-string p2, "server"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/l$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/l$a;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/android/volley/ServerError;

    invoke-direct {p0, p4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/g;)V

    throw p0

    :cond_5
    :goto_1
    new-instance p0, Lcom/android/volley/toolbox/l$b;

    new-instance p1, Lcom/android/volley/AuthFailureError;

    invoke-direct {p1, p4}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/g;)V

    const-string p2, "auth"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/l$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/l$a;)V

    return-object p0

    :cond_6
    new-instance p0, Lcom/android/volley/toolbox/l$b;

    new-instance p1, Lcom/android/volley/NetworkError;

    invoke-direct {p1}, Lcom/android/volley/NetworkError;-><init>()V

    const-string p2, "network"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/l$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/l$a;)V

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/android/volley/Request;->shouldRetryConnectionErrors()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/android/volley/toolbox/l$b;

    new-instance p1, Lcom/android/volley/NoConnectionError;

    invoke-direct {p1}, Lcom/android/volley/NoConnectionError;-><init>()V

    const-string p2, "connection"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/l$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/l$a;)V

    return-object p0

    :cond_8
    new-instance p0, Lcom/android/volley/NoConnectionError;

    invoke-direct {p0, p1}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_9
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad URL "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
