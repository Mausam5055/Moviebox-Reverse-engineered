.class public Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;
.super Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;ILjava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->o()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;-><init>(Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->H(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->j()Lcom/transsion/transfer/androidasync/o;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    return-void
.end method

.method public H(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->o()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$2;-><init>(Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->H(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->j()Lcom/transsion/transfer/androidasync/o;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    return-void
.end method
