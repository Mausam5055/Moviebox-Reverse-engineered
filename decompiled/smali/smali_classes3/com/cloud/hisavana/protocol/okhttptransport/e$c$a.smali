.class Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;
.super Lorg/chromium/net/UploadDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lokhttp3/RequestBody;

.field private final b:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

.field private final c:Lcom/google/common/util/concurrent/t;

.field private final d:J

.field private e:Lcom/google/common/util/concurrent/r;

.field private f:J


# direct methods
.method private constructor <init>(Lokhttp3/RequestBody;Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;Ljava/util/concurrent/ExecutorService;J)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->a:Lokhttp3/RequestBody;

    iput-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    instance-of p1, p3, Lcom/google/common/util/concurrent/t;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/google/common/util/concurrent/t;

    iput-object p3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->c:Lcom/google/common/util/concurrent/t;

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/google/common/util/concurrent/MoreExecutors;->b(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/t;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->c:Lcom/google/common/util/concurrent/t;

    :goto_0
    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-nez p1, :cond_1

    const-wide/32 p4, 0x7fffffff

    :cond_1
    iput-wide p4, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/RequestBody;Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;Ljava/util/concurrent/ExecutorService;JLcom/cloud/hisavana/protocol/okhttptransport/e$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;-><init>(Lokhttp3/RequestBody;Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;Ljava/util/concurrent/ExecutorService;J)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->k()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    return-object p0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->e:Lcom/google/common/util/concurrent/r;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->c:Lcom/google/common/util/concurrent/t;

    new-instance v1, Lcom/cloud/hisavana/protocol/okhttptransport/f;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/protocol/okhttptransport/f;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/t;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/r;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->e:Lcom/google/common/util/concurrent/r;

    new-instance v1, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a$a;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/r;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

.method private i(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 5

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->m(Ljava/nio/ByteBuffer;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    move-result-object v2

    sget-object v3, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "END_OF_BODY reads shouldn\'t write anything to the buffer"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/common/base/s;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v1}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->getLength()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->f:J

    invoke-static {p1, p2, v0, v1}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->l(JJ)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private synthetic k()Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    invoke-virtual {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->h()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static l(JJ)Ljava/io/IOException;
    .locals 3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes but got at least "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private m(Ljava/nio/ByteBuffer;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;
    .locals 6

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->b(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;

    move-result-object v1

    iget-wide v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->d:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/util/concurrent/z;->b(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    sub-int/2addr p1, v0

    iget-wide v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->f:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->f:J

    return-object v1
.end method

.method private n(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->m(Ljava/nio/ByteBuffer;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    move-result-object v1

    iget-wide v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->f:J

    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->getLength()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    iget-wide v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->f:J

    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->getLength()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    sget-object p2, Lcom/cloud/hisavana/protocol/okhttptransport/e$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string v1, "The source has been exhausted but we expected more data!"

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->i(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->getLength()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->f:J

    invoke-static {v1, v2, v3, v4}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->l(JJ)Ljava/io/IOException;

    move-result-object p2

    throw p2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->e:Lcom/google/common/util/concurrent/r;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onReadError(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method private o(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->m(Ljava/nio/ByteBuffer;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    move-result-object p2

    sget-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->e:Lcom/google/common/util/concurrent/r;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onReadError(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->h()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->o(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->n(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Rewind is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    return-void
.end method
