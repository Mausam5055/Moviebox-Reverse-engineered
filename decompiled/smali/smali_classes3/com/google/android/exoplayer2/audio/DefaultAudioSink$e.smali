.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/o1;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:[Lcom/google/android/exoplayer2/audio/AudioProcessor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/o1;IIIIIII[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->a:Lcom/google/android/exoplayer2/o1;

    iput p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->b:I

    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->c:I

    iput p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->d:I

    iput p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    iput p6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->f:I

    iput p7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->g:I

    iput p8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->h:I

    iput-object p9, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->i:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-void
.end method

.method private d(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->f(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->g(Lcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1
.end method

.method private e(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;
    .locals 7

    new-instance v6, Landroid/media/AudioTrack;

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->i(Lcom/google/android/exoplayer2/audio/e;Z)Landroid/media/AudioAttributes;

    move-result-object v1

    iget p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->f:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->g:I

    invoke-static {p1, p2, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r(III)Landroid/media/AudioFormat;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->h:I

    const/4 v4, 0x1

    move-object v0, v6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v6
.end method

.method private f(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->f:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->g:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r(III)Landroid/media/AudioFormat;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->i(Lcom/google/android/exoplayer2/audio/e;Z)Landroid/media/AudioAttributes;

    move-result-object p1

    new-instance p2, Landroid/media/AudioTrack$Builder;

    invoke-direct {p2}, Landroid/media/AudioTrack$Builder;-><init>()V

    invoke-virtual {p2, p1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->h:I

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->c:I

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/audio/y0;->a(Landroid/media/AudioTrack$Builder;Z)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1
.end method

.method private g(Lcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;
    .locals 8

    iget p1, p1, Lcom/google/android/exoplayer2/audio/e;->c:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->g0(I)I

    move-result v1

    if-nez p2, :cond_0

    new-instance p1, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->f:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->g:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->h:I

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object p1

    :cond_0
    new-instance p1, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->f:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->g:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->h:I

    const/4 v6, 0x1

    move-object v0, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object p1
.end method

.method private static i(Lcom/google/android/exoplayer2/audio/e;Z)Landroid/media/AudioAttributes;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->j()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/e;->b()Lcom/google/android/exoplayer2/audio/e$d;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/e$d;->a:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method private static j()Landroid/media/AudioAttributes;
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


# virtual methods
.method public a(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;
    .locals 8

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->d(ZLcom/google/android/exoplayer2/audio/e;I)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 p2, 0x1

    if-ne v1, p2, :cond_0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->f:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->h:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->a:Lcom/google/android/exoplayer2/o1;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->l()Z

    move-result v6

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;-><init>(IIIILcom/google/android/exoplayer2/o1;ZLjava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p1

    :goto_0
    move-object v7, p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_0

    :goto_1
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->f:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->h:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->a:Lcom/google/android/exoplayer2/o1;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->l()Z

    move-result v6

    const/4 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;-><init>(IIIILcom/google/android/exoplayer2/o1;ZLjava/lang/Exception;)V

    throw p1
.end method

.method public b(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;)Z
    .locals 2

    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->c:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->g:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->f:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->f:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->d:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->d:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(I)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;
    .locals 11

    new-instance v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->a:Lcom/google/android/exoplayer2/o1;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->b:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->c:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->d:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->f:I

    iget v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->g:I

    iget-object v9, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->i:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-object v0, v10

    move v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;-><init>(Lcom/google/android/exoplayer2/o1;IIIIIII[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-object v10
.end method

.method public h(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public k(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->a:Lcom/google/android/exoplayer2/o1;

    iget v0, v0, Lcom/google/android/exoplayer2/o1;->z:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public l()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
