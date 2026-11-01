.class final Landroidx/media3/exoplayer/video/spherical/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:[F

.field private final b:[F

.field private final c:Landroidx/media3/common/util/o0;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/a;->a:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/a;->b:[F

    new-instance v0, Landroidx/media3/common/util/o0;

    invoke-direct {v0}, Landroidx/media3/common/util/o0;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/a;->c:Landroidx/media3/common/util/o0;

    return-void
.end method

.method public static a([F[F)V
    .locals 6

    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->k([F)V

    const/16 v0, 0xa

    aget v1, p1, v0

    mul-float/2addr v1, v1

    const/16 v2, 0x8

    aget v3, p1, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    aget v3, p1, v0

    div-float v4, v3, v1

    const/4 v5, 0x0

    aput v4, p0, v5

    aget p1, p1, v2

    div-float v4, p1, v1

    const/4 v5, 0x2

    aput v4, p0, v5

    neg-float p1, p1

    div-float/2addr p1, v1

    aput p1, p0, v2

    div-float/2addr v3, v1

    aput v3, p0, v0

    return-void
.end method

.method private static b([F[F)V
    .locals 11

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    neg-float p1, p1

    invoke-static {v0, v1, p1}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v7, v3

    div-float v8, v0, v2

    div-float v9, v1, v2

    div-float v10, p1, v2

    const/4 v6, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->k([F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public c([FJ)Z
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/a;->c:Landroidx/media3/common/util/o0;

    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/util/o0;->j(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/video/spherical/a;->b:[F

    invoke-static {p3, p2}, Landroidx/media3/exoplayer/video/spherical/a;->b([F[F)V

    iget-boolean p2, p0, Landroidx/media3/exoplayer/video/spherical/a;->d:Z

    const/4 p3, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/media3/exoplayer/video/spherical/a;->a:[F

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/a;->b:[F

    invoke-static {p2, v0}, Landroidx/media3/exoplayer/video/spherical/a;->a([F[F)V

    iput-boolean p3, p0, Landroidx/media3/exoplayer/video/spherical/a;->d:Z

    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/a;->a:[F

    iget-object v5, p0, Landroidx/media3/exoplayer/video/spherical/a;->b:[F

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return p3
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/a;->c:Landroidx/media3/common/util/o0;

    invoke-virtual {v0}, Landroidx/media3/common/util/o0;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/a;->d:Z

    return-void
.end method

.method public e(J[F)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/a;->c:Landroidx/media3/common/util/o0;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/util/o0;->a(JLjava/lang/Object;)V

    return-void
.end method
