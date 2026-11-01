.class Lcom/mbridge/msdk/click/o$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/click/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/mbridge/msdk/click/o;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/o;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    iput-object p2, p0, Lcom/mbridge/msdk/click/o$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/click/o$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/click/o$b;->c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :try_start_0
    const-string p2, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    :try_start_0
    const-string p3, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p3}, Lcom/mbridge/msdk/click/o;->h(Lcom/mbridge/msdk/click/o;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/click/o;->a(Lcom/mbridge/msdk/click/o;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p1}, Lcom/mbridge/msdk/click/o;->i(Lcom/mbridge/msdk/click/o;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p3, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    iput-boolean v0, p3, Lcom/mbridge/msdk/click/o;->o:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x1

    if-nez p3, :cond_1

    const-string p3, "has_first_started"

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    iput-boolean v0, p1, Lcom/mbridge/msdk/click/o;->n:Z

    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/click/o;->a()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p3, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p3, p2}, Lcom/mbridge/msdk/click/o;->a(Lcom/mbridge/msdk/click/o;Ljava/lang/String;)Ljava/lang/String;

    iget-object p3, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p3}, Lcom/mbridge/msdk/click/o;->j(Lcom/mbridge/msdk/click/o;)Lcom/mbridge/msdk/click/o$f;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p3}, Lcom/mbridge/msdk/click/o;->j(Lcom/mbridge/msdk/click/o;)Lcom/mbridge/msdk/click/o$f;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/mbridge/msdk/click/o$f;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p2, v0}, Lcom/mbridge/msdk/click/o;->b(Lcom/mbridge/msdk/click/o;Z)Z

    iget-object p2, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p2}, Lcom/mbridge/msdk/click/o;->i(Lcom/mbridge/msdk/click/o;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p2}, Lcom/mbridge/msdk/click/o;->k(Lcom/mbridge/msdk/click/o;)V

    :goto_1
    monitor-exit p1

    goto :goto_4

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/click/o;->a()Ljava/lang/String;

    move-result-object p4

    monitor-enter p4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/o;->b(Lcom/mbridge/msdk/click/o;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->d(Lcom/mbridge/msdk/click/o;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->i(Lcom/mbridge/msdk/click/o;)V

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p4, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p4}, Lcom/mbridge/msdk/click/o;->j(Lcom/mbridge/msdk/click/o;)Lcom/mbridge/msdk/click/o$f;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p4}, Lcom/mbridge/msdk/click/o;->j(Lcom/mbridge/msdk/click/o;)Lcom/mbridge/msdk/click/o$f;

    move-result-object p4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->e(Lcom/mbridge/msdk/click/o;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p2, p1, p3, v0}, Lcom/mbridge/msdk/click/o$f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    :try_start_0
    sget-boolean p3, Lcom/mbridge/msdk/MBridgeConstans;->IS_SP_CBT_CF:Z

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/mbridge/msdk/click/o$b;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/click/o$b;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/mbridge/msdk/foundation/same/report/h;

    iget-object p3, p0, Lcom/mbridge/msdk/click/o$b;->c:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/mbridge/msdk/click/o$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1}, Lcom/mbridge/msdk/foundation/same/report/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 5

    const/4 p2, 0x1

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/click/o;->a()Ljava/lang/String;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v1, p2}, Lcom/mbridge/msdk/click/o;->b(Lcom/mbridge/msdk/click/o;Z)Z

    iget-object v1, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v1}, Lcom/mbridge/msdk/click/o;->d(Lcom/mbridge/msdk/click/o;)V

    iget-object v1, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v1}, Lcom/mbridge/msdk/click/o;->i(Lcom/mbridge/msdk/click/o;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->j(Lcom/mbridge/msdk/click/o;)Lcom/mbridge/msdk/click/o$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->j(Lcom/mbridge/msdk/click/o;)Lcom/mbridge/msdk/click/o$f;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebView render process crash."

    iget-object v3, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v3}, Lcom/mbridge/msdk/click/o;->e(Lcom/mbridge/msdk/click/o;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/mbridge/msdk/click/o$f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    return p2

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    invoke-static {}, Lcom/mbridge/msdk/click/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/mbridge/msdk/click/o;->a()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/click/o;->o:Z

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->l(Lcom/mbridge/msdk/click/o;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->h(Lcom/mbridge/msdk/click/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p2}, Lcom/mbridge/msdk/click/o;->m(Lcom/mbridge/msdk/click/o;)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p2}, Lcom/mbridge/msdk/click/o;->i(Lcom/mbridge/msdk/click/o;)V

    monitor-exit p1

    return v1

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v0, p2}, Lcom/mbridge/msdk/click/o;->a(Lcom/mbridge/msdk/click/o;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->j(Lcom/mbridge/msdk/click/o;)Lcom/mbridge/msdk/click/o$f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->j(Lcom/mbridge/msdk/click/o;)Lcom/mbridge/msdk/click/o$f;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mbridge/msdk/click/o$f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p2, v1}, Lcom/mbridge/msdk/click/o;->b(Lcom/mbridge/msdk/click/o;Z)Z

    iget-object p2, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p2}, Lcom/mbridge/msdk/click/o;->m(Lcom/mbridge/msdk/click/o;)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p2}, Lcom/mbridge/msdk/click/o;->i(Lcom/mbridge/msdk/click/o;)V

    monitor-exit p1

    return v1

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p1}, Lcom/mbridge/msdk/click/o;->b(Lcom/mbridge/msdk/click/o;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->c(Lcom/mbridge/msdk/click/o;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->c(Lcom/mbridge/msdk/click/o;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Referer"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {v0}, Lcom/mbridge/msdk/click/o;->c(Lcom/mbridge/msdk/click/o;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/click/o$b;->d:Lcom/mbridge/msdk/click/o;

    invoke-static {p1}, Lcom/mbridge/msdk/click/o;->c(Lcom/mbridge/msdk/click/o;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return v1

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
