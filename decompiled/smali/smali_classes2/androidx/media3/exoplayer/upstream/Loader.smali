.class public final Landroidx/media3/exoplayer/upstream/Loader;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/upstream/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/Loader$LoadTask;,
        Landroidx/media3/exoplayer/upstream/Loader$c;,
        Landroidx/media3/exoplayer/upstream/Loader$d;,
        Landroidx/media3/exoplayer/upstream/Loader$b;,
        Landroidx/media3/exoplayer/upstream/Loader$e;,
        Landroidx/media3/exoplayer/upstream/Loader$ReleaseTask;,
        Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field public static final d:Landroidx/media3/exoplayer/upstream/Loader$c;

.field public static final e:Landroidx/media3/exoplayer/upstream/Loader$c;

.field public static final f:Landroidx/media3/exoplayer/upstream/Loader$c;

.field public static final g:Landroidx/media3/exoplayer/upstream/Loader$c;


# instance fields
.field private final a:Landroidx/media3/exoplayer/util/c;

.field private b:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

.field private c:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/upstream/Loader;->g(ZJ)Landroidx/media3/exoplayer/upstream/Loader$c;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/upstream/Loader;->d:Landroidx/media3/exoplayer/upstream/Loader$c;

    const/4 v0, 0x1

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/upstream/Loader;->g(ZJ)Landroidx/media3/exoplayer/upstream/Loader$c;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/upstream/Loader;->e:Landroidx/media3/exoplayer/upstream/Loader$c;

    new-instance v0, Landroidx/media3/exoplayer/upstream/Loader$c;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/media3/exoplayer/upstream/Loader$c;-><init>(IJLandroidx/media3/exoplayer/upstream/Loader$a;)V

    sput-object v0, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$c;

    new-instance v0, Landroidx/media3/exoplayer/upstream/Loader$c;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/media3/exoplayer/upstream/Loader$c;-><init>(IJLandroidx/media3/exoplayer/upstream/Loader$a;)V

    sput-object v0, Landroidx/media3/exoplayer/upstream/Loader;->g:Landroidx/media3/exoplayer/upstream/Loader$c;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/util/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/Loader;->a:Landroidx/media3/exoplayer/util/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExoPlayer:Loader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/a1;->S0(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Landroidx/media3/exoplayer/upstream/n;

    invoke-direct {v0}, Landroidx/media3/exoplayer/upstream/n;-><init>()V

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/util/b;->a(Ljava/util/concurrent/Executor;Landroidx/media3/common/util/m;)Landroidx/media3/exoplayer/util/c;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/c;)V

    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/upstream/Loader;)Landroidx/media3/exoplayer/upstream/Loader$LoadTask;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader;->b:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/upstream/Loader;Landroidx/media3/exoplayer/upstream/Loader$LoadTask;)Landroidx/media3/exoplayer/upstream/Loader$LoadTask;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/Loader;->b:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    return-object p1
.end method

.method static synthetic c(Landroidx/media3/exoplayer/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic d(Landroidx/media3/exoplayer/upstream/Loader;)Landroidx/media3/exoplayer/util/c;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader;->a:Landroidx/media3/exoplayer/util/c;

    return-object p0
.end method

.method public static g(ZJ)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/upstream/Loader$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/exoplayer/upstream/Loader$c;-><init>(IJLandroidx/media3/exoplayer/upstream/Loader$a;)V

    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader;->b:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->cancel(Z)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader;->b:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader;->b:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    iget p1, v0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->maybeThrowError(I)V

    :cond_1
    return-void

    :cond_2
    throw v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/upstream/Loader;->l(Landroidx/media3/exoplayer/upstream/Loader$e;)V

    return-void
.end method

.method public l(Landroidx/media3/exoplayer/upstream/Loader$e;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader;->b:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->cancel(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader;->a:Landroidx/media3/exoplayer/util/c;

    new-instance v1, Landroidx/media3/exoplayer/upstream/Loader$ReleaseTask;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/upstream/Loader$ReleaseTask;-><init>(Landroidx/media3/exoplayer/upstream/Loader$e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/Loader;->a:Landroidx/media3/exoplayer/util/c;

    invoke-interface {p1}, Landroidx/media3/exoplayer/util/c;->release()V

    return-void
.end method

.method public m(Landroidx/media3/exoplayer/upstream/Loader$d;Landroidx/media3/exoplayer/upstream/Loader$b;I)J
    .locals 11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Looper;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    new-instance v0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, v9

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;-><init>(Landroidx/media3/exoplayer/upstream/Loader;Landroid/os/Looper;Landroidx/media3/exoplayer/upstream/Loader$d;Landroidx/media3/exoplayer/upstream/Loader$b;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->start(J)V

    return-wide v9
.end method

.method public maybeThrowError()V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/upstream/Loader;->j(I)V

    return-void
.end method
