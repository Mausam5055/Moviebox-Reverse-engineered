.class public final Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/b;
.super Landroidx/media3/exoplayer/audio/d0;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/common/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/b;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;[Landroidx/media3/common/audio/AudioProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Landroidx/media3/exoplayer/audio/AudioSink;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/d0;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Landroidx/media3/exoplayer/audio/AudioSink;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;[Landroidx/media3/common/audio/AudioProcessor;)V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;-><init>()V

    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->m([Landroidx/media3/common/audio/AudioProcessor;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->j()Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/b;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Landroidx/media3/exoplayer/audio/AudioSink;)V

    return-void
.end method

.method private o0(Landroidx/media3/common/r;)Z
    .locals 5

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/b;->p0(Landroidx/media3/common/r;I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget v1, p1, Landroidx/media3/common/r;->E:I

    iget v3, p1, Landroidx/media3/common/r;->F:I

    const/4 v4, 0x4

    invoke-static {v4, v1, v3}, Landroidx/media3/common/util/a1;->j0(III)Landroidx/media3/common/r;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/audio/d0;->Z(Landroidx/media3/common/r;)I

    move-result v1

    if-eq v1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const-string v0, "audio/ac3"

    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method private p0(Landroidx/media3/common/r;I)Z
    .locals 1

    iget v0, p1, Landroidx/media3/common/r;->E:I

    iget p1, p1, Landroidx/media3/common/r;->F:I

    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/a1;->j0(III)Landroidx/media3/common/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/d0;->j0(Landroidx/media3/common/r;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected bridge synthetic T(Landroidx/media3/common/r;Landroidx/media3/decoder/b;)Landroidx/media3/decoder/g;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/b;->m0(Landroidx/media3/common/r;Landroidx/media3/decoder/b;)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic Y(Landroidx/media3/decoder/g;)Landroidx/media3/common/r;
    .locals 0

    check-cast p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;

    invoke-virtual {p0, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/b;->n0(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;)Landroidx/media3/common/r;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "FfmpegAudioRenderer"

    return-object v0
.end method

.method protected k0(Landroidx/media3/common/r;)I
    .locals 3

    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/b;->p0(Landroidx/media3/common/r;I)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/b;->p0(Landroidx/media3/common/r;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p1, Landroidx/media3/common/r;->N:I

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected m0(Landroidx/media3/common/r;Landroidx/media3/decoder/b;)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;
    .locals 6

    const-string p2, "createFfmpegAudioDecoder"

    invoke-static {p2}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    iget p2, p1, Landroidx/media3/common/r;->p:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    :goto_0
    move v4, p2

    goto :goto_1

    :cond_0
    const/16 p2, 0x1680

    goto :goto_0

    :goto_1
    new-instance p2, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;

    const/16 v3, 0x10

    invoke-direct {p0, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/b;->o0(Landroidx/media3/common/r;)Z

    move-result v5

    const/16 v2, 0x10

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;-><init>(Landroidx/media3/common/r;IIIZ)V

    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    return-object p2
.end method

.method protected n0(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;)Landroidx/media3/common/r;
    .locals 2

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    const-string v1, "audio/raw"

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->B()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->z()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/r$b;->o0(I)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    return-object p1
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
