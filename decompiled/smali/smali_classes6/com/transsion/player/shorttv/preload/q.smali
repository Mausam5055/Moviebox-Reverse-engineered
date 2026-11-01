.class public final Lcom/transsion/player/shorttv/preload/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/player/shorttv/preload/q;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final c:Lkotlin/Lazy;

.field private static final d:Landroid/os/HandlerThread;

.field private static final e:Landroid/os/Handler;

.field private static final f:J

.field private static final g:Lkotlin/jvm/functions/Function0;

.field private static final h:Lcom/transsion/player/shorttv/preload/q$b;

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/player/shorttv/preload/q;

    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;-><init>()V

    sput-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/transsion/player/shorttv/preload/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/transsion/player/shorttv/preload/h;

    invoke-direct {v1}, Lcom/transsion/player/shorttv/preload/h;-><init>()V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    sput-object v1, Lcom/transsion/player/shorttv/preload/q;->c:Lkotlin/Lazy;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VideoPreloadUtil"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/player/shorttv/preload/q;->d:Landroid/os/HandlerThread;

    const-wide/16 v2, 0x64

    sput-wide v2, Lcom/transsion/player/shorttv/preload/q;->f:J

    new-instance v2, Lcom/transsion/player/shorttv/preload/i;

    invoke-direct {v2}, Lcom/transsion/player/shorttv/preload/i;-><init>()V

    sput-object v2, Lcom/transsion/player/shorttv/preload/q;->g:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/transsion/player/shorttv/preload/q$b;

    invoke-direct {v2}, Lcom/transsion/player/shorttv/preload/q$b;-><init>()V

    sput-object v2, Lcom/transsion/player/shorttv/preload/q;->h:Lcom/transsion/player/shorttv/preload/q$b;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Lcom/transsion/player/shorttv/preload/q$a;

    invoke-direct {v3, v1}, Lcom/transsion/player/shorttv/preload/q$a;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/transsion/player/shorttv/preload/q;->e:Landroid/os/Handler;

    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/a;->h(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/offline/DownloadManager;->d(Landroidx/media3/exoplayer/offline/DownloadManager$d;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A()V
    .locals 1

    sget-boolean v0, Lcom/transsion/player/shorttv/preload/q;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/player/shorttv/preload/q;->i:Z

    invoke-direct {p0}, Lcom/transsion/player/shorttv/preload/q;->p()V

    return-void
.end method

.method private final B()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/player/shorttv/preload/q;->i:Z

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->e:Landroid/os/Handler;

    sget-object v1, Lcom/transsion/player/shorttv/preload/q;->g:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/transsion/player/shorttv/preload/k;

    invoke-direct {v2, v1}, Lcom/transsion/player/shorttv/preload/k;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final C(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final E(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Loo/e;->a:Loo/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreload   key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "VideoPreloadUtil"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->d(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->o()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2766

    const/4 v2, 0x0

    const-class v3, Lcom/transsion/player/exo/DemoDownloadService;

    invoke-static {v0, v3, p0, v1, v2}, Landroidx/media3/exoplayer/offline/DownloadService;->z(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)V

    return-void
.end method

.method private static final F()Lkotlin/Unit;
    .locals 10

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/a;->h(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/media3/exoplayer/offline/c;

    iget v2, v1, Landroidx/media3/exoplayer/offline/c;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/offline/c;->a()J

    move-result-wide v3

    iget-wide v5, v1, Landroidx/media3/exoplayer/offline/c;->e:J

    invoke-virtual {v1}, Landroidx/media3/exoplayer/offline/c;->b()F

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "progress 111:  download.requestId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "     bytesDownloaded:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  contentLength:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  percentDownloaded:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/player/shorttv/preload/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v3, v3, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/player/shorttv/preload/a;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/offline/c;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/transsion/player/shorttv/preload/a;->h(J)V

    iget-wide v3, v1, Landroidx/media3/exoplayer/offline/c;->e:J

    invoke-virtual {v2, v3, v4}, Lcom/transsion/player/shorttv/preload/a;->g(J)V

    invoke-virtual {v2}, Lcom/transsion/player/shorttv/preload/a;->b()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/transsion/player/shorttv/preload/a;->d()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v1, v7, v5

    if-gtz v1, :cond_0

    cmp-long v1, v5, v3

    if-gez v1, :cond_0

    sget-object v1, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-virtual {v2}, Lcom/transsion/player/shorttv/preload/a;->e()Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    const-string v3, "id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/player/shorttv/preload/q;->x(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    sget-boolean v0, Lcom/transsion/player/shorttv/preload/q;->i:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->p()V

    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->q(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic b()Landroid/app/Application;
    .locals 1

    invoke-static {}, Lcom/transsion/player/shorttv/preload/q;->m()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->r(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/player/shorttv/preload/a;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->v(Lcom/transsion/player/shorttv/preload/a;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->y(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lao/e;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->u(Lao/e;)V

    return-void
.end method

.method public static synthetic g(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->C(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic h()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/player/shorttv/preload/q;->F()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/shorttv/preload/q;->E(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic j()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic k(Lcom/transsion/player/shorttv/preload/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/shorttv/preload/q;->A()V

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/player/shorttv/preload/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/shorttv/preload/q;->B()V

    return-void
.end method

.method private static final m()Landroid/app/Application;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method private final o()Landroid/content/Context;
    .locals 2

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private final p()V
    .locals 5

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->e:Landroid/os/Handler;

    sget-object v1, Lcom/transsion/player/shorttv/preload/q;->g:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/transsion/player/shorttv/preload/n;

    invoke-direct {v2, v1}, Lcom/transsion/player/shorttv/preload/n;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/transsion/player/shorttv/preload/o;

    invoke-direct {v2, v1}, Lcom/transsion/player/shorttv/preload/o;-><init>(Lkotlin/jvm/functions/Function0;)V

    sget-wide v3, Lcom/transsion/player/shorttv/preload/q;->f:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final q(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final r(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final u(Lao/e;)V
    .locals 1

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-virtual {v0, p0}, Lcom/transsion/player/shorttv/preload/q;->n(Lao/e;)Lcom/transsion/player/shorttv/preload/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/player/shorttv/preload/q;->s(Lcom/transsion/player/shorttv/preload/a;)Lcom/transsion/player/shorttv/preload/a;

    return-void
.end method

.method private static final v(Lcom/transsion/player/shorttv/preload/a;)V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->b()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->d()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->a()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preloadVideo id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " downloadLength:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  maxLength:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " contentLength:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPreloadUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->d()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->f()Z

    move-result v0

    const-class v2, Lcom/transsion/player/exo/DemoDownloadService;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4, v3, v3}, Landroidx/media3/exoplayer/offline/DownloadService;->z(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkToStart restart  shortTVItem:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/a;->e()Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v4

    invoke-static {v0, v2, v4, v3}, Landroidx/media3/exoplayer/offline/DownloadService;->x(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkToStart add    shortTVItem:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private static final y(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Loo/e;->a:Loo/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePreload   key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "VideoPreloadUtil"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->d(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-direct {v0}, Lcom/transsion/player/shorttv/preload/q;->o()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/transsion/player/exo/DemoDownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Landroidx/media3/exoplayer/offline/DownloadService;->y(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/player/shorttv/preload/m;

    invoke-direct {v0, p1}, Lcom/transsion/player/shorttv/preload/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/player/shorttv/preload/q;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final G(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "?"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz p1, :cond_1

    if-ltz v0, :cond_1

    sget-object v0, Loo/d;->a:Loo/d$a;

    const-string v1, "?"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Loo/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object v0, Loo/d;->a:Loo/d$a;

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {v0, p1}, Loo/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final n(Lao/e;)Lcom/transsion/player/shorttv/preload/a;
    .locals 32

    move-object/from16 v0, p1

    const-string v1, "shortTVItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/player/shorttv/preload/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lao/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/player/shorttv/preload/a;

    if-eqz v2, :cond_0

    sget-object v3, Loo/e;->a:Loo/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDownloadRequest [from map]  shortTVItem:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "VideoPreloadUtil"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object v2

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lco/a;->h(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/offline/DownloadManager;->f()Landroidx/media3/exoplayer/offline/f;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lao/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/offline/f;->h(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/c;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    if-eqz v3, :cond_1

    iget-object v3, v3, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lao/e;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v4, Loo/e;->a:Loo/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDownloadRequest [from currentDownloads]   shortTVItem:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "VideoPreloadUtil"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v1, Lcom/transsion/player/shorttv/preload/a;

    invoke-virtual/range {p1 .. p1}, Lao/e;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    const-string v0, "request"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v14, v2, Landroidx/media3/exoplayer/offline/c;->e:J

    invoke-virtual {v2}, Landroidx/media3/exoplayer/offline/c;->a()J

    move-result-wide v16

    const-wide/32 v18, 0x4b000

    const/16 v20, 0x1

    move-object v10, v1

    invoke-direct/range {v10 .. v20}, Lcom/transsion/player/shorttv/preload/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/media3/exoplayer/offline/DownloadRequest;JJJZ)V

    return-object v1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lao/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v23

    new-instance v3, Lcom/transsion/player/shorttv/preload/a;

    new-instance v4, Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->b(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->a()Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v4

    const-string v5, "build(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v29, 0x4b000

    const/16 v31, 0x0

    const-wide/16 v25, -0x1

    const-wide/16 v27, 0x0

    move-object/from16 v21, v3

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v31}, Lcom/transsion/player/shorttv/preload/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/media3/exoplayer/offline/DownloadRequest;JJJZ)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Loo/e;->a:Loo/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDownloadRequest [from new]  shortTVItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "VideoPreloadUtil"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object v3
.end method

.method public final s(Lcom/transsion/player/shorttv/preload/a;)Lcom/transsion/player/shorttv/preload/a;
    .locals 1

    const-string v0, "shortTVDownloadBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/player/shorttv/preload/p;

    invoke-direct {v0, p1}, Lcom/transsion/player/shorttv/preload/p;-><init>(Lcom/transsion/player/shorttv/preload/a;)V

    invoke-virtual {p0, v0}, Lcom/transsion/player/shorttv/preload/q;->z(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public final t(Lao/e;)V
    .locals 1

    const-string v0, "shortTVItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/player/shorttv/preload/j;

    invoke-direct {v0, p1}, Lcom/transsion/player/shorttv/preload/j;-><init>(Lao/e;)V

    invoke-virtual {p0, v0}, Lcom/transsion/player/shorttv/preload/q;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w(Lao/e;)Lcom/transsion/player/shorttv/preload/a;
    .locals 1

    const-string v0, "shortTVItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/player/shorttv/preload/q;->n(Lao/e;)Lcom/transsion/player/shorttv/preload/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/player/shorttv/preload/q;->s(Lcom/transsion/player/shorttv/preload/a;)Lcom/transsion/player/shorttv/preload/a;

    return-object p1
.end method

.method public final x(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/player/shorttv/preload/l;

    invoke-direct {v0, p1}, Lcom/transsion/player/shorttv/preload/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/player/shorttv/preload/q;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final z(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
