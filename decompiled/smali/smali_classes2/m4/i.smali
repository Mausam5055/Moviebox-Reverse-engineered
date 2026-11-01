.class public Lm4/i;
.super Lm4/a;


# instance fields
.field private final A:Ln4/a;

.field private B:Ln4/q;

.field private final r:Ljava/lang/String;

.field private final s:Z

.field private final t:Landroidx/collection/x;

.field private final u:Landroidx/collection/x;

.field private final v:Landroid/graphics/RectF;

.field private final w:Lcom/airbnb/lottie/model/content/GradientType;

.field private final x:I

.field private final y:Ln4/a;

.field private final z:Ln4/a;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/a;)V
    .locals 11

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->b()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->g()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->i()F

    move-result v6

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->k()Lq4/d;

    move-result-object v7

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->m()Lq4/b;

    move-result-object v8

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->h()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->c()Lq4/b;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lm4/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLq4/d;Lq4/b;Ljava/util/List;Lq4/b;)V

    new-instance v0, Landroidx/collection/x;

    invoke-direct {v0}, Landroidx/collection/x;-><init>()V

    iput-object v0, p0, Lm4/i;->t:Landroidx/collection/x;

    new-instance v0, Landroidx/collection/x;

    invoke-direct {v0}, Landroidx/collection/x;-><init>()V

    iput-object v0, p0, Lm4/i;->u:Landroidx/collection/x;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lm4/i;->v:Landroid/graphics/RectF;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm4/i;->r:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->f()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lm4/i;->w:Lcom/airbnb/lottie/model/content/GradientType;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->n()Z

    move-result v0

    iput-boolean v0, p0, Lm4/i;->s:Z

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->O()Lcom/airbnb/lottie/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/h;->d()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lm4/i;->x:I

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->e()Lq4/c;

    move-result-object p1

    invoke-virtual {p1}, Lq4/c;->a()Ln4/a;

    move-result-object p1

    iput-object p1, p0, Lm4/i;->y:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->l()Lq4/f;

    move-result-object p1

    invoke-virtual {p1}, Lq4/f;->a()Ln4/a;

    move-result-object p1

    iput-object p1, p0, Lm4/i;->z:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->d()Lq4/f;

    move-result-object p1

    invoke-virtual {p1}, Lq4/f;->a()Ln4/a;

    move-result-object p1

    iput-object p1, p0, Lm4/i;->A:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    return-void
.end method

.method private j([I)[I
    .locals 4

    iget-object v0, p0, Lm4/i;->B:Ln4/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ln4/q;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length p1, v0

    new-array p1, p1, [I

    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private k()I
    .locals 4

    iget-object v0, p0, Lm4/i;->z:Ln4/a;

    invoke-virtual {v0}, Ln4/a;->f()F

    move-result v0

    iget v1, p0, Lm4/i;->x:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lm4/i;->A:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->f()F

    move-result v1

    iget v2, p0, Lm4/i;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lm4/i;->y:Ln4/a;

    invoke-virtual {v2}, Ln4/a;->f()F

    move-result v2

    iget v3, p0, Lm4/i;->x:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_0

    const/16 v3, 0x20f

    mul-int/2addr v3, v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    mul-int/2addr v3, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    mul-int/2addr v3, v2

    :cond_2
    return v3
.end method

.method private l()Landroid/graphics/LinearGradient;
    .locals 14

    invoke-direct {p0}, Lm4/i;->k()I

    move-result v0

    iget-object v1, p0, Lm4/i;->t:Landroidx/collection/x;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lm4/i;->z:Ln4/a;

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lm4/i;->A:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lm4/i;->y:Ln4/a;

    invoke-virtual {v4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/d;

    invoke-virtual {v4}, Lr4/d;->d()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lm4/i;->j([I)[I

    move-result-object v11

    invoke-virtual {v4}, Lr4/d;->e()[F

    move-result-object v12

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lm4/i;->t:Landroidx/collection/x;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    return-object v0
.end method

.method private m()Landroid/graphics/RadialGradient;
    .locals 13

    invoke-direct {p0}, Lm4/i;->k()I

    move-result v0

    iget-object v1, p0, Lm4/i;->u:Landroidx/collection/x;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lm4/i;->z:Ln4/a;

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lm4/i;->A:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lm4/i;->y:Ln4/a;

    invoke-virtual {v4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/d;

    invoke-virtual {v4}, Lr4/d;->d()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lm4/i;->j([I)[I

    move-result-object v10

    invoke-virtual {v4}, Lr4/d;->e()[F

    move-result-object v11

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v9, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lm4/i;->u:Landroidx/collection/x;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lw4/c;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lm4/a;->b(Ljava/lang/Object;Lw4/c;)V

    sget-object v0, Lcom/airbnb/lottie/p0;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lm4/i;->B:Ln4/q;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lm4/a;->f:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Ln4/a;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lm4/i;->B:Ln4/q;

    goto :goto_0

    :cond_1
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lm4/i;->B:Ln4/q;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lm4/a;->f:Lcom/airbnb/lottie/model/layer/a;

    iget-object p2, p0, Lm4/i;->B:Ln4/q;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm4/i;->r:Ljava/lang/String;

    return-object v0
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lm4/i;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lm4/i;->v:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lm4/a;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lm4/i;->w:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v1, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lm4/i;->l()Landroid/graphics/LinearGradient;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lm4/i;->m()Landroid/graphics/RadialGradient;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lm4/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super {p0, p1, p2, p3}, Lm4/a;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
