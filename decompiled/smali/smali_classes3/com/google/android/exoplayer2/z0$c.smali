.class final Lcom/google/android/exoplayer2/z0$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/video/w;
.implements Lcom/google/android/exoplayer2/audio/r;
.implements Lba/o;
.implements Lcom/google/android/exoplayer2/metadata/e;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$b;
.implements Lcom/google/android/exoplayer2/f$b;
.implements Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$a;
.implements Lcom/google/android/exoplayer2/f3$b;
.implements Lcom/google/android/exoplayer2/ExoPlayer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/z0;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/z0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/z0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/z0$c;-><init>(Lcom/google/android/exoplayer2/z0;)V

    return-void
.end method

.method public static synthetic A(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/z0$c;->K(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/o2$d;)V

    return-void
.end method

.method public static synthetic B(Lcom/google/android/exoplayer2/r;Lcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/z0$c;->M(Lcom/google/android/exoplayer2/r;Lcom/google/android/exoplayer2/o2$d;)V

    return-void
.end method

.method public static synthetic C(Lba/f;Lcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/z0$c;->I(Lba/f;Lcom/google/android/exoplayer2/o2$d;)V

    return-void
.end method

.method public static synthetic D(ZLcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/z0$c;->L(ZLcom/google/android/exoplayer2/o2$d;)V

    return-void
.end method

.method public static synthetic E(IZLcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/z0$c;->N(IZLcom/google/android/exoplayer2/o2$d;)V

    return-void
.end method

.method public static synthetic F(Lcom/google/android/exoplayer2/z0$c;Lcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/z0$c;->J(Lcom/google/android/exoplayer2/o2$d;)V

    return-void
.end method

.method public static synthetic G(Lcom/google/android/exoplayer2/video/y;Lcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/z0$c;->O(Lcom/google/android/exoplayer2/video/y;Lcom/google/android/exoplayer2/o2$d;)V

    return-void
.end method

.method private static synthetic H(Ljava/util/List;Lcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/o2$d;->onCues(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic I(Lba/f;Lcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/o2$d;->onCues(Lba/f;)V

    return-void
.end method

.method private synthetic J(Lcom/google/android/exoplayer2/o2$d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->t0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/a2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/o2$d;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method private static synthetic K(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/o2$d;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method private static synthetic L(ZLcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/o2$d;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method private static synthetic M(Lcom/google/android/exoplayer2/r;Lcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/o2$d;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/r;)V

    return-void
.end method

.method private static synthetic N(IZLcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/o2$d;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method private static synthetic O(Lcom/google/android/exoplayer2/video/y;Lcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/o2$d;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/y;)V

    return-void
.end method

.method public static synthetic z(Ljava/util/List;Lcom/google/android/exoplayer2/o2$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/z0$c;->H(Ljava/util/List;Lcom/google/android/exoplayer2/o2$d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1}, Le9/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1}, Le9/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1}, Le9/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le9/a;->d(J)V

    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1}, Le9/a;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method public f(Ljava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Le9/a;->f(Ljava/lang/Object;J)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {p2}, Lcom/google/android/exoplayer2/z0;->M0(Lcom/google/android/exoplayer2/z0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/z0;->L0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/util/r;

    move-result-object p1

    new-instance p2, Lcom/google/android/exoplayer2/g1;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/g1;-><init>()V

    const/16 p3, 0x1a

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/util/r;->l(ILcom/google/android/exoplayer2/util/r$a;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1}, Le9/a;->g(Ljava/lang/Exception;)V

    return-void
.end method

.method public h(IJJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Le9/a;->h(IJJ)V

    return-void
.end method

.method public i(JI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Le9/a;->i(JI)V

    return-void
.end method

.method public j(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/z0;->N0(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/decoder/e;)Lcom/google/android/exoplayer2/decoder/e;

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1}, Le9/a;->j(Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public k(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/z0;->J0(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/o1;

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le9/a;->k(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    return-void
.end method

.method public l(I)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/z0;->C0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/f3;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/z0;->D0(Lcom/google/android/exoplayer2/f3;)Lcom/google/android/exoplayer2/r;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->E0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/z0;->F0(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/r;)Lcom/google/android/exoplayer2/r;

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->L0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/util/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/f1;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/f1;-><init>(Lcom/google/android/exoplayer2/r;)V

    const/16 p1, 0x1d

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/r;->l(ILcom/google/android/exoplayer2/util/r$a;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/z0;->B0(Lcom/google/android/exoplayer2/z0;ZII)V

    return-void
.end method

.method public n(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1}, Le9/a;->n(Lcom/google/android/exoplayer2/decoder/e;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/z0;->J0(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/o1;

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/z0;->H0(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/decoder/e;)Lcom/google/android/exoplayer2/decoder/e;

    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1}, Le9/a;->o(Lcom/google/android/exoplayer2/decoder/e;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/z0;->m0(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/o1;

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/z0;->N0(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/decoder/e;)Lcom/google/android/exoplayer2/decoder/e;

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Le9/a;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onCues(Lba/f;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/z0;->p0(Lcom/google/android/exoplayer2/z0;Lba/f;)Lba/f;

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->L0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/util/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/b1;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/b1;-><init>(Lba/f;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/r;->l(ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->L0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/util/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/a1;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/a1;-><init>(Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/r;->l(ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Le9/a;->onDroppedFrames(IJ)V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->q0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/a2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a2;->b()Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/a2$b;->I(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a2$b;->F()Lcom/google/android/exoplayer2/a2;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/z0;->r0(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/a2;

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->s0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/a2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v1}, Lcom/google/android/exoplayer2/z0;->t0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/a2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/z0;->u0(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/a2;

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->L0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/util/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/c1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/c1;-><init>(Lcom/google/android/exoplayer2/z0$c;)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->L0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/util/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/d1;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/d1;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/z0;->L0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/r;->f()V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->n0(Lcom/google/android/exoplayer2/z0;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/z0;->o0(Lcom/google/android/exoplayer2/z0;Z)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->L0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/util/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/i1;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/i1;-><init>(Z)V

    const/16 p1, 0x17

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/r;->l(ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/z0;->y0(Lcom/google/android/exoplayer2/z0;Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/z0;->x0(Lcom/google/android/exoplayer2/z0;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/z0;->w0(Lcom/google/android/exoplayer2/z0;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/z0;->x0(Lcom/google/android/exoplayer2/z0;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/z0;->x0(Lcom/google/android/exoplayer2/z0;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Le9/a;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/y;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/z0;->K0(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/video/y;)Lcom/google/android/exoplayer2/video/y;

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->L0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/util/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/h1;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/h1;-><init>(Lcom/google/android/exoplayer2/video/y;)V

    const/16 p1, 0x19

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/r;->l(ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public p(Landroid/view/Surface;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/z0;->w0(Lcom/google/android/exoplayer2/z0;Ljava/lang/Object;)V

    return-void
.end method

.method public q(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/z0;->w0(Lcom/google/android/exoplayer2/z0;Ljava/lang/Object;)V

    return-void
.end method

.method public r(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->L0(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/util/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/e1;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/e1;-><init>(IZ)V

    const/16 p1, 0x1e

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/r;->l(ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public s(F)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/z0;->z0(Lcom/google/android/exoplayer2/z0;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {p1, p3, p4}, Lcom/google/android/exoplayer2/z0;->x0(Lcom/google/android/exoplayer2/z0;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->v0(Lcom/google/android/exoplayer2/z0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/z0;->w0(Lcom/google/android/exoplayer2/z0;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/z0;->v0(Lcom/google/android/exoplayer2/z0;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/z0;->w0(Lcom/google/android/exoplayer2/z0;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/z0;->x0(Lcom/google/android/exoplayer2/z0;II)V

    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/z0;->m0(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/o1;

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le9/a;->t(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    return-void
.end method

.method public u(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z0;->getPlayWhenReady()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/z0;->A0(ZI)I

    move-result v2

    invoke-static {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/z0;->B0(Lcom/google/android/exoplayer2/z0;ZII)V

    return-void
.end method

.method public v(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/z0;->H0(Lcom/google/android/exoplayer2/z0;Lcom/google/android/exoplayer2/decoder/e;)Lcom/google/android/exoplayer2/decoder/e;

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/z0;->I0(Lcom/google/android/exoplayer2/z0;)Le9/a;

    move-result-object v0

    invoke-interface {v0, p1}, Le9/a;->v(Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public synthetic w(Lcom/google/android/exoplayer2/o1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/l;->a(Lcom/google/android/exoplayer2/video/w;Lcom/google/android/exoplayer2/o1;)V

    return-void
.end method

.method public x(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/z0$c;->a:Lcom/google/android/exoplayer2/z0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/z0;->G0(Lcom/google/android/exoplayer2/z0;)V

    return-void
.end method

.method public synthetic y(Lcom/google/android/exoplayer2/o1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/g;->a(Lcom/google/android/exoplayer2/audio/r;Lcom/google/android/exoplayer2/o1;)V

    return-void
.end method
