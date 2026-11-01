.class public Landroidx/media3/exoplayer/audio/a1;
.super Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;

# interfaces
.implements Landroidx/media3/exoplayer/x2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/a1$c;,
        Landroidx/media3/exoplayer/audio/a1$b;
    }
.end annotation


# instance fields
.field private final F0:Landroid/content/Context;

.field private final G0:Landroidx/media3/exoplayer/audio/x$a;

.field private final H0:Landroidx/media3/exoplayer/audio/AudioSink;

.field private final I0:Landroidx/media3/exoplayer/mediacodec/p;

.field private J0:I

.field private K0:Z

.field private L0:Z

.field private M0:Landroidx/media3/common/r;

.field private N0:Landroidx/media3/common/r;

.field private O0:J

.field private P0:Z

.field private Q0:Z

.field private R0:Z

.field private S0:I

.field private T0:Z

.field private U0:J

.field private V0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/t$b;Landroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Landroidx/media3/exoplayer/audio/AudioSink;)V
    .locals 10

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/p;

    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/p;-><init>()V

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/audio/a1;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/t$b;Landroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/exoplayer/mediacodec/p;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/t$b;Landroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/exoplayer/mediacodec/p;)V
    .locals 6

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media3/exoplayer/mediacodec/t$b;Landroidx/media3/exoplayer/mediacodec/h0;ZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->F0:Landroid/content/Context;

    iput-object p7, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    iput-object p8, p0, Landroidx/media3/exoplayer/audio/a1;->I0:Landroidx/media3/exoplayer/mediacodec/p;

    const/16 p1, -0x3e8

    iput p1, p0, Landroidx/media3/exoplayer/audio/a1;->S0:I

    new-instance p1, Landroidx/media3/exoplayer/audio/x$a;

    invoke-direct {p1, p5, p6}, Landroidx/media3/exoplayer/audio/x$a;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->G0:Landroidx/media3/exoplayer/audio/x$a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/a1;->U0:J

    new-instance p1, Landroidx/media3/exoplayer/audio/a1$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/audio/a1$c;-><init>(Landroidx/media3/exoplayer/audio/a1;Landroidx/media3/exoplayer/audio/a1$a;)V

    invoke-interface {p7, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->j(Landroidx/media3/exoplayer/audio/AudioSink$b;)V

    return-void
.end method

.method static synthetic A1(Landroidx/media3/exoplayer/audio/a1;)Landroidx/media3/exoplayer/w3$a;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0()Landroidx/media3/exoplayer/w3$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B1(Landroidx/media3/exoplayer/audio/a1;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->H()V

    return-void
.end method

.method private static C1(Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "samsung"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

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

.method private static D1(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "OMX.google.opus.decoder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "c2.android.opus.decoder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "c2.android.vorbis.decoder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static E1()Z
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

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

.method private F1(Landroidx/media3/common/r;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->g(Landroidx/media3/common/r;)Landroidx/media3/exoplayer/audio/k;

    move-result-object p1

    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/k;->a:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/k;->b:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x600

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    :goto_0
    iget-boolean p1, p1, Landroidx/media3/exoplayer/audio/k;->c:Z

    if-eqz p1, :cond_2

    or-int/lit16 v0, v0, 0x800

    :cond_2
    return v0
.end method

.method private G1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I
    .locals 1

    const-string v0, "OMX.google.raw.decoder"

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroidx/media3/common/util/a1;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->F0:Landroid/content/Context;

    invoke-static {p1}, Landroidx/media3/common/util/a1;->K0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    iget p1, p2, Landroidx/media3/common/r;->p:I

    return p1
.end method

.method private static I1(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZLandroidx/media3/exoplayer/audio/AudioSink;)Ljava/util/List;
    .locals 1

    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p3, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->a(Landroidx/media3/common/r;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->p()Landroidx/media3/exoplayer/mediacodec/w;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->m(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private L1(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setAudioSessionId(I)V

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->I0:Landroidx/media3/exoplayer/mediacodec/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/mediacodec/p;->e(I)V

    :cond_0
    return-void
.end method

.method private M1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Landroidx/media3/common/util/a1;->a:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Landroidx/media3/exoplayer/audio/a1;->S0:I

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v3, "importance"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/t;->b(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private N1()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/a1;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/a1;->P0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/a1;->O0:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/a1;->O0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->P0:Z

    :cond_1
    return-void
.end method

.method static synthetic x1(Landroidx/media3/exoplayer/audio/a1;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/a1;->R0:Z

    return p1
.end method

.method static synthetic y1(Landroidx/media3/exoplayer/audio/a1;)Landroidx/media3/exoplayer/audio/x$a;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/a1;->G0:Landroidx/media3/exoplayer/audio/x$a;

    return-object p0
.end method

.method static synthetic z1(Landroidx/media3/exoplayer/audio/a1;)Landroidx/media3/exoplayer/w3$a;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0()Landroidx/media3/exoplayer/w3$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected C()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->Q0:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->M0:Landroidx/media3/common/r;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/a1;->U0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->V0:Z

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->G0:Landroidx/media3/exoplayer/audio/x$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/x$a;->s(Landroidx/media3/exoplayer/j;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/a1;->G0:Landroidx/media3/exoplayer/audio/x$a;

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/audio/x$a;->s(Landroidx/media3/exoplayer/j;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/a1;->G0:Landroidx/media3/exoplayer/audio/x$a;

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/audio/x$a;->s(Landroidx/media3/exoplayer/j;)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/a1;->G0:Landroidx/media3/exoplayer/audio/x$a;

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/audio/x$a;->s(Landroidx/media3/exoplayer/j;)V

    throw v0
.end method

.method protected D(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D(ZZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->G0:Landroidx/media3/exoplayer/audio/x$a;

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/audio/x$a;->t(Landroidx/media3/exoplayer/j;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->t()Landroidx/media3/exoplayer/z3;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/media3/exoplayer/z3;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {p1}, Landroidx/media3/exoplayer/audio/AudioSink;->d()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {p1}, Landroidx/media3/exoplayer/audio/AudioSink;->disableTunneling()V

    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->x()Ly1/f4;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink;->p(Ly1/f4;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink;->r(Landroidx/media3/common/util/i;)V

    return-void
.end method

.method protected F(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F(JZ)V

    iget-object p3, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {p3}, Landroidx/media3/exoplayer/audio/AudioSink;->flush()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/a1;->O0:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/a1;->U0:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/a1;->V0:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/a1;->R0:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/a1;->P0:Z

    return-void
.end method

.method protected G()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->release()V

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->I0:Landroidx/media3/exoplayer/mediacodec/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/p;->c()V

    :cond_0
    return-void
.end method

.method protected H1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;[Landroidx/media3/common/r;)I
    .locals 5

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/audio/a1;->G1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

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

    invoke-virtual {p1, p2, v3}, Landroidx/media3/exoplayer/mediacodec/w;->e(Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;

    move-result-object v4

    iget v4, v4, Landroidx/media3/exoplayer/k;->d:I

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v3}, Landroidx/media3/exoplayer/audio/a1;->G1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected I()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->R0:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/a1;->U0:J

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->V0:Z

    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/a1;->Q0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->Q0:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->reset()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/a1;->Q0:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->Q0:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->reset()V

    :cond_1
    throw v1
.end method

.method protected J()V
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->play()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->T0:Z

    return-void
.end method

.method protected J1(Landroidx/media3/common/r;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 3

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Landroidx/media3/common/r;->E:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "sample-rate"

    iget v1, p1, Landroidx/media3/common/r;->F:I

    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p2, p1, Landroidx/media3/common/r;->r:Ljava/util/List;

    invoke-static {v0, p2}, Landroidx/media3/common/util/x;->e(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "max-input-size"

    invoke-static {v0, p2, p3}, Landroidx/media3/common/util/x;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget p2, Landroidx/media3/common/util/a1;->a:I

    const/16 p3, 0x17

    const/4 v1, 0x0

    if-lt p2, p3, :cond_0

    const-string p3, "priority"

    invoke-virtual {v0, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p4, p3

    if-eqz p3, :cond_0

    invoke-static {}, Landroidx/media3/exoplayer/audio/a1;->E1()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "operating-rate"

    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    const/16 p3, 0x1c

    if-gt p2, p3, :cond_1

    const-string p3, "audio/ac4"

    iget-object p4, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "ac4-is-sync"

    const/4 p4, 0x1

    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    const/16 p3, 0x18

    if-lt p2, p3, :cond_2

    iget-object p3, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    iget p4, p1, Landroidx/media3/common/r;->E:I

    iget p1, p1, Landroidx/media3/common/r;->F:I

    const/4 v2, 0x4

    invoke-static {v2, p4, p1}, Landroidx/media3/common/util/a1;->j0(III)Landroidx/media3/common/r;

    move-result-object p1

    invoke-interface {p3, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->o(Landroidx/media3/common/r;)I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    const-string p1, "pcm-encoding"

    invoke-virtual {v0, p1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    const/16 p1, 0x20

    if-lt p2, p1, :cond_3

    const-string p1, "max-output-channel-count"

    const/16 p3, 0x63

    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    const/16 p1, 0x23

    if-lt p2, p1, :cond_4

    iget p1, p0, Landroidx/media3/exoplayer/audio/a1;->S0:I

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-string p2, "importance"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_4
    return-object v0
.end method

.method protected K()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/a1;->N1()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->T0:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->pause()V

    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K()V

    return-void
.end method

.method protected K1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->P0:Z

    return-void
.end method

.method protected M0(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->G0:Landroidx/media3/exoplayer/audio/x$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/x$a;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method protected N0(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/t$a;JJ)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->G0:Landroidx/media3/exoplayer/audio/x$a;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/x$a;->q(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected O0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->G0:Landroidx/media3/exoplayer/audio/x$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/x$a;->r(Ljava/lang/String;)V

    return-void
.end method

.method protected P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;
    .locals 2

    iget-object v0, p1, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/r;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->M0:Landroidx/media3/common/r;

    invoke-super {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/a1;->G0:Landroidx/media3/exoplayer/audio/x$a;

    invoke-virtual {v1, v0, p1}, Landroidx/media3/exoplayer/audio/x$a;->u(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    return-object p1
.end method

.method protected Q0(Landroidx/media3/common/r;Landroid/media/MediaFormat;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->N0:Landroidx/media3/common/r;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/media3/common/r;->G:I

    goto :goto_0

    :cond_2
    sget v0, Landroidx/media3/common/util/a1;->a:I

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

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i0(I)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    :goto_0
    new-instance v4, Landroidx/media3/common/r$b;

    invoke-direct {v4}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {v4, v3}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/media3/common/r$b;->o0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v3, p1, Landroidx/media3/common/r;->H:I

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->Z(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v3, p1, Landroidx/media3/common/r;->I:I

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->a0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v3, p1, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v3, p1, Landroidx/media3/common/r;->m:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->X(Ljava/lang/Object;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v3, p1, Landroidx/media3/common/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v3, p1, Landroidx/media3/common/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v3, p1, Landroidx/media3/common/r;->c:Ljava/util/List;

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->i0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v3, p1, Landroidx/media3/common/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v3, p1, Landroidx/media3/common/r;->e:I

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v3, p1, Landroidx/media3/common/r;->f:I

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    const-string v3, "channel-count"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object v0

    const-string v3, "sample-rate"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->K0:Z

    if-eqz v0, :cond_6

    iget v0, p2, Landroidx/media3/common/r;->E:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    iget v0, p1, Landroidx/media3/common/r;->E:I

    if-ge v0, v3, :cond_6

    new-array v2, v0, [I

    move v0, v1

    :goto_1
    iget v3, p1, Landroidx/media3/common/r;->E:I

    if-ge v0, v3, :cond_5

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move-object p1, p2

    goto :goto_3

    :cond_6
    iget-boolean p1, p0, Landroidx/media3/exoplayer/audio/a1;->L0:Z

    if-eqz p1, :cond_5

    iget p1, p2, Landroidx/media3/common/r;->E:I

    invoke-static {p1}, Ll2/v0;->a(I)[I

    move-result-object v2

    goto :goto_2

    :goto_3
    :try_start_0
    sget p2, Landroidx/media3/common/util/a1;->a:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->t()Landroidx/media3/exoplayer/z3;

    move-result-object p2

    iget p2, p2, Landroidx/media3/exoplayer/z3;->a:I

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->t()Landroidx/media3/exoplayer/z3;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/z3;->a:I

    invoke-interface {p2, v0}, Landroidx/media3/exoplayer/audio/AudioSink;->k(I)V

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_7
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {p2, v1}, Landroidx/media3/exoplayer/audio/AudioSink;->k(I)V

    :cond_8
    :goto_4
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {p2, p1, v1, v2}, Landroidx/media3/exoplayer/audio/AudioSink;->l(Landroidx/media3/common/r;I[I)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_5
    iget-object p2, p1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;->format:Landroidx/media3/common/r;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected R0(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink;->n(J)V

    return-void
.end method

.method protected T(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;
    .locals 8

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/w;->e(Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;

    move-result-object v0

    iget v1, v0, Landroidx/media3/exoplayer/k;->e:I

    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0(Landroidx/media3/common/r;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x8000

    or-int/2addr v1, v2

    :cond_0
    invoke-direct {p0, p1, p3}, Landroidx/media3/exoplayer/audio/a1;->G1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    move-result v2

    iget v3, p0, Landroidx/media3/exoplayer/audio/a1;->J0:I

    if-le v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x40

    :cond_1
    move v7, v1

    new-instance v1, Landroidx/media3/exoplayer/k;

    iget-object v3, p1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    if-eqz v7, :cond_2

    const/4 p1, 0x0

    :goto_0
    move v6, p1

    goto :goto_1

    :cond_2
    iget p1, v0, Landroidx/media3/exoplayer/k;->d:I

    goto :goto_0

    :goto_1
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/k;-><init>(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;II)V

    return-object v1
.end method

.method protected T0()V
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T0()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->handleDiscontinuity()V

    return-void
.end method

.method protected X0(JJLandroidx/media3/exoplayer/mediacodec/t;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/r;)Z
    .locals 0

    invoke-static {p6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/a1;->U0:J

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->N0:Landroidx/media3/common/r;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-static {p5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/t;

    invoke-interface {p1, p7, p3}, Landroidx/media3/exoplayer/mediacodec/t;->k(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5, p7, p3}, Landroidx/media3/exoplayer/mediacodec/t;->k(IZ)V

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget p3, p1, Landroidx/media3/exoplayer/j;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Landroidx/media3/exoplayer/j;->f:I

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {p1}, Landroidx/media3/exoplayer/audio/AudioSink;->handleDiscontinuity()V

    return p2

    :cond_2
    :try_start_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {p1, p6, p10, p11, p9}, Landroidx/media3/exoplayer/audio/AudioSink;->c(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-interface {p5, p7, p3}, Landroidx/media3/exoplayer/mediacodec/t;->k(IZ)V

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget p3, p1, Landroidx/media3/exoplayer/j;->e:I

    add-int/2addr p3, p9

    iput p3, p1, Landroidx/media3/exoplayer/j;->e:I

    return p2

    :cond_4
    iput-wide p10, p0, Landroidx/media3/exoplayer/audio/a1;->U0:J

    return p3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_0
    iget-boolean p2, p1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->t()Landroidx/media3/exoplayer/z3;

    move-result-object p3

    iget p3, p3, Landroidx/media3/exoplayer/z3;->a:I

    if-eqz p3, :cond_5

    const/16 p3, 0x138b

    goto :goto_1

    :cond_5
    const/16 p3, 0x138a

    :goto_1
    invoke-virtual {p0, p1, p14, p2, p3}, Landroidx/media3/exoplayer/i;->r(Ljava/lang/Throwable;Landroidx/media3/common/r;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :goto_2
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/a1;->M0:Landroidx/media3/common/r;

    iget-boolean p3, p1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->isRecoverable:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->t()Landroidx/media3/exoplayer/z3;

    move-result-object p4

    iget p4, p4, Landroidx/media3/exoplayer/z3;->a:I

    if-eqz p4, :cond_6

    const/16 p4, 0x138c

    goto :goto_3

    :cond_6
    const/16 p4, 0x1389

    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/i;->r(Ljava/lang/Throwable;Landroidx/media3/common/r;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public b(Landroidx/media3/common/z;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->b(Landroidx/media3/common/z;)V

    return-void
.end method

.method protected c1()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->playToEndOfStream()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/a1;->U0:J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->V0:Z
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->format:Landroidx/media3/common/r;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x138b

    goto :goto_2

    :cond_1
    const/16 v3, 0x138a

    :goto_2
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/media3/exoplayer/i;->r(Ljava/lang/Throwable;Landroidx/media3/common/r;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public getMediaClock()Landroidx/media3/exoplayer/x2;
    .locals 0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/z;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/a1;->N1()V

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/a1;->O0:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/a1;->L1(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink;->e(Z)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/audio/a1;->S0:I

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/a1;->M1()V

    goto :goto_0

    :cond_3
    sget p1, Landroidx/media3/common/util/a1;->a:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_7

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/audio/a1$b;->a(Landroidx/media3/exoplayer/audio/AudioSink;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    check-cast p2, Landroidx/media3/common/f;

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/f;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink;->q(Landroidx/media3/common/f;)V

    goto :goto_0

    :cond_5
    check-cast p2, Landroidx/media3/common/c;

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/c;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink;->f(Landroidx/media3/common/c;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink;->setVolume(F)V

    :cond_7
    :goto_0
    return-void
.end method

.method public i()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->R0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/a1;->R0:Z

    return v0
.end method

.method public isEnded()Z
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->isEnded()Z

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

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isReady()Z

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

.method protected p0(FLandroidx/media3/common/r;[Landroidx/media3/common/r;)F
    .locals 4

    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    iget v3, v3, Landroidx/media3/common/r;->F:I

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

.method protected r0(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;Z)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-static {p1, p2, p3, v0}, Landroidx/media3/exoplayer/audio/a1;->I1(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZLandroidx/media3/exoplayer/audio/AudioSink;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->n(Ljava/util/List;Landroidx/media3/common/r;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected r1(Landroidx/media3/common/r;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->t()Landroidx/media3/exoplayer/z3;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/z3;->a:I

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/a1;->F1(Landroidx/media3/common/r;)I

    move-result v0

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->t()Landroidx/media3/exoplayer/z3;

    move-result-object v1

    iget v1, v1, Landroidx/media3/exoplayer/z3;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/media3/common/r;->H:I

    if-nez v0, :cond_1

    iget v0, p1, Landroidx/media3/common/r;->I:I

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->a(Landroidx/media3/common/r;)Z

    move-result p1

    return p1
.end method

.method protected s0(JJZ)J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/a1;->U0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0(JJZ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->i()J

    move-result-wide v0

    iget-boolean v4, p0, Landroidx/media3/exoplayer/audio/a1;->V0:Z

    if-nez v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-super/range {p0 .. p5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0(JJZ)J

    move-result-wide p1

    return-wide p1

    :cond_1
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/a1;->U0:J

    sub-long/2addr v4, p1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_2
    long-to-float p1, v4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/a1;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/a1;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/z;->a:F

    goto :goto_0

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    iget-boolean p5, p0, Landroidx/media3/exoplayer/audio/a1;->T0:Z

    if-eqz p5, :cond_4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object p5

    invoke-interface {p5}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    sub-long/2addr v0, p3

    sub-long/2addr p1, v0

    :cond_4
    const-wide/16 p3, 0x2710

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method protected s1(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;)I
    .locals 10

    iget-object v0, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    return p1

    :cond_0
    iget v0, p2, Landroidx/media3/common/r;->N:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t1(Landroidx/media3/common/r;)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x4

    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->p()Landroidx/media3/exoplayer/mediacodec/w;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/audio/a1;->F1(Landroidx/media3/common/r;)I

    move-result v0

    iget-object v6, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v6, p2}, Landroidx/media3/exoplayer/audio/AudioSink;->a(Landroidx/media3/common/r;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 p1, 0x20

    invoke-static {v5, v4, p1, v0}, Landroidx/media3/exoplayer/x3;->c(IIII)I

    move-result p1

    return p1

    :cond_3
    move v6, v0

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    const-string v0, "audio/raw"

    iget-object v7, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0, p2}, Landroidx/media3/exoplayer/audio/AudioSink;->a(Landroidx/media3/common/r;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v2}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    return p1

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    iget v7, p2, Landroidx/media3/common/r;->E:I

    iget v8, p2, Landroidx/media3/common/r;->F:I

    const/4 v9, 0x2

    invoke-static {v9, v7, v8}, Landroidx/media3/common/util/a1;->j0(III)Landroidx/media3/common/r;

    move-result-object v7

    invoke-interface {v0, v7}, Landroidx/media3/exoplayer/audio/AudioSink;->a(Landroidx/media3/common/r;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v2}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    return p1

    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-static {p1, p2, v1, v0}, Landroidx/media3/exoplayer/audio/a1;->I1(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZLandroidx/media3/exoplayer/audio/AudioSink;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    return p1

    :cond_7
    if-nez v3, :cond_8

    invoke-static {v9}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p1

    return p1

    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/w;

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/mediacodec/w;->o(Landroidx/media3/common/r;)Z

    move-result v3

    if-nez v3, :cond_a

    move v7, v2

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/mediacodec/w;

    invoke-virtual {v8, p2}, Landroidx/media3/exoplayer/mediacodec/w;->o(Landroidx/media3/common/r;)Z

    move-result v9

    if-eqz v9, :cond_9

    move p1, v1

    move-object v0, v8

    goto :goto_3

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    move p1, v2

    move v2, v3

    :goto_3
    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    const/4 v5, 0x3

    :goto_4
    if-eqz v2, :cond_c

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/mediacodec/w;->r(Landroidx/media3/common/r;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/16 v4, 0x10

    :cond_c
    iget-boolean p2, v0, Landroidx/media3/exoplayer/mediacodec/w;->h:Z

    if-eqz p2, :cond_d

    const/16 p2, 0x40

    move v3, p2

    goto :goto_5

    :cond_d
    move v3, v1

    :goto_5
    if-eqz p1, :cond_e

    const/16 v1, 0x80

    :cond_e
    move p1, v1

    const/16 v2, 0x20

    move v0, v5

    move v1, v4

    move v4, p1

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/x3;->e(IIIIII)I

    move-result p1

    return p1
.end method

.method protected u0(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/t$a;
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->y()[Landroidx/media3/common/r;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/audio/a1;->H1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;[Landroidx/media3/common/r;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/audio/a1;->J0:I

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/a1;->C1(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->K0:Z

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/a1;->D1(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/a1;->L0:Z

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/w;->c:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/exoplayer/audio/a1;->J0:I

    invoke-virtual {p0, p2, v0, v1, p4}, Landroidx/media3/exoplayer/audio/a1;->J1(Landroidx/media3/common/r;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object p4

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/w;->b:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->N0:Landroidx/media3/common/r;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/a1;->I0:Landroidx/media3/exoplayer/mediacodec/p;

    invoke-static {p1, p4, p2, p3, v0}, Landroidx/media3/exoplayer/mediacodec/t$a;->a(Landroidx/media3/exoplayer/mediacodec/w;Landroid/media/MediaFormat;Landroidx/media3/common/r;Landroid/media/MediaCrypto;Landroidx/media3/exoplayer/mediacodec/p;)Landroidx/media3/exoplayer/mediacodec/t$a;

    move-result-object p1

    return-object p1
.end method

.method protected z0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 4

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->a:Landroidx/media3/common/r;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v1, "audio/opus"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->f:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->a:Landroidx/media3/common/r;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/r;

    iget p1, p1, Landroidx/media3/common/r;->H:I

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    const-wide/32 v2, 0xbb80

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/a1;->H0:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v1, p1, v0}, Landroidx/media3/exoplayer/audio/AudioSink;->m(II)V

    :cond_0
    return-void
.end method
