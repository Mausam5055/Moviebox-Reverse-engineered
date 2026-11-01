.class public final Landroidx/media3/exoplayer/video/i0$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroidx/media3/exoplayer/video/i0;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/media3/exoplayer/video/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/video/i0$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/i0$a;->b:Landroidx/media3/exoplayer/video/i0;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/video/i0$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/video/i0$a;->q(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/video/i0$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/i0$a;->y(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/video/i0$a;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/i0$a;->t(IJ)V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/video/i0$a;Landroidx/media3/exoplayer/j;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/i0$a;->s(Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/video/i0$a;Landroidx/media3/exoplayer/j;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/i0$a;->u(Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/video/i0$a;Landroidx/media3/common/m0;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/i0$a;->z(Landroidx/media3/common/m0;)V

    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/video/i0$a;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/i0$a;->x(JI)V

    return-void
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/video/i0$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/video/i0$a;->v(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    return-void
.end method

.method public static synthetic i(Landroidx/media3/exoplayer/video/i0$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/i0$a;->r(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Landroidx/media3/exoplayer/video/i0$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/i0$a;->w(Ljava/lang/Object;J)V

    return-void
.end method

.method private synthetic q(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->b:Landroidx/media3/exoplayer/video/i0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/video/i0;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroidx/media3/exoplayer/video/i0;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method private synthetic r(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->b:Landroidx/media3/exoplayer/video/i0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/i0;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/i0;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic s(Landroidx/media3/exoplayer/j;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/j;->c()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->b:Landroidx/media3/exoplayer/video/i0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/i0;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/i0;->v(Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method private synthetic t(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->b:Landroidx/media3/exoplayer/video/i0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/i0;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/video/i0;->onDroppedFrames(IJ)V

    return-void
.end method

.method private synthetic u(Landroidx/media3/exoplayer/j;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->b:Landroidx/media3/exoplayer/video/i0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/i0;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/i0;->o(Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method private synthetic v(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->b:Landroidx/media3/exoplayer/video/i0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/i0;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/video/i0;->u(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    return-void
.end method

.method private synthetic w(Ljava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->b:Landroidx/media3/exoplayer/video/i0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/i0;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/video/i0;->f(Ljava/lang/Object;J)V

    return-void
.end method

.method private synthetic x(JI)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->b:Landroidx/media3/exoplayer/video/i0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/i0;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/video/i0;->i(JI)V

    return-void
.end method

.method private synthetic y(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->b:Landroidx/media3/exoplayer/video/i0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/i0;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/i0;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic z(Landroidx/media3/common/m0;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->b:Landroidx/media3/exoplayer/video/i0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/i0;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/i0;->onVideoSizeChanged(Landroidx/media3/common/m0;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/video/i0$a;->a:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/video/a0;

    invoke-direct {v3, p0, p1, v0, v1}, Landroidx/media3/exoplayer/video/a0;-><init>(Landroidx/media3/exoplayer/video/i0$a;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public B(JI)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/video/e0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/e0;-><init>(Landroidx/media3/exoplayer/video/i0$a;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public C(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/video/b0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/b0;-><init>(Landroidx/media3/exoplayer/video/i0$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public D(Landroidx/media3/common/m0;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/video/z;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/z;-><init>(Landroidx/media3/exoplayer/video/i0$a;Landroidx/media3/common/m0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Landroidx/media3/exoplayer/video/y;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/video/y;-><init>(Landroidx/media3/exoplayer/video/i0$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/video/c0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/c0;-><init>(Landroidx/media3/exoplayer/video/i0$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public m(Landroidx/media3/exoplayer/j;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/exoplayer/j;->c()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/video/h0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/h0;-><init>(Landroidx/media3/exoplayer/video/i0$a;Landroidx/media3/exoplayer/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public n(IJ)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/video/d0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/d0;-><init>(Landroidx/media3/exoplayer/video/i0$a;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public o(Landroidx/media3/exoplayer/j;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/video/f0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/f0;-><init>(Landroidx/media3/exoplayer/video/i0$a;Landroidx/media3/exoplayer/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public p(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i0$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/video/g0;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/video/g0;-><init>(Landroidx/media3/exoplayer/video/i0$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
