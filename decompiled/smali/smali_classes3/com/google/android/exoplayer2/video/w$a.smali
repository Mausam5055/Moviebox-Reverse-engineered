.class public final Lcom/google/android/exoplayer2/video/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/exoplayer2/video/w;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/w$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/w$a;->b:Lcom/google/android/exoplayer2/video/w;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/video/w$a;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/w$a;->t(IJ)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/video/w$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/w$a;->y(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/video/w$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/w$a;->s(Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/video/w$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/w$a;->w(Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/video/w$a;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/w$a;->x(JI)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/video/w$a;Lcom/google/android/exoplayer2/video/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/w$a;->z(Lcom/google/android/exoplayer2/video/y;)V

    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/video/w$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/w$a;->u(Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public static synthetic h(Lcom/google/android/exoplayer2/video/w$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/video/w$a;->q(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic i(Lcom/google/android/exoplayer2/video/w$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/video/w$a;->v(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    return-void
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/video/w$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/w$a;->r(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic q(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->b:Lcom/google/android/exoplayer2/video/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/video/w;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/video/w;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method private synthetic r(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->b:Lcom/google/android/exoplayer2/video/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/w;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/w;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic s(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/e;->c()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->b:Lcom/google/android/exoplayer2/video/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/w;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/w;->n(Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method private synthetic t(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->b:Lcom/google/android/exoplayer2/video/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/w;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/w;->onDroppedFrames(IJ)V

    return-void
.end method

.method private synthetic u(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->b:Lcom/google/android/exoplayer2/video/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/w;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/w;->v(Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method private synthetic v(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->b:Lcom/google/android/exoplayer2/video/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/w;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/w;->w(Lcom/google/android/exoplayer2/o1;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->b:Lcom/google/android/exoplayer2/video/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/w;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/video/w;->k(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    return-void
.end method

.method private synthetic w(Ljava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->b:Lcom/google/android/exoplayer2/video/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/w;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/w;->f(Ljava/lang/Object;J)V

    return-void
.end method

.method private synthetic x(JI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->b:Lcom/google/android/exoplayer2/video/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/w;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/w;->i(JI)V

    return-void
.end method

.method private synthetic y(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->b:Lcom/google/android/exoplayer2/video/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/w;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/w;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic z(Lcom/google/android/exoplayer2/video/y;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->b:Lcom/google/android/exoplayer2/video/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/w;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/w;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/y;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/w$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/video/o;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/exoplayer2/video/o;-><init>(Lcom/google/android/exoplayer2/video/w$a;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public B(JI)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/video/v;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/v;-><init>(Lcom/google/android/exoplayer2/video/w$a;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public C(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/video/r;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/r;-><init>(Lcom/google/android/exoplayer2/video/w$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public D(Lcom/google/android/exoplayer2/video/y;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/video/m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/m;-><init>(Lcom/google/android/exoplayer2/video/w$a;Lcom/google/android/exoplayer2/video/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/exoplayer2/video/s;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/s;-><init>(Lcom/google/android/exoplayer2/video/w$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/video/p;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/p;-><init>(Lcom/google/android/exoplayer2/video/w$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/e;->c()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/video/q;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/q;-><init>(Lcom/google/android/exoplayer2/video/w$a;Lcom/google/android/exoplayer2/decoder/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public n(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/video/n;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/n;-><init>(Lcom/google/android/exoplayer2/video/w$a;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/video/t;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/t;-><init>(Lcom/google/android/exoplayer2/video/w$a;Lcom/google/android/exoplayer2/decoder/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/w$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/video/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/video/u;-><init>(Lcom/google/android/exoplayer2/video/w$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
