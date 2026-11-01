.class final Landroidx/media3/exoplayer/video/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/video/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private a:Landroidx/media3/common/r;

.field final synthetic b:Landroidx/media3/exoplayer/video/e;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/video/e;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/video/e;Landroidx/media3/exoplayer/video/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/e$b;-><init>(Landroidx/media3/exoplayer/video/e;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/video/e$b;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/e$b;->h()V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/video/e$b;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/e$b;->f()V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/video/e$b;Landroidx/media3/common/m0;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/e$b;->g(Landroidx/media3/common/m0;)V

    return-void
.end method

.method private synthetic f()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/e;->D(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/exoplayer/video/VideoSink$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink$a;->c(Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method private synthetic g(Landroidx/media3/common/m0;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/e;->D(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/exoplayer/video/VideoSink$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-interface {v0, v1, p1}, Landroidx/media3/exoplayer/video/VideoSink$a;->b(Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/common/m0;)V

    return-void
.end method

.method private synthetic h()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/e;->D(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/exoplayer/video/VideoSink$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink$a;->a(Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/e;->y(Landroidx/media3/exoplayer/video/e;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/video/g;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/video/g;-><init>(Landroidx/media3/exoplayer/video/e$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/e;->C(Landroidx/media3/exoplayer/video/e;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoSink$b;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink$b;->b()V

    return-void
.end method

.method public b(JJZ)V
    .locals 7

    if-eqz p5, :cond_0

    iget-object p5, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-static {p5}, Landroidx/media3/exoplayer/video/e;->z(Landroidx/media3/exoplayer/video/e;)Landroid/view/Surface;

    move-result-object p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-static {p5}, Landroidx/media3/exoplayer/video/e;->y(Landroidx/media3/exoplayer/video/e;)Ljava/util/concurrent/Executor;

    move-result-object p5

    new-instance v0, Landroidx/media3/exoplayer/video/f;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/f;-><init>(Landroidx/media3/exoplayer/video/e$b;)V

    invoke-interface {p5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p5, p0, Landroidx/media3/exoplayer/video/e$b;->a:Landroidx/media3/common/r;

    if-nez p5, :cond_1

    new-instance p5, Landroidx/media3/common/r$b;

    invoke-direct {p5}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {p5}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p5

    :cond_1
    move-object v5, p5

    iget-object p5, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-static {p5}, Landroidx/media3/exoplayer/video/e;->B(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/exoplayer/video/t;

    move-result-object v0

    iget-object p5, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-static {p5}, Landroidx/media3/exoplayer/video/e;->A(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/common/util/i;

    move-result-object p5

    invoke-interface {p5}, Landroidx/media3/common/util/i;->nanoTime()J

    move-result-wide v3

    const/4 v6, 0x0

    move-wide v1, p3

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/t;->f(JJLandroidx/media3/common/r;Landroid/media/MediaFormat;)V

    iget-object p3, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-static {p3}, Landroidx/media3/exoplayer/video/e;->C(Landroidx/media3/exoplayer/video/e;)Ljava/util/Queue;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/video/VideoSink$b;

    invoke-interface {p3, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink$b;->a(J)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/m0;)V
    .locals 2

    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    iget v1, p1, Landroidx/media3/common/m0;->a:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v1, p1, Landroidx/media3/common/m0;->b:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    const-string v1, "video/raw"

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->a:Landroidx/media3/common/r;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/e;->y(Landroidx/media3/exoplayer/video/e;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/video/h;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/h;-><init>(Landroidx/media3/exoplayer/video/e$b;Landroidx/media3/common/m0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
