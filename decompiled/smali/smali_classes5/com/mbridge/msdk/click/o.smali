.class public Lcom/mbridge/msdk/click/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/click/o$f;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String; = "o"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/os/Handler;

.field private d:Lcom/mbridge/msdk/setting/g;

.field private e:Lcom/mbridge/msdk/click/o$f;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/webkit/WebView;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z

.field private m:Z

.field n:Z

.field o:Z

.field private final p:Ljava/lang/Runnable;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/mbridge/msdk/click/o;->a:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/mbridge/msdk/click/o;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/click/o;->l:Z

    new-instance v0, Lcom/mbridge/msdk/click/o$d;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/click/o$d;-><init>(Lcom/mbridge/msdk/click/o;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/o;->p:Ljava/lang/Runnable;

    new-instance v0, Lcom/mbridge/msdk/click/o$e;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/click/o$e;-><init>(Lcom/mbridge/msdk/click/o;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/o;->q:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/o;->c:Landroid/os/Handler;

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/click/o;->d:Lcom/mbridge/msdk/setting/g;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/h;->a()Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/click/o;->d:Lcom/mbridge/msdk/setting/g;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->d:Lcom/mbridge/msdk/setting/g;

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->I0()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/click/o;->i:Z

    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->d:Lcom/mbridge/msdk/setting/g;

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->o0()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/mbridge/msdk/click/o;->a:I

    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->d:Lcom/mbridge/msdk/setting/g;

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->o0()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/mbridge/msdk/click/o;->b:I

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/o;I)I
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/click/o;->k:I

    return p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/click/o;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/o;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/click/o;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/click/o;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/mbridge/msdk/click/o$b;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/mbridge/msdk/click/o$b;-><init>(Lcom/mbridge/msdk/click/o;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lcom/mbridge/msdk/click/o$c;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/click/o$c;-><init>(Lcom/mbridge/msdk/click/o;)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/o;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/click/o;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mbridge/msdk/click/o;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->c:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/click/o$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mbridge/msdk/click/o$a;-><init>(Lcom/mbridge/msdk/click/o;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lcom/mbridge/msdk/click/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/click/o;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string p2, "utf-8"

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/mbridge/msdk/click/o;->b:I

    iput p1, p0, Lcom/mbridge/msdk/click/o;->a:I

    sget-object p1, Lcom/mbridge/msdk/click/o;->r:Ljava/lang/String;

    iget-object p2, p0, Lcom/mbridge/msdk/click/o;->g:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/mbridge/msdk/click/o;->g:Ljava/lang/String;

    const-string v3, "*/*"

    const-string v4, "utf-8"

    move-object v1, p4

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/mbridge/msdk/click/o;->i:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "Referer"

    iget-object p3, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    invoke-virtual {p2, p4, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    invoke-virtual {p1, p4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/mbridge/msdk/click/o;->e:Lcom/mbridge/msdk/click/o$f;

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/mbridge/msdk/click/o;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/mbridge/msdk/click/o;->j:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p3, p1, p4}, Lcom/mbridge/msdk/click/o$f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/click/o;->l:Z

    return p1
.end method

.method private b()V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->c()V

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->d()V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/click/o;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/click/o;->i:Z

    return p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/click/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/click/o;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/click/o;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/click/o;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/click/o;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/click/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->b()V

    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/click/o;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/click/o;->j:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 5

    sget-object v0, Lcom/mbridge/msdk/click/o;->r:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->b()V

    iget-object v1, p0, Lcom/mbridge/msdk/click/o;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    iget-object v1, p0, Lcom/mbridge/msdk/click/o;->e:Lcom/mbridge/msdk/click/o$f;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/click/o;->f:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mbridge/msdk/click/o;->l:Z

    iget-object v4, p0, Lcom/mbridge/msdk/click/o;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/mbridge/msdk/click/o$f;->a(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :goto_0
    :try_start_1
    sget-object v2, Lcom/mbridge/msdk/click/o;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_3

    :goto_1
    sget-object v2, Lcom/mbridge/msdk/click/o;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private f()V
    .locals 5

    sget-object v0, Lcom/mbridge/msdk/click/o;->r:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->b()V

    iget-object v1, p0, Lcom/mbridge/msdk/click/o;->e:Lcom/mbridge/msdk/click/o$f;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/click/o;->f:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mbridge/msdk/click/o;->l:Z

    iget-object v4, p0, Lcom/mbridge/msdk/click/o;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/mbridge/msdk/click/o$f;->a(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :goto_0
    :try_start_1
    sget-object v2, Lcom/mbridge/msdk/click/o;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_3

    :goto_1
    sget-object v2, Lcom/mbridge/msdk/click/o;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method static synthetic f(Lcom/mbridge/msdk/click/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->g()V

    return-void
.end method

.method private g()V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->c()V

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->i()V

    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/click/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->e()V

    return-void
.end method

.method private h()V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->d()V

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->j()V

    return-void
.end method

.method static synthetic h(Lcom/mbridge/msdk/click/o;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/click/o;->m:Z

    return p0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/click/o;->p:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mbridge/msdk/click/o;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic i(Lcom/mbridge/msdk/click/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->f()V

    return-void
.end method

.method static synthetic j(Lcom/mbridge/msdk/click/o;)Lcom/mbridge/msdk/click/o$f;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/click/o;->e:Lcom/mbridge/msdk/click/o$f;

    return-object p0
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/click/o;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/click/o;->q:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mbridge/msdk/click/o;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/click/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->h()V

    return-void
.end method

.method static synthetic l(Lcom/mbridge/msdk/click/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->c()V

    return-void
.end method

.method static synthetic m(Lcom/mbridge/msdk/click/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/o;->d()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/click/o$f;)V
    .locals 0

    if-eqz p5, :cond_0

    iput-object p4, p0, Lcom/mbridge/msdk/click/o;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/mbridge/msdk/click/o;->e:Lcom/mbridge/msdk/click/o$f;

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/click/o;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "OverrideUrlLoadingListener can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/click/o$f;)V
    .locals 0

    if-eqz p6, :cond_0

    iput-object p5, p0, Lcom/mbridge/msdk/click/o;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/click/o;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/mbridge/msdk/click/o;->e:Lcom/mbridge/msdk/click/o$f;

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/click/o;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "OverrideUrlLoadingListener can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
