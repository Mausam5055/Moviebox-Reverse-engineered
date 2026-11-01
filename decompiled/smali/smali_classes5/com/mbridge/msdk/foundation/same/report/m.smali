.class public Lcom/mbridge/msdk/foundation/same/report/m;
.super Lcom/mbridge/msdk/tracker/network/toolbox/a;


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final a:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/report/m;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/network/toolbox/a;-><init>()V

    iput-byte p1, p0, Lcom/mbridge/msdk/foundation/same/report/m;->a:B

    return-void
.end method

.method private static a(Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static a(Ljava/net/Socket;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/tracker/network/t;Ljava/util/Map;)Lcom/mbridge/msdk/tracker/network/toolbox/g;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mbridge/msdk/tracker/network/toolbox/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean p2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SocketStack executeRequest "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->k()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p2, 0x0

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->k()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v1, :cond_a

    const/16 v2, 0x8

    :try_start_2
    new-array v3, v2, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-byte v5, p0, Lcom/mbridge/msdk/foundation/same/report/m;->a:B

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->b()[B

    move-result-object p1

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    array-length v6, p1

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v10, v1

    move-object v1, p2

    :goto_0
    move-object p2, v10

    goto/16 :goto_7

    :cond_2
    :goto_1
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_2
    sget-object v6, Lcom/mbridge/msdk/foundation/same/report/m;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    array-length v7, p1

    if-nez v7, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/same/report/m;->a([B)[B

    move-result-object p1

    if-nez p1, :cond_4

    move v7, v6

    goto :goto_3

    :cond_4
    array-length v7, p1

    :goto_3
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    :cond_5
    :goto_4
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    new-array v7, v2, [B

    invoke-virtual {p1, v7, v6, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    aget-byte v4, v7, v5

    const/4 v7, 0x2

    if-ne v4, v7, :cond_6

    move v4, v5

    goto :goto_6

    :cond_6
    move v4, v6

    :goto_6
    new-array v7, v2, [B

    new-instance v8, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8, v7}, Ljava/io/DataInputStream;->readFully([B)V

    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    new-instance v4, Lcom/mbridge/msdk/tracker/network/toolbox/g;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0xcc

    invoke-direct {v4, v6, v5, v2, p2}, Lcom/mbridge/msdk/tracker/network/toolbox/g;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/net/Socket;)V

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/nio/ByteBuffer;)V

    return-object v4

    :catchall_1
    move-exception p2

    move-object v10, v1

    move-object v1, p1

    move-object p1, p2

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0x1f4

    if-ge v2, v5, :cond_8

    :try_start_5
    new-instance v2, Lcom/mbridge/msdk/tracker/network/toolbox/g;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v4, v5, v6, p2}, Lcom/mbridge/msdk/tracker/network/toolbox/g;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/net/Socket;)V

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/nio/ByteBuffer;)V

    return-object v2

    :cond_8
    :try_start_6
    aget-byte v7, v7, v6

    if-ne v7, v5, :cond_9

    new-instance v4, Lcom/mbridge/msdk/tracker/network/toolbox/g;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0xc8

    invoke-direct {v4, v6, v5, v2, p2}, Lcom/mbridge/msdk/tracker/network/toolbox/g;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/net/Socket;)V

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/nio/ByteBuffer;)V

    return-object v4

    :cond_9
    :try_start_7
    new-instance v2, Lcom/mbridge/msdk/tracker/network/toolbox/g;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v4, v5, v6, p2}, Lcom/mbridge/msdk/tracker/network/toolbox/g;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/net/Socket;)V

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/nio/ByteBuffer;)V

    return-object v2

    :catchall_2
    move-exception p1

    move-object v3, p2

    move-object p2, v1

    move-object v1, v3

    goto :goto_7

    :cond_a
    :try_start_8
    new-instance p1, Ljava/io/IOException;

    const-string v2, "create outputStream exception"

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_3
    move-exception p1

    move-object v1, p2

    move-object v3, v1

    :goto_7
    move-object v10, v0

    move-object v0, p2

    move-object p2, v10

    goto :goto_8

    :catchall_4
    move-exception p1

    move-object v0, p2

    move-object v1, v0

    move-object v3, v1

    :goto_8
    :try_start_9
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception p1

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/io/OutputStream;)V

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/net/Socket;)V

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/same/report/m;->a(Ljava/nio/ByteBuffer;)V

    throw p1
.end method

.method public a([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
