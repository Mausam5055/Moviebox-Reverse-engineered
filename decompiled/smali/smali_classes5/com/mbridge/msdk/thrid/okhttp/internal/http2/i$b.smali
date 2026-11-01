.class final Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field static final synthetic g:Z = true


# instance fields
.field private final a:Lcom/mbridge/msdk/thrid/okio/c;

.field private final b:Lcom/mbridge/msdk/thrid/okio/c;

.field private final c:J

.field d:Z

.field e:Z

.field final synthetic f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;J)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/mbridge/msdk/thrid/okio/c;

    invoke-direct {p1}, Lcom/mbridge/msdk/thrid/okio/c;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->a:Lcom/mbridge/msdk/thrid/okio/c;

    new-instance p1, Lcom/mbridge/msdk/thrid/okio/c;

    invoke-direct {p1}, Lcom/mbridge/msdk/thrid/okio/c;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->b:Lcom/mbridge/msdk/thrid/okio/c;

    iput-wide p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->c:J

    return-void
.end method

.method private f(J)V
    .locals 1

    sget-boolean v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->g(J)V

    return-void
.end method


# virtual methods
.method a(Lcom/mbridge/msdk/thrid/okio/e;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->e:Z

    iget-object v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->b:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v4}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->c:J

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    invoke-interface {p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/e;->skip(J)V

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    sget-object p2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->e:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->c(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/e;->skip(J)V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-interface {p1, v2, p2, p3}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-eqz v4, :cond_8

    sub-long/2addr p2, v2

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    monitor-enter v2

    :try_start_1
    iget-boolean v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->d:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v3

    iget-object v5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v5}, Lcom/mbridge/msdk/thrid/okio/c;->k()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->b:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_6

    move v5, v6

    :cond_6
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->b:Lcom/mbridge/msdk/thrid/okio/c;

    iget-object v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/thrid/okio/c;->a(Lcom/mbridge/msdk/thrid/okio/s;)J

    if-eqz v5, :cond_7

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_7
    move-wide v3, v0

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, v0

    if-lez v0, :cond_1

    invoke-direct {p0, v3, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f(J)V

    goto :goto_0

    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_9
    return-void
.end method

.method public b(Lcom/mbridge/msdk/thrid/okio/c;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_8

    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v3, v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->i:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okio/a;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v4, v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->k:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-boolean v5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->d:Z

    if-nez v5, :cond_7

    invoke-static {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-static {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->b(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c$a;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->b:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v5

    cmp-long v3, v5, v0

    const-wide/16 v5, -0x1

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->b:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v7

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/c;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-wide v7, p3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->a:J

    add-long/2addr v7, p1

    iput-wide v7, p3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->a:J

    if-nez v4, :cond_4

    iget-object p3, p3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iget-object p3, p3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->t:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    invoke-virtual {p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;->c()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v9, p3

    cmp-long p3, v7, v9

    if-ltz p3, :cond_4

    iget-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v3, p3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iget v7, p3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->c:I

    iget-wide v8, p3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->a:J

    invoke-virtual {v3, v7, v8, v9}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(IJ)V

    iget-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iput-wide v0, p3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->a:J

    goto :goto_3

    :cond_2
    iget-boolean v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->e:Z

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v3, v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->i:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;->k()V

    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_3
    move-wide p1, v5

    :cond_4
    :goto_3
    iget-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object p3, p3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->i:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;

    invoke-virtual {p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;->k()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f(J)V

    return-wide p1

    :cond_5
    if-nez v4, :cond_6

    return-wide v5

    :cond_6
    new-instance p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/n;

    invoke-direct {p1, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/n;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V

    throw p1

    :cond_7
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object p2, p2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->i:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;

    invoke-virtual {p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;->k()V

    throw p1

    :goto_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_8
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

.method public b()Lcom/mbridge/msdk/thrid/okio/t;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->i:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;

    return-object v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->d:Z

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->b:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->b:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okio/c;->k()V

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-static {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-static {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->b(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c$a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f(J)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->a()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
