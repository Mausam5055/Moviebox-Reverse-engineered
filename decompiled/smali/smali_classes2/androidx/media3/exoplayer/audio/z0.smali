.class public Landroidx/media3/exoplayer/audio/z0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;I)Landroid/media/AudioTrack;
    .locals 7

    new-instance v6, Landroid/media/AudioTrack;

    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->d:Z

    invoke-direct {p0, p2, v0}, Landroidx/media3/exoplayer/audio/z0;->e(Landroidx/media3/common/c;Z)Landroid/media/AudioAttributes;

    move-result-object v1

    iget p2, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->b:I

    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->c:I

    iget v2, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->a:I

    invoke-static {p2, v0, v2}, Landroidx/media3/common/util/a1;->L(III)Landroid/media/AudioFormat;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->f:I

    const/4 v4, 0x1

    move-object v0, v6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v6
.end method

.method private c(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;I)Landroid/media/AudioTrack;
    .locals 3

    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->b:I

    iget v1, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->c:I

    iget v2, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->a:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/a1;->L(III)Landroid/media/AudioFormat;

    move-result-object v0

    iget-boolean v1, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->d:Z

    invoke-direct {p0, p2, v1}, Landroidx/media3/exoplayer/audio/z0;->e(Landroidx/media3/common/c;Z)Landroid/media/AudioAttributes;

    move-result-object p2

    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    invoke-virtual {v1, p2}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p2

    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->f:I

    invoke-virtual {p2, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p2

    sget p3, Landroidx/media3/common/util/a1;->a:I

    const/16 v0, 0x1d

    if-lt p3, v0, :cond_0

    iget-boolean p1, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->e:Z

    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/audio/z0;->g(Landroid/media/AudioTrack$Builder;Z)V

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/audio/z0;->d(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroidx/media3/common/c;Z)Landroid/media/AudioAttributes;
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/z0;->f()Landroid/media/AudioAttributes;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/c;->a()Landroidx/media3/common/c$d;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/c$d;->a:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method private f()Landroid/media/AudioAttributes;
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private g(Landroid/media/AudioTrack$Builder;Z)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/audio/y0;->a(Landroid/media/AudioTrack$Builder;Z)Landroid/media/AudioTrack$Builder;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;I)Landroid/media/AudioTrack;
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/z0;->c(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;I)Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/z0;->b(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;I)Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1
.end method

.method protected d(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack$Builder;
    .locals 0

    return-object p1
.end method
