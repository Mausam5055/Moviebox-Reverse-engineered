.class public Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/j;


# instance fields
.field a:Ljava/net/InetSocketAddress;

.field private b:Lcom/transsion/transfer/androidasync/o;

.field private c:Ljava/nio/channels/SelectionKey;

.field private d:Lcom/transsion/transfer/androidasync/AsyncServer;

.field private e:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field f:Lcom/transsion/transfer/androidasync/util/a;

.field g:Z

.field h:Lbv/j;

.field i:Lbv/d;

.field j:Lbv/a;

.field k:Z

.field l:Ljava/lang/Exception;

.field private m:Lbv/a;

.field n:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->e:Lcom/transsion/transfer/androidasync/ByteBufferList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    return-void
.end method

.method private C()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->e:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->e:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-static {p0, v0}, Lcom/transsion/transfer/androidasync/a0;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/o;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private k(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public I()Lbv/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->i:Lbv/d;

    return-object v0
.end method

.method public a()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    return-object v0
.end method

.method public close()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->g()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->r(Ljava/lang/Exception;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/o;->l()V

    return-void
.end method

.method f(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->a:Ljava/net/InetSocketAddress;

    new-instance p2, Lcom/transsion/transfer/androidasync/util/a;

    invoke-direct {p2}, Lcom/transsion/transfer/androidasync/util/a;-><init>()V

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->f:Lcom/transsion/transfer/androidasync/util/a;

    new-instance p2, Lcom/transsion/transfer/androidasync/z;

    invoke-direct {p2, p1}, Lcom/transsion/transfer/androidasync/z;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    return-void
.end method

.method public i()Lbv/j;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->h:Lbv/j;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/o;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    return v0
.end method

.method j()Lcom/transsion/transfer/androidasync/o;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    return-object v0
.end method

.method public l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->o()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    new-instance v1, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;-><init>(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->H(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/o;->h()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->k()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    invoke-virtual {v2, v1}, Lcom/transsion/transfer/androidasync/o;->m([Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1, v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->b([Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->k(I)V

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->C(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->g()V

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->w(Ljava/lang/Exception;)V

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->r(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/o;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->h:Lbv/j;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lbv/j;->a()V

    :cond_1
    return-void
.end method

.method public o(Lbv/j;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->h:Lbv/j;

    return-void
.end method

.method public p(Lbv/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->j:Lbv/a;

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->o()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    new-instance v1, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$2;

    invoke-direct {v1, p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$2;-><init>(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->H(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method q()I
    .locals 8

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->C()V

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->f:Lcom/transsion/transfer/androidasync/util/a;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    invoke-interface {v2, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->g()V

    invoke-virtual {p0, v2}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->w(Ljava/lang/Exception;)V

    invoke-virtual {p0, v2}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->r(Ljava/lang/Exception;)V

    const-wide/16 v2, -0x1

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->g()V

    const/4 v5, 0x1

    move v7, v5

    move v5, v1

    move v1, v7

    goto :goto_1

    :cond_1
    int-to-long v5, v1

    add-long/2addr v5, v2

    long-to-int v5, v5

    :goto_1
    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->f:Lcom/transsion/transfer/androidasync/util/a;

    invoke-virtual {v4, v2, v3}, Lcom/transsion/transfer/androidasync/util/a;->e(J)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->e:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->e:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-static {p0, v0}, Lcom/transsion/transfer/androidasync/a0;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    :goto_2
    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->w(Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->r(Ljava/lang/Exception;)V

    :cond_3
    return v5
.end method

.method protected r(Ljava/lang/Exception;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->g:Z

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->j:Lbv/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->j:Lbv/a;

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->o()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    new-instance v1, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$3;

    invoke-direct {v1, p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$3;-><init>(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->H(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->C()V

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->l:Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->w(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public s(Lbv/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->m:Lbv/a;

    return-void
.end method

.method public t(Lbv/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->i:Lbv/d;

    return-void
.end method

.method u(Ljava/lang/Exception;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->k:Z

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->m:Lbv/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "NIO"

    const-string v1, "Unhandled exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method w(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->e:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->l:Ljava/lang/Exception;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->u(Ljava/lang/Exception;)V

    return-void
.end method

.method y(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    return-void
.end method
