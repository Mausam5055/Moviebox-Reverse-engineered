.class public Landroidx/media3/datasource/cronet/CronetDataSource;
.super Lw1/a;

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;,
        Landroidx/media3/datasource/cronet/CronetDataSource$c;,
        Landroidx/media3/datasource/cronet/CronetDataSource$b;
    }
.end annotation


# instance fields
.field private A:Ljava/io/IOException;

.field private B:Z

.field private volatile C:J

.field private final e:Lorg/chromium/net/CronetEngine;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:Z

.field private final l:Ljava/lang/String;

.field private final m:Landroidx/media3/datasource/HttpDataSource$b;

.field private final n:Landroidx/media3/datasource/HttpDataSource$b;

.field private final o:Landroidx/media3/common/util/l;

.field private final p:Landroidx/media3/common/util/i;

.field private final q:I

.field private final r:Lcom/google/common/base/n;

.field private final s:Z

.field private t:Z

.field private u:J

.field private v:Lorg/chromium/net/UrlRequest;

.field w:Landroidx/media3/datasource/cronet/CronetDataSource$c;

.field private x:Lw1/h;

.field private y:Ljava/nio/ByteBuffer;

.field private z:Lorg/chromium/net/UrlResponseInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.datasource.cronet"

    invoke-static {v0}, Landroidx/media3/common/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIIZZLjava/lang/String;Landroidx/media3/datasource/HttpDataSource$b;Lcom/google/common/base/n;ZI)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lw1/a;-><init>(Z)V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/CronetEngine;

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->e:Lorg/chromium/net/CronetEngine;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->f:Ljava/util/concurrent/Executor;

    iput p3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->g:I

    iput p4, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->h:I

    iput p5, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->i:I

    iput-boolean p6, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->j:Z

    iput-boolean p7, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->k:Z

    iput-object p8, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->l:Ljava/lang/String;

    iput-object p9, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->m:Landroidx/media3/datasource/HttpDataSource$b;

    iput-object p10, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->r:Lcom/google/common/base/n;

    iput-boolean p11, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->s:Z

    sget-object p1, Landroidx/media3/common/util/i;->a:Landroidx/media3/common/util/i;

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->p:Landroidx/media3/common/util/i;

    iput p12, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->q:I

    new-instance p1, Landroidx/media3/datasource/HttpDataSource$b;

    invoke-direct {p1}, Landroidx/media3/datasource/HttpDataSource$b;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->n:Landroidx/media3/datasource/HttpDataSource$b;

    new-instance p1, Landroidx/media3/common/util/l;

    invoke-direct {p1}, Landroidx/media3/common/util/l;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    return-void
.end method

