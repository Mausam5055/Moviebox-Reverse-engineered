.class public Lm4/n;
.super Ljava/lang/Object;

# interfaces
.implements Lm4/m;
.implements Ln4/a$b;
.implements Lm4/k;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/PathMeasure;

.field private final d:[F

.field private final e:Ljava/lang/String;

.field private final f:Lcom/airbnb/lottie/LottieDrawable;

.field private final g:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

.field private final h:Z

.field private final i:Z

.field private final j:Ln4/a;

.field private final k:Ln4/a;

.field private final l:Ln4/a;

.field private final m:Ln4/a;

.field private final n:Ln4/a;

.field private final o:Ln4/a;

.field private final p:Ln4/a;

.field private final q:Lm4/b;

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm4/n;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm4/n;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lm4/n;->c:Landroid/graphics/PathMeasure;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lm4/n;->d:[F

    new-instance v0, Lm4/b;

    invoke-direct {v0}, Lm4/b;-><init>()V

    iput-object v0, p0, Lm4/n;->q:Lm4/b;

    iput-object p1, p0, Lm4/n;->f:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lm4/n;->e:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->j()Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object p1

    iput-object p1, p0, Lm4/n;->g:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->k()Z

    move-result v0

    iput-boolean v0, p0, Lm4/n;->h:Z

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->l()Z

    move-result v0

    iput-boolean v0, p0, Lm4/n;->i:Z

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->g()Lq4/b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/b;->d()Ln4/d;

    move-result-object v0

    iput-object v0, p0, Lm4/n;->j:Ln4/a;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->h()Lq4/o;

    move-result-object v1

    invoke-interface {v1}, Lq4/o;->a()Ln4/a;

    move-result-object v1

    iput-object v1, p0, Lm4/n;->k:Ln4/a;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->i()Lq4/b;

    move-result-object v2

    invoke-virtual {v2}, Lq4/b;->d()Ln4/d;

    move-result-object v2

    iput-object v2, p0, Lm4/n;->l:Ln4/a;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->e()Lq4/b;

    move-result-object v3

    invoke-virtual {v3}, Lq4/b;->d()Ln4/d;

    move-result-object v3

    iput-object v3, p0, Lm4/n;->n:Ln4/a;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->f()Lq4/b;

    move-result-object v4

    invoke-virtual {v4}, Lq4/b;->d()Ln4/d;

    move-result-object v4

    iput-object v4, p0, Lm4/n;->p:Ln4/a;

    sget-object v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne p1, v5, :cond_0

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->b()Lq4/b;

    move-result-object v6

    invoke-virtual {v6}, Lq4/b;->d()Ln4/d;

    move-result-object v6

    iput-object v6, p0, Lm4/n;->m:Ln4/a;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->c()Lq4/b;

    move-result-object p3

    invoke-virtual {p3}, Lq4/b;->d()Ln4/d;

    move-result-object p3

    iput-object p3, p0, Lm4/n;->o:Ln4/a;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    iput-object p3, p0, Lm4/n;->m:Ln4/a;

    iput-object p3, p0, Lm4/n;->o:Ln4/a;

    :goto_0
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p2, v4}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    if-ne p1, v5, :cond_1

    iget-object p3, p0, Lm4/n;->m:Ln4/a;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    iget-object p3, p0, Lm4/n;->o:Ln4/a;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_1
    invoke-virtual {v0, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {v1, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {v2, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {v3, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {v4, p0}, Ln4/a;->a(Ln4/a$b;)V

    if-ne p1, v5, :cond_2

    iget-object p1, p0, Lm4/n;->m:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lm4/n;->o:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    :cond_2
    return-void
.end method

.method private g()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lm4/n;->j:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, v0, Lm4/n;->l:Ln4/a;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    int-to-double v4, v1

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v6, v4

    double-to-float v1, v6

    iget-object v6, v0, Lm4/n;->p:Ln4/a;

    invoke-virtual {v6}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    iget-object v7, v0, Lm4/n;->n:Ln4/a;

    invoke-virtual {v7}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v8, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    double-to-float v10, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    double-to-float v11, v11

    iget-object v12, v0, Lm4/n;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v12, v1

    add-double/2addr v2, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    move-wide/from16 v16, v2

    const/4 v14, 0x0

    :goto_1
    int-to-double v1, v14

    cmpg-double v3, v1, v4

    if-gez v3, :cond_4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move v3, v14

    mul-double v14, v8, v18

    double-to-float v14, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v27, v12

    mul-double v12, v8, v18

    double-to-float v12, v12

    const/4 v13, 0x0

    cmpl-float v13, v6, v13

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    if-eqz v13, :cond_2

    move-wide/from16 v29, v8

    float-to-double v8, v11

    move-wide/from16 v20, v1

    float-to-double v0, v10

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v8

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v2, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v8, v12

    move v1, v12

    float-to-double v12, v14

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v8, v12

    double-to-float v8, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v9, v7, v6

    const/high16 v13, 0x3e800000    # 0.25f

    mul-float/2addr v9, v13

    mul-float/2addr v2, v9

    mul-float/2addr v0, v9

    mul-float/2addr v12, v9

    mul-float/2addr v9, v8

    sub-double v18, v4, v18

    cmpl-double v8, v20, v18

    if-nez v8, :cond_1

    move-object/from16 v8, p0

    iget-object v13, v8, Lm4/n;->b:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    iget-object v13, v8, Lm4/n;->b:Landroid/graphics/Path;

    invoke-virtual {v13, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v13, v8, Lm4/n;->b:Landroid/graphics/Path;

    sub-float v2, v10, v2

    sub-float v0, v11, v0

    add-float v10, v14, v12

    add-float/2addr v9, v1

    move-object/from16 v20, v13

    move/from16 v21, v2

    move/from16 v22, v0

    move/from16 v23, v10

    move/from16 v24, v9

    move/from16 v25, v14

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v11, v8, Lm4/n;->c:Landroid/graphics/PathMeasure;

    iget-object v12, v8, Lm4/n;->b:Landroid/graphics/Path;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v11, v8, Lm4/n;->c:Landroid/graphics/PathMeasure;

    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    const v15, 0x3f7ff972    # 0.9999f

    mul-float/2addr v12, v15

    iget-object v15, v8, Lm4/n;->d:[F

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v15, v13}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v11, v8, Lm4/n;->a:Landroid/graphics/Path;

    iget-object v12, v8, Lm4/n;->d:[F

    const/4 v13, 0x0

    aget v25, v12, v13

    const/4 v15, 0x1

    aget v26, v12, v15

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    move-object/from16 v8, p0

    iget-object v15, v8, Lm4/n;->a:Landroid/graphics/Path;

    sub-float v21, v10, v2

    sub-float v22, v11, v0

    add-float v23, v14, v12

    add-float v24, v1, v9

    move-object/from16 v20, v15

    move/from16 v25, v14

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2

    :cond_2
    move-wide/from16 v20, v1

    move-wide/from16 v29, v8

    move v1, v12

    const/4 v13, 0x0

    move-object v8, v0

    sub-double v9, v4, v18

    cmpl-double v0, v20, v9

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, v8, Lm4/n;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-double v16, v16, v27

    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v11, v1

    move v10, v14

    move-wide/from16 v12, v27

    move v14, v0

    move-object v0, v8

    move-wide/from16 v8, v29

    goto/16 :goto_1

    :cond_4
    move-object v8, v0

    iget-object v0, v8, Lm4/n;->k:Ln4/a;

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, v8, Lm4/n;->a:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, v8, Lm4/n;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private i()V
    .locals 45

    move-object/from16 v0, p0

    iget-object v1, v0, Lm4/n;->j:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Lm4/n;->l:Ln4/a;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    float-to-double v4, v1

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v6, v4

    double-to-float v6, v6

    iget-boolean v7, v0, Lm4/n;->i:Z

    if-eqz v7, :cond_1

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v6, v7

    :cond_1
    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    float-to-int v9, v1

    int-to-float v9, v9

    sub-float/2addr v1, v9

    const/4 v9, 0x0

    cmpl-float v10, v1, v9

    if-eqz v10, :cond_2

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v1

    mul-float/2addr v11, v8

    float-to-double v11, v11

    add-double/2addr v2, v11

    :cond_2
    iget-object v11, v0, Lm4/n;->n:Ln4/a;

    invoke-virtual {v11}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v12, v0, Lm4/n;->m:Ln4/a;

    invoke-virtual {v12}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget-object v13, v0, Lm4/n;->o:Ln4/a;

    const/high16 v14, 0x42c80000    # 100.0f

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    div-float/2addr v13, v14

    goto :goto_1

    :cond_3
    move v13, v9

    :goto_1
    iget-object v15, v0, Lm4/n;->p:Ln4/a;

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    div-float/2addr v15, v14

    goto :goto_2

    :cond_4
    move v15, v9

    :goto_2
    if-eqz v10, :cond_5

    sub-float v14, v11, v12

    mul-float/2addr v14, v1

    add-float/2addr v14, v12

    move/from16 v17, v10

    float-to-double v9, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move/from16 v21, v8

    mul-double v7, v9, v18

    double-to-float v7, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v9, v9, v18

    double-to-float v8, v9

    iget-object v9, v0, Lm4/n;->a:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v9, v6, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-double v9, v9

    add-double/2addr v2, v9

    move v10, v7

    move/from16 v7, v21

    goto :goto_3

    :cond_5
    move/from16 v21, v8

    move/from16 v17, v10

    float-to-double v7, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    double-to-float v9, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v7, v7, v18

    double-to-float v8, v7

    iget-object v7, v0, Lm4/n;->a:Landroid/graphics/Path;

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move v14, v8

    move v10, v9

    move/from16 v7, v21

    float-to-double v8, v7

    add-double/2addr v2, v8

    move v8, v14

    const/4 v14, 0x0

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v18

    const/4 v9, 0x0

    move/from16 v21, v7

    move v7, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move v10, v9

    :goto_4
    int-to-double v11, v9

    cmpg-double v24, v11, v4

    if-gez v24, :cond_10

    if-eqz v10, :cond_6

    move/from16 v24, v22

    :goto_5
    const/16 v16, 0x0

    goto :goto_6

    :cond_6
    move/from16 v24, v23

    goto :goto_5

    :goto_6
    cmpl-float v25, v14, v16

    if-eqz v25, :cond_7

    sub-double v26, v4, v18

    cmpl-double v26, v11, v26

    if-nez v26, :cond_7

    mul-float v26, v6, v1

    const/high16 v20, 0x40000000    # 2.0f

    div-float v26, v26, v20

    move/from16 v44, v26

    move/from16 v26, v6

    move/from16 v6, v44

    goto :goto_7

    :cond_7
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v26, v6

    move/from16 v6, v21

    :goto_7
    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    if-eqz v25, :cond_8

    sub-double v29, v4, v27

    cmpl-double v25, v11, v29

    if-nez v25, :cond_8

    move-wide/from16 v29, v11

    move/from16 v25, v14

    goto :goto_8

    :cond_8
    move-wide/from16 v29, v11

    move/from16 v25, v14

    move/from16 v14, v24

    :goto_8
    float-to-double v11, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    move-wide/from16 v33, v4

    mul-double v4, v11, v31

    double-to-float v4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    mul-double v11, v11, v31

    double-to-float v5, v11

    const/4 v11, 0x0

    cmpl-float v12, v13, v11

    if-nez v12, :cond_9

    cmpl-float v12, v15, v11

    if-nez v12, :cond_9

    iget-object v7, v0, Lm4/n;->a:Landroid/graphics/Path;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-wide/from16 v42, v2

    move/from16 v24, v13

    move v12, v15

    goto/16 :goto_e

    :cond_9
    float-to-double v11, v8

    move/from16 v24, v13

    float-to-double v13, v7

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v11, v13

    double-to-float v11, v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    move v12, v15

    float-to-double v14, v5

    move-wide/from16 v42, v2

    float-to-double v2, v4

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v14

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    if-eqz v10, :cond_a

    move/from16 v3, v24

    goto :goto_9

    :cond_a
    move v3, v12

    :goto_9
    if-eqz v10, :cond_b

    move v15, v12

    goto :goto_a

    :cond_b
    move/from16 v15, v24

    :goto_a
    if-eqz v10, :cond_c

    move/from16 v31, v23

    goto :goto_b

    :cond_c
    move/from16 v31, v22

    :goto_b
    if-eqz v10, :cond_d

    move/from16 v32, v22

    goto :goto_c

    :cond_d
    move/from16 v32, v23

    :goto_c
    mul-float v31, v31, v3

    const v3, 0x3ef4e26d    # 0.47829f

    mul-float v31, v31, v3

    mul-float v13, v13, v31

    mul-float v31, v31, v11

    mul-float v32, v32, v15

    mul-float v32, v32, v3

    mul-float v14, v14, v32

    mul-float v32, v32, v2

    if-eqz v17, :cond_f

    if-nez v9, :cond_e

    mul-float/2addr v13, v1

    mul-float v31, v31, v1

    goto :goto_d

    :cond_e
    sub-double v2, v33, v27

    cmpl-double v2, v29, v2

    if-nez v2, :cond_f

    mul-float/2addr v14, v1

    mul-float v32, v32, v1

    :cond_f
    :goto_d
    iget-object v2, v0, Lm4/n;->a:Landroid/graphics/Path;

    sub-float v36, v7, v13

    sub-float v37, v8, v31

    add-float v38, v4, v14

    add-float v39, v5, v32

    move-object/from16 v35, v2

    move/from16 v40, v4

    move/from16 v41, v5

    invoke-virtual/range {v35 .. v41}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_e
    float-to-double v2, v6

    add-double v2, v42, v2

    xor-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v4

    move v8, v5

    move v15, v12

    move/from16 v13, v24

    move/from16 v14, v25

    move/from16 v6, v26

    move-wide/from16 v4, v33

    goto/16 :goto_4

    :cond_10
    iget-object v1, v0, Lm4/n;->k:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lm4/n;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Lm4/n;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm4/n;->r:Z

    iget-object v0, p0, Lm4/n;->f:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lm4/n;->j()V

    return-void
.end method

.method public b(Ljava/lang/Object;Lw4/c;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/p0;->w:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lm4/n;->j:Ln4/a;

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/p0;->x:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lm4/n;->l:Ln4/a;

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/p0;->n:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lm4/n;->k:Ln4/a;

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/p0;->y:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lm4/n;->m:Ln4/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/airbnb/lottie/p0;->z:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lm4/n;->n:Ln4/a;

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/airbnb/lottie/p0;->A:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lm4/n;->o:Ln4/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/airbnb/lottie/p0;->B:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lm4/n;->p:Ln4/a;

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm4/c;

    instance-of v1, v0, Lm4/u;

    if-eqz v1, :cond_0

    check-cast v0, Lm4/u;

    invoke-virtual {v0}, Lm4/u;->j()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lm4/n;->q:Lm4/b;

    invoke-virtual {v1, v0}, Lm4/b;->a(Lm4/u;)V

    invoke-virtual {v0, p0}, Lm4/u;->b(Ln4/a$b;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Lp4/d;ILjava/util/List;Lp4/d;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lv4/k;->k(Lp4/d;ILjava/util/List;Lp4/d;Lm4/k;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm4/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, Lm4/n;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm4/n;->a:Landroid/graphics/Path;

    return-object v0

    :cond_0
    iget-object v0, p0, Lm4/n;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lm4/n;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lm4/n;->r:Z

    iget-object v0, p0, Lm4/n;->a:Landroid/graphics/Path;

    return-object v0

    :cond_1
    sget-object v0, Lm4/n$a;->a:[I

    iget-object v2, p0, Lm4/n;->g:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lm4/n;->g()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lm4/n;->i()V

    :goto_0
    iget-object v0, p0, Lm4/n;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lm4/n;->q:Lm4/b;

    iget-object v2, p0, Lm4/n;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lm4/b;->b(Landroid/graphics/Path;)V

    iput-boolean v1, p0, Lm4/n;->r:Z

    iget-object v0, p0, Lm4/n;->a:Landroid/graphics/Path;

    return-object v0
.end method
