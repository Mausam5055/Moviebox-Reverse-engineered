.class final Landroidx/media3/exoplayer/b2$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/video/i0;
.implements Landroidx/media3/exoplayer/audio/x;
.implements Li2/h;
.implements Le2/b;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;
.implements Landroidx/media3/exoplayer/e$b;
.implements Landroidx/media3/exoplayer/k4$b;
.implements Landroidx/media3/exoplayer/ExoPlayer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/b2;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/b2;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/b2$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2$c;-><init>(Landroidx/media3/exoplayer/b2;)V

    return-void
.end method

.method public static synthetic A(Landroidx/media3/common/x;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2$c;->J(Landroidx/media3/common/x;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method public static synthetic B(Lu1/b;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2$c;->H(Lu1/b;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method public static synthetic C(Landroidx/media3/common/m0;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2$c;->N(Landroidx/media3/common/m0;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method public static synthetic D(Landroidx/media3/common/m;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2$c;->L(Landroidx/media3/common/m;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method public static synthetic E(ZLandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2$c;->K(ZLandroidx/media3/common/a0$d;)V

    return-void
.end method

.method public static synthetic F(Landroidx/media3/exoplayer/b2$c;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2$c;->I(Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private static synthetic G(Ljava/util/List;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onCues(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic H(Lu1/b;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onCues(Lu1/b;)V

    return-void
.end method

.method private synthetic I(Landroidx/media3/common/a0$d;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->U0(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/v;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/media3/common/a0$d;->onMediaMetadataChanged(Landroidx/media3/common/v;)V

    return-void
.end method

.method private static synthetic J(Landroidx/media3/common/x;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onMetadata(Landroidx/media3/common/x;)V

    return-void
.end method

.method private static synthetic K(ZLandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method private static synthetic L(Landroidx/media3/common/m;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onDeviceInfoChanged(Landroidx/media3/common/m;)V

    return-void
.end method

.method private static synthetic M(IZLandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/a0$d;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method private static synthetic N(Landroidx/media3/common/m0;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onVideoSizeChanged(Landroidx/media3/common/m0;)V

    return-void
.end method

.method public static synthetic y(IZLandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/b2$c;->M(IZLandroidx/media3/common/a0$d;)V

    return-void
.end method

.method public static synthetic z(Ljava/util/List;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2$c;->G(Ljava/util/List;Landroidx/media3/common/a0$d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ly1/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ly1/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ly1/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ly1/a;->d(J)V

    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ly1/a;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method public f(Ljava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ly1/a;->f(Ljava/lang/Object;J)V

    iget-object p2, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {p2}, Landroidx/media3/exoplayer/b2;->l1(Landroidx/media3/exoplayer/b2;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {p1}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    move-result-object p1

    new-instance p2, Landroidx/media3/exoplayer/k2;

    invoke-direct {p2}, Landroidx/media3/exoplayer/k2;-><init>()V

    const/16 p3, 0x1a

    invoke-virtual {p1, p3, p2}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ly1/a;->g(Ljava/lang/Exception;)V

    return-void
.end method

.method public h(IJJ)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Ly1/a;->h(IJJ)V

    return-void
.end method

.method public i(JI)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ly1/a;->i(JI)V

    return-void
.end method

.method public j(Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ly1/a;->j(Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method public k(Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ly1/a;->k(Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method public l(I)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {p1}, Landroidx/media3/exoplayer/b2;->b1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/exoplayer/k4;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/exoplayer/b2;->c1(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/m;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->d1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->e1(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/m;)Landroidx/media3/common/m;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/i2;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/i2;-><init>(Landroidx/media3/common/m;)V

    const/16 p1, 0x1d

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/b2;->a1(Landroidx/media3/exoplayer/b2;ZI)V

    return-void
.end method

.method public n(Landroidx/media3/exoplayer/j;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->m1(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/j;)Landroidx/media3/exoplayer/j;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ly1/a;->n(Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method public o(Landroidx/media3/exoplayer/j;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->g1(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/j;)Landroidx/media3/exoplayer/j;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ly1/a;->o(Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Ly1/a;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/g2;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/g2;-><init>(Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onCues(Lu1/b;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->Q0(Landroidx/media3/exoplayer/b2;Lu1/b;)Lu1/b;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/d2;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/d2;-><init>(Lu1/b;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ly1/a;->onDroppedFrames(IJ)V

    return-void
.end method

.method public onMetadata(Landroidx/media3/common/x;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->R0(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/v;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/v;->a()Landroidx/media3/common/v$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/common/v$b;->M(Landroidx/media3/common/x;)Landroidx/media3/common/v$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/v$b;->J()Landroidx/media3/common/v;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/b2;->S0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/v;)Landroidx/media3/common/v;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->T0(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/v;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v1}, Landroidx/media3/exoplayer/b2;->U0(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v1, v0}, Landroidx/media3/exoplayer/b2;->V0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/v;)Landroidx/media3/common/v;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/e2;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/e2;-><init>(Landroidx/media3/exoplayer/b2$c;)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/f2;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/f2;-><init>(Landroidx/media3/common/x;)V

    const/16 p1, 0x1c

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {p1}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/util/t;->f()V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->O0(Landroidx/media3/exoplayer/b2;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->P0(Landroidx/media3/exoplayer/b2;Z)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/l2;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/l2;-><init>(Z)V

    const/16 p1, 0x17

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->Z0(Landroidx/media3/exoplayer/b2;Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/b2;->Y0(Landroidx/media3/exoplayer/b2;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->X0(Landroidx/media3/exoplayer/b2;Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroidx/media3/exoplayer/b2;->Y0(Landroidx/media3/exoplayer/b2;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/b2;->Y0(Landroidx/media3/exoplayer/b2;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Ly1/a;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/m0;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->j1(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/m0;)Landroidx/media3/common/m0;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/h2;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/h2;-><init>(Landroidx/media3/common/m0;)V

    const/16 p1, 0x19

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public p(Landroid/view/Surface;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->X0(Landroidx/media3/exoplayer/b2;Ljava/lang/Object;)V

    return-void
.end method

.method public q(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->X0(Landroidx/media3/exoplayer/b2;Ljava/lang/Object;)V

    return-void
.end method

.method public r(IZ)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/j2;

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/j2;-><init>(IZ)V

    const/16 p1, 0x1e

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public s(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->N0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/r;)Landroidx/media3/common/r;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ly1/a;->s(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {p1, p3, p4}, Landroidx/media3/exoplayer/b2;->Y0(Landroidx/media3/exoplayer/b2;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->W0(Landroidx/media3/exoplayer/b2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->X0(Landroidx/media3/exoplayer/b2;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {p1}, Landroidx/media3/exoplayer/b2;->W0(Landroidx/media3/exoplayer/b2;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->X0(Landroidx/media3/exoplayer/b2;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroidx/media3/exoplayer/b2;->Y0(Landroidx/media3/exoplayer/b2;II)V

    return-void
.end method

.method public t(Landroidx/media3/exoplayer/j;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ly1/a;->t(Landroidx/media3/exoplayer/j;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->N0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/r;)Landroidx/media3/common/r;

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->m1(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/j;)Landroidx/media3/exoplayer/j;

    return-void
.end method

.method public u(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->i1(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/r;)Landroidx/media3/common/r;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ly1/a;->u(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    return-void
.end method

.method public v(Landroidx/media3/exoplayer/j;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Ly1/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ly1/a;->v(Landroidx/media3/exoplayer/j;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->i1(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/r;)Landroidx/media3/common/r;

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->g1(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/j;)Landroidx/media3/exoplayer/j;

    return-void
.end method

.method public synthetic w(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/p0;->a(Landroidx/media3/exoplayer/ExoPlayer$a;Z)V

    return-void
.end method

.method public x(Z)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {p1}, Landroidx/media3/exoplayer/b2;->f1(Landroidx/media3/exoplayer/b2;)V

    return-void
.end method
