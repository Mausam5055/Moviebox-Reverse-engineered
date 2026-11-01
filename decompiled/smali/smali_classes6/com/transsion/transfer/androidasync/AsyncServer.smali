.class public Lcom/transsion/transfer/androidasync/AsyncServer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;,
        Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;,
        Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;,
        Lcom/transsion/transfer/androidasync/AsyncServer$d;,
        Lcom/transsion/transfer/androidasync/AsyncServer$b;,
        Lcom/transsion/transfer/androidasync/AsyncServer$c;,
        Lcom/transsion/transfer/androidasync/AsyncServer$AsyncSelectorException;
    }
.end annotation


# static fields
.field static g:Lcom/transsion/transfer/androidasync/AsyncServer;

.field private static h:Ljava/util/concurrent/ExecutorService;

.field private static final i:Ljava/util/Comparator;

.field private static j:Ljava/util/concurrent/ExecutorService;

.field private static final k:Ljava/lang/ThreadLocal;


# instance fields
.field private a:Lcom/transsion/transfer/androidasync/x;

.field b:Ljava/lang/String;

.field c:Z

.field d:I

.field e:Ljava/util/PriorityQueue;

.field f:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;-><init>()V

    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->g:Lcom/transsion/transfer/androidasync/AsyncServer;

    const-string v0, "AsyncServer-worker-"

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->A(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/transsion/transfer/androidasync/AsyncServer$5;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/AsyncServer$5;-><init>()V

    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->i:Ljava/util/Comparator;

    const-string v0, "AsyncServer-resolver-"

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->A(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->k:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->d:I

    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;->INSTANCE:Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    if-nez p1, :cond_0

    const-string p1, "AsyncServer"

    :cond_0
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->b:Ljava/lang/String;

    return-void
.end method

.method private static A(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 8

    new-instance v7, Lcom/transsion/transfer/androidasync/AsyncServer$c;

    invoke-direct {v7, p0}, Lcom/transsion/transfer/androidasync/AsyncServer$c;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-wide/16 v3, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object p0
.end method

.method private F()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/transsion/transfer/androidasync/x;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/transfer/androidasync/x;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Lcom/transsion/transfer/androidasync/AsyncServer$8;

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->b:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer$8;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/String;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V

    iput-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->f:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to create selector?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p0, v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->I(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    :try_end_3
    .catch Lcom/transsion/transfer/androidasync/AsyncServer$AsyncSelectorException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    :try_start_4
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/x;->d()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_0
    return-void

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private static G(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/androidasync/AsyncServer;->I(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catch Lcom/transsion/transfer/androidasync/AsyncServer$AsyncSelectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/nio/channels/ClosedSelectorException;

    new-array v1, v0, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    :goto_1
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->h()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_2
    monitor-exit p0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->J(Lcom/transsion/transfer/androidasync/x;)V

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    if-ne p2, p1, :cond_2

    new-instance p1, Ljava/util/PriorityQueue;

    sget-object p2, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;->INSTANCE:Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;

    invoke-direct {p1, v0, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->f:Ljava/lang/Thread;

    :cond_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static I(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p2}, Lcom/transsion/transfer/androidasync/AsyncServer;->z(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/util/PriorityQueue;)J

    move-result-wide v2

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->m()I

    move-result p2

    const-wide v4, 0x7fffffffffffffffL

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->h()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_0

    cmp-long p2, v2, v4

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    cmp-long p2, v2, v4

    if-nez p2, :cond_2

    :try_start_2
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->k()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p1, v2, v3}, Lcom/transsion/transfer/androidasync/x;->l(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->n()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_1
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/ServerSocketChannel;
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    :try_start_5
    invoke-virtual {v4, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->d()Ljava/nio/channels/Selector;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbv/f;

    new-instance v6, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    invoke-direct {v6}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;-><init>()V

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    check-cast v7, Ljava/net/InetSocketAddress;

    invoke-virtual {v6, v4, v7}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->f(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    invoke-virtual {v6, p0, v5}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->y(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    invoke-virtual {v5, v6}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v6}, Lbv/f;->w(Lcom/transsion/transfer/androidasync/j;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_2
    move-object v3, v5

    move-object v5, v4

    goto :goto_3

    :catch_3
    move-object v3, v5

    :goto_3
    :try_start_6
    new-array v4, v0, [Ljava/io/Closeable;

    aput-object v5, v4, v1

    invoke-static {v4}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    invoke-virtual {v3}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->q()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/transsion/transfer/androidasync/AsyncServer;->B(I)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    invoke-virtual {v3}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->m()V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/transfer/androidasync/AsyncServer$b;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    new-instance v7, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    invoke-direct {v7}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;-><init>()V

    invoke-virtual {v7, p0, v3}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->y(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v6, v8}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->f(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    invoke-virtual {v3, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-virtual {v4, v7}, Lcom/transsion/transfer/androidasync/future/w;->J(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v4, Lcom/transsion/transfer/androidasync/AsyncServer$b;->g:Lbv/b;

    invoke-interface {v3, v5, v7}, Lbv/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    goto/16 :goto_2

    :catch_4
    move-exception v7

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    new-array v3, v0, [Ljava/io/Closeable;

    aput-object v6, v3, v1

    invoke-static {v3}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    invoke-virtual {v4, v7}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v4, Lcom/transsion/transfer/androidasync/AsyncServer$b;->g:Lbv/b;

    invoke-interface {v3, v7, v5}, Lbv/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    goto/16 :goto_2

    :cond_9
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unknown key state."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_a
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    return-void

    :goto_4
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :goto_5
    new-instance p1, Lcom/transsion/transfer/androidasync/AsyncServer$AsyncSelectorException;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/androidasync/AsyncServer$AsyncSelectorException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private static J(Lcom/transsion/transfer/androidasync/x;)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->K(Lcom/transsion/transfer/androidasync/x;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    return-void
.end method

.method private static K(Lcom/transsion/transfer/androidasync/x;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/x;->h()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method

.method private static N(Lcom/transsion/transfer/androidasync/x;)V
    .locals 2

    sget-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/transsion/transfer/androidasync/e;

    invoke-direct {v1, p0}, Lcom/transsion/transfer/androidasync/e;-><init>(Lcom/transsion/transfer/androidasync/x;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->v(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/transfer/androidasync/x;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->x(Lcom/transsion/transfer/androidasync/x;)V

    return-void
.end method

.method public static synthetic c([Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->u([Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/transfer/androidasync/x;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->w(Lcom/transsion/transfer/androidasync/x;)V

    return-void
.end method

.method static bridge synthetic e(Lcom/transsion/transfer/androidasync/AsyncServer;)Lcom/transsion/transfer/androidasync/x;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->s(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;)V

    return-void
.end method

.method static bridge synthetic g()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->i:Ljava/util/Comparator;

    return-object v0
.end method

.method static bridge synthetic h()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->k:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic i(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/androidasync/AsyncServer;->G(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V

    return-void
.end method

.method static bridge synthetic j(Lcom/transsion/transfer/androidasync/x;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->J(Lcom/transsion/transfer/androidasync/x;)V

    return-void
.end method

.method public static r()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->g:Lcom/transsion/transfer/androidasync/AsyncServer;

    return-object v0
.end method

.method private s(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->j()Lcom/transsion/transfer/androidasync/o;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/x;->d()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/o;->i(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->y(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

.method private static synthetic u([Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static synthetic v(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method private static synthetic w(Lcom/transsion/transfer/androidasync/x;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/x;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static synthetic x(Lcom/transsion/transfer/androidasync/x;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/x;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static z(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/util/PriorityQueue;)J
    .locals 9

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    invoke-virtual {p1}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;

    iget-wide v6, v4, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->time:J

    cmp-long v8, v6, v2

    if-gtz v8, :cond_0

    move-object v5, v4

    goto :goto_1

    :cond_0
    sub-long/2addr v6, v2

    invoke-virtual {p1, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move-wide v0, v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->d:I

    return-wide v0

    :cond_2
    invoke-virtual {v5}, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->run()V

    goto :goto_0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method protected B(I)V
    .locals 0

    return-void
.end method

.method protected C(I)V
    .locals 0

    return-void
.end method

.method public D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->E(Ljava/lang/Runnable;J)Lcom/transsion/transfer/androidasync/future/a;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/lang/Runnable;J)Lcom/transsion/transfer/androidasync/future/a;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->c:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/transsion/transfer/androidasync/future/n;->CANCELLED:Lcom/transsion/transfer/androidasync/future/a;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->d:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->d:I

    int-to-long v0, p2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;

    iget-wide p2, p2, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->time:J

    const-wide/16 v2, 0x1

    sub-long/2addr p2, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    new-instance p3, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;

    invoke-direct {p3, p0, p1, v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Runnable;J)V

    invoke-virtual {p2, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->F()V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->t()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->N(Lcom/transsion/transfer/androidasync/x;)V

    :cond_5
    monitor-exit p0

    return-object p3

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public H(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->f:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->z(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/util/PriorityQueue;)J

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->c:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v1, Lcom/transsion/transfer/androidasync/d;

    invoke-direct {v1, p1, v0}, Lcom/transsion/transfer/androidasync/d;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NIO"

    const-string v1, "run"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->M(Z)V

    return-void
.end method

.method public M(Z)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->t()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    new-instance v4, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;

    new-instance v5, Lcom/transsion/transfer/androidasync/AsyncServer$1;

    invoke-direct {v5, p0, v1, v2}, Lcom/transsion/transfer/androidasync/AsyncServer$1;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/concurrent/Semaphore;)V

    const-wide/16 v6, 0x0

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Runnable;J)V

    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/transsion/transfer/androidasync/AsyncServer;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/transsion/transfer/androidasync/f;

    invoke-direct {v4, v1}, Lcom/transsion/transfer/androidasync/f;-><init>(Lcom/transsion/transfer/androidasync/x;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->K(Lcom/transsion/transfer/androidasync/x;)V

    new-instance v1, Ljava/util/PriorityQueue;

    sget-object v3, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;->INSTANCE:Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    iput-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->f:Ljava/lang/Thread;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public k(Ljava/net/InetSocketAddress;Lbv/b;Lbv/h;)Lcom/transsion/transfer/androidasync/AsyncServer$b;
    .locals 8

    new-instance v6, Lcom/transsion/transfer/androidasync/AsyncServer$b;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/transsion/transfer/androidasync/AsyncServer$b;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/h;)V

    new-instance v7, Lcom/transsion/transfer/androidasync/AsyncServer$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/AsyncServer$3;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/AsyncServer$b;Lbv/b;Lbv/h;Ljava/net/InetSocketAddress;)V

    invoke-virtual {p0, v7}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    return-object v6
.end method

.method public l(Ljava/net/InetSocketAddress;Lbv/b;)Lcom/transsion/transfer/androidasync/future/a;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->k(Ljava/net/InetSocketAddress;Lbv/b;Lbv/h;)Lcom/transsion/transfer/androidasync/AsyncServer$b;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;ILbv/b;)Lcom/transsion/transfer/androidasync/future/a;
    .locals 0

    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/transsion/transfer/androidasync/AsyncServer;->n(Ljava/net/InetSocketAddress;Lbv/b;)Lcom/transsion/transfer/androidasync/future/a;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/net/InetSocketAddress;Lbv/b;)Lcom/transsion/transfer/androidasync/future/a;
    .locals 3

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/androidasync/AsyncServer;->l(Ljava/net/InetSocketAddress;Lbv/b;)Lcom/transsion/transfer/androidasync/future/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->q(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    new-instance v2, Lcom/transsion/transfer/androidasync/AsyncServer$a;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer$a;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Lbv/b;Lcom/transsion/transfer/androidasync/future/w;Ljava/net/InetSocketAddress;)V

    invoke-interface {v1, v2}, Lcom/transsion/transfer/androidasync/future/f;->f(Lcom/transsion/transfer/androidasync/future/g;)V

    return-object v0
.end method

.method public o()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->f:Ljava/lang/Thread;

    return-object v0
.end method

.method public p(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 3

    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    sget-object v1, Lcom/transsion/transfer/androidasync/AsyncServer;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/transsion/transfer/androidasync/AsyncServer$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/transsion/transfer/androidasync/AsyncServer$6;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/String;Lcom/transsion/transfer/androidasync/future/w;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->p(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    new-instance v0, Lcom/transsion/transfer/androidasync/g;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/g;-><init>()V

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/future/f;->h(Lcom/transsion/transfer/androidasync/future/y;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    return-object p1
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->f:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y(Ljava/net/InetAddress;ILbv/f;)Lcom/transsion/transfer/androidasync/i;
    .locals 8

    new-instance v6, Lcom/transsion/transfer/androidasync/AsyncServer$d;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/transsion/transfer/androidasync/AsyncServer$d;-><init>(Lcom/transsion/transfer/androidasync/h;)V

    new-instance v7, Lcom/transsion/transfer/androidasync/AsyncServer$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/AsyncServer$2;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/net/InetAddress;ILbv/f;Lcom/transsion/transfer/androidasync/AsyncServer$d;)V

    invoke-virtual {p0, v7}, Lcom/transsion/transfer/androidasync/AsyncServer;->H(Ljava/lang/Runnable;)V

    iget-object p1, v6, Lcom/transsion/transfer/androidasync/AsyncServer$d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/transfer/androidasync/i;

    return-object p1
.end method
