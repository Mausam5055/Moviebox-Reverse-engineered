.class public abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.super Landroidx/media3/exoplayer/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$b;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;
    }
.end annotation


# static fields
.field private static final E0:[B


# instance fields
.field private final A:Ljava/util/ArrayDeque;

.field private A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

.field private final B:Landroidx/media3/exoplayer/audio/b1;

.field private B0:J

.field private C:Landroidx/media3/common/r;

.field private C0:Z

.field private D:Landroidx/media3/common/r;

.field private D0:Z

.field private E:Landroidx/media3/exoplayer/drm/DrmSession;

.field private F:Landroidx/media3/exoplayer/drm/DrmSession;

.field private G:Landroidx/media3/exoplayer/w3$a;

.field private H:Landroid/media/MediaCrypto;

.field private I:J

.field private J:F

.field private K:F

.field private L:Landroidx/media3/exoplayer/mediacodec/t;

.field private M:Landroidx/media3/common/r;

.field private N:Landroid/media/MediaFormat;

.field private O:Z

.field private P:F

.field private Q:Ljava/util/ArrayDeque;

.field private R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field private S:Landroidx/media3/exoplayer/mediacodec/w;

.field private T:I

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private a0:J

.field private b0:Z

.field private c0:J

.field private d0:I

.field private e0:I

.field private f0:Ljava/nio/ByteBuffer;

.field private g0:Z

.field private h0:Z

.field private i0:Z

.field private j0:Z

.field private k0:Z

.field private l0:Z

.field private m0:I

.field private n0:I

.field private o0:I

.field private p0:Z

.field private q0:Z

.field private final r:Landroidx/media3/exoplayer/mediacodec/t$b;

.field private r0:Z

.field private final s:Landroidx/media3/exoplayer/mediacodec/h0;

.field private s0:J

.field private final t:Z

.field private t0:J

.field private final u:F

.field private u0:Z

.field private final v:Landroidx/media3/decoder/DecoderInputBuffer;

.field private v0:Z

.field private final w:Landroidx/media3/decoder/DecoderInputBuffer;

.field private w0:Z

.field private final x:Landroidx/media3/decoder/DecoderInputBuffer;

.field private x0:Z

.field private final y:Landroidx/media3/exoplayer/mediacodec/j;

.field private y0:Landroidx/media3/exoplayer/ExoPlaybackException;

.field private final z:Landroid/media/MediaCodec$BufferInfo;

.field protected z0:Landroidx/media3/exoplayer/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILandroidx/media3/exoplayer/mediacodec/t$b;Landroidx/media3/exoplayer/mediacodec/h0;ZF)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/i;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r:Landroidx/media3/exoplayer/mediacodec/t$b;

    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/h0;

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s:Landroidx/media3/exoplayer/mediacodec/h0;

    iput-boolean p4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t:Z

    iput p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u:F

    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->f()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance p1, Landroidx/media3/exoplayer/mediacodec/j;

    invoke-direct {p1}, Landroidx/media3/exoplayer/mediacodec/j;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J:F

    iput p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I:J

    new-instance p5, Ljava/util/ArrayDeque;

    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    sget-object p5, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->e:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iput-object p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    invoke-virtual {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;->b(I)V

    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance p1, Landroidx/media3/exoplayer/audio/b1;

    invoke-direct {p1}, Landroidx/media3/exoplayer/audio/b1;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B:Landroidx/media3/exoplayer/audio/b1;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:F

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:I

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:J

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    new-instance p1, Landroidx/media3/exoplayer/j;

    invoke-direct {p1}, Landroidx/media3/exoplayer/j;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    return-void
.end method

.method private A0()Z
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private B0()Z
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->k()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0(JJ)Z

    move-result v0

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v4, v4, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-direct {p0, v2, v3, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0(JJ)Z

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private C0(Landroidx/media3/common/r;)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0()V

    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/opus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/mediacodec/j;->n(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/mediacodec/j;->n(I)V

    :goto_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    return-void
.end method

.method private D0(Landroidx/media3/exoplayer/mediacodec/w;Landroid/media/MediaCrypto;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/r;

    iget-object v5, p1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    sget v4, Landroidx/media3/common/util/a1;->a:I

    const/16 v6, 0x17

    const/high16 v7, -0x40800000    # -1.0f

    if-ge v4, v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    iget v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:F

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->y()[Landroidx/media3/common/r;

    move-result-object v8

    invoke-virtual {p0, v6, v3, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0(FLandroidx/media3/common/r;[Landroidx/media3/common/r;)F

    move-result v6

    :goto_0
    iget v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u:F

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_1

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object v6

    invoke-interface {v6}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {p0, p1, v3, p2, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/t$a;

    move-result-object v6

    const/16 p2, 0x1f

    if-lt v4, p2, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->x()Ly1/f4;

    move-result-object p2

    invoke-static {v6, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$b;->a(Landroidx/media3/exoplayer/mediacodec/t$a;Ly1/f4;)V

    :cond_2
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCodec:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r:Landroidx/media3/exoplayer/mediacodec/t$b;

    invoke-interface {p2, v6}, Landroidx/media3/exoplayer/mediacodec/t$b;->a(Landroidx/media3/exoplayer/mediacodec/t$a;)Landroidx/media3/exoplayer/mediacodec/t;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    new-instance v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;

    const/4 v10, 0x0

    invoke-direct {v4, p0, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$a;)V

    invoke-interface {p2, v4}, Landroidx/media3/exoplayer/mediacodec/t;->m(Landroidx/media3/exoplayer/mediacodec/t$c;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object p2

    invoke-interface {p2}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/mediacodec/w;->o(Landroidx/media3/common/r;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {v3}, Landroidx/media3/common/r;->i(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object p2

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object v5, v4, v0

    const-string p2, "Format exceeds selected codec\'s capabilities [%s, %s]"

    invoke-static {p2, v4}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "MediaCodecRenderer"

    invoke-static {v4, p2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroidx/media3/exoplayer/mediacodec/w;

    iput v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:F

    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    invoke-direct {p0, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:I

    invoke-static {v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U:Z

    invoke-static {v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:Z

    invoke-static {v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Z

    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X(Landroidx/media3/exoplayer/mediacodec/w;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v1

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v0

    :goto_3
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/t;

    invoke-interface {p1}, Landroidx/media3/exoplayer/mediacodec/t;->g()Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:Z

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    iget p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:I

    if-eqz p1, :cond_6

    move v1, v0

    :cond_6
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Z

    :cond_7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    move-result p1

    if-ne p1, v2, :cond_8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    add-long/2addr p1, v1

    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:J

    :cond_8
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget p2, p1, Landroidx/media3/exoplayer/j;->a:I

    add-int/2addr p2, v0

    iput p2, p1, Landroidx/media3/exoplayer/j;->a:I

    sub-long p1, v10, v8

    move-object v4, p0

    move-wide v7, v10

    move-wide v9, p1

    invoke-virtual/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N0(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/t$a;JJ)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    throw p1
.end method

.method private E0()Z
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Landroidx/media3/decoder/b;

    move-result-object v3

    sget-boolean v4, Landroidx/media3/exoplayer/drm/c0;->d:Z

    if-eqz v4, :cond_2

    instance-of v4, v3, Landroidx/media3/exoplayer/drm/c0;

    if-eqz v4, :cond_2

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v4

    if-eq v4, v2, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    return v1

    :cond_1
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    iget v2, v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_2
    if-nez v3, :cond_4

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    instance-of v0, v3, Landroidx/media3/exoplayer/drm/c0;

    if-eqz v0, :cond_5

    check-cast v3, Landroidx/media3/exoplayer/drm/c0;

    :try_start_0
    new-instance v0, Landroid/media/MediaCrypto;

    iget-object v1, v3, Landroidx/media3/exoplayer/drm/c0;->a:Ljava/util/UUID;

    iget-object v3, v3, Landroidx/media3/exoplayer/drm/c0;->b:[B

    invoke-direct {v0, v1, v3}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_1
    return v2
.end method

.method private H0(JJ)Z
    .locals 2

    cmp-long v0, p3, p1

    if-gez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v1, "audio/opus"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Ll2/k0;->g(JJ)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static I0(Ljava/lang/IllegalStateException;)Z
    .locals 3

    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.MediaCodec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private K0(Landroid/media/MediaCrypto;Z)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/r;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :try_start_0
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0(Z)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    iget-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/w;

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    const v2, -0xc34e

    invoke-direct {v1, v0, p1, p2, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/r;Ljava/lang/Throwable;ZI)V

    throw v1

    :cond_2
    :goto_2
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    :goto_3
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    if-nez v3, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/mediacodec/w;

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/mediacodec/w;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L0(Landroidx/media3/common/r;)Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o1(Landroidx/media3/exoplayer/mediacodec/w;)Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    :try_start_1
    invoke-direct {p0, v3, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D0(Landroidx/media3/exoplayer/mediacodec/w;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to initialize decoder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaCodecRenderer"

    invoke-static {v6, v5, v4}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    invoke-direct {v5, v0, v4, p2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/r;Ljava/lang/Throwable;ZLandroidx/media3/exoplayer/mediacodec/w;)V

    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0(Ljava/lang/Exception;)V

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v3, :cond_5

    iput-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_4

    :cond_5
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    invoke-static {v3, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->access$000(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw p1

    :cond_7
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    return-void

    :cond_8
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    const v1, -0xc34f

    invoke-direct {p1, v0, v2, p2, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/r;Ljava/lang/Throwable;ZI)V

    throw p1
.end method

.method static synthetic Q(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;)Landroidx/media3/exoplayer/w3$a;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G:Landroidx/media3/exoplayer/w3$a;

    return-object p0
.end method

.method private R()V
    .locals 8

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v4, -0x5

    if-eq v2, v4, :cond_c

    const/4 v4, -0x4

    if-eq v2, v4, :cond_3

    const/4 v0, -0x3

    if-ne v2, v0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    return-void

    :cond_4
    iget-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v6, v2, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/a;->isLastSample()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    iput-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    :cond_6
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    const-string v4, "audio/opus"

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/r;

    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    iget-object v2, v2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    iget-object v2, v2, Landroidx/media3/common/r;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    iget-object v2, v2, Landroidx/media3/common/r;->r:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ll2/k0;->f([B)I

    move-result v2

    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    invoke-virtual {v5}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/media3/common/r$b;->Z(I)Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    :cond_7
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0(Landroidx/media3/common/r;Landroid/media/MediaFormat;)V

    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    :cond_8
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    if-eqz v2, :cond_a

    iget-object v2, v2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/a;->hasSupplementalData()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    iput-object v3, v2, Landroidx/media3/decoder/DecoderInputBuffer;->a:Landroidx/media3/common/r;

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0(Landroidx/media3/decoder/DecoderInputBuffer;)V

    :cond_9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v4, v4, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-static {v2, v3, v4, v5}, Ll2/k0;->g(JJ)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B:Landroidx/media3/exoplayer/audio/b1;

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    iget-object v4, v4, Landroidx/media3/common/r;->r:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Landroidx/media3/exoplayer/audio/b1;->a(Landroidx/media3/decoder/DecoderInputBuffer;Ljava/util/List;)V

    :cond_a
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/mediacodec/j;->h(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_b
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z

    return-void

    :cond_c
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;

    return-void
.end method

.method private S(JJ)Z
    .locals 18

    move-object/from16 v15, p0

    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->m()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    iget-object v6, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    iget v7, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->l()I

    move-result v9

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->j()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->w()J

    move-result-wide v0

    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/mediacodec/j;->k()J

    move-result-wide v2

    invoke-direct {v15, v0, v1, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0(JJ)Z

    move-result v12

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v0}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v16

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroidx/media3/common/r;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v13, v16

    move-object/from16 v14, v17

    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X0(JJLandroidx/media3/exoplayer/mediacodec/t;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->k()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S0(J)V

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->clear()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    move v0, v13

    :goto_0
    iget-boolean v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    return v0

    :cond_2
    const/4 v1, 0x1

    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z

    if-eqz v2, :cond_3

    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    iget-object v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/mediacodec/j;->h(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/a;->g(Z)V

    iput-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z

    :cond_3
    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:Z

    if-eqz v2, :cond_5

    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/mediacodec/j;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0()V

    iput-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    if-nez v2, :cond_5

    return v0

    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R()V

    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/mediacodec/j;->m()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    :cond_6
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/mediacodec/j;->m()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    if-nez v2, :cond_8

    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:Z

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move v14, v0

    goto :goto_2

    :cond_8
    :goto_1
    move v14, v1

    :goto_2
    return v14
.end method

.method private U(Ljava/lang/String;)I
    .locals 3

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    const-string v1, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-T585"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-A510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-A520"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-J700"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v0, "OMX.Nvidia.h264.decode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "flounder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "flounder_lte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "grouper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tilapia"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private static V(Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static W(Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private W0()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c1()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a1()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v1()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0()V

    :goto_0
    return-void
.end method

.method private static X(Landroidx/media3/exoplayer/mediacodec/w;)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    sget v1, Landroidx/media3/common/util/a1;->a:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_0

    const-string v2, "OMX.rk.video_decoder.avc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/16 v2, 0x1d

    if-gt v1, v2, :cond_1

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AFTS"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/w;->g:Z

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static Y(Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    const-string v0, "c2.android.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Y0()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/t;

    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/t;->c()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:I

    if-eqz v2, :cond_0

    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Z

    return-void

    :cond_0
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroid/media/MediaFormat;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Z

    return-void
.end method

.method private Z0(I)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v:Landroidx/media3/decoder/DecoderInputBuffer;

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 v1, -0x5

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;

    return v2

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/j;->clear()V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B:Landroidx/media3/exoplayer/audio/b1;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/b1;->d()V

    return-void
.end method

.method private a1()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    return-void
.end method

.method private b0()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    const/4 v0, 0x0

    return v0

    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    :cond_1
    return v1
.end method

.method private c0()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a1()V

    :goto_0
    return-void
.end method

.method private d0()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v1()V

    :goto_0
    return v1
.end method

.method private e0(JJ)Z
    .locals 19

    move-object/from16 v15, p0

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/media3/exoplayer/mediacodec/t;

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0()Z

    move-result v0

    const/16 v16, 0x1

    const/4 v14, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v5, v0}, Landroidx/media3/exoplayer/mediacodec/t;->j(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    :cond_0
    return v14

    :cond_1
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v5, v0}, Landroidx/media3/exoplayer/mediacodec/t;->j(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v0, :cond_6

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y0()V

    return v16

    :cond_2
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    if-nez v0, :cond_3

    iget v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    :cond_4
    iget-wide v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x64

    add-long/2addr v3, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/i;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_5

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    :cond_5
    return v14

    :cond_6
    iget-boolean v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Z

    if-eqz v3, :cond_7

    iput-boolean v14, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Z

    invoke-interface {v5, v0, v14}, Landroidx/media3/exoplayer/mediacodec/t;->k(IZ)V

    return v16

    :cond_7
    iget-object v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v4, :cond_8

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_8

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    return v14

    :cond_8
    iput v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    invoke-interface {v5, v0}, Landroidx/media3/exoplayer/mediacodec/t;->l(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_9

    iget-object v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Ljava/nio/ByteBuffer;

    iget-object v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_9
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->w()J

    move-result-wide v6

    cmp-long v0, v3, v6

    if-gez v0, :cond_a

    move/from16 v0, v16

    goto :goto_1

    :cond_a
    move v0, v14

    :goto_1
    iput-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0:Z

    iget-wide v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_b

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v3, v0

    if-gtz v0, :cond_b

    move/from16 v0, v16

    goto :goto_2

    :cond_b
    move v0, v14

    :goto_2
    iput-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w1(J)V

    :cond_c
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    if-eqz v0, :cond_e

    :try_start_1
    iget-object v6, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Ljava/nio/ByteBuffer;

    iget v7, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0:Z

    iget-boolean v13, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroidx/media3/common/r;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v18, v14

    move-object/from16 v14, v17

    :try_start_2
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X0(JJLandroidx/media3/exoplayer/mediacodec/t;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/r;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_1
    move/from16 v18, v14

    :catch_2
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    :cond_d
    return v18

    :cond_e
    move/from16 v18, v14

    iget-object v6, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Ljava/nio/ByteBuffer;

    iget v7, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0:Z

    iget-boolean v13, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/media3/common/r;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X0(JJLandroidx/media3/exoplayer/mediacodec/t;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/r;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_12

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S0(J)V

    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    move/from16 v14, v16

    goto :goto_4

    :cond_f
    move/from16 v14, v18

    :goto_4
    if-nez v14, :cond_10

    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/i;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:J

    :cond_10
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g1()V

    if-nez v14, :cond_11

    return v16

    :cond_11
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    :cond_12
    return v18
.end method

.method private f0(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)Z
    .locals 5

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p4, :cond_b

    if-nez p3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Landroidx/media3/decoder/b;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-interface {p3}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Landroidx/media3/decoder/b;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    instance-of v2, v2, Landroidx/media3/exoplayer/drm/c0;

    if-nez v2, :cond_4

    return v0

    :cond_4
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->a()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {p3}, Landroidx/media3/exoplayer/drm/DrmSession;->a()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    sget v2, Landroidx/media3/common/util/a1;->a:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_6

    return v1

    :cond_6
    sget-object v2, Landroidx/media3/common/h;->e:Ljava/util/UUID;

    invoke-interface {p3}, Landroidx/media3/exoplayer/drm/DrmSession;->a()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->a()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_0

    :cond_7
    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/w;->g:Z

    if-nez p1, :cond_a

    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result p1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_9

    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result p1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_8

    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result p1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_a

    :cond_8
    iget-object p1, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p4, p1}, Landroidx/media3/exoplayer/drm/DrmSession;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    move v0, v1

    :cond_a
    return v0

    :cond_b
    :goto_0
    return v1
.end method

.method private f1()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private g0()Z
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1b

    iget-boolean v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    :cond_1
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/t;

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    if-gez v0, :cond_3

    invoke-interface {v4}, Landroidx/media3/exoplayer/mediacodec/t;->i()I

    move-result v0

    iput v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    if-gez v0, :cond_2

    return v2

    :cond_2
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-interface {v4, v0}, Landroidx/media3/exoplayer/mediacodec/t;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v5, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    :cond_3
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_5

    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    iget v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/t;->a(IIIJI)V

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f1()V

    :goto_0
    iput v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    return v2

    :cond_5
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Z

    if-eqz v0, :cond_6

    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Z

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    array-length v7, v2

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/t;->a(IIIJI)V

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f1()V

    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    return v11

    :cond_6
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    if-ne v0, v11, :cond_8

    move v0, v2

    :goto_1
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    invoke-static {v5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/r;

    iget-object v5, v5, Landroidx/media3/common/r;->r:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    iget-object v5, v5, Landroidx/media3/common/r;->r:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iget-object v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v6, v6, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iput v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    :cond_8
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    move-result-object v5

    :try_start_0
    iget-object v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v5, v6, v2}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v6
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderInputBuffer$InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, -0x3

    if-ne v6, v7, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    iput-wide v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    :cond_9
    return v2

    :cond_a
    const/4 v7, -0x5

    if-ne v6, v7, :cond_c

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    if-ne v0, v3, :cond_b

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    :cond_b
    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;

    return v11

    :cond_c
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v5}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-wide v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    iput-wide v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    if-ne v0, v3, :cond_d

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    :cond_d
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    if-nez v0, :cond_e

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    return v2

    :cond_e
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    if-eqz v0, :cond_f

    goto :goto_2

    :cond_f
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    iget v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/t;->a(IIIJI)V

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f1()V

    :goto_2
    return v2

    :cond_10
    iget-boolean v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    if-nez v5, :cond_12

    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v5}, Landroidx/media3/decoder/a;->isKeyFrame()Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    if-ne v0, v3, :cond_11

    iput v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    :cond_11
    return v11

    :cond_12
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n1(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v3

    if-eqz v3, :cond_13

    return v11

    :cond_13
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->e()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v5, v5, Landroidx/media3/decoder/DecoderInputBuffer;->b:Landroidx/media3/decoder/c;

    invoke-virtual {v5, v0}, Landroidx/media3/decoder/c;->b(I)V

    :cond_14
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v5, v0, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    if-eqz v0, :cond_16

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    iget-object v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    invoke-static {v7}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/r;

    invoke-virtual {v0, v5, v6, v7}, Landroidx/media3/common/util/o0;->a(JLjava/lang/Object;)V

    goto :goto_3

    :cond_15
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    iget-object v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    invoke-static {v7}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/r;

    invoke-virtual {v0, v5, v6, v7}, Landroidx/media3/common/util/o0;->a(JLjava/lang/Object;)V

    :goto_3
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    :cond_16
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/a;->isLastSample()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    iput-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    :cond_18
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/a;->hasSupplementalData()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0(Landroidx/media3/decoder/DecoderInputBuffer;)V

    :cond_19
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U0(Landroidx/media3/decoder/DecoderInputBuffer;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0(Landroidx/media3/decoder/DecoderInputBuffer;)I

    move-result v18

    if-eqz v3, :cond_1a

    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/media3/exoplayer/mediacodec/t;

    iget v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v15, v0, Landroidx/media3/decoder/DecoderInputBuffer;->b:Landroidx/media3/decoder/c;

    const/4 v14, 0x0

    move-wide/from16 v16, v5

    invoke-interface/range {v12 .. v18}, Landroidx/media3/exoplayer/mediacodec/t;->f(IILandroidx/media3/decoder/c;JI)V

    goto :goto_4

    :cond_1a
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/media3/exoplayer/mediacodec/t;

    iget v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v15

    const/4 v14, 0x0

    move-wide/from16 v16, v5

    invoke-interface/range {v12 .. v18}, Landroidx/media3/exoplayer/mediacodec/t;->a(IIIJI)V

    :goto_4
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f1()V

    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    iput v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget v2, v0, Landroidx/media3/exoplayer/j;->c:I

    add-int/2addr v2, v11

    iput v2, v0, Landroidx/media3/exoplayer/j;->c:I

    return v11

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0(Ljava/lang/Exception;)V

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z0(I)Z

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0()V

    return v11

    :cond_1b
    :goto_5
    return v2
.end method

.method private g1()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private h0()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/t;

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/t;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d1()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d1()V

    throw v0
.end method

.method private h1(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/k;->a(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    return-void
.end method

.method private i1(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;)V
    .locals 4

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-wide v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0:Z

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R0(J)V

    :cond_0
    return-void
.end method

.method private k0(Z)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/r;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s:Landroidx/media3/exoplayer/mediacodec/h0;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s:Landroidx/media3/exoplayer/mediacodec/h0;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drm session requires secure decoder for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecRenderer"

    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private l1(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/k;->a(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    return-void
.end method

.method private m1(J)Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected static t1(Landroidx/media3/common/r;)Z
    .locals 1

    iget p0, p0, Landroidx/media3/common/r;->N:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method private u1(Landroidx/media3/common/r;)Z
    .locals 4

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:F

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/r;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->y()[Landroidx/media3/common/r;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0(FLandroidx/media3/common/r;[Landroidx/media3/common/r;)F

    move-result p1

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v3, p1, v1

    if-nez v3, :cond_3

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    const/4 p1, 0x0

    return p1

    :cond_3
    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operating-rate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/t;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/mediacodec/t;->b(Landroid/os/Bundle;)V

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:F

    :cond_6
    :goto_1
    return v2
.end method

.method private v1()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Landroidx/media3/decoder/b;

    move-result-object v0

    instance-of v1, v0, Landroidx/media3/exoplayer/drm/c0;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCrypto;

    check-cast v0, Landroidx/media3/exoplayer/drm/c0;

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/c0;->b:[B

    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    return-void
.end method


# virtual methods
.method protected C()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->e:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i1(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0()Z

    return-void
.end method

.method protected D(ZZ)V
    .locals 0

    new-instance p1, Landroidx/media3/exoplayer/j;

    invoke-direct {p1}, Landroidx/media3/exoplayer/j;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    return-void
.end method

.method protected F(JZ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0:Z

    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/mediacodec/j;->clear()V

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B:Landroidx/media3/exoplayer/audio/b1;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/b1;->d()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0()Z

    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->l()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->c()V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method protected final F0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    return v0
.end method

.method protected final G0(Landroidx/media3/common/r;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r1(Landroidx/media3/common/r;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected I()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    throw v1
.end method

.method protected J()V
    .locals 0

    return-void
.end method

.method protected final J0()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0(Landroidx/media3/common/r;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0(Landroidx/media3/common/r;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v2, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/drm/DrmSession;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    invoke-direct {p0, v2, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0(Landroid/media/MediaCrypto;Z)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    :cond_6
    return-void

    :goto_2
    const/16 v2, 0xfa1

    invoke-virtual {p0, v1, v0, v2}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method protected K()V
    .locals 0

    return-void
.end method

.method protected L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-wide v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;-><init>(JJJ)V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i1(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;)V

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D0:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T0()V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-wide v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_2

    cmp-long v1, v5, v1

    if-ltz v1, :cond_2

    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;-><init>(JJJ)V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i1(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-wide v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->c:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T0()V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    new-instance v9, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    move-object v2, v9

    move-wide v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;-><init>(JJJ)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected L0(Landroidx/media3/common/r;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract M0(Ljava/lang/Exception;)V
.end method

.method protected abstract N0(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/t$a;JJ)V
.end method

.method protected abstract O0(Ljava/lang/String;)V
.end method

.method protected P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;
    .locals 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    iget-object v1, p1, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/r;

    iget-object v2, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    if-eqz v2, :cond_14

    const-string v3, "video/av01"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/media3/common/r;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v1

    :cond_0
    move-object v7, v1

    iget-object p1, p1, Landroidx/media3/exoplayer/s2;->a:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    iput-object v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:Z

    return-object v3

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    if-nez p1, :cond_2

    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    return-object v3

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroidx/media3/exoplayer/mediacodec/w;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/w;

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/media3/common/r;

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, v1, v7, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    new-instance p1, Landroidx/media3/exoplayer/k;

    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x80

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/k;-><init>(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;II)V

    return-object p1

    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    if-eqz v2, :cond_6

    sget v3, Landroidx/media3/common/util/a1;->a:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    :goto_1
    move v3, v0

    :goto_2
    invoke-static {v3}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p0, v1, v6, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;

    move-result-object v3

    iget v5, v3, Landroidx/media3/exoplayer/k;->d:I

    const/4 v8, 0x3

    if-eqz v5, :cond_10

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eq v5, v0, :cond_d

    if-eq v5, v10, :cond_9

    if-ne v5, v8, :cond_8

    invoke-direct {p0, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u1(Landroidx/media3/common/r;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    iput-object v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    if-eqz v2, :cond_11

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0()Z

    move-result v0

    if-nez v0, :cond_11

    :goto_3
    move v9, v10

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_9
    invoke-direct {p0, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u1(Landroidx/media3/common/r;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:Z

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    iget v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:I

    if-eq v5, v10, :cond_c

    if-ne v5, v0, :cond_b

    iget v5, v7, Landroidx/media3/common/r;->v:I

    iget v9, v6, Landroidx/media3/common/r;->v:I

    if-ne v5, v9, :cond_b

    iget v5, v7, Landroidx/media3/common/r;->w:I

    iget v9, v6, Landroidx/media3/common/r;->w:I

    if-ne v5, v9, :cond_b

    goto :goto_4

    :cond_b
    move v0, v4

    :cond_c
    :goto_4
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Z

    iput-object v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    if-eqz v2, :cond_11

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3

    :cond_d
    invoke-direct {p0, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u1(Landroidx/media3/common/r;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    iput-object v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    if-eqz v2, :cond_f

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3

    :cond_f
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3

    :cond_10
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    :cond_11
    move v9, v4

    :goto_5
    iget v0, v3, Landroidx/media3/exoplayer/k;->d:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    if-ne v0, p1, :cond_12

    iget p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    if-ne p1, v8, :cond_13

    :cond_12
    new-instance p1, Landroidx/media3/exoplayer/k;

    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/k;-><init>(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;II)V

    return-object p1

    :cond_13
    return-object v3

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected abstract Q0(Landroidx/media3/common/r;Landroid/media/MediaFormat;)V
.end method

.method protected R0(J)V
    .locals 0

    return-void
.end method

.method protected S0(J)V
    .locals 2

    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:J

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->a:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i1(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T0()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract T(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;
.end method

.method protected T0()V
    .locals 0

    return-void
.end method

.method protected U0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 0

    return-void
.end method

.method protected V0(Landroidx/media3/exoplayer/w3$a;)V
    .locals 0

    return-void
.end method

.method protected abstract X0(JJLandroidx/media3/exoplayer/mediacodec/t;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/r;)Z
.end method

.method protected Z(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/w;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/w;)V

    return-object v0
.end method

.method public final a(Landroidx/media3/common/r;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s:Landroidx/media3/exoplayer/mediacodec/h0;

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s1(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;)I

    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/16 v1, 0xfa2

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected b1()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/t;->release()V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget v2, v1, Landroidx/media3/exoplayer/j;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/j;->b:I

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroidx/media3/exoplayer/mediacodec/w;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/w;

    iget-object v1, v1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e1()V

    return-void

    :goto_2
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e1()V

    throw v1

    :goto_3
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    :try_start_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_5

    :cond_2
    :goto_4
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e1()V

    throw v1

    :goto_5
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e1()V

    throw v1
.end method

.method protected abstract c1()V
.end method

.method public d(FF)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J:F

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:F

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u1(Landroidx/media3/common/r;)Z

    return-void
.end method

.method protected d1()V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f1()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g1()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:J

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:J

    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:Z

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    return-void
.end method

.method protected e1()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d1()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:Landroidx/media3/exoplayer/ExoPlaybackException;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroidx/media3/exoplayer/mediacodec/w;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:F

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:I

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:Z

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    check-cast p2, Landroidx/media3/exoplayer/w3$a;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/w3$a;

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G:Landroidx/media3/exoplayer/w3$a;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V0(Landroidx/media3/exoplayer/w3$a;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/i;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected final i0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    :cond_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    return v0
.end method

.method public isReady()Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected j0()Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    invoke-static {v4}, Landroidx/media3/common/util/a;->g(Z)V

    if-lt v0, v2, :cond_4

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v1()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    return v3

    :cond_4
    :goto_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0()V

    return v1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    return v3
.end method

.method protected final j1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0:Z

    return-void
.end method

.method protected final k1(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:Landroidx/media3/exoplayer/ExoPlaybackException;

    return-void
.end method

.method public final l(JJ)J
    .locals 6

    iget-boolean v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Z

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0(JJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method protected final l0()Landroidx/media3/exoplayer/mediacodec/t;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    return-object v0
.end method

.method protected m0(Landroidx/media3/decoder/DecoderInputBuffer;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final n0()Landroidx/media3/exoplayer/mediacodec/w;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroidx/media3/exoplayer/mediacodec/w;

    return-object v0
.end method

.method protected n1(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q1(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget v0, p1, Landroidx/media3/exoplayer/j;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Landroidx/media3/exoplayer/j;->d:I

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected o1(Landroidx/media3/exoplayer/mediacodec/w;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract p0(FLandroidx/media3/common/r;[Landroidx/media3/common/r;)F
.end method

.method protected p1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final q0()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroid/media/MediaFormat;

    return-object v0
.end method

.method protected q1(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract r0(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;Z)Ljava/util/List;
.end method

.method protected r1(Landroidx/media3/common/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public render(JJ)V
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c1()V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z0(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    if-eqz v2, :cond_4

    const-string v2, "bypassRender"

    invoke-static {v2}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    invoke-static {v4}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m1(J)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m1(J)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    goto :goto_3

    :cond_7
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget p4, p3, Landroidx/media3/exoplayer/j;->d:I

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/i;->P(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Landroidx/media3/exoplayer/j;->d:I

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z0(I)Z

    :goto_3
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/j;->c()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_4
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I0(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0(Ljava/lang/Exception;)V

    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_8

    move-object p2, p1

    check-cast p2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p2

    if-eqz p2, :cond_8

    move v1, v0

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    :cond_9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()Landroidx/media3/exoplayer/mediacodec/w;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/w;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    move-result-object p1

    iget p2, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->errorCode:I

    const/16 p3, 0x44d

    if-ne p2, p3, :cond_a

    const/16 p2, 0xfa6

    goto :goto_5

    :cond_a
    const/16 p2, 0xfa3

    :goto_5
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    invoke-virtual {p0, p1, p3, v1, p2}, Landroidx/media3/exoplayer/i;->r(Ljava/lang/Throwable;Landroidx/media3/common/r;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_b
    throw p1

    :goto_6
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result p3

    invoke-static {p3}, Landroidx/media3/common/util/a1;->b0(I)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:Landroidx/media3/exoplayer/ExoPlaybackException;

    throw v0
.end method

.method protected s0(JJZ)J
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/i;->l(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method protected abstract s1(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;)I
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected t0()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    return-wide v0
.end method

.method protected abstract u0(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/t$a;
.end method

.method protected final v0()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->c:J

    return-wide v0
.end method

.method protected final w0()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->b:J

    return-wide v0
.end method

.method protected final w1(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/o0;->j(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/r;

    if-nez p1, :cond_0

    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroid/media/MediaFormat;

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/r;

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/r;

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0(Landroidx/media3/common/r;Landroid/media/MediaFormat;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0:Z

    :cond_2
    return-void
.end method

.method protected x0()F
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J:F

    return v0
.end method

.method protected final y0()Landroidx/media3/exoplayer/w3$a;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G:Landroidx/media3/exoplayer/w3$a;

    return-object v0
.end method

.method protected abstract z0(Landroidx/media3/decoder/DecoderInputBuffer;)V
.end method
