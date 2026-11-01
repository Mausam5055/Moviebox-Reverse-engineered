.class public final Landroidx/compose/animation/core/m0;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:D

.field private c:Z

.field private d:D

.field private e:D

.field private f:D

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/m0;->a:F

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/core/m0;->b:D

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/animation/core/m0;->g:F

    return-void
.end method

.method private final c()V
    .locals 10

    iget-boolean v0, p0, Landroidx/compose/animation/core/m0;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/compose/animation/core/m0;->a:F

    invoke-static {}, Landroidx/compose/animation/core/n0;->b()F

    move-result v1

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/compose/animation/core/m0;->g:F

    float-to-double v1, v0

    float-to-double v3, v0

    mul-double/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    const/4 v5, 0x1

    if-lez v4, :cond_1

    neg-float v0, v0

    float-to-double v3, v0

    iget-wide v6, p0, Landroidx/compose/animation/core/m0;->b:D

    mul-double/2addr v3, v6

    int-to-double v8, v5

    sub-double/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    iput-wide v3, p0, Landroidx/compose/animation/core/m0;->d:D

    iget v0, p0, Landroidx/compose/animation/core/m0;->g:F

    neg-float v0, v0

    float-to-double v3, v0

    iget-wide v6, p0, Landroidx/compose/animation/core/m0;->b:D

    mul-double/2addr v3, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    sub-double/2addr v3, v6

    iput-wide v3, p0, Landroidx/compose/animation/core/m0;->e:D

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-wide v3, p0, Landroidx/compose/animation/core/m0;->b:D

    int-to-double v6, v5

    sub-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v3, v0

    iput-wide v3, p0, Landroidx/compose/animation/core/m0;->f:D

    :cond_2
    :goto_0
    iput-boolean v5, p0, Landroidx/compose/animation/core/m0;->c:Z

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Landroidx/compose/animation/core/m0;->g:F

    return v0
.end method

.method public final b()F
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/m0;->b:D

    mul-double/2addr v0, v0

    double-to-float v0, v0

    return v0
.end method

.method public final d(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Landroidx/compose/animation/core/m0;->g:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/animation/core/m0;->c:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Damping ratio must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/animation/core/m0;->a:F

    return-void
.end method

.method public final f(F)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/animation/core/m0;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/core/m0;->b:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/animation/core/m0;->c:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Spring stiffness constant must be positive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(FFJ)J
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Landroidx/compose/animation/core/m0;->c()V

    iget v2, v0, Landroidx/compose/animation/core/m0;->a:F

    sub-float v2, p1, v2

    move-wide/from16 v3, p3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    iget v5, v0, Landroidx/compose/animation/core/m0;->g:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v6

    if-lez v7, :cond_0

    float-to-double v5, v2

    iget-wide v7, v0, Landroidx/compose/animation/core/m0;->e:D

    mul-double v9, v7, v5

    float-to-double v1, v1

    sub-double/2addr v9, v1

    iget-wide v11, v0, Landroidx/compose/animation/core/m0;->d:D

    sub-double v13, v7, v11

    div-double/2addr v9, v13

    sub-double v9, v5, v9

    mul-double/2addr v5, v7

    sub-double/2addr v5, v1

    sub-double v1, v7, v11

    div-double/2addr v5, v1

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    mul-double/2addr v1, v9

    iget-wide v7, v0, Landroidx/compose/animation/core/m0;->d:D

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v1, v7

    iget-wide v7, v0, Landroidx/compose/animation/core/m0;->e:D

    mul-double/2addr v9, v7

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v9, v7

    iget-wide v7, v0, Landroidx/compose/animation/core/m0;->d:D

    mul-double/2addr v5, v7

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    add-double/2addr v9, v5

    goto/16 :goto_0

    :cond_0
    cmpg-float v6, v5, v6

    if-nez v6, :cond_1

    float-to-double v5, v1

    iget-wide v7, v0, Landroidx/compose/animation/core/m0;->b:D

    float-to-double v1, v2

    mul-double v9, v7, v1

    add-double/2addr v5, v9

    mul-double v9, v5, v3

    add-double/2addr v1, v9

    neg-double v7, v7

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v7, v1

    iget-wide v9, v0, Landroidx/compose/animation/core/m0;->b:D

    neg-double v9, v9

    mul-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    mul-double/2addr v1, v9

    iget-wide v9, v0, Landroidx/compose/animation/core/m0;->b:D

    neg-double v11, v9

    mul-double/2addr v1, v11

    neg-double v9, v9

    mul-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    add-double v9, v1, v5

    move-wide v1, v7

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    int-to-double v6, v6

    iget-wide v8, v0, Landroidx/compose/animation/core/m0;->f:D

    div-double/2addr v6, v8

    float-to-double v8, v5

    iget-wide v10, v0, Landroidx/compose/animation/core/m0;->b:D

    mul-double/2addr v8, v10

    float-to-double v12, v2

    mul-double/2addr v8, v12

    float-to-double v1, v1

    add-double/2addr v8, v1

    mul-double/2addr v6, v8

    neg-float v1, v5

    float-to-double v1, v1

    mul-double/2addr v1, v10

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    iget-wide v8, v0, Landroidx/compose/animation/core/m0;->f:D

    mul-double/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    iget-wide v10, v0, Landroidx/compose/animation/core/m0;->f:D

    mul-double/2addr v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    mul-double/2addr v1, v8

    iget-wide v8, v0, Landroidx/compose/animation/core/m0;->b:D

    neg-double v10, v8

    mul-double/2addr v10, v1

    iget v5, v0, Landroidx/compose/animation/core/m0;->g:F

    float-to-double v14, v5

    mul-double/2addr v10, v14

    neg-float v5, v5

    float-to-double v14, v5

    mul-double/2addr v14, v8

    mul-double/2addr v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    iget-wide v14, v0, Landroidx/compose/animation/core/m0;->f:D

    move-wide/from16 p1, v1

    neg-double v1, v14

    mul-double/2addr v1, v12

    mul-double/2addr v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v1, v12

    iget-wide v12, v0, Landroidx/compose/animation/core/m0;->f:D

    mul-double/2addr v6, v12

    mul-double/2addr v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v6, v3

    add-double/2addr v1, v6

    mul-double/2addr v8, v1

    add-double v9, v10, v8

    move-wide/from16 v1, p1

    :goto_0
    iget v3, v0, Landroidx/compose/animation/core/m0;->a:F

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    double-to-float v2, v9

    invoke-static {v1, v2}, Landroidx/compose/animation/core/n0;->a(FF)J

    move-result-wide v1

    return-wide v1
.end method
