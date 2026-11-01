.class final Landroidx/media3/exoplayer/video/w$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final f:Landroidx/media3/exoplayer/video/w$c;


# instance fields
.field public volatile a:J

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/os/HandlerThread;

.field private d:Landroid/view/Choreographer;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/video/w$c;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/w$c;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/video/w$c;->f:Landroidx/media3/exoplayer/video/w$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/w$c;->a:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:FrameReleaseChoreographer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/w$c;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/media3/common/util/a1;->z(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/w$c;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/w$c;->d:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/video/w$c;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/video/w$c;->e:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/w$c;->d:Landroid/view/Choreographer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VideoFrameReleaseHelper"

    const-string v2, "Vsync sampling disabled due to platform error"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static d()Landroidx/media3/exoplayer/video/w$c;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/video/w$c;->f:Landroidx/media3/exoplayer/video/w$c;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/w$c;->d:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/video/w$c;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/media3/exoplayer/video/w$c;->e:I

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/w$c;->a:J

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/w$c;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public doFrame(J)V
    .locals 2

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/w$c;->a:J

    iget-object p1, p0, Landroidx/media3/exoplayer/video/w$c;->d:Landroid/view/Choreographer;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/w$c;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/w$c;->f()V

    return v0

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/w$c;->b()V

    return v0

    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/w$c;->c()V

    return v0
.end method
