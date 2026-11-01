.class Lcom/danikula/videocache/e;
.super Lcom/danikula/videocache/m;


# instance fields
.field private i:Lcom/danikula/videocache/b;

.field private final j:Lcom/danikula/videocache/a;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/danikula/videocache/m;-><init>(Lcom/danikula/videocache/a;)V

    iput-object p1, p0, Lcom/danikula/videocache/e;->j:Lcom/danikula/videocache/a;

    return-void
.end method

.method private varargs i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j(Lcom/danikula/videocache/d;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v4, v0, Lcom/danikula/videocache/e;->j:Lcom/danikula/videocache/a;

    invoke-interface {v4}, Lcom/danikula/videocache/a;->z()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    iget-object v6, v0, Lcom/danikula/videocache/e;->j:Lcom/danikula/videocache/a;

    invoke-interface {v6}, Lcom/danikula/videocache/a;->A()J

    move-result-wide v6

    iget-object v8, v0, Lcom/danikula/videocache/e;->j:Lcom/danikula/videocache/a;

    invoke-interface {v8}, Lcom/danikula/videocache/a;->G()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/danikula/videocache/d;->b:J

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    iget-boolean v13, v1, Lcom/danikula/videocache/d;->c:Z

    if-eqz v13, :cond_1

    sub-long v14, v6, v10

    goto :goto_1

    :cond_1
    move-wide v14, v6

    :goto_1
    if-eqz v12, :cond_2

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "header\uff0c offset = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rangeEnd = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", totalSize = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", contentLength = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , contentType = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/danikula/videocache/q;->e(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, v1, Lcom/danikula/videocache/d;->c:Z

    if-eqz v1, :cond_3

    const-string v1, "HTTP/1.1 206 PARTIAL CONTENT\n"

    goto :goto_3

    :cond_3
    const-string v1, "HTTP/1.1 200 OK\n"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Accept-Ranges: bytes\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    if-eqz v12, :cond_4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v14, v12

    const-string v3, "Content-Length: %d\n"

    invoke-direct {v0, v3, v14}, Lcom/danikula/videocache/e;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v1

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v7, v9

    const/4 v3, 0x1

    aput-object v8, v7, v3

    const/4 v8, 0x2

    aput-object v6, v7, v8

    const-string v6, "Content-Range: bytes %d-%d/%d\n"

    invoke-direct {v0, v6, v7}, Lcom/danikula/videocache/e;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_5
    const/4 v3, 0x1

    move-object v6, v1

    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_6

    const-string v1, "Content-Type: %s\n"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v3}, Lcom/danikula/videocache/e;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private m(Ljava/io/OutputStream;JLjava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseWithCache\uff0c offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    const/16 v0, 0x2000

    new-array v7, v0, [B

    :goto_0
    move-object v1, p0

    move-object v2, v7

    move-wide v3, p2

    move v5, v0

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/danikula/videocache/m;->d([BJILjava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/danikula/videocache/m;->e:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v7, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v1, v1

    add-long/2addr p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "responseWithCache\uff0c --------------------end,offset = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\uff0c threadName = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/danikula/videocache/q;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public k(Lcom/danikula/videocache/d;Ljava/net/Socket;)V
    .locals 4

    iget-wide v0, p1, Lcom/danikula/videocache/d;->b:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRequest\uff0c offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c threadName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/danikula/videocache/q;->f(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/danikula/videocache/m;->a(J)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/danikula/videocache/e;->j(Lcom/danikula/videocache/d;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p1, Lcom/danikula/videocache/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/danikula/videocache/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/danikula/videocache/e;->m(Ljava/io/OutputStream;JLjava/lang/String;)V

    return-void
.end method

.method public l(Lcom/danikula/videocache/b;)V
    .locals 0

    iput-object p1, p0, Lcom/danikula/videocache/e;->i:Lcom/danikula/videocache/b;

    return-void
.end method
