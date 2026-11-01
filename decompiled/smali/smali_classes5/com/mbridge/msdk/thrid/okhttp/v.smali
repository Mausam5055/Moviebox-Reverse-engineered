.class final Lcom/mbridge/msdk/thrid/okhttp/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/thrid/okhttp/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/v$b;
    }
.end annotation


# instance fields
.field final a:Lcom/mbridge/msdk/thrid/okhttp/t;

.field final b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

.field final c:Lcom/mbridge/msdk/thrid/okio/a;

.field private d:Lcom/mbridge/msdk/thrid/okhttp/n;

.field final e:Lcom/mbridge/msdk/thrid/okhttp/w;

.field final f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/w;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->e:Lcom/mbridge/msdk/thrid/okhttp/w;

    iput-boolean p3, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->f:Z

    new-instance p2, Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    invoke-direct {p2, p1, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;-><init>(Lcom/mbridge/msdk/thrid/okhttp/t;Z)V

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    new-instance p2, Lcom/mbridge/msdk/thrid/okhttp/v$a;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/thrid/okhttp/v$a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/v;)V

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->c:Lcom/mbridge/msdk/thrid/okio/a;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/t;->b()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lcom/mbridge/msdk/thrid/okio/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okio/t;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/thrid/okhttp/v;)Lcom/mbridge/msdk/thrid/okhttp/n;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    return-object p0
.end method

.method static a(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/w;Z)Lcom/mbridge/msdk/thrid/okhttp/v;
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/v;-><init>(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/w;Z)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/t;->l()Lcom/mbridge/msdk/thrid/okhttp/n$c;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/n$c;->a(Lcom/mbridge/msdk/thrid/okhttp/d;)Lcom/mbridge/msdk/thrid/okhttp/n;

    move-result-object p0

    iput-object p0, v0, Lcom/mbridge/msdk/thrid/okhttp/v;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->d()Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->c:Lcom/mbridge/msdk/thrid/okio/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public b()Lcom/mbridge/msdk/thrid/okhttp/v;
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->e:Lcom/mbridge/msdk/thrid/okhttp/w;

    iget-boolean v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->f:Z

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/v;->a(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/w;Z)Lcom/mbridge/msdk/thrid/okhttp/v;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/a;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/t;->i()Lcom/mbridge/msdk/thrid/okhttp/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/k;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/t;->q()Lcom/mbridge/msdk/thrid/okhttp/internal/cache/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/cache/c;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/a;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-direct {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/t;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/b;

    iget-boolean v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->f:Z

    invoke-direct {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;

    iget-object v6, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->e:Lcom/mbridge/msdk/thrid/okhttp/w;

    iget-object v8, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->e()I

    move-result v9

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->y()I

    move-result v10

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->C()I

    move-result v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;-><init>(Ljava/util/List;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;ILcom/mbridge/msdk/thrid/okhttp/w;Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/n;III)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->e:Lcom/mbridge/msdk/thrid/okhttp/w;

    invoke-interface {v12, v0}, Lcom/mbridge/msdk/thrid/okhttp/r$a;->a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;->b()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/io/Closeable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;->a()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/v;->b()Lcom/mbridge/msdk/thrid/okhttp/v;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->g:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/v;->a()V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->c:Lcom/mbridge/msdk/thrid/okio/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/a;->h()V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/n;->callStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->j()Lcom/mbridge/msdk/thrid/okhttp/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/l;->a(Lcom/mbridge/msdk/thrid/okhttp/v;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/v;->c()Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/t;->j()Lcom/mbridge/msdk/thrid/okhttp/l;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/thrid/okhttp/l;->b(Lcom/mbridge/msdk/thrid/okhttp/v;)V

    return-object v0

    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/v;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    invoke-virtual {v1, p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/n;->callFailed(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/io/IOException;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/t;->j()Lcom/mbridge/msdk/thrid/okhttp/l;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/thrid/okhttp/l;->b(Lcom/mbridge/msdk/thrid/okhttp/v;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;->b()Z

    move-result v0

    return v0
.end method