.method private static A(Lorg/chromium/net/UrlRequest;)I
    .locals 3

    new-instance v0, Landroidx/media3/common/util/l;

    invoke-direct {v0}, Landroidx/media3/common/util/l;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    new-instance v2, Landroidx/media3/datasource/cronet/CronetDataSource$a;

    invoke-direct {v2, v1, v0}, Landroidx/media3/datasource/cronet/CronetDataSource$a;-><init>([ILandroidx/media3/common/util/l;)V

    invoke-virtual {p0, v2}, Lorg/chromium/net/UrlRequest;->getStatus(Lorg/chromium/net/UrlRequest$StatusListener;)V

    invoke-virtual {v0}, Landroidx/media3/common/util/l;->a()V

    const/4 p0, 0x0

    aget p0, v1, p0

    return p0
.end method

.method private static B(Lorg/chromium/net/UrlResponseInfo;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "identity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static C(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ";"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private D(Ljava/nio/ByteBuffer;Lw1/h;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->v:Lorg/chromium/net/UrlRequest;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/UrlRequest;

    invoke-virtual {v0, p1}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    iget v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->i:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/l;->b(J)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/net/SocketTimeoutException;

    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    if-ne p1, v3, :cond_1

    iput-object v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    :cond_1
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/16 v1, 0x7d2

    invoke-direct {p1, v2, p2, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->A:Ljava/io/IOException;

    goto :goto_0

    :catch_1
    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    if-ne p1, v2, :cond_2

    iput-object v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->A:Ljava/io/IOException;

    :goto_0
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->A:Ljava/io/IOException;

    if-eqz p1, :cond_4

    instance-of v1, p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_3

    check-cast p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw p1

    :cond_3
    invoke-static {p1, p2, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lw1/h;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object p1

    throw p1

    :cond_4
    return-void
.end method

.method private E()[B
    .locals 5

    sget-object v0, Landroidx/media3/common/util/a1;->f:[B

    invoke-direct {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->z()Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->B:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    invoke-virtual {v2}, Landroidx/media3/common/util/l;->d()Z

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->x:Lw1/h;

    invoke-static {v2}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/h;

    invoke-direct {p0, v1, v2}, Landroidx/media3/datasource/cronet/CronetDataSource;->D(Ljava/nio/ByteBuffer;Lw1/h;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-lez v2, :cond_0

    array-length v2, v0

    array-length v3, v0

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private F()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->p:Landroidx/media3/common/util/i;

    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->h:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->C:J

    return-void
.end method

.method private G(JLw1/h;)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->z()Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_0
    cmp-long v3, p1, v0

    if-lez v3, :cond_5

    const/16 v3, 0xe

    :try_start_0
    iget-object v4, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    invoke-virtual {v4}, Landroidx/media3/common/util/l;->d()Z

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-direct {p0, v2, p3}, Landroidx/media3/datasource/cronet/CronetDataSource;->D(Ljava/nio/ByteBuffer;Lw1/h;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->B:Z

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    invoke-static {v4}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v3, v4

    sub-long/2addr p1, v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p1, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    const/16 p2, 0x7d8

    invoke-direct {p1, p3, p2, v3}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Lw1/h;II)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    instance-of p2, p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-nez p2, :cond_4

    new-instance p2, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_3

    const/16 v0, 0x7d2

    goto :goto_2

    :cond_3
    const/16 v0, 0x7d1

    :goto_2
    invoke-direct {p2, p1, p3, v0, v3}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    throw p2

    :cond_4
    check-cast p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw p1

    :cond_5
    return-void
.end method

.method static synthetic h(Landroidx/media3/datasource/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->v:Lorg/chromium/net/UrlRequest;

    return-object p0
.end method

.method static synthetic i(Landroidx/media3/datasource/cronet/CronetDataSource;)Lw1/h;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->x:Lw1/h;

    return-object p0
.end method

.method static synthetic j(Landroidx/media3/datasource/cronet/CronetDataSource;Lw1/h;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->x(Lw1/h;)V

    return-void
.end method

.method static synthetic k(Landroidx/media3/datasource/cronet/CronetDataSource;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->z:Lorg/chromium/net/UrlResponseInfo;

    return-object p1
.end method

.method static synthetic l(Landroidx/media3/datasource/cronet/CronetDataSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->B:Z

    return p1
.end method

.method static synthetic m(Landroidx/media3/datasource/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->A:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic n(Landroidx/media3/datasource/cronet/CronetDataSource;)Landroidx/media3/common/util/l;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    return-object p0
.end method

.method static synthetic o(Landroidx/media3/datasource/cronet/CronetDataSource;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->j:Z

    return p0
.end method

.method static synthetic p(Landroidx/media3/datasource/cronet/CronetDataSource;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->F()V

    return-void
.end method

.method static synthetic q(Landroidx/media3/datasource/cronet/CronetDataSource;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->s:Z

    return p0
.end method

.method static synthetic r(Landroidx/media3/datasource/cronet/CronetDataSource;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->k:Z

    return p0
.end method

.method static synthetic s(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->C(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Landroidx/media3/datasource/cronet/CronetDataSource;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->w()V

    return-void
.end method

.method private u()Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->p:Landroidx/media3/common/util/i;

    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    iget-wide v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->C:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    iget-wide v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->C:J

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x5

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/l;->b(J)Z

    move-result v2

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->p:Landroidx/media3/common/util/i;

    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return v2
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->v:Lorg/chromium/net/UrlRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    iput-object v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->v:Lorg/chromium/net/UrlRequest;

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->w:Landroidx/media3/datasource/cronet/CronetDataSource$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a()V

    iput-object v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->w:Landroidx/media3/datasource/cronet/CronetDataSource$c;

    :cond_1
    return-void
.end method

.method private x(Lw1/h;)V
    .locals 1

    new-instance v0, Landroidx/media3/datasource/cronet/CronetDataSource$c;

    invoke-direct {v0, p0}, Landroidx/media3/datasource/cronet/CronetDataSource$c;-><init>(Landroidx/media3/datasource/cronet/CronetDataSource;)V

    iput-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->w:Landroidx/media3/datasource/cronet/CronetDataSource$c;

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->v(Lw1/h;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->v:Lorg/chromium/net/UrlRequest;

    return-void
.end method

.method private static y(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private z()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->q:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public a(Lw1/h;)J
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->t:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    invoke-virtual {v0}, Landroidx/media3/common/util/l;->d()Z

    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->F()V

    iput-object v7, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->x:Lw1/h;

    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->x(Lw1/h;)V

    iget-object v0, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->v:Lorg/chromium/net/UrlRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->start()V

    invoke-virtual/range {p0 .. p1}, Lw1/a;->f(Lw1/h;)V

    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->u()Z

    move-result v3

    iget-object v4, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->A:Ljava/io/IOException;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "err_cleartext_not_permitted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    invoke-direct {v0, v4, v7}, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;-><init>(Ljava/io/IOException;Lw1/h;)V

    throw v0

    :cond_0
    new-instance v2, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->A(Lorg/chromium/net/UrlRequest;)I

    move-result v0

    const/16 v3, 0x7d1

    invoke-direct {v2, v4, v7, v3, v0}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    if-eqz v3, :cond_d

    iget-object v0, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->z:Lorg/chromium/net/UrlResponseInfo;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v3

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v6

    const-string v4, "Content-Range"

    const/16 v5, 0xc8

    const-wide/16 v8, 0x0

    const-wide/16 v10, -0x1

    if-lt v3, v5, :cond_9

    const/16 v12, 0x12b

    if-le v3, v12, :cond_2

    goto :goto_2

    :cond_2
    iget-object v12, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->r:Lcom/google/common/base/n;

    if-eqz v12, :cond_4

    const-string v13, "Content-Type"

    invoke-static {v6, v13}, Landroidx/media3/datasource/cronet/CronetDataSource;->y(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-interface {v12, v13}, Lcom/google/common/base/n;->apply(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v13, v7}, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lw1/h;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v3, v5, :cond_5

    iget-wide v12, v7, Lw1/h;->g:J

    cmp-long v3, v12, v8

    if-eqz v3, :cond_5

    move-wide v8, v12

    :cond_5
    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->B(Lorg/chromium/net/UrlResponseInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-wide v12, v7, Lw1/h;->h:J

    cmp-long v0, v12, v10

    if-eqz v0, :cond_6

    iput-wide v12, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    goto :goto_1

    :cond_6
    const-string v0, "Content-Length"

    invoke-static {v6, v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->y(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v4}, Landroidx/media3/datasource/cronet/CronetDataSource;->y(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lw1/i;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v10

    if-eqz v0, :cond_7

    sub-long v10, v3, v8

    :cond_7
    iput-wide v10, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    goto :goto_1

    :cond_8
    iget-wide v3, v7, Lw1/h;->h:J

    iput-wide v3, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    :goto_1
    iput-boolean v2, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->t:Z

    invoke-virtual/range {p0 .. p1}, Lw1/a;->g(Lw1/h;)V

    invoke-direct {v1, v8, v9, v7}, Landroidx/media3/datasource/cronet/CronetDataSource;->G(JLw1/h;)V

    iget-wide v2, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    return-wide v2

    :cond_9
    :goto_2
    const/16 v5, 0x1a0

    if-ne v3, v5, :cond_b

    invoke-static {v6, v4}, Landroidx/media3/datasource/cronet/CronetDataSource;->y(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lw1/i;->c(Ljava/lang/String;)J

    move-result-wide v12

    iget-wide v14, v7, Lw1/h;->g:J

    cmp-long v4, v14, v12

    if-nez v4, :cond_b

    iput-boolean v2, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->t:Z

    invoke-virtual/range {p0 .. p1}, Lw1/a;->g(Lw1/h;)V

    iget-wide v2, v7, Lw1/h;->h:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_a

    move-wide v8, v2

    :cond_a
    return-wide v8

    :cond_b
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->E()[B

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    move-object v8, v2

    goto :goto_4

    :catch_0
    sget-object v2, Landroidx/media3/common/util/a1;->f:[B

    goto :goto_3

    :goto_4
    if-ne v3, v5, :cond_c

    new-instance v2, Landroidx/media3/datasource/DataSourceException;

    const/16 v4, 0x7d8

    invoke-direct {v2, v4}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    :goto_5
    move-object v5, v2

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    :goto_6
    new-instance v9, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v4

    move-object v2, v9

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lw1/h;[B)V

    throw v9

    :cond_d
    :try_start_3
    new-instance v2, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    new-instance v3, Ljava/net/SocketTimeoutException;

    invoke-direct {v3}, Ljava/net/SocketTimeoutException;-><init>()V

    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->A(Lorg/chromium/net/UrlRequest;)I

    move-result v0

    const/16 v4, 0x7d2

    invoke-direct {v2, v3, v7, v4, v0}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v3, 0x3ec

    const/4 v4, -0x1

    invoke-direct {v0, v2, v7, v3, v4}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    throw v0

    :catch_2
    move-exception v0

    instance-of v2, v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v2, :cond_e

    check-cast v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw v0

    :cond_e
    new-instance v2, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    const/16 v3, 0x7d0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v7, v3, v4}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    throw v2
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->w()V

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->x:Lw1/h;

    iput-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->z:Lorg/chromium/net/UrlResponseInfo;

    iput-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->A:Ljava/io/IOException;

    iput-boolean v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->B:Z

    iget-boolean v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->t:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->t:Z

    invoke-virtual {p0}, Lw1/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->z:Lorg/chromium/net/UrlResponseInfo;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->z:Lorg/chromium/net/UrlResponseInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->x:Lw1/h;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lw1/h;->a:Landroid/net/Uri;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public read([BII)I
    .locals 10

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->t:Z

    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-direct {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->z()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    invoke-virtual {v5}, Landroidx/media3/common/util/l;->d()Z

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v5, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->x:Lw1/h;

    invoke-static {v5}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw1/h;

    invoke-direct {p0, v1, v5}, Landroidx/media3/datasource/cronet/CronetDataSource;->D(Ljava/nio/ByteBuffer;Lw1/h;)V

    iget-boolean v5, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->B:Z

    if-eqz v5, :cond_2

    iput-wide v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    return v2

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/a;->g(Z)V

    :cond_3
    iget-wide v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    int-to-long v8, p3

    const/4 p3, 0x3

    new-array p3, p3, [J

    aput-wide v2, p3, v0

    const/4 v0, 0x1

    aput-wide v6, p3, v0

    const/4 v0, 0x2

    aput-wide v8, p3, v0

    invoke-static {p3}, Lcom/google/common/primitives/Longs;->i([J)J

    move-result-wide v2

    long-to-int p3, v2

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-wide p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    cmp-long v0, p1, v4

    if-eqz v0, :cond_5

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    :cond_5
    invoke-virtual {p0, p3}, Lw1/a;->d(I)V

    return p3
.end method

.method protected v(Lw1/h;)Lorg/chromium/net/UrlRequest$Builder;
    .locals 5

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->e:Lorg/chromium/net/CronetEngine;

    iget-object v1, p1, Lw1/h;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->w:Landroidx/media3/datasource/cronet/CronetDataSource$c;

    iget-object v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->g:I

    invoke-virtual {v0, v1}, Lorg/chromium/net/UrlRequest$Builder;->setPriority(I)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest$Builder;->allowDirectExecutor()Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->m:Landroidx/media3/datasource/HttpDataSource$b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/media3/datasource/HttpDataSource$b;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->n:Landroidx/media3/datasource/HttpDataSource$b;

    invoke-virtual {v2}, Landroidx/media3/datasource/HttpDataSource$b;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v2, p1, Lw1/h;->e:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lw1/h;->d:[B

    if-eqz v2, :cond_3

    const-string v2, "Content-Type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    const-string v3, "HTTP request with non-empty body must set Content-Type"

    invoke-direct {v0, v3, p1, v1, v2}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Ljava/lang/String;Lw1/h;II)V

    throw v0

    :cond_3
    :goto_1
    iget-wide v1, p1, Lw1/h;->g:J

    iget-wide v3, p1, Lw1/h;->h:J

    invoke-static {v1, v2, v3, v4}, Lw1/i;->a(JJ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    :cond_4
    iget-object v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->l:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    :cond_5
    invoke-virtual {p1}, Lw1/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    iget-object p1, p1, Lw1/h;->d:[B

    if-eqz p1, :cond_6

    new-instance v1, Landroidx/media3/datasource/cronet/a;

    invoke-direct {v1, p1}, Landroidx/media3/datasource/cronet/a;-><init>([B)V

    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/net/UrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    :cond_6
    return-object v0
.end method
