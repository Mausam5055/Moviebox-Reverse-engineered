.class final Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/mbridge/msdk/thrid/okio/i;

.field private b:Z

.field final synthetic c:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/i;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->d:Lcom/mbridge/msdk/thrid/okio/d;

    invoke-interface {p1}, Lcom/mbridge/msdk/thrid/okio/r;->b()Lcom/mbridge/msdk/thrid/okio/t;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/thrid/okio/i;-><init>(Lcom/mbridge/msdk/thrid/okio/t;)V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->a:Lcom/mbridge/msdk/thrid/okio/i;

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/thrid/okio/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->b:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->d:Lcom/mbridge/msdk/thrid/okio/d;

    invoke-interface {v0, p2, p3}, Lcom/mbridge/msdk/thrid/okio/d;->a(J)Lcom/mbridge/msdk/thrid/okio/d;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->d:Lcom/mbridge/msdk/thrid/okio/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/thrid/okio/d;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/d;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->d:Lcom/mbridge/msdk/thrid/okio/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/r;->a(Lcom/mbridge/msdk/thrid/okio/c;J)V

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->d:Lcom/mbridge/msdk/thrid/okio/d;

    invoke-interface {p1, v1}, Lcom/mbridge/msdk/thrid/okio/d;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/d;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/mbridge/msdk/thrid/okio/t;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->a:Lcom/mbridge/msdk/thrid/okio/i;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->b:Z

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->d:Lcom/mbridge/msdk/thrid/okio/d;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/thrid/okio/d;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/d;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->a:Lcom/mbridge/msdk/thrid/okio/i;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->a(Lcom/mbridge/msdk/thrid/okio/i;)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    const/4 v1, 0x3

    iput v1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->e:I
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$c;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->d:Lcom/mbridge/msdk/thrid/okio/d;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/d;->flush()V
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
