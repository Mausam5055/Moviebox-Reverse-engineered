.class public Lcom/mbridge/msdk/foundation/same/net/f$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/net/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/mbridge/msdk/foundation/same/net/b;

.field private e:Ljava/io/OutputStream;

.field private f:I

.field private g:Ljava/net/Socket;

.field private h:Ljava/lang/String;

.field final synthetic i:Lcom/mbridge/msdk/foundation/same/net/f;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/net/f;Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/same/net/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->i:Lcom/mbridge/msdk/foundation/same/net/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->f:I

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->h:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->c:Z

    iput-object p6, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->d:Lcom/mbridge/msdk/foundation/same/net/b;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->d:Lcom/mbridge/msdk/foundation/same/net/b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Unknown exception"

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x194

    invoke-direct {v0, v2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;-><init>(I[BLjava/util/List;)V

    new-instance p1, Lcom/mbridge/msdk/foundation/same/net/exception/a;

    const/16 v1, 0xd

    invoke-direct {p1, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/exception/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/toolbox/a;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->d:Lcom/mbridge/msdk/foundation/same/net/b;

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/b;->onError(Lcom/mbridge/msdk/foundation/same/net/exception/a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 15

    const-string v0, " length : "

    const-string v1, "SocketManager"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->b:Ljava/lang/String;

    iget v5, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->f:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->g:Ljava/net/Socket;

    const/16 v4, 0x3a98

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v4

    iget-object v4, v4, Lcom/mbridge/msdk/foundation/same/net/utils/d;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v6

    iget-object v6, v6, Lcom/mbridge/msdk/foundation/same/net/utils/d;->l:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Socket connect : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isAnalytics : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->g:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->e:Ljava/io/OutputStream;

    const/16 v6, 0x8

    new-array v7, v6, [B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->h:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v10, 0x3

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_2
    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    iget-boolean v11, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->c:Z

    if-eqz v11, :cond_3

    move v11, v10

    goto :goto_2

    :cond_3
    move v11, v9

    :goto_2
    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_3
    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/f;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    int-to-short v11, v11

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->h:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->e:Ljava/io/OutputStream;

    iget-object v11, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/OutputStream;->write([B)V

    move v11, v4

    goto :goto_5

    :cond_4
    iget-boolean v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->c:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->i:Lcom/mbridge/msdk/foundation/same/net/f;

    iget-object v11, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->h:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lcom/mbridge/msdk/foundation/same/net/f;->a(Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_4

    :cond_5
    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->h:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    :goto_4
    array-length v11, v7

    iget-object v12, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v12, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->e:Ljava/io/OutputStream;

    iget-object v13, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    iget-object v12, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->e:Ljava/io/OutputStream;

    invoke-virtual {v12, v7}, Ljava/io/OutputStream;->write([B)V

    :goto_5
    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->e:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Socket Request : header : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->g:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    new-array v11, v6, [B

    invoke-virtual {v7, v11, v4, v6}, Ljava/io/InputStream;->read([BII)I

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    aget-byte v12, v11, v5

    if-ne v12, v10, :cond_6

    move v10, v5

    goto :goto_6

    :cond_6
    move v10, v4

    :goto_6
    if-ne v12, v9, :cond_7

    move v12, v5

    goto :goto_7

    :cond_7
    move v12, v4

    :goto_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Socket Response : header : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isGzip : "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v8, [B

    new-instance v11, Ljava/io/DataInputStream;

    iget-object v13, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->g:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v11, v0}, Ljava/io/DataInputStream;->readFully([B)V

    if-nez v10, :cond_8

    if-le v8, v9, :cond_8

    aget-byte v9, v0, v4

    shl-int/lit8 v6, v9, 0x8

    aget-byte v9, v0, v5

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v6, v9

    const/16 v9, 0x1f8b

    if-ne v6, v9, :cond_8

    move v10, v5

    :cond_8
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->d:Lcom/mbridge/msdk/foundation/same/net/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_a

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->g:Ljava/net/Socket;

    if-eqz v0, :cond_9

    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_8
    return-void

    :cond_a
    if-eqz v12, :cond_c

    if-nez v8, :cond_c

    :try_start_2
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;

    const/16 v3, 0xcc

    invoke-direct {v0, v3, v2, v2}, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;-><init>(I[BLjava/util/List;)V

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/same/net/e;->a(Ljava/lang/Object;Lcom/mbridge/msdk/foundation/same/net/toolbox/a;)Lcom/mbridge/msdk/foundation/same/net/e;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/mbridge/msdk/foundation/same/net/b;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->g:Ljava/net/Socket;

    if-eqz v0, :cond_b

    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_9
    return-void

    :cond_c
    if-ge v8, v5, :cond_e

    :try_start_4
    const-string v0, "The response data less than 1"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/net/f$c;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->g:Ljava/net/Socket;

    if-eqz v0, :cond_d

    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_a
    return-void

    :cond_e
    const/16 v9, 0xc8

    if-eqz v3, :cond_11

    :try_start_6
    aget-byte v0, v0, v4

    if-ne v0, v5, :cond_f

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;

    invoke-direct {v0, v9, v2, v2}, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;-><init>(I[BLjava/util/List;)V

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/same/net/e;->a(Ljava/lang/Object;Lcom/mbridge/msdk/foundation/same/net/toolbox/a;)Lcom/mbridge/msdk/foundation/same/net/e;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/mbridge/msdk/foundation/same/net/b;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/e;)V

    goto :goto_b

    :cond_f
    const-string v0, "The server returns fail"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/net/f$c;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_b
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->g:Ljava/net/Socket;

    if-eqz v0, :cond_10

    :try_start_7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_c
    return-void

    :cond_11
    if-eqz v10, :cond_12

    :try_start_8
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->i:Lcom/mbridge/msdk/foundation/same/net/f;

    invoke-virtual {v3, v0}, Lcom/mbridge/msdk/foundation/same/net/f;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_f

    :cond_12
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v3

    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :cond_13
    move-object v3, v2

    :goto_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Socket Response length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->d:Lcom/mbridge/msdk/foundation/same/net/b;

    new-instance v4, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;

    invoke-direct {v4, v9, v2, v2}, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;-><init>(I[BLjava/util/List;)V

    invoke-static {v3, v4}, Lcom/mbridge/msdk/foundation/same/net/e;->a(Ljava/lang/Object;Lcom/mbridge/msdk/foundation/same/net/toolbox/a;)Lcom/mbridge/msdk/foundation/same/net/e;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/mbridge/msdk/foundation/same/net/b;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_10

    :goto_f
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v3, "The JSON data is illegal"

    :cond_14
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/foundation/same/net/f$c;->a(Ljava/lang/String;)V

    :goto_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->g:Ljava/net/Socket;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_12

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/net/f$c;->a(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->g:Ljava/net/Socket;

    if-eqz v0, :cond_15

    :try_start_c
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_12

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_12
    return-void

    :catchall_2
    move-exception v0

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->g:Ljava/net/Socket;

    if-eqz v3, :cond_16

    :try_start_d
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/f$c;->e:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_13

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_13
    throw v0
.end method
