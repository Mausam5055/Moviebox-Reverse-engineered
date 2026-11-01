.class final Landroidx/media3/datasource/cronet/CronetDataSource$c;
.super Lorg/chromium/net/UrlRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/cronet/CronetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private volatile a:Z

.field final synthetic b:Landroidx/media3/datasource/cronet/CronetDataSource;


# direct methods
.method constructor <init>(Landroidx/media3/datasource/cronet/CronetDataSource;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z

    return-void
.end method

.method public declared-synchronized onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of p1, p3, Lorg/chromium/net/NetworkException;

    if-eqz p1, :cond_1

    move-object p1, p3

    check-cast p1, Lorg/chromium/net/NetworkException;

    invoke-virtual {p1}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    new-instance p2, Ljava/net/UnknownHostException;

    invoke-direct {p2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {p1, p2}, Landroidx/media3/datasource/cronet/CronetDataSource;->m(Landroidx/media3/datasource/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {p1, p3}, Landroidx/media3/datasource/cronet/CronetDataSource;->m(Landroidx/media3/datasource/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    :goto_0
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->n(Landroidx/media3/datasource/cronet/CronetDataSource;)Landroidx/media3/common/util/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->n(Landroidx/media3/datasource/cronet/CronetDataSource;)Landroidx/media3/common/util/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->h(Landroidx/media3/datasource/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    iget-object v0, v0, Landroidx/media3/datasource/cronet/CronetDataSource;->w:Landroidx/media3/datasource/cronet/CronetDataSource$c;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->i(Landroidx/media3/datasource/cronet/CronetDataSource;)Lw1/h;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lw1/h;

    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v2

    iget v0, v6, Lw1/h;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/16 v0, 0x133

    if-eq v2, v0, :cond_1

    const/16 v0, 0x134

    if-ne v2, v0, :cond_2

    :cond_1
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    new-instance p3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v5

    sget-object v7, Landroidx/media3/common/util/a1;->f:[B

    const/4 v4, 0x0

    move-object v1, p3

    invoke-direct/range {v1 .. v7}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lw1/h;[B)V

    invoke-static {p1, p3}, Landroidx/media3/datasource/cronet/CronetDataSource;->m(Landroidx/media3/datasource/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;

    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->n(Landroidx/media3/datasource/cronet/CronetDataSource;)Landroidx/media3/common/util/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_2
    :try_start_2
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->o(Landroidx/media3/datasource/cronet/CronetDataSource;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->p(Landroidx/media3/datasource/cronet/CronetDataSource;)V

    :cond_3
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->q(Landroidx/media3/datasource/cronet/CronetDataSource;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget v0, v6, Lw1/h;->c:I

    if-ne v0, v1, :cond_4

    const/16 v0, 0x12e

    if-ne v2, v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {v2}, Landroidx/media3/datasource/cronet/CronetDataSource;->r(Landroidx/media3/datasource/cronet/CronetDataSource;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object p2

    const-string v2, "Set-Cookie"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Landroidx/media3/datasource/cronet/CronetDataSource;->s(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    if-nez v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    if-nez v0, :cond_7

    :try_start_4
    iget p1, v6, Lw1/h;->c:I

    if-ne p1, v1, :cond_7

    invoke-virtual {v6}, Lw1/h;->a()Lw1/h$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lw1/h$b;->j(Ljava/lang/String;)Lw1/h$b;

    move-result-object p1

    invoke-virtual {p1, v3}, Lw1/h$b;->d(I)Lw1/h$b;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lw1/h$b;->c([B)Lw1/h$b;

    move-result-object p1

    invoke-virtual {p1}, Lw1/h$b;->a()Lw1/h;

    move-result-object p1

    goto :goto_1

    :cond_7
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v6, p1}, Lw1/h;->g(Landroid/net/Uri;)Lw1/h;

    move-result-object p1

    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v6, Lw1/h;->e:Ljava/util/Map;

    invoke-interface {p3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v0, "Cookie"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lw1/h;->a()Lw1/h$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lw1/h$b;->e(Ljava/util/Map;)Lw1/h$b;

    move-result-object p1

    invoke-virtual {p1}, Lw1/h$b;->a()Lw1/h;

    move-result-object p1

    :cond_8
    iget-object p2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {p2}, Landroidx/media3/datasource/cronet/CronetDataSource;->t(Landroidx/media3/datasource/cronet/CronetDataSource;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {p2, p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->j(Landroidx/media3/datasource/cronet/CronetDataSource;Lw1/h;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->h(Landroidx/media3/datasource/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_7
    iget-object p2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {p2, p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->m(Landroidx/media3/datasource/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public declared-synchronized onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {p1, p2}, Landroidx/media3/datasource/cronet/CronetDataSource;->k(Landroidx/media3/datasource/cronet/CronetDataSource;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->n(Landroidx/media3/datasource/cronet/CronetDataSource;)Landroidx/media3/common/util/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroidx/media3/datasource/cronet/CronetDataSource;->l(Landroidx/media3/datasource/cronet/CronetDataSource;Z)Z

    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$c;->b:Landroidx/media3/datasource/cronet/CronetDataSource;

    invoke-static {p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->n(Landroidx/media3/datasource/cronet/CronetDataSource;)Landroidx/media3/common/util/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
