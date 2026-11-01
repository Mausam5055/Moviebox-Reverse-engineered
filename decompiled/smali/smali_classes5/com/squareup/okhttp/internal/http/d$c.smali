.class final Lcom/squareup/okhttp/internal/http/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lokio/ForwardingTimeout;

.field private b:Z

.field final synthetic c:Lcom/squareup/okhttp/internal/http/d;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/d;)V
    .locals 1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/d$c;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/ForwardingTimeout;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSink;

    move-result-object p1

    invoke-interface {p1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->a:Lokio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/d;Lcom/squareup/okhttp/internal/http/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/d$c;-><init>(Lcom/squareup/okhttp/internal/http/d;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->b:Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSink;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->c:Lcom/squareup/okhttp/internal/http/d;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/d$c;->a:Lokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/d;->b(Lcom/squareup/okhttp/internal/http/d;Lokio/ForwardingTimeout;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->c:Lcom/squareup/okhttp/internal/http/d;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/d;->d(Lcom/squareup/okhttp/internal/http/d;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->a:Lokio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->b:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lokio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$c;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/d$c;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
