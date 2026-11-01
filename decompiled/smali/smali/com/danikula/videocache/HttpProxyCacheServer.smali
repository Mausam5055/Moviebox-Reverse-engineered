.class public Lcom/danikula/videocache/HttpProxyCacheServer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/HttpProxyCacheServer$a;,
        Lcom/danikula/videocache/HttpProxyCacheServer$WaitRequestsRunnable;,
        Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/Map;

.field private d:Ljava/net/ServerSocket;

.field private e:I

.field private f:Ljava/lang/Thread;

.field private g:Lcom/danikula/videocache/c;

.field private h:Lcom/danikula/videocache/j;


# direct methods
.method private constructor <init>(Lcom/danikula/videocache/c;)V
    .locals 4

    const-string v0, "127.0.0.1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->a:Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/danikula/videocache/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/danikula/videocache/c;

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->g:Lcom/danikula/videocache/c;

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    new-instance v2, Ljava/net/ServerSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->d:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->e:I

    invoke-static {v0, p1}, Lcom/danikula/videocache/i;->a(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/danikula/videocache/HttpProxyCacheServer$WaitRequestsRunnable;

    invoke-direct {v2, p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$WaitRequestsRunnable;-><init>(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->f:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    new-instance p1, Lcom/danikula/videocache/j;

    iget v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->e:I

    invoke-direct {p1, v0, v1}, Lcom/danikula/videocache/j;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->h:Lcom/danikula/videocache/j;

    const-string p1, "init success"

    invoke-static {p1}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iget-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/danikula/videocache/c;Lcom/danikula/videocache/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;-><init>(Lcom/danikula/videocache/c;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/net/Socket;Lcom/danikula/videocache/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/danikula/videocache/HttpProxyCacheServer;->n(Ljava/net/Socket;Lcom/danikula/videocache/d;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/danikula/videocache/HttpProxyCacheServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->p()V

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/danikula/videocache/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "127.0.0.1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object p1, v2, v1

    const-string p1, "http://%s:%d/%s"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/net/Socket;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/danikula/videocache/ProxyCacheException;

    const-string v1, "Error closing socket"

    invoke-direct {v0, v1, p1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/danikula/videocache/HttpProxyCacheServer;->m(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private e(Ljava/net/Socket;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/danikula/videocache/ProxyCacheException;

    const-string v1, "Error closing socket input stream"

    invoke-direct {v0, v1, p1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/danikula/videocache/HttpProxyCacheServer;->m(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    const-string p1, "Releasing input stream\u2026 Socket is closed by client."

    invoke-static {p1}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private f(Ljava/net/Socket;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to close socket on proxy side: {}. It seems client have already closed connection."

    invoke-static {p1}, Lcom/danikula/videocache/q;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private h(Ljava/lang/String;)Lcom/danikula/videocache/g;
    .locals 3

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danikula/videocache/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/danikula/videocache/g;

    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->g:Lcom/danikula/videocache/c;

    invoke-direct {v1, p1, v2}, Lcom/danikula/videocache/g;-><init>(Ljava/lang/String;Lcom/danikula/videocache/c;)V

    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private i()I
    .locals 4

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danikula/videocache/g;

    invoke-virtual {v3}, Lcom/danikula/videocache/g;->b()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private l()Z
    .locals 3

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->h:Lcom/danikula/videocache/j;

    const/4 v1, 0x3

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Lcom/danikula/videocache/j;->e(II)Z

    move-result v0

    return v0
.end method

.method private m(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "HttpProxyCacheServer error"

    invoke-static {p1}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    return-void
.end method

.method private n(Ljava/net/Socket;Lcom/danikula/videocache/d;)V
    .locals 5

    const-string v0, "Opened connections: "

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p2, Lcom/danikula/videocache/d;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/danikula/videocache/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request to cache proxy\uff0c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->h:Lcom/danikula/videocache/j;

    invoke-virtual {v3, v2}, Lcom/danikula/videocache/j;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->h:Lcom/danikula/videocache/j;

    invoke-virtual {p2, p1}, Lcom/danikula/videocache/j;->g(Ljava/net/Socket;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    invoke-direct {p0, v2}, Lcom/danikula/videocache/HttpProxyCacheServer;->h(Ljava/lang/String;)Lcom/danikula/videocache/g;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/danikula/videocache/g;->d(Lcom/danikula/videocache/d;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->o(Ljava/net/Socket;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/danikula/videocache/g;->f()V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->i()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    :try_start_1
    new-instance v2, Lcom/danikula/videocache/ProxyCacheException;

    const-string v3, "Error processing request"

    invoke-direct {v2, v3, p2}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/danikula/videocache/HttpProxyCacheServer;->m(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->o(Ljava/net/Socket;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/danikula/videocache/g;->f()V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_4

    :catch_0
    :try_start_2
    const-string p2, "Closing socket\u2026 Socket is closed by client."

    invoke-static {p2}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->o(Ljava/net/Socket;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/danikula/videocache/g;->f()V

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->o(Ljava/net/Socket;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/danikula/videocache/g;->f()V

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    throw p2
.end method

.method private o(Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->e(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->f(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->d(Ljava/net/Socket;)V

    return-void
.end method

.method private p()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitForRequest~ isInterrupted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept new socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/danikula/videocache/q;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/danikula/videocache/d;->c(Ljava/io/InputStream;)Lcom/danikula/videocache/d;

    move-result-object v1

    iget-object v2, v1, Lcom/danikula/videocache/d;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/danikula/videocache/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danikula/videocache/g;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/danikula/videocache/g;->f()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->h:Lcom/danikula/videocache/j;

    invoke-virtual {v3, v2}, Lcom/danikula/videocache/j;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/transsnet/downloader/util/i;->a:Lcom/transsnet/downloader/util/i;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Lcom/transsnet/downloader/util/i;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;

    invoke-direct {v3, p0, v0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;-><init>(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/net/Socket;Lcom/danikula/videocache/d;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForRequest error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/danikula/videocache/q;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer;->m(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danikula/videocache/g;

    invoke-virtual {v2}, Lcom/danikula/videocache/g;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/danikula/videocache/HttpProxyCacheServer;->k(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p4, :cond_1

    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
