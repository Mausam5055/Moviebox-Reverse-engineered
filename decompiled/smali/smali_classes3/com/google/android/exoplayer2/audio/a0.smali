.class public Lcom/google/android/exoplayer2/audio/a0;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;

# interfaces
.implements Lcom/google/android/exoplayer2/util/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/a0$b;
    }
.end annotation


# instance fields
.field private final G0:Landroid/content/Context;

.field private final H0:Lcom/google/android/exoplayer2/audio/r$a;

.field private final I0:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private J0:I

.field private K0:Z

.field private L0:Lcom/google/android/exoplayer2/o1;

.field private M0:J

.field private N0:Z

.field private O0:Z

.field private P0:Z

.field private Q0:Z

.field private R0:Lcom/google/android/exoplayer2/x2$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/l$b;Lcom/google/android/exoplayer2/mediacodec/o;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/r;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 6

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/l$b;Lcom/google/android/exoplayer2/mediacodec/o;ZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->G0:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    new-instance p1, Lcom/google/android/exoplayer2/audio/r$a;

    invoke-direct {p1, p5, p6}, Lcom/google/android/exoplayer2/audio/r$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/r;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->H0:Lcom/google/android/exoplayer2/audio/r$a;

    new-instance p1, Lcom/google/android/exoplayer2/audio/a0$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/audio/a0$b;-><init>(Lcom/google/android/exoplayer2/audio/a0;Lcom/google/android/exoplayer2/audio/a0$a;)V

    invoke-interface {p7, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->g(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V

    return-void
.end method

.method static synthetic X0(Lcom/google/android/exoplayer2/audio/a0;)Lcom/google/android/exoplayer2/audio/r$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/a0;->H0:Lcom/google/android/exoplayer2/audio/r$a;

    return-object p0
.end method

.method static synthetic Y0(Lcom/google/android/exoplayer2/audio/a0;)Lcom/google/android/exoplayer2/x2$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/a0;->R0:Lcom/google/android/exoplayer2/x2$a;

    return-object p0
.end method

.method private static Z0(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "samsung"

    sget-object v0, Lcom/google/android/exoplayer2/util/p0;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/util/p0;->b:Ljava/lang/String;

    const-string v0, "zeroflte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "herolte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "heroqlte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a1()Z
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/p0;->d:Ljava/lang/String;

    const-string v1, "ZTE B2017G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AXON 7 mini"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b1(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/o1;)I
    .locals 1

    const-string v0, "OMX.google.raw.decoder"

    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->G0:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->x0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    iget p1, p2, Lcom/google/android/exoplayer2/o1;->m:I

    return p1
.end method

.method private static d1(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/o1;ZLcom/google/android/exoplayer2/audio/AudioSink;)Ljava/util/List;
    .locals 1

    iget-object v0, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/o1;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->v()Lcom/google/android/exoplayer2/mediacodec/m;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p3, 0x0

    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/o;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->m(Lcom/google/android/exoplayer2/o1;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/o;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private g1()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/a0;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/a0;->O0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/a0;->M0:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/a0;->M0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->O0:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected A0(JJLcom/google/android/exoplayer2/mediacodec/l;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/o1;)Z
    .locals 0

    invoke-static {p6}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->L0:Lcom/google/android/exoplayer2/o1;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-static {p5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/l;

    invoke-interface {p1, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/l;->k(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/l;->k(IZ)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B0:Lcom/google/android/exoplayer2/decoder/e;

    iget p3, p1, Lcom/google/android/exoplayer2/decoder/e;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/exoplayer2/decoder/e;->f:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    return p2

    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/exoplayer2/audio/AudioSink;->c(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/l;->k(IZ)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B0:Lcom/google/android/exoplayer2/decoder/e;

    iget p3, p1, Lcom/google/android/exoplayer2/decoder/e;->e:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/exoplayer2/decoder/e;->e:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 p3, 0x138a

    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/google/android/exoplayer2/h;->i(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/o1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :goto_1
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->format:Lcom/google/android/exoplayer2/o1;

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->isRecoverable:Z

    const/16 p4, 0x1389

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/h;->i(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/o1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected B(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/decoder/g;
    .locals 8

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/m;->e(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/decoder/g;

    move-result-object v0

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/g;->e:I

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/audio/a0;->b1(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/o1;)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/audio/a0;->J0:I

    if-le v2, v3, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    move v7, v1

    new-instance v1, Lcom/google/android/exoplayer2/decoder/g;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 p1, 0x0

    :goto_0
    move v6, p1

    goto :goto_1

    :cond_1
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/g;->d:I

    goto :goto_0

    :goto_1
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/g;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;II)V

    return-object v1
.end method

.method protected F0()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/o1;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/h;->i(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/o1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method protected R0(Lcom/google/android/exoplayer2/o1;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/o1;)Z

    move-result p1

    return p1
.end method

.method protected S0(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/o1;)I
    .locals 10

    iget-object v0, p2, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->p(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/google/android/exoplayer2/y2;->a(I)I

    move-result p1

    return p1

    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p2, Lcom/google/android/exoplayer2/o1;->E:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T0(Lcom/google/android/exoplayer2/o1;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x4

    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v7, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/o1;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->v()Lcom/google/android/exoplayer2/mediacodec/m;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {v6, v5, v0}, Lcom/google/android/exoplayer2/y2;->b(III)I

    move-result p1

    return p1

    :cond_4
    const-string v2, "audio/raw"

    iget-object v7, p2, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v2, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/o1;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v3}, Lcom/google/android/exoplayer2/y2;->a(I)I

    move-result p1

    return p1

    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v7, p2, Lcom/google/android/exoplayer2/o1;->y:I

    iget v8, p2, Lcom/google/android/exoplayer2/o1;->z:I

    const/4 v9, 0x2

    invoke-static {v9, v7, v8}, Lcom/google/android/exoplayer2/util/p0;->d0(III)Lcom/google/android/exoplayer2/o1;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/o1;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v3}, Lcom/google/android/exoplayer2/y2;->a(I)I

    move-result p1

    return p1

    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/exoplayer2/audio/a0;->d1(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/o1;ZLcom/google/android/exoplayer2/audio/AudioSink;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v3}, Lcom/google/android/exoplayer2/y2;->a(I)I

    move-result p1

    return p1

    :cond_7
    if-nez v4, :cond_8

    invoke-static {v9}, Lcom/google/android/exoplayer2/y2;->a(I)I

    move-result p1

    return p1

    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/m;

    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/mediacodec/m;->m(Lcom/google/android/exoplayer2/o1;)Z

    move-result v4

    if-nez v4, :cond_a

    move v7, v3

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/mediacodec/m;

    invoke-virtual {v8, p2}, Lcom/google/android/exoplayer2/mediacodec/m;->m(Lcom/google/android/exoplayer2/o1;)Z

    move-result v9

    if-eqz v9, :cond_9

    move p1, v1

    move-object v2, v8

    goto :goto_3

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    move p1, v3

    move v3, v4

    :goto_3
    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    const/4 v6, 0x3

    :goto_4
    if-eqz v3, :cond_c

    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/mediacodec/m;->p(Lcom/google/android/exoplayer2/o1;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/16 v5, 0x10

    :cond_c
    iget-boolean p2, v2, Lcom/google/android/exoplayer2/mediacodec/m;->h:Z

    if-eqz p2, :cond_d

    const/16 p2, 0x40

    goto :goto_5

    :cond_d
    move p2, v1

    :goto_5
    if-eqz p1, :cond_e

    const/16 v1, 0x80

    :cond_e
    invoke-static {v6, v5, v0, p2, v1}, Lcom/google/android/exoplayer2/y2;->c(IIIII)I

    move-result p1

    return p1
.end method

.method protected a0(FLcom/google/android/exoplayer2/o1;[Lcom/google/android/exoplayer2/o1;)F
    .locals 4

    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    iget v3, v3, Lcom/google/android/exoplayer2/o1;->z:I

    if-eq v3, v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    int-to-float p2, v2

    mul-float/2addr p1, p2

    :goto_1
    return p1
.end method

.method public b(Lcom/google/android/exoplayer2/n2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->b(Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method protected c0(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/o1;Z)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/audio/a0;->d1(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/o1;ZLcom/google/android/exoplayer2/audio/AudioSink;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->u(Ljava/util/List;Lcom/google/android/exoplayer2/o1;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected c1(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/o1;[Lcom/google/android/exoplayer2/o1;)I
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/a0;->b1(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/o1;)I

    move-result v0

    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    invoke-virtual {p1, p2, v3}, Lcom/google/android/exoplayer2/mediacodec/m;->e(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/decoder/g;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/decoder/g;->d:I

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/audio/a0;->b1(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/o1;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected e0(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/o1;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/l$a;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->n()[Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/a0;->c1(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/o1;[Lcom/google/android/exoplayer2/o1;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/a0;->J0:I

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a0;->Z0(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->K0:Z

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/m;->c:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/a0;->J0:I

    invoke-virtual {p0, p2, v0, v1, p4}, Lcom/google/android/exoplayer2/audio/a0;->e1(Lcom/google/android/exoplayer2/o1;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object p4

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/m;->b:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->L0:Lcom/google/android/exoplayer2/o1;

    invoke-static {p1, p4, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/l$a;->a(Lcom/google/android/exoplayer2/mediacodec/m;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/o1;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/l$a;

    move-result-object p1

    return-object p1
.end method

.method protected e1(Lcom/google/android/exoplayer2/o1;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 2

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Lcom/google/android/exoplayer2/o1;->y:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "sample-rate"

    iget v1, p1, Lcom/google/android/exoplayer2/o1;->z:I

    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p2, p1, Lcom/google/android/exoplayer2/o1;->n:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/v;->e(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "max-input-size"

    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/util/v;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget p2, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    const-string p3, "priority"

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p4, p3

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/google/android/exoplayer2/audio/a0;->a1()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "operating-rate"

    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    const/16 p3, 0x1c

    if-gt p2, p3, :cond_1

    const-string p3, "audio/ac4"

    iget-object p4, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "ac4-is-sync"

    const/4 p4, 0x1

    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    const/16 p3, 0x18

    if-lt p2, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget p4, p1, Lcom/google/android/exoplayer2/o1;->y:I

    iget p1, p1, Lcom/google/android/exoplayer2/o1;->z:I

    const/4 v1, 0x4

    invoke-static {v1, p4, p1}, Lcom/google/android/exoplayer2/util/p0;->d0(III)Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->h(Lcom/google/android/exoplayer2/o1;)I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    const-string p1, "pcm-encoding"

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    const/16 p1, 0x20

    if-lt p2, p1, :cond_3

    const-string p1, "max-output-channel-count"

    const/16 p2, 0x63

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    return-object v0
.end method

.method protected f1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->O0:Z

    return-void
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/u;
    .locals 0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/n2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/a0;->g1()V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/a0;->M0:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/h;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    check-cast p2, Lcom/google/android/exoplayer2/x2$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/a0;->R0:Lcom/google/android/exoplayer2/x2$a;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioSessionId(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->e(Z)V

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/google/android/exoplayer2/audio/u;

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->j(Lcom/google/android/exoplayer2/audio/u;)V

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/google/android/exoplayer2/audio/e;

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->f(Lcom/google/android/exoplayer2/audio/e;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setVolume(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected p()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->P0:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->H0:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B0:Lcom/google/android/exoplayer2/decoder/e;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/r$a;->o(Lcom/google/android/exoplayer2/decoder/e;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/a0;->H0:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B0:Lcom/google/android/exoplayer2/decoder/e;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/r$a;->o(Lcom/google/android/exoplayer2/decoder/e;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/a0;->H0:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B0:Lcom/google/android/exoplayer2/decoder/e;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/r$a;->o(Lcom/google/android/exoplayer2/decoder/e;)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/a0;->H0:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B0:Lcom/google/android/exoplayer2/decoder/e;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/r$a;->o(Lcom/google/android/exoplayer2/decoder/e;)V

    throw v0
.end method

.method protected q(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q(ZZ)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->H0:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B0:Lcom/google/android/exoplayer2/decoder/e;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/r$a;->p(Lcom/google/android/exoplayer2/decoder/e;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->j()Lcom/google/android/exoplayer2/a3;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/a3;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->d()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->disableTunneling()V

    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->m()Le9/u1;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->k(Le9/u1;)V

    return-void
.end method

.method protected r(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r(JZ)V

    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/a0;->Q0:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->i()V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/a0;->M0:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/a0;->N0:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/a0;->O0:Z

    return-void
.end method

.method protected r0(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->H0:Lcom/google/android/exoplayer2/audio/r$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/r$a;->k(Ljava/lang/Exception;)V

    return-void
.end method

.method protected s()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/a0;->P0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->P0:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/a0;->P0:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->P0:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    :cond_1
    throw v1
.end method

.method protected s0(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/l$a;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->H0:Lcom/google/android/exoplayer2/audio/r$a;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/r$a;->m(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected t()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->play()V

    return-void
.end method

.method protected t0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->H0:Lcom/google/android/exoplayer2/audio/r$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/r$a;->n(Ljava/lang/String;)V

    return-void
.end method

.method protected u()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/a0;->g1()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u()V

    return-void
.end method

.method protected u0(Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/decoder/g;
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u0(Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/decoder/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/a0;->H0:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/p1;->b:Lcom/google/android/exoplayer2/o1;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/audio/r$a;->q(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    return-object v0
.end method

.method protected v0(Lcom/google/android/exoplayer2/o1;Landroid/media/MediaFormat;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->L0:Lcom/google/android/exoplayer2/o1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->X()Lcom/google/android/exoplayer2/mediacodec/l;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/google/android/exoplayer2/o1;->A:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->c0(I)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    :goto_0
    new-instance v4, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/o1$b;->Y(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->B:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/o1$b;->N(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->C:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/o1$b;->O(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    const-string v3, "channel-count"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/o1$b;->H(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    const-string v3, "sample-rate"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/o1$b;->f0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->K0:Z

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/google/android/exoplayer2/o1;->y:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    iget v0, p1, Lcom/google/android/exoplayer2/o1;->y:I

    if-ge v0, v3, :cond_5

    new-array v2, v0, [I

    move v0, v1

    :goto_1
    iget v3, p1, Lcom/google/android/exoplayer2/o1;->y:I

    if-ge v0, v3, :cond_5

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object p1, p2

    :goto_2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioSink;->l(Lcom/google/android/exoplayer2/o1;I[I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplayer2/o1;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/h;->f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/o1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected x0()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x0()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->I0:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    return-void
.end method

.method protected y0(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->N0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/a0;->M0:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/a0;->M0:J

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/a0;->N0:Z

    :cond_1
    return-void
.end method
