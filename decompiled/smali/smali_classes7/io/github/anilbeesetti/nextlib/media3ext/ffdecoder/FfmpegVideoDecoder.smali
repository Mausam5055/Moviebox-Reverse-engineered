.class final Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;
.super Landroidx/media3/decoder/SimpleDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/decoder/SimpleDecoder;"
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;

.field private p:J

.field private final q:[B

.field private r:Landroidx/media3/common/r;

.field private volatile s:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIIILandroidx/media3/common/r;)V
    .locals 1

    new-array p1, p1, [Landroidx/media3/decoder/DecoderInputBuffer;

    new-array p2, p2, [Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-direct {p0, p1, p2}, Landroidx/media3/decoder/SimpleDecoder;-><init>([Landroidx/media3/decoder/DecoderInputBuffer;[Landroidx/media3/decoder/h;)V

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p5, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->o:Ljava/lang/String;

    iget-object p2, p5, Landroidx/media3/common/r;->o:Ljava/lang/String;

    iget-object v0, p5, Landroidx/media3/common/r;->r:Ljava/util/List;

    invoke-static {p2, v0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->x(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object p2

    iput-object p2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->q:[B

    iput-object p5, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->r:Landroidx/media3/common/r;

    invoke-direct {p0, p1, p2, p4}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegInitialize(Ljava/lang/String;[BI)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    const-wide/16 p4, 0x0

    cmp-long p1, p1, p4

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Landroidx/media3/decoder/SimpleDecoder;->s(I)V

    return-void

    :cond_0
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    const-string p2, "Failed to initialize decoder."

    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    const-string p2, "Failed to load decoder native library."

    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native ffmpegInitialize(Ljava/lang/String;[BI)J
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private native ffmpegReceiveFrame(JILandroidx/media3/decoder/VideoDecoderOutputBuffer;Z)I
.end method

.method private native ffmpegRelease(J)V
.end method

.method private native ffmpegRenderFrame(JLandroid/view/Surface;Landroidx/media3/decoder/VideoDecoderOutputBuffer;II)I
.end method

.method private native ffmpegReset(J)J
.end method

.method private native ffmpegSendPacket(JLjava/nio/ByteBuffer;IJ)I
.end method

.method public static synthetic t(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;Landroidx/media3/decoder/h;)V
    .locals 0

    invoke-static {p0, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->y(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;Landroidx/media3/decoder/h;)V

    return-void
.end method

.method private static x(Ljava/lang/String;Ljava/util/List;)[B
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, 0x0

    const-string v2, "video/hevc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "video/avc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v2, p1

    invoke-static {p1, v0, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method private static synthetic y(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;Landroidx/media3/decoder/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/decoder/SimpleDecoder;->p(Landroidx/media3/decoder/h;)V

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    iput p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->s:I

    return-void
.end method

.method protected e()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 2

    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic f()Landroidx/media3/decoder/h;
    .locals 1

    invoke-virtual {p0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->u()Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic g(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
    .locals 0

    invoke-virtual {p0, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->v(Ljava/lang/Throwable;)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic h(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/h;Z)Landroidx/media3/decoder/DecoderException;
    .locals 0

    check-cast p2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->w(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/VideoDecoderOutputBuffer;Z)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 2

    invoke-super {p0}, Landroidx/media3/decoder/SimpleDecoder;->release()V

    iget-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    invoke-direct {p0, v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegRelease(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    return-void
.end method

.method protected u()Landroidx/media3/decoder/VideoDecoderOutputBuffer;
    .locals 2

    new-instance v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    new-instance v1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/c;

    invoke-direct {v1, p0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/c;-><init>(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;)V

    invoke-direct {v0, v1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;-><init>(Landroidx/media3/decoder/h$a;)V

    return-object v0
.end method

.method protected v(Ljava/lang/Throwable;)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;
    .locals 2

    new-instance v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected w(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/VideoDecoderOutputBuffer;Z)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;
    .locals 12

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    invoke-direct {p0, v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegReset(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    const-string p2, "Error resetting (see logcat)."

    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object p3, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v4

    iget-wide v1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    iget-wide v5, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegSendPacket(JLjava/nio/ByteBuffer;IJ)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p3, v1, :cond_1

    iput-boolean v2, p2, Landroidx/media3/decoder/h;->shouldBeSkipped:Z

    return-object v0

    :cond_1
    const/4 v3, -0x3

    const-string v4, "ffmpegDecode error: (see logcat)"

    const/4 v5, -0x2

    if-ne p3, v3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VIDEO_DECODER_ERROR_READ_FRAME: timeUs="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-ne p3, v5, :cond_3

    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    invoke-direct {p1, v4}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    :goto_0
    iget-wide v6, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-virtual {p0, v6, v7}, Landroidx/media3/decoder/SimpleDecoder;->l(J)Z

    move-result p3

    xor-int/lit8 v11, p3, 0x1

    iget-wide v7, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    iget v9, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->s:I

    move-object v6, p0

    move-object v10, p2

    invoke-direct/range {v6 .. v11}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegReceiveFrame(JILandroidx/media3/decoder/VideoDecoderOutputBuffer;Z)I

    move-result v3

    if-ne v3, v5, :cond_4

    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    invoke-direct {p1, v4}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    if-ne v3, v1, :cond_5

    iput-boolean v2, p2, Landroidx/media3/decoder/h;->shouldBeSkipped:Z

    :cond_5
    if-eqz p3, :cond_6

    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->a:Landroidx/media3/common/r;

    iput-object p1, p2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->format:Landroidx/media3/common/r;

    :cond_6
    return-object v0
.end method

.method public z(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .locals 9

    iget v0, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-wide v3, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    iget v7, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    iget v8, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    move-object v2, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegRenderFrame(JLandroid/view/Surface;Landroidx/media3/decoder/VideoDecoderOutputBuffer;II)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    const-string p2, "Buffer render error: "

    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    const-string p2, "Invalid output mode."

    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
