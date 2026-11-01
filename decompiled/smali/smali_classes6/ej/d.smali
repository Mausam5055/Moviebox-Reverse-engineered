.class public Lej/d;
.super Lcom/bumptech/glide/RequestManager;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/request/RequestListener;)Lej/d;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->addDefaultRequestListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    check-cast p1, Lej/d;

    return-object p1
.end method

.method public bridge synthetic addDefaultRequestListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestManager;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->a(Lcom/bumptech/glide/request/RequestListener;)Lej/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->b(Lcom/bumptech/glide/request/RequestOptions;)Lej/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->c(Ljava/lang/Class;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asBitmap()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    invoke-virtual {p0}, Lej/d;->d()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asDrawable()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    invoke-virtual {p0}, Lej/d;->e()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asFile()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    invoke-virtual {p0}, Lej/d;->f()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asGif()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    invoke-virtual {p0}, Lej/d;->g()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Lcom/bumptech/glide/request/RequestOptions;)Lej/d;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    check-cast p1, Lej/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/Class;)Lej/c;
    .locals 3

    new-instance v0, Lej/c;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lej/c;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic clearOnStop()Lcom/bumptech/glide/RequestManager;
    .locals 1

    invoke-virtual {p0}, Lej/d;->h()Lej/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public bridge synthetic download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->i(Ljava/lang/Object;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic downloadOnly()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    invoke-virtual {p0}, Lej/d;->j()Lej/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public f()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asFile()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public g()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public declared-synchronized h()Lej/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->clearOnStop()Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    check-cast v0, Lej/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public i(Ljava/lang/Object;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public j()Lej/c;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lej/c;

    return-object v0
.end method

.method public k(Landroid/graphics/Bitmap;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public l(Landroid/graphics/drawable/Drawable;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->k(Landroid/graphics/Bitmap;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->l(Landroid/graphics/drawable/Drawable;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->m(Landroid/net/Uri;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->n(Ljava/io/File;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->o(Ljava/lang/Integer;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->p(Ljava/lang/Object;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->q(Ljava/lang/String;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->r(Ljava/net/URL;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->s([B)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->k(Landroid/graphics/Bitmap;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->l(Landroid/graphics/drawable/Drawable;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->m(Landroid/net/Uri;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->n(Ljava/io/File;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->o(Ljava/lang/Integer;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->p(Ljava/lang/Object;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->q(Ljava/lang/String;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->r(Ljava/net/URL;)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->s([B)Lej/c;

    move-result-object p1

    return-object p1
.end method

.method public m(Landroid/net/Uri;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public n(Ljava/io/File;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public o(Ljava/lang/Integer;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public p(Ljava/lang/Object;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public q(Ljava/lang/String;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public r(Ljava/net/URL;)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public s([B)Lej/c;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lej/c;

    return-object p1
.end method

.method public bridge synthetic setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .locals 0

    invoke-virtual {p0, p1}, Lej/d;->t(Lcom/bumptech/glide/request/RequestOptions;)Lej/d;

    move-result-object p1

    return-object p1
.end method

.method protected setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 1

    instance-of v0, p1, Lej/b;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lej/b;

    invoke-direct {v0}, Lej/b;-><init>()V

    invoke-virtual {v0, p1}, Lej/b;->a(Lcom/bumptech/glide/request/BaseRequestOptions;)Lej/b;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized t(Lcom/bumptech/glide/request/RequestOptions;)Lej/d;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    check-cast p1, Lej/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
