.class Lcom/transsion/transfer/androidasync/z;
.super Lcom/transsion/transfer/androidasync/o;


# instance fields
.field b:Ljava/nio/channels/SocketChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/o;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/z;->b:Ljava/nio/channels/SocketChannel;

    return-void
.end method


# virtual methods
.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/z;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public i(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/transsion/transfer/androidasync/o;->k(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    return-object p1
.end method

.method public l()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/z;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public m([Ljava/nio/ByteBuffer;)I
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/z;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/z;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/z;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->read([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/z;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/SocketChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide p1

    return-wide p1
.end method
