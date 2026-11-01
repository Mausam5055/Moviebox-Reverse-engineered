.class final Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field static final synthetic e:Z = true


# instance fields
.field private final a:Lcom/mbridge/msdk/thrid/okio/c;

.field b:Z

.field c:Z

.field final synthetic d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/mbridge/msdk/thrid/okio/c;

    invoke-direct {p1}, Lcom/mbridge/msdk/thrid/okio/c;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->a:Lcom/mbridge/msdk/thrid/okio/c;

    return-void
.end method

.method private a(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okio/a;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-wide v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->c:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->b:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->k:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :try_start_2
    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;->k()V

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->b()V

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-wide v1, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->b:J

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-wide v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->b:J

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/a;->h()V

    :try_start_3
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v5, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iget v6, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->c:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_1
    move v7, p1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    iget-object v8, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual/range {v5 .. v10}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(IZLcom/mbridge/msdk/thrid/okio/c;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;->k()V

    return-void

    :goto_3
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;->k()V

    throw p1

    :catchall_2
    move-exception p1

    goto :goto_5

    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;->k()V

    throw p1

    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/thrid/okio/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

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
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/c;->a(Lcom/mbridge/msdk/thrid/okio/c;J)V

    :goto_1
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->a(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b()Lcom/mbridge/msdk/thrid/okio/t;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;

    return-object v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->b:Z

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->h:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;

    iget-boolean v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->a(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v2, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iget v3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->c:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(IZLcom/mbridge/msdk/thrid/okio/c;J)V

    :cond_4
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    monitor-enter v2

    :try_start_1
    iput-boolean v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->b:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->flush()V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->a()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->b()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->a(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$a;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->flush()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
