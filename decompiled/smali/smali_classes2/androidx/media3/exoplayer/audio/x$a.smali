.class public final Landroidx/media3/exoplayer/audio/x$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroidx/media3/exoplayer/audio/x;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;)V
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
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    return-void
.end method

.method private synthetic A(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/x;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/x;->c(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic B(Landroidx/media3/exoplayer/j;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/j;->c()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/x;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/x;->t(Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method private synthetic C(Landroidx/media3/exoplayer/j;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/x;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/x;->n(Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method private synthetic D(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/x;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/audio/x;->s(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    return-void
.end method

.method private synthetic E(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/x;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/audio/x;->d(J)V

    return-void
.end method

.method private synthetic F(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/x;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/x;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method private synthetic G(IJJ)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/audio/x;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroidx/media3/exoplayer/audio/x;->h(IJJ)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/audio/x$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/x$a;->F(Z)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/audio/x$a;IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/audio/x$a;->G(IJJ)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/audio/x$a;Landroidx/media3/exoplayer/j;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/x$a;->C(Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/audio/x$a;Landroidx/media3/exoplayer/j;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/x$a;->B(Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/audio/x$a;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/audio/x$a;->E(J)V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/audio/x$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/x$a;->y(Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/audio/x$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/x$a;->v(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/audio/x$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/audio/x$a;->D(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    return-void
.end method

.method public static synthetic i(Landroidx/media3/exoplayer/audio/x$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/x$a;->x(Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method public static synthetic j(Landroidx/media3/exoplayer/audio/x$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/x$a;->w(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic k(Landroidx/media3/exoplayer/audio/x$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/audio/x$a;->z(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic l(Landroidx/media3/exoplayer/audio/x$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/x$a;->A(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic v(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/x;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/x;->g(Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic w(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/x;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/x;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic x(Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/x;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/x;->j(Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method private synthetic y(Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/x;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/x;->k(Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method private synthetic z(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->b:Landroidx/media3/exoplayer/audio/x;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/audio/x;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroidx/media3/exoplayer/audio/x;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public H(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/u;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/audio/u;-><init>(Landroidx/media3/exoplayer/audio/x$a;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public I(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/m;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/audio/m;-><init>(Landroidx/media3/exoplayer/audio/x$a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public J(IJJ)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Landroidx/media3/exoplayer/audio/v;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/audio/v;-><init>(Landroidx/media3/exoplayer/audio/x$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/l;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/audio/l;-><init>(Landroidx/media3/exoplayer/audio/x$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/r;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/audio/r;-><init>(Landroidx/media3/exoplayer/audio/x$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public o(Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/n;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/audio/n;-><init>(Landroidx/media3/exoplayer/audio/x$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public p(Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/w;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/audio/w;-><init>(Landroidx/media3/exoplayer/audio/x$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public q(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Landroidx/media3/exoplayer/audio/o;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/audio/o;-><init>(Landroidx/media3/exoplayer/audio/x$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/p;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/audio/p;-><init>(Landroidx/media3/exoplayer/audio/x$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public s(Landroidx/media3/exoplayer/j;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/exoplayer/j;->c()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/t;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/audio/t;-><init>(Landroidx/media3/exoplayer/audio/x$a;Landroidx/media3/exoplayer/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public t(Landroidx/media3/exoplayer/j;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/q;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/audio/q;-><init>(Landroidx/media3/exoplayer/audio/x$a;Landroidx/media3/exoplayer/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public u(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/x$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/s;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/audio/s;-><init>(Landroidx/media3/exoplayer/audio/x$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
