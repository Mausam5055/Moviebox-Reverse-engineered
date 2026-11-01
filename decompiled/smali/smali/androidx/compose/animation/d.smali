.class public final Landroidx/compose/animation/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/d$a;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:Lo0/e;

.field private final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FLo0/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/d;->a:F

    iput-object p2, p0, Landroidx/compose/animation/d;->b:Lo0/e;

    invoke-direct {p0, p2}, Landroidx/compose/animation/d;->a(Lo0/e;)F

    move-result p1

    iput p1, p0, Landroidx/compose/animation/d;->c:F

    return-void
.end method

.method private final a(Lo0/e;)F
    .locals 1

    const v0, 0x3f570a3d    # 0.84f

    invoke-interface {p1}, Lo0/e;->getDensity()F

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/animation/e;->a(FF)F

    move-result p1

    return p1
.end method

.method private final e(F)D
    .locals 3

    sget-object v0, Landroidx/compose/animation/a;->a:Landroidx/compose/animation/a;

    iget v1, p0, Landroidx/compose/animation/d;->a:F

    iget v2, p0, Landroidx/compose/animation/d;->c:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroidx/compose/animation/a;->a(FF)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final b(F)F
    .locals 8

    invoke-direct {p0, p1}, Landroidx/compose/animation/d;->e(F)D

    move-result-wide v0

    invoke-static {}, Landroidx/compose/animation/e;->b()F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget p1, p0, Landroidx/compose/animation/d;->a:F

    iget v4, p0, Landroidx/compose/animation/d;->c:F

    mul-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {}, Landroidx/compose/animation/e;->b()F

    move-result p1

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    double-to-float p1, v4

    return p1
.end method

.method public final c(F)J
    .locals 6

    invoke-direct {p0, p1}, Landroidx/compose/animation/d;->e(F)D

    move-result-wide v0

    invoke-static {}, Landroidx/compose/animation/e;->b()F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public final d(F)Landroidx/compose/animation/d$a;
    .locals 9

    invoke-direct {p0, p1}, Landroidx/compose/animation/d;->e(F)D

    move-result-wide v0

    invoke-static {}, Landroidx/compose/animation/e;->b()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    new-instance v4, Landroidx/compose/animation/d$a;

    iget v5, p0, Landroidx/compose/animation/d;->a:F

    iget v6, p0, Landroidx/compose/animation/d;->c:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {}, Landroidx/compose/animation/e;->b()F

    move-result v7

    float-to-double v7, v7

    div-double/2addr v7, v2

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v5, v5

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-direct {v4, p1, v5, v0, v1}, Landroidx/compose/animation/d$a;-><init>(FFJ)V

    return-object v4
.end method
