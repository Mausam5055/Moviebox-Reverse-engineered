.class public final Landroidx/media3/exoplayer/mediacodec/r0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/r0$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/MediaCodec;

.field private final b:Landroidx/media3/exoplayer/mediacodec/p;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;Landroidx/media3/exoplayer/mediacodec/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/r0;->b:Landroidx/media3/exoplayer/mediacodec/p;

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/mediacodec/p;->b(Landroid/media/MediaCodec;)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec;Landroidx/media3/exoplayer/mediacodec/p;Landroidx/media3/exoplayer/mediacodec/r0$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/r0;-><init>(Landroid/media/MediaCodec;Landroidx/media3/exoplayer/mediacodec/p;)V

    return-void
.end method

.method public static synthetic p(Landroidx/media3/exoplayer/mediacodec/r0;Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/media/MediaCodec;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/mediacodec/r0;->q(Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/media/MediaCodec;JJ)V

    return-void
.end method

.method private synthetic q(Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/media/MediaCodec;JJ)V
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

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public c()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public f(IILandroidx/media3/decoder/c;JI)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Landroidx/media3/decoder/c;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    move v1, p1

    move v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public i()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method public j(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 3

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    return v0
.end method

.method public k(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public l(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(Landroidx/media3/exoplayer/mediacodec/t$c;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/mediacodec/s;->a(Landroidx/media3/exoplayer/mediacodec/t;Landroidx/media3/exoplayer/mediacodec/t$c;)Z

    move-result p1

    return p1
.end method

.method public n(Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/q0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/mediacodec/q0;-><init>(Landroidx/media3/exoplayer/mediacodec/r0;Landroidx/media3/exoplayer/mediacodec/t$d;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/a;->a(Landroid/media/MediaCodec;)V

    return-void
.end method

.method public release()V
    .locals 3

    const/16 v0, 0x23

    :try_start_0
    sget v1, Landroidx/media3/common/util/a1;->a:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    const/16 v2, 0x21

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-lt v1, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->b:Landroidx/media3/exoplayer/mediacodec/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/p;->d(Landroid/media/MediaCodec;)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    return-void

    :goto_1
    sget v2, Landroidx/media3/common/util/a1;->a:I

    if-lt v2, v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->b:Landroidx/media3/exoplayer/mediacodec/p;

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/mediacodec/p;->d(Landroid/media/MediaCodec;)V

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    throw v1
.end method

.method public setVideoScalingMode(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/r0;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method
