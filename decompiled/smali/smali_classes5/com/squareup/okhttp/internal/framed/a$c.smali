.class final Lcom/squareup/okhttp/internal/framed/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lokio/Buffer;

.field private final b:Lokio/Buffer;

.field private final c:J

.field private d:Z

.field private e:Z

.field final synthetic f:Lcom/squareup/okhttp/internal/framed/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/framed/a;J)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a$c;->a:Lokio/Buffer;

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a$c;->b:Lokio/Buffer;

    iput-wide p2, p0, Lcom/squareup/okhttp/internal/framed/a$c;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/framed/a;JLcom/squareup/okhttp/internal/framed/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/a$c;-><init>(Lcom/squareup/okhttp/internal/framed/a;J)V

    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/framed/a$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/framed/a$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/a$c;->e:Z

    return p1
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/framed/a$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->d:Z

    return p0
.end method

.method private k()V
    .locals 3

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a;->g(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/a;->g(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a;->f(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/a$d;

    move-result-object v0

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a;->g(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a;->h(Lcom/squareup/okhttp/internal/framed/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a;->f(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/a$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/a$d;->exitAndThrowIfTimedOut()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/a;->f(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/a$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/a$d;->exitAndThrowIfTimedOut()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/a$c;->d:Z

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a$c;->b:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a;->a(Lcom/squareup/okhttp/internal/framed/a;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method l(Lokio/BufferedSource;J)V
    .locals 9

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/framed/a$c;->e:Z

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/a$c;->b:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lcom/squareup/okhttp/internal/framed/a$c;->c:J

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    sget-object p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/a;->n(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a$c;->a:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-eqz v4, :cond_5

    sub-long/2addr p2, v2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/a$c;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_3

    move v5, v6

    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->b:Lokio/Buffer;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a$c;->a:Lokio/Buffer;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit v2

    goto :goto_0

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_6
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/a$c;->m()V

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/a$c;->k()V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/a$c;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    monitor-exit v2

    const-wide/16 p1, -0x1

    return-wide p1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/a$c;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    iget-wide v3, p3, Lcom/squareup/okhttp/internal/framed/a;->a:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lcom/squareup/okhttp/internal/framed/a;->a:J

    invoke-static {p3}, Lcom/squareup/okhttp/internal/framed/a;->d(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object p3

    iget-object p3, p3, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p:Lcom/squareup/okhttp/internal/framed/h;

    const/high16 v5, 0x10000

    invoke-virtual {p3, v5}, Lcom/squareup/okhttp/internal/framed/h;->e(I)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v6, p3

    cmp-long p3, v3, v6

    if-ltz p3, :cond_1

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {p3}, Lcom/squareup/okhttp/internal/framed/a;->d(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object p3

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/a;->e(Lcom/squareup/okhttp/internal/framed/a;)I

    move-result v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    iget-wide v6, v4, Lcom/squareup/okhttp/internal/framed/a;->a:J

    invoke-virtual {p3, v3, v6, v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->H0(IJ)V

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    iput-wide v0, p3, Lcom/squareup/okhttp/internal/framed/a;->a:J

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {p3}, Lcom/squareup/okhttp/internal/framed/a;->d(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object p3

    monitor-enter p3

    :try_start_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/a;->d(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v3, v2, Lcom/squareup/okhttp/internal/framed/FramedConnection;->n:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/squareup/okhttp/internal/framed/FramedConnection;->n:J

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/a;->d(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v2, v2, Lcom/squareup/okhttp/internal/framed/FramedConnection;->n:J

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/framed/a;->d(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v4

    iget-object v4, v4, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p:Lcom/squareup/okhttp/internal/framed/h;

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/framed/h;->e(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/a;->d(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/a;->d(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v3

    iget-wide v3, v3, Lcom/squareup/okhttp/internal/framed/FramedConnection;->n:J

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->H0(IJ)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/a;->d(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iput-wide v0, v2, Lcom/squareup/okhttp/internal/framed/FramedConnection;->n:J

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p3

    return-wide p1

    :goto_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->f:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a;->f(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/a$d;

    move-result-object v0

    return-object v0
.end method
