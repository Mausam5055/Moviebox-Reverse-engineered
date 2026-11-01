.class public abstract Lm4/a;
.super Ljava/lang/Object;

# interfaces
.implements Ln4/a$b;
.implements Lm4/k;
.implements Lm4/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm4/a$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/PathMeasure;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Path;

.field private final d:Landroid/graphics/RectF;

.field private final e:Lcom/airbnb/lottie/LottieDrawable;

.field protected final f:Lcom/airbnb/lottie/model/layer/a;

.field private final g:Ljava/util/List;

.field private final h:[F

.field final i:Landroid/graphics/Paint;

.field private final j:Ln4/a;

.field private final k:Ln4/a;

.field private final l:Ljava/util/List;

.field private final m:Ln4/a;

.field private n:Ln4/a;

.field private o:Ln4/a;

.field p:F

.field private q:Ln4/c;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLq4/d;Lq4/b;Ljava/util/List;Lq4/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lm4/a;->a:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm4/a;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm4/a;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lm4/a;->d:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm4/a;->g:Ljava/util/List;

    new-instance v0, Ll4/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ll4/a;-><init>(I)V

    iput-object v0, p0, Lm4/a;->i:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iput v1, p0, Lm4/a;->p:F

    iput-object p1, p0, Lm4/a;->e:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lm4/a;->f:Lcom/airbnb/lottie/model/layer/a;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p6}, Lq4/d;->a()Ln4/a;

    move-result-object p1

    iput-object p1, p0, Lm4/a;->k:Ln4/a;

    invoke-virtual {p7}, Lq4/b;->d()Ln4/d;

    move-result-object p1

    iput-object p1, p0, Lm4/a;->j:Ln4/a;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lm4/a;->m:Ln4/a;

    goto :goto_0

    :cond_0
    invoke-virtual {p9}, Lq4/b;->d()Ln4/d;

    move-result-object p1

    iput-object p1, p0, Lm4/a;->m:Ln4/a;

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lm4/a;->l:Ljava/util/List;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lm4/a;->h:[F

    const/4 p1, 0x0

    move p3, p1

    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    iget-object p4, p0, Lm4/a;->l:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lq4/b;

    invoke-virtual {p5}, Lq4/b;->d()Ln4/d;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lm4/a;->k:Ln4/a;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    iget-object p3, p0, Lm4/a;->j:Ln4/a;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    move p3, p1

    :goto_2
    iget-object p4, p0, Lm4/a;->l:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    iget-object p4, p0, Lm4/a;->l:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ln4/a;

    invoke-virtual {p2, p4}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lm4/a;->m:Ln4/a;

    if-eqz p3, :cond_3

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_3
    iget-object p3, p0, Lm4/a;->k:Ln4/a;

    invoke-virtual {p3, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p3, p0, Lm4/a;->j:Ln4/a;

    invoke-virtual {p3, p0}, Ln4/a;->a(Ln4/a$b;)V

    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    iget-object p3, p0, Lm4/a;->l:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln4/a;

    invoke-virtual {p3, p0}, Ln4/a;->a(Ln4/a$b;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lm4/a;->m:Ln4/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    :cond_5
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->w()Lr4/a;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->w()Lr4/a;

    move-result-object p1

    invoke-virtual {p1}, Lr4/a;->a()Lq4/b;

    move-result-object p1

    invoke-virtual {p1}, Lq4/b;->d()Ln4/d;

    move-result-object p1

    iput-object p1, p0, Lm4/a;->o:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lm4/a;->o:Ln4/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_6
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->y()Lu4/j;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p1, Ln4/c;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->y()Lu4/j;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Ln4/c;-><init>(Ln4/a$b;Lcom/airbnb/lottie/model/layer/a;Lu4/j;)V

    iput-object p1, p0, Lm4/a;->q:Ln4/c;

    :cond_7
    return-void
.end method

.method private g(Landroid/graphics/Matrix;)V
    .locals 5

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "StrokeContent#applyDashPattern"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lm4/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_1
    return-void

    :cond_2
    invoke-static {p1}, Lv4/l;->g(Landroid/graphics/Matrix;)F

    move-result p1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lm4/a;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lm4/a;->h:[F

    iget-object v3, p0, Lm4/a;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/a;

    invoke-virtual {v3}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v0

    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_3

    iget-object v2, p0, Lm4/a;->h:[F

    aget v3, v2, v0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    aput v4, v2, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lm4/a;->h:[F

    aget v3, v2, v0

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    aput v4, v2, v0

    :cond_4
    :goto_1
    iget-object v2, p0, Lm4/a;->h:[F

    aget v3, v2, v0

    mul-float/2addr v3, p1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lm4/a;->m:Ln4/a;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p1, v0

    :goto_2
    iget-object v0, p0, Lm4/a;->i:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    iget-object v3, p0, Lm4/a;->h:[F

    invoke-direct {v2, v3, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_7
    return-void
.end method

.method private i(Landroid/graphics/Canvas;Lm4/a$b;Landroid/graphics/Matrix;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v3

    const-string v4, "StrokeContent#applyTrimPath"

    if-eqz v3, :cond_0

    invoke-static {v4}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static/range {p2 .. p2}, Lm4/a$b;->b(Lm4/a$b;)Lm4/u;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_1
    return-void

    :cond_2
    iget-object v3, v0, Lm4/a;->b:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    invoke-static/range {p2 .. p2}, Lm4/a$b;->a(Lm4/a$b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    iget-object v5, v0, Lm4/a;->b:Landroid/graphics/Path;

    invoke-static/range {p2 .. p2}, Lm4/a$b;->a(Lm4/a$b;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm4/m;

    invoke-interface {v6}, Lm4/m;->getPath()Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    invoke-static/range {p2 .. p2}, Lm4/a$b;->b(Lm4/a$b;)Lm4/u;

    move-result-object v3

    invoke-virtual {v3}, Lm4/u;->i()Ln4/a;

    move-result-object v3

    invoke-virtual {v3}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v3, v5

    invoke-static/range {p2 .. p2}, Lm4/a$b;->b(Lm4/a$b;)Lm4/u;

    move-result-object v6

    invoke-virtual {v6}, Lm4/u;->d()Ln4/a;

    move-result-object v6

    invoke-virtual {v6}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float/2addr v6, v5

    invoke-static/range {p2 .. p2}, Lm4/a$b;->b(Lm4/a$b;)Lm4/u;

    move-result-object v5

    invoke-virtual {v5}, Lm4/u;->g()Ln4/a;

    move-result-object v5

    invoke-virtual {v5}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v5, v7

    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v7, v3, v7

    if-gez v7, :cond_5

    const v7, 0x3f7d70a4    # 0.99f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_5

    iget-object v2, v0, Lm4/a;->b:Landroid/graphics/Path;

    iget-object v3, v0, Lm4/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v4}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_4
    return-void

    :cond_5
    iget-object v7, v0, Lm4/a;->a:Landroid/graphics/PathMeasure;

    iget-object v8, v0, Lm4/a;->b:Landroid/graphics/Path;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v7, v0, Lm4/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    :goto_1
    iget-object v8, v0, Lm4/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Lm4/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    add-float/2addr v7, v8

    goto :goto_1

    :cond_6
    mul-float/2addr v5, v7

    mul-float/2addr v3, v7

    add-float/2addr v3, v5

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    add-float v5, v3, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static/range {p2 .. p2}, Lm4/a$b;->a(Lm4/a$b;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v10, 0x0

    move v11, v10

    :goto_2
    if-ltz v6, :cond_e

    iget-object v12, v0, Lm4/a;->c:Landroid/graphics/Path;

    invoke-static/range {p2 .. p2}, Lm4/a$b;->a(Lm4/a$b;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lm4/m;

    invoke-interface {v13}, Lm4/m;->getPath()Landroid/graphics/Path;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v12, v0, Lm4/a;->c:Landroid/graphics/Path;

    invoke-virtual {v12, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v12, v0, Lm4/a;->a:Landroid/graphics/PathMeasure;

    iget-object v13, v0, Lm4/a;->c:Landroid/graphics/Path;

    invoke-virtual {v12, v13, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v12, v0, Lm4/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v12}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    cmpl-float v13, v5, v7

    if-lez v13, :cond_8

    sub-float v13, v5, v7

    add-float v14, v11, v12

    cmpg-float v14, v13, v14

    if-gez v14, :cond_8

    cmpg-float v14, v11, v13

    if-gez v14, :cond_8

    cmpl-float v14, v3, v7

    if-lez v14, :cond_7

    sub-float v14, v3, v7

    div-float/2addr v14, v12

    goto :goto_3

    :cond_7
    move v14, v10

    :goto_3
    div-float/2addr v13, v12

    invoke-static {v13, v8}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget-object v15, v0, Lm4/a;->c:Landroid/graphics/Path;

    invoke-static {v15, v14, v13, v10}, Lv4/l;->a(Landroid/graphics/Path;FFF)V

    iget-object v13, v0, Lm4/a;->c:Landroid/graphics/Path;

    iget-object v14, v0, Lm4/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_8
    add-float v13, v11, v12

    cmpg-float v14, v13, v3

    if-ltz v14, :cond_d

    cmpl-float v14, v11, v5

    if-lez v14, :cond_9

    goto :goto_6

    :cond_9
    cmpg-float v14, v13, v5

    if-gtz v14, :cond_a

    cmpg-float v14, v3, v11

    if-gez v14, :cond_a

    iget-object v13, v0, Lm4/a;->c:Landroid/graphics/Path;

    iget-object v14, v0, Lm4/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_a
    cmpg-float v14, v3, v11

    if-gez v14, :cond_b

    move v14, v10

    goto :goto_4

    :cond_b
    sub-float v14, v3, v11

    div-float/2addr v14, v12

    :goto_4
    cmpl-float v13, v5, v13

    if-lez v13, :cond_c

    move v13, v8

    goto :goto_5

    :cond_c
    sub-float v13, v5, v11

    div-float/2addr v13, v12

    :goto_5
    iget-object v15, v0, Lm4/a;->c:Landroid/graphics/Path;

    invoke-static {v15, v14, v13, v10}, Lv4/l;->a(Landroid/graphics/Path;FFF)V

    iget-object v13, v0, Lm4/a;->c:Landroid/graphics/Path;

    iget-object v14, v0, Lm4/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d
    :goto_6
    add-float/2addr v11, v12

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v4}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_f
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lm4/a;->e:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/lang/Object;Lw4/c;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/p0;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lm4/a;->k:Ln4/a;

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/p0;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lm4/a;->j:Ln4/a;

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/p0;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lm4/a;->n:Ln4/a;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lm4/a;->f:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Ln4/a;)V

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lm4/a;->n:Ln4/a;

    goto/16 :goto_0

    :cond_3
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lm4/a;->n:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lm4/a;->f:Lcom/airbnb/lottie/model/layer/a;

    iget-object p2, p0, Lm4/a;->n:Ln4/a;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/airbnb/lottie/p0;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lm4/a;->o:Ln4/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_5
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lm4/a;->o:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lm4/a;->f:Lcom/airbnb/lottie/model/layer/a;

    iget-object p2, p0, Lm4/a;->o:Ln4/a;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/airbnb/lottie/p0;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lm4/a;->q:Ln4/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Ln4/c;->c(Lw4/c;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/airbnb/lottie/p0;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lm4/a;->q:Ln4/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p2}, Ln4/c;->f(Lw4/c;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/airbnb/lottie/p0;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lm4/a;->q:Ln4/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Ln4/c;->d(Lw4/c;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/airbnb/lottie/p0;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lm4/a;->q:Ln4/c;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Ln4/c;->e(Lw4/c;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/airbnb/lottie/p0;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lm4/a;->q:Ln4/c;

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ln4/c;->g(Lw4/c;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;)V
    .locals 7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm4/c;

    instance-of v4, v3, Lm4/u;

    if-eqz v4, :cond_0

    check-cast v3, Lm4/u;

    invoke-virtual {v3}, Lm4/u;->j()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v4, v5, :cond_0

    move-object v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lm4/u;->b(Ln4/a$b;)V

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v0, v1

    :goto_1
    if-ltz p1, :cond_7

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm4/c;

    instance-of v4, v3, Lm4/u;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lm4/u;

    invoke-virtual {v4}, Lm4/u;->j()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v5, v6, :cond_4

    if-eqz v0, :cond_3

    iget-object v3, p0, Lm4/a;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lm4/a$b;

    invoke-direct {v0, v4, v1}, Lm4/a$b;-><init>(Lm4/u;Lm4/a$a;)V

    invoke-virtual {v4, p0}, Lm4/u;->b(Ln4/a$b;)V

    goto :goto_2

    :cond_4
    instance-of v4, v3, Lm4/m;

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    new-instance v0, Lm4/a$b;

    invoke-direct {v0, v2, v1}, Lm4/a$b;-><init>(Lm4/u;Lm4/a$a;)V

    :cond_5
    invoke-static {v0}, Lm4/a$b;->a(Lm4/a$b;)Ljava/util/List;

    move-result-object v4

    check-cast v3, Lm4/m;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    iget-object p1, p0, Lm4/a;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public d(Lp4/d;ILjava/util/List;Lp4/d;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lv4/k;->k(Lp4/d;ILjava/util/List;Lp4/d;Lm4/k;)V

    return-void
.end method

.method public f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 6

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p3

    const-string v0, "StrokeContent#getBounds"

    if-eqz p3, :cond_0

    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p3, p0, Lm4/a;->b:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    iget-object v2, p0, Lm4/a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lm4/a;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm4/a$b;

    move v3, p3

    :goto_1
    invoke-static {v2}, Lm4/a$b;->a(Lm4/a$b;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lm4/a;->b:Landroid/graphics/Path;

    invoke-static {v2}, Lm4/a$b;->a(Lm4/a$b;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm4/m;

    invoke-interface {v5}, Lm4/m;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lm4/a;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lm4/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object p2, p0, Lm4/a;->j:Ln4/a;

    check-cast p2, Ln4/d;

    invoke-virtual {p2}, Ln4/d;->q()F

    move-result p2

    iget-object p3, p0, Lm4/a;->d:Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    iget v2, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p2

    iget v3, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p2

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lm4/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_3
    return-void
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "StrokeContent#draw"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lv4/l;->h(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_1
    return-void

    :cond_2
    int-to-float v0, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    iget-object v3, p0, Lm4/a;->k:Ln4/a;

    check-cast v3, Ln4/f;

    invoke-virtual {v3}, Ln4/f;->q()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lm4/a;->i:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lv4/k;->c(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lm4/a;->i:Landroid/graphics/Paint;

    iget-object v3, p0, Lm4/a;->j:Ln4/a;

    check-cast v3, Ln4/d;

    invoke-virtual {v3}, Ln4/d;->q()F

    move-result v3

    invoke-static {p2}, Lv4/l;->g(Landroid/graphics/Matrix;)F

    move-result v5

    mul-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lm4/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0, p2}, Lm4/a;->g(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lm4/a;->n:Ln4/a;

    if-eqz v2, :cond_5

    iget-object v5, p0, Lm4/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_5
    iget-object v2, p0, Lm4/a;->o:Ln4/a;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v3, v2, v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lm4/a;->i:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_6
    iget v3, p0, Lm4/a;->p:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lm4/a;->f:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/model/layer/a;->x(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v3

    iget-object v5, p0, Lm4/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_7
    :goto_0
    iput v2, p0, Lm4/a;->p:F

    :cond_8
    iget-object v2, p0, Lm4/a;->q:Ln4/c;

    if-eqz v2, :cond_9

    iget-object v3, p0, Lm4/a;->i:Landroid/graphics/Paint;

    invoke-static {p3, v0}, Lv4/l;->l(II)I

    move-result p3

    invoke-virtual {v2, v3, p2, p3}, Ln4/c;->b(Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V

    :cond_9
    :goto_1
    iget-object p3, p0, Lm4/a;->g:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v4, p3, :cond_f

    iget-object p3, p0, Lm4/a;->g:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lm4/a$b;

    invoke-static {p3}, Lm4/a$b;->b(Lm4/a$b;)Lm4/u;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p3, p2}, Lm4/a;->i(Landroid/graphics/Canvas;Lm4/a$b;Landroid/graphics/Matrix;)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v2, "StrokeContent#buildPath"

    if-eqz v0, :cond_b

    invoke-static {v2}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lm4/a;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-static {p3}, Lm4/a$b;->a(Lm4/a$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_c

    iget-object v3, p0, Lm4/a;->b:Landroid/graphics/Path;

    invoke-static {p3}, Lm4/a$b;->a(Lm4/a$b;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm4/m;

    invoke-interface {v5}, Lm4/m;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v3, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p3

    const-string v0, "StrokeContent#drawPath"

    if-eqz p3, :cond_d

    invoke-static {v2}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p3, p0, Lm4/a;->b:Landroid/graphics/Path;

    iget-object v2, p0, Lm4/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-static {v0}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_e
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_10
    return-void
.end method
