.class public final Lcom/squareup/okhttp/internal/http/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/squareup/okhttp/internal/http/HttpStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/d$g;,
        Lcom/squareup/okhttp/internal/http/d$d;,
        Lcom/squareup/okhttp/internal/http/d$f;,
        Lcom/squareup/okhttp/internal/http/d$b;,
        Lcom/squareup/okhttp/internal/http/d$c;,
        Lcom/squareup/okhttp/internal/http/d$e;
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/http/n;

.field private final b:Lokio/BufferedSource;

.field private final c:Lokio/BufferedSink;

.field private d:Lcom/squareup/okhttp/internal/http/g;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/n;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/internal/http/n;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lokio/BufferedSource;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSink;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/http/d;Lokio/ForwardingTimeout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/d;->g(Lokio/ForwardingTimeout;)V

    return-void
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/http/d;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    return p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/http/d;I)I
    .locals 0

    iput p1, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    return p1
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lokio/BufferedSource;

    return-object p0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/internal/http/n;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/internal/http/n;

    return-object p0
.end method

.method private g(Lokio/ForwardingTimeout;)V
    .locals 2

    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v0

    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    return-void
.end method

.method private h(Lcom/squareup/okhttp/Response;)Lokio/Source;
    .locals 4

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/g;->n(Lcom/squareup/okhttp/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/d;->l(J)Lokio/Source;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/http/d;->j(Lcom/squareup/okhttp/internal/http/g;)Lokio/Source;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->e(Lcom/squareup/okhttp/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/d;->l(J)Lokio/Source;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/d;->m()Lokio/Source;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/n;->c()Ldf/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldf/a;->b()V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lcom/squareup/okhttp/Request;J)Lokio/Sink;
    .locals 2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/d;->i()Lokio/Sink;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/squareup/okhttp/internal/http/d;->k(J)Lokio/Sink;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finishRequest()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public i()Lokio/Sink;
    .locals 3

    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    new-instance v0, Lcom/squareup/okhttp/internal/http/d$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/d$c;-><init>(Lcom/squareup/okhttp/internal/http/d;Lcom/squareup/okhttp/internal/http/d$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(Lcom/squareup/okhttp/internal/http/g;)Lokio/Source;
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    new-instance v0, Lcom/squareup/okhttp/internal/http/d$d;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/http/d$d;-><init>(Lcom/squareup/okhttp/internal/http/d;Lcom/squareup/okhttp/internal/http/g;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(J)Lokio/Sink;
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    new-instance v0, Lcom/squareup/okhttp/internal/http/d$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/okhttp/internal/http/d$e;-><init>(Lcom/squareup/okhttp/internal/http/d;JLcom/squareup/okhttp/internal/http/d$a;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(J)Lokio/Source;
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    new-instance v0, Lcom/squareup/okhttp/internal/http/d$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/http/d$f;-><init>(Lcom/squareup/okhttp/internal/http/d;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()Lokio/Source;
    .locals 3

    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/internal/http/n;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iput v1, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/n;->l()V

    new-instance v0, Lcom/squareup/okhttp/internal/http/d$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/d$g;-><init>(Lcom/squareup/okhttp/internal/http/d;Lcom/squareup/okhttp/internal/http/d$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Lcom/squareup/okhttp/Headers;
    .locals 3

    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/internal/c;->addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/squareup/okhttp/Response$Builder;
    .locals 4

    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/m;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/m;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget v2, v0, Lcom/squareup/okhttp/internal/http/m;->b:I

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/d;->n()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget v0, v0, Lcom/squareup/okhttp/internal/http/m;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public openResponseBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .locals 2

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/d;->h(Lcom/squareup/okhttp/Response;)Lokio/Source;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/internal/http/i;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/squareup/okhttp/internal/http/i;-><init>(Lcom/squareup/okhttp/Headers;Lokio/BufferedSource;)V

    return-object v1
.end method

.method public p(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 p1, 0x1

    iput p1, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readResponseHeaders()Lcom/squareup/okhttp/Response$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/d;->o()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHttpEngine(Lcom/squareup/okhttp/internal/http/g;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lcom/squareup/okhttp/internal/http/g;

    return-void
.end method

.method public writeRequestBody(Lcom/squareup/okhttp/internal/http/k;)V
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/k;->h(Lokio/Sink;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRequestHeaders(Lcom/squareup/okhttp/Request;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->C()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->k()Lcom/squareup/okhttp/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/squareup/okhttp/internal/http/j;->a(Lcom/squareup/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/internal/http/d;->p(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V

    return-void
.end method
