.class final Landroidx/media3/exoplayer/mediacodec/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/c$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/MediaCodec;

.field private final b:Landroidx/media3/exoplayer/mediacodec/i;

.field private final c:Landroidx/media3/exoplayer/mediacodec/v;

.field private final d:Landroidx/media3/exoplayer/mediacodec/p;

.field private e:Z

.field private f:I


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroidx/media3/exoplayer/mediacodec/v;Landroidx/media3/exoplayer/mediacodec/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    new-instance p1, Landroidx/media3/exoplayer/mediacodec/i;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/mediacodec/i;-><init>(Landroid/os/HandlerThread;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    iput-object p4, p0, Landroidx/media3/exoplayer/mediacodec/c;->d:Landroidx/media3/exoplayer/mediacodec/p;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroidx/media3/exoplayer/mediacodec/v;Landroidx/media3/exoplayer/mediacodec/p;Landroidx/media3/exoplayer/mediacodec/c$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/c;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroidx/media3/exoplayer/mediacodec/v;Landroidx/media3/exoplayer/mediacodec/p;)V

    return-void
.end method

.method public static synthetic p(Landroidx/media3/exoplayer/mediacodec/c;Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/media/MediaCodec;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/mediacodec/c;->x(Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/media/MediaCodec;JJ)V

    return-void
.end method

.method static synthetic q(Landroidx/media3/exoplayer/mediacodec/c;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/c;->w(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method static synthetic r(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/c;->u(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/c;->t(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static t(I)Ljava/lang/String;
    .locals 1

    const-string v0, "ExoPlayer:MediaCodecAsyncAdapter:"

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/c;->v(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static u(I)Ljava/lang/String;
    .locals 1

    const-string v0, "ExoPlayer:MediaCodecQueueingThread:"

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/c;->v(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static v(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private w(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/i;->h(Landroid/media/MediaCodec;)V

    const-string v0, "configureCodec"

    invoke-static {v0}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    invoke-interface {p1}, Landroidx/media3/exoplayer/mediacodec/v;->start()V

    const-string p1, "startCodec"

    invoke-static {p1}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    sget p1, Landroidx/media3/common/util/a1;->a:I

    const/16 p2, 0x23

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->d:Landroidx/media3/exoplayer/mediacodec/p;

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/mediacodec/p;->b(Landroid/media/MediaCodec;)V

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->f:I

    return-void
.end method

.method private synthetic x(Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/media/MediaCodec;JJ)V
    .locals 6

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/t$d;->a(Landroidx/media3/exoplayer/mediacodec/t;JJ)V

    return-void
.end method


# virtual methods
.method public a(IIIJI)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/v;->a(IIIJI)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/mediacodec/v;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public c()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/i;->g()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public f(IILandroidx/media3/decoder/c;JI)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/v;->f(IILandroidx/media3/decoder/c;JI)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/v;->flush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/i;->e()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/v;->c()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/i;->c()I

    move-result v0

    return v0
.end method

.method public j(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/v;->c()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/mediacodec/i;->d(Landroid/media/MediaCodec$BufferInfo;)I

    move-result p1

    return p1
.end method

.method public k(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public l(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public m(Landroidx/media3/exoplayer/mediacodec/t$c;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/mediacodec/i;->p(Landroidx/media3/exoplayer/mediacodec/t$c;)V

    const/4 p1, 0x1

    return p1
.end method

.method public n(Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/b;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/mediacodec/b;-><init>(Landroidx/media3/exoplayer/mediacodec/c;Landroidx/media3/exoplayer/mediacodec/t$d;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/a;->a(Landroid/media/MediaCodec;)V

    return-void
.end method

.method public release()V
    .locals 6

    const/16 v0, 0x21

    const/16 v1, 0x1e

    const/16 v2, 0x23

    const/4 v3, 0x1

    :try_start_0
    iget v4, p0, Landroidx/media3/exoplayer/mediacodec/c;->f:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    invoke-interface {v4}, Landroidx/media3/exoplayer/mediacodec/v;->shutdown()V

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/mediacodec/i;->q()V

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_4

    :cond_0
    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Landroidx/media3/exoplayer/mediacodec/c;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/c;->e:Z

    if-nez v4, :cond_4

    :try_start_1
    sget v4, Landroidx/media3/common/util/a1;->a:I

    if-lt v4, v1, :cond_1

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    if-lt v4, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->d:Landroidx/media3/exoplayer/mediacodec/p;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/p;->d(Landroid/media/MediaCodec;)V

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/c;->e:Z

    goto :goto_3

    :goto_2
    sget v1, Landroidx/media3/common/util/a1;->a:I

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->d:Landroidx/media3/exoplayer/mediacodec/p;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/mediacodec/p;->d(Landroid/media/MediaCodec;)V

    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/c;->e:Z

    throw v0

    :cond_4
    :goto_3
    return-void

    :goto_4
    iget-boolean v5, p0, Landroidx/media3/exoplayer/mediacodec/c;->e:Z

    if-nez v5, :cond_8

    :try_start_2
    sget v5, Landroidx/media3/common/util/a1;->a:I

    if-lt v5, v1, :cond_5

    if-ge v5, v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_5
    if-lt v5, v2, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->d:Landroidx/media3/exoplayer/mediacodec/p;

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/p;->d(Landroid/media/MediaCodec;)V

    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/c;->e:Z

    goto :goto_7

    :goto_6
    sget v1, Landroidx/media3/common/util/a1;->a:I

    if-lt v1, v2, :cond_7

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->d:Landroidx/media3/exoplayer/mediacodec/p;

    if-eqz v1, :cond_7

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/mediacodec/p;->d(Landroid/media/MediaCodec;)V

    :cond_7
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/c;->e:Z

    throw v0

    :cond_8
    :goto_7
    throw v4
.end method

.method public setVideoScalingMode(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method
