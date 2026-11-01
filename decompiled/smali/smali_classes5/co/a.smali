.class public abstract Lco/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroidx/media3/datasource/a$a;

.field private static b:Landroidx/media3/datasource/a$a;

.field private static c:Lv1/a;

.field private static d:Ljava/io/File;

.field private static e:Landroidx/media3/datasource/cache/Cache;

.field private static f:Landroidx/media3/exoplayer/offline/DownloadManager;

.field private static g:Landroidx/media3/exoplayer/offline/k;


# direct methods
.method private static a(Landroidx/media3/datasource/a$a;Landroidx/media3/datasource/cache/Cache;)Landroidx/media3/datasource/cache/a$c;
    .locals 1

    new-instance v0, Landroidx/media3/datasource/cache/a$c;

    invoke-direct {v0}, Landroidx/media3/datasource/cache/a$c;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/cache/a$c;->i(Landroidx/media3/datasource/cache/Cache;)Landroidx/media3/datasource/cache/a$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/media3/datasource/cache/a$c;->j(Landroidx/media3/datasource/a$a;)Landroidx/media3/datasource/cache/a$c;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/transsion/player/exo/ORExoDecoderType;)Landroidx/media3/exoplayer/b4;
    .locals 4

    sget-object v0, Lco/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    :cond_1
    move v2, v1

    :cond_2
    :goto_0
    new-instance v0, Lco/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lco/j;-><init>(Landroid/content/Context;Lcom/transsion/player/exo/ORExoDecoderType;)V

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/o;->o(Z)Landroidx/media3/exoplayer/o;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/o;->p(I)Landroidx/media3/exoplayer/o;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/o;->l()Landroidx/media3/exoplayer/o;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized c(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lco/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lco/a;->f:Landroidx/media3/exoplayer/offline/DownloadManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/player/shorttv/preload/b;

    new-instance v2, Landroidx/media3/datasource/cache/a$c;

    invoke-direct {v2}, Landroidx/media3/datasource/cache/a$c;-><init>()V

    invoke-static {p0}, Lco/a;->f(Landroid/content/Context;)Landroidx/media3/datasource/cache/Cache;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/datasource/cache/a$c;->i(Landroidx/media3/datasource/cache/Cache;)Landroidx/media3/datasource/cache/a$c;

    move-result-object v2

    invoke-static {p0}, Lco/a;->j(Landroid/content/Context;)Landroidx/media3/datasource/a$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/datasource/cache/a$c;->j(Landroidx/media3/datasource/a$a;)Landroidx/media3/datasource/cache/a$c;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/transsion/player/shorttv/preload/b;-><init>(Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;)V

    new-instance v2, Landroidx/media3/exoplayer/offline/DownloadManager;

    new-instance v3, Landroidx/media3/exoplayer/offline/a;

    invoke-static {p0}, Lco/a;->e(Landroid/content/Context;)Lv1/a;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/offline/a;-><init>(Lv1/a;)V

    invoke-direct {v2, p0, v3, v1}, Landroidx/media3/exoplayer/offline/DownloadManager;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/t;Landroidx/media3/exoplayer/offline/p;)V

    sput-object v2, Lco/a;->f:Landroidx/media3/exoplayer/offline/DownloadManager;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/offline/DownloadManager;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Landroidx/media3/datasource/a$a;
    .locals 3

    const-class v0, Lco/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lco/a;->a:Landroidx/media3/datasource/a$a;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Landroidx/media3/datasource/b$a;

    invoke-static {p0}, Lco/a;->j(Landroid/content/Context;)Landroidx/media3/datasource/a$a;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/media3/datasource/b$a;-><init>(Landroid/content/Context;Landroidx/media3/datasource/a$a;)V

    invoke-static {p0}, Lco/a;->f(Landroid/content/Context;)Landroidx/media3/datasource/cache/Cache;

    move-result-object p0

    invoke-static {v1, p0}, Lco/a;->a(Landroidx/media3/datasource/a$a;Landroidx/media3/datasource/cache/Cache;)Landroidx/media3/datasource/cache/a$c;

    move-result-object p0

    sput-object p0, Lco/a;->a:Landroidx/media3/datasource/a$a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lco/a;->a:Landroidx/media3/datasource/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized e(Landroid/content/Context;)Lv1/a;
    .locals 2

    const-class v0, Lco/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lco/a;->c:Lv1/a;

    if-nez v1, :cond_0

    new-instance v1, Lv1/b;

    invoke-direct {v1, p0}, Lv1/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lco/a;->c:Lv1/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lco/a;->c:Lv1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Landroidx/media3/datasource/cache/Cache;
    .locals 6

    const-class v0, Lco/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lco/a;->e:Landroidx/media3/datasource/cache/Cache;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lco/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "downloads"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Landroidx/media3/datasource/cache/SimpleCache;

    new-instance v3, Landroidx/media3/datasource/cache/q;

    const-wide/32 v4, 0x12c00000

    invoke-direct {v3, v4, v5}, Landroidx/media3/datasource/cache/q;-><init>(J)V

    invoke-static {p0}, Lco/a;->e(Landroid/content/Context;)Lv1/a;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0}, Landroidx/media3/datasource/cache/SimpleCache;-><init>(Ljava/io/File;Landroidx/media3/datasource/cache/b;Lv1/a;)V

    sput-object v2, Lco/a;->e:Landroidx/media3/datasource/cache/Cache;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lco/a;->e:Landroidx/media3/datasource/cache/Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized g(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-class v0, Lco/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lco/a;->d:Ljava/io/File;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    sput-object v1, Lco/a;->d:Ljava/io/File;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lco/a;->d:Ljava/io/File;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lco/a;->d:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/DownloadManager;
    .locals 1

    const-class v0, Lco/a;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lco/a;->c(Landroid/content/Context;)V

    sget-object p0, Lco/a;->f:Landroidx/media3/exoplayer/offline/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized i(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/k;
    .locals 3

    const-class v0, Lco/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lco/a;->g:Landroidx/media3/exoplayer/offline/k;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/offline/k;

    const-string v2, "download_channel"

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/offline/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lco/a;->g:Landroidx/media3/exoplayer/offline/k;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lco/a;->g:Landroidx/media3/exoplayer/offline/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized j(Landroid/content/Context;)Landroidx/media3/datasource/a$a;
    .locals 3

    const-class v0, Lco/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lco/a;->b:Landroidx/media3/datasource/a$a;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/datasource/cronet/CronetUtil;->a(Landroid/content/Context;)Lorg/chromium/net/CronetEngine;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Landroidx/media3/datasource/cronet/CronetDataSource$b;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/media3/datasource/cronet/CronetDataSource$b;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;)V

    sput-object v1, Lco/a;->b:Landroidx/media3/datasource/a$a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lco/a;->b:Landroidx/media3/datasource/a$a;

    if-nez p0, :cond_1

    new-instance p0, Ljava/net/CookieManager;

    invoke-direct {p0}, Ljava/net/CookieManager;-><init>()V

    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {p0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    invoke-static {p0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    new-instance p0, Landroidx/media3/datasource/c$b;

    invoke-direct {p0}, Landroidx/media3/datasource/c$b;-><init>()V

    sput-object p0, Lco/a;->b:Landroidx/media3/datasource/a$a;

    :cond_1
    sget-object p0, Lco/a;->b:Landroidx/media3/datasource/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
