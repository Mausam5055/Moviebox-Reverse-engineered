.class public Landroidx/media3/decoder/av1/c;
.super Landroidx/media3/exoplayer/video/b;


# static fields
.field private static final b0:I

.field public static final synthetic c0:I


# instance fields
.field private final X:I

.field private final Y:I

.field private final Z:I

.field private a0:Landroidx/media3/decoder/av1/Gav1Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x500

    const/16 v1, 0x40

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->k(II)I

    move-result v0

    const/16 v2, 0x2d0

    invoke-static {v2, v1}, Landroidx/media3/common/util/a1;->k(II)I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x1800

    div-int/lit8 v0, v0, 0x2

    sput v0, Landroidx/media3/decoder/av1/c;->b0:I

    return-void
.end method

.method public constructor <init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;I)V
    .locals 9
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/media3/exoplayer/video/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Landroidx/media3/decoder/av1/c;-><init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;IIII)V

    return-void
.end method

.method public constructor <init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/video/b;-><init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;I)V

    iput p6, p0, Landroidx/media3/decoder/av1/c;->Z:I

    iput p7, p0, Landroidx/media3/decoder/av1/c;->X:I

    iput p8, p0, Landroidx/media3/decoder/av1/c;->Y:I

    return-void
.end method

.method private static C0(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroidx/media3/decoder/av1/c;->D0(III)I

    move-result p0

    return p0
.end method

.method private static D0(III)I
    .locals 0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected final E0(Landroidx/media3/common/r;Landroidx/media3/decoder/b;)Landroidx/media3/decoder/av1/Gav1Decoder;
    .locals 3

    const-string p2, "createGav1Decoder"

    invoke-static {p2}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    iget p1, p1, Landroidx/media3/common/r;->p:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Landroidx/media3/decoder/av1/c;->b0:I

    :goto_0
    new-instance p2, Landroidx/media3/decoder/av1/Gav1Decoder;

    iget v0, p0, Landroidx/media3/decoder/av1/c;->X:I

    iget v1, p0, Landroidx/media3/decoder/av1/c;->Y:I

    iget v2, p0, Landroidx/media3/decoder/av1/c;->Z:I

    invoke-direct {p2, v0, v1, p1, v2}, Landroidx/media3/decoder/av1/Gav1Decoder;-><init>(IIII)V

    iput-object p2, p0, Landroidx/media3/decoder/av1/c;->a0:Landroidx/media3/decoder/av1/Gav1Decoder;

    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    return-object p2
.end method

.method protected Q(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;
    .locals 7

    new-instance v6, Landroidx/media3/exoplayer/k;

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/k;-><init>(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;II)V

    return-object v6
.end method

.method protected bridge synthetic R(Landroidx/media3/common/r;Landroidx/media3/decoder/b;)Landroidx/media3/decoder/g;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/decoder/av1/c;->E0(Landroidx/media3/common/r;Landroidx/media3/decoder/b;)Landroidx/media3/decoder/av1/Gav1Decoder;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media3/common/r;)I
    .locals 2

    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v1, "video/av01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/media3/decoder/av1/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroidx/media3/common/r;->N:I

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/media3/decoder/av1/c;->C0(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x4

    const/16 v0, 0x10

    invoke-static {p1, v0, v1}, Landroidx/media3/decoder/av1/c;->D0(III)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-static {v1}, Landroidx/media3/decoder/av1/c;->C0(I)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Libgav1VideoRenderer"

    return-object v0
.end method

.method protected q0(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/av1/c;->a0:Landroidx/media3/decoder/av1/Gav1Decoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/decoder/av1/Gav1Decoder;->x(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    return-void

    :cond_0
    new-instance p1, Landroidx/media3/decoder/av1/Gav1DecoderException;

    const-string p2, "Failed to render output buffer to surface: decoder is not initialized."

    invoke-direct {p1, p2}, Landroidx/media3/decoder/av1/Gav1DecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected s0(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/av1/c;->a0:Landroidx/media3/decoder/av1/Gav1Decoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media3/decoder/av1/Gav1Decoder;->y(I)V

    :cond_0
    return-void
.end method
