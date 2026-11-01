.class final Lretrofit2/w;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/w$b;,
        Lretrofit2/w$c;
    }
.end annotation


# instance fields
.field private final a:Lretrofit2/i0;

.field private final b:Ljava/lang/Object;

.field private final c:[Ljava/lang/Object;

.field private final d:Lokhttp3/Call$Factory;

.field private final e:Lretrofit2/k;

.field private volatile f:Z

.field private g:Lokhttp3/Call;

.field private h:Ljava/lang/Throwable;

.field private i:Z


# direct methods
.method constructor <init>(Lretrofit2/i0;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/w;->a:Lretrofit2/i0;

    iput-object p2, p0, Lretrofit2/w;->b:Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/w;->c:[Ljava/lang/Object;

    iput-object p4, p0, Lretrofit2/w;->d:Lokhttp3/Call$Factory;

    iput-object p5, p0, Lretrofit2/w;->e:Lretrofit2/k;

    return-void
.end method

.method private b()Lokhttp3/Call;
    .locals 4

    iget-object v0, p0, Lretrofit2/w;->d:Lokhttp3/Call$Factory;

    iget-object v1, p0, Lretrofit2/w;->a:Lretrofit2/i0;

    iget-object v2, p0, Lretrofit2/w;->b:Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/w;->c:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lretrofit2/i0;->a(Ljava/lang/Object;[Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()Lokhttp3/Call;
    .locals 2

    iget-object v0, p0, Lretrofit2/w;->g:Lokhttp3/Call;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lretrofit2/w;->h:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lretrofit2/w;->b()Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/w;->g:Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-static {v0}, Lretrofit2/o0;->t(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lretrofit2/w;->h:Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public a()Lretrofit2/w;
    .locals 7

    new-instance v6, Lretrofit2/w;

    iget-object v1, p0, Lretrofit2/w;->a:Lretrofit2/i0;

    iget-object v2, p0, Lretrofit2/w;->b:Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/w;->c:[Ljava/lang/Object;

    iget-object v4, p0, Lretrofit2/w;->d:Lokhttp3/Call$Factory;

    iget-object v5, p0, Lretrofit2/w;->e:Lretrofit2/k;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lretrofit2/w;-><init>(Lretrofit2/i0;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/k;)V

    return-object v6
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/w;->f:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lretrofit2/w;->g:Lokhttp3/Call;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lretrofit2/w;->a()Lretrofit2/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lretrofit2/d;
    .locals 1

    invoke-virtual {p0}, Lretrofit2/w;->a()Lretrofit2/w;

    move-result-object v0

    return-object v0
.end method

.method d(Lokhttp3/Response;)Lretrofit2/j0;
    .locals 5

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    new-instance v1, Lretrofit2/w$c;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lretrofit2/w$c;-><init>(Lokhttp3/MediaType;J)V

    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lretrofit2/w$b;

    invoke-direct {v1, v0}, Lretrofit2/w$b;-><init>(Lokhttp3/ResponseBody;)V

    :try_start_0
    iget-object v0, p0, Lretrofit2/w;->e:Lretrofit2/k;

    invoke-interface {v0, v1}, Lretrofit2/k;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lretrofit2/j0;->g(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/j0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {v1}, Lretrofit2/w$b;->throwIfCaught()V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lretrofit2/j0;->g(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/j0;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    :try_start_1
    invoke-static {v0}, Lretrofit2/o0;->a(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1, p1}, Lretrofit2/j0;->c(Lokhttp3/ResponseBody;Lokhttp3/Response;)Lretrofit2/j0;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    throw p1
.end method

.method public execute()Lretrofit2/j0;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit2/w;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/w;->i:Z

    invoke-direct {p0}, Lretrofit2/w;->c()Lokhttp3/Call;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lretrofit2/w;->f:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/w;->d(Lokhttp3/Response;)Lretrofit2/j0;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h(Lretrofit2/f;)V
    .locals 3

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit2/w;->i:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/w;->i:Z

    iget-object v0, p0, Lretrofit2/w;->g:Lokhttp3/Call;

    iget-object v1, p0, Lretrofit2/w;->h:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lretrofit2/w;->b()Lokhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lretrofit2/w;->g:Lokhttp3/Call;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lretrofit2/o0;->t(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lretrofit2/w;->h:Ljava/lang/Throwable;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {p1, p0, v1}, Lretrofit2/f;->a(Lretrofit2/d;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lretrofit2/w;->f:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_2
    new-instance v1, Lretrofit2/w$a;

    invoke-direct {v1, p0, p1}, Lretrofit2/w$a;-><init>(Lretrofit2/w;Lretrofit2/f;)V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void

    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public isCanceled()Z
    .locals 2

    iget-boolean v0, p0, Lretrofit2/w;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lretrofit2/w;->g:Lokhttp3/Call;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized request()Lokhttp3/Request;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lretrofit2/w;->c()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
