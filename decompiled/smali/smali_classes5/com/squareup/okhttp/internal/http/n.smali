.class public final Lcom/squareup/okhttp/internal/http/n;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/squareup/okhttp/Address;

.field private final b:Lcom/squareup/okhttp/ConnectionPool;

.field private c:Lcom/squareup/okhttp/internal/http/l;

.field private d:Ldf/a;

.field private e:Z

.field private f:Z

.field private g:Lcom/squareup/okhttp/internal/http/HttpStream;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Address;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/Address;

    return-void
.end method

.method private e(Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    iget v2, v1, Ldf/a;->g:I

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ldf/a;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    invoke-virtual {v2, v1, p1}, Lcom/squareup/okhttp/internal/http/l;->a(Lcom/squareup/okhttp/Route;Ljava/io/IOException;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/n;->d()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private f(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p3, 0x1

    if-eqz p2, :cond_1

    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/http/n;->e:Z

    :cond_1
    iget-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_2

    iput-boolean p3, p2, Ldf/a;->k:Z

    :cond_2
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/squareup/okhttp/internal/http/n;->e:Z

    if-nez p1, :cond_3

    iget-boolean p1, p2, Ldf/a;->k:Z

    if-eqz p1, :cond_6

    :cond_3
    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/http/n;->p(Ldf/a;)V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    iget p2, p1, Ldf/a;->g:I

    if-lez p2, :cond_4

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    :cond_4
    iget-object p1, p1, Ldf/a;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Ldf/a;->l:J

    sget-object p1, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    iget-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    iget-object p3, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/internal/c;->connectionBecameIdle(Lcom/squareup/okhttp/ConnectionPool;Ldf/a;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    goto :goto_1

    :cond_5
    move-object p1, v1

    :goto_1
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    move-object v1, p1

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ldf/a;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/g;->d(Ljava/net/Socket;)V

    :cond_7
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private g(IIIZ)Ldf/a;
    .locals 8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/n;->e:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/n;->f:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Ldf/a;->k:Z

    if-nez v2, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/Address;

    invoke-virtual {v1, v2, v3, p0}, Lcom/squareup/okhttp/internal/c;->get(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Address;Lcom/squareup/okhttp/internal/http/n;)Ldf/a;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    monitor-exit v0

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    if-nez v1, :cond_2

    new-instance v1, Lcom/squareup/okhttp/internal/http/l;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/Address;

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->q()Lcom/squareup/okhttp/internal/f;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/squareup/okhttp/internal/http/l;-><init>(Lcom/squareup/okhttp/Address;Lcom/squareup/okhttp/internal/f;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/l;->g()Lcom/squareup/okhttp/Route;

    move-result-object v0

    new-instance v7, Ldf/a;

    invoke-direct {v7, v0}, Ldf/a;-><init>(Lcom/squareup/okhttp/Route;)V

    invoke-virtual {p0, v7}, Lcom/squareup/okhttp/internal/http/n;->a(Ldf/a;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    invoke-virtual {v0, v2, v7}, Lcom/squareup/okhttp/internal/c;->put(Lcom/squareup/okhttp/ConnectionPool;Ldf/a;)V

    iput-object v7, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/n;->f:Z

    if-nez v0, :cond_3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/Address;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    move-result-object v5

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Ldf/a;->c(IIILjava/util/List;Z)V

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->q()Lcom/squareup/okhttp/internal/f;

    move-result-object p1

    invoke-virtual {v7}, Ldf/a;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/f;->a(Lcom/squareup/okhttp/Route;)V

    return-object v7

    :catchall_1
    move-exception p1

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "stream != null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private h(IIIZZ)Ldf/a;
    .locals 3

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/http/n;->g(IIIZ)Ldf/a;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Ldf/a;->g:I

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p5}, Ldf/a;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/n;->d()V

    goto :goto_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private i(Lcom/squareup/okhttp/internal/http/RouteException;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object p1

    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_1

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    return p1

    :cond_1
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private j(Ljava/io/IOException;)Z
    .locals 2

    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of p1, p1, Ljava/io/InterruptedIOException;

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private p(Ldf/a;)V
    .locals 3

    iget-object v0, p1, Ldf/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Ldf/a;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    iget-object p1, p1, Ldf/a;->j:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private q()Lcom/squareup/okhttp/internal/f;
    .locals 2

    sget-object v0, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/c;->routeDatabase(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/internal/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ldf/a;)V
    .locals 1

    iget-object p1, p1, Ldf/a;->j:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/http/n;->f:Z

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/http/HttpStream;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ldf/a;->b()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized c()Ldf/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0}, Lcom/squareup/okhttp/internal/http/n;->f(ZZZ)V

    return-void
.end method

.method public k(IIIZZ)Lcom/squareup/okhttp/internal/http/HttpStream;
    .locals 2

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/squareup/okhttp/internal/http/n;->h(IIIZZ)Ldf/a;

    move-result-object p1

    iget-object p4, p1, Ldf/a;->f:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    if-eqz p4, :cond_0

    new-instance p2, Lcom/squareup/okhttp/internal/http/e;

    iget-object p3, p1, Ldf/a;->f:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-direct {p2, p0, p3}, Lcom/squareup/okhttp/internal/http/e;-><init>(Lcom/squareup/okhttp/internal/http/n;Lcom/squareup/okhttp/internal/framed/FramedConnection;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ldf/a;->getSocket()Ljava/net/Socket;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object p4, p1, Ldf/a;->h:Lokio/BufferedSource;

    invoke-interface {p4}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p4

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v0, v1, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object p4, p1, Ldf/a;->i:Lokio/BufferedSink;

    invoke-interface {p4}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p4

    int-to-long v0, p3

    invoke-virtual {p4, v0, v1, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    new-instance p2, Lcom/squareup/okhttp/internal/http/d;

    iget-object p3, p1, Ldf/a;->h:Lokio/BufferedSource;

    iget-object p4, p1, Ldf/a;->i:Lokio/BufferedSink;

    invoke-direct {p2, p0, p3, p4}, Lcom/squareup/okhttp/internal/http/d;-><init>(Lcom/squareup/okhttp/internal/http/n;Lokio/BufferedSource;Lokio/BufferedSink;)V

    :goto_0
    iget-object p3, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget p4, p1, Ldf/a;->g:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p1, Ldf/a;->g:I

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    monitor-exit p3

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    new-instance p2, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {p2, p1}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public l()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/squareup/okhttp/internal/http/n;->f(ZZZ)V

    return-void
.end method

.method public m(Lcom/squareup/okhttp/internal/http/RouteException;)Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/n;->e(Ljava/io/IOException;)V

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/l;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/n;->i(Lcom/squareup/okhttp/internal/http/RouteException;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public n(Ljava/io/IOException;Lokio/Sink;)Z
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->d:Ldf/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Ldf/a;->g:I

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/n;->e(Ljava/io/IOException;)V

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_2

    instance-of p2, p2, Lcom/squareup/okhttp/internal/http/k;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v2

    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/l;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/n;->j(Ljava/io/IOException;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/squareup/okhttp/internal/http/n;->f(ZZZ)V

    return-void
.end method

.method public r(Lcom/squareup/okhttp/internal/http/HttpStream;)V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    if-ne p1, v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/squareup/okhttp/internal/http/n;->f(ZZZ)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/Address;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
