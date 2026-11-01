.class public Lm4/h;
.super Ljava/lang/Object;

# interfaces
.implements Lm4/e;
.implements Ln4/a$b;
.implements Lm4/k;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lcom/airbnb/lottie/model/layer/a;

.field private final d:Landroidx/collection/x;

.field private final e:Landroidx/collection/x;

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/RectF;

.field private final i:Ljava/util/List;

.field private final j:Lcom/airbnb/lottie/model/content/GradientType;

.field private final k:Ln4/a;

.field private final l:Ln4/a;

.field private final m:Ln4/a;

.field private final n:Ln4/a;

.field private o:Ln4/a;

.field private p:Ln4/q;

.field private final q:Lcom/airbnb/lottie/LottieDrawable;

.field private final r:I

.field private s:Ln4/a;

.field t:F

.field private u:Ln4/c;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;Lr4/e;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/x;

    invoke-direct {v0}, Landroidx/collection/x;-><init>()V

    iput-object v0, p0, Lm4/h;->d:Landroidx/collection/x;

    new-instance v0, Landroidx/collection/x;

    invoke-direct {v0}, Landroidx/collection/x;-><init>()V

    iput-object v0, p0, Lm4/h;->e:Landroidx/collection/x;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm4/h;->f:Landroid/graphics/Path;

    new-instance v1, Ll4/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ll4/a;-><init>(I)V

    iput-object v1, p0, Lm4/h;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lm4/h;->h:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm4/h;->i:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lm4/h;->t:F

    iput-object p3, p0, Lm4/h;->c:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {p4}, Lr4/e;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lm4/h;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lr4/e;->i()Z

    move-result v1

    iput-boolean v1, p0, Lm4/h;->b:Z

    iput-object p1, p0, Lm4/h;->q:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p4}, Lr4/e;->e()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object p1

    iput-object p1, p0, Lm4/h;->j:Lcom/airbnb/lottie/model/content/GradientType;

    invoke-virtual {p4}, Lr4/e;->c()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2}, Lcom/airbnb/lottie/h;->d()F

    move-result p1

    const/high16 p2, 0x42000000    # 32.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lm4/h;->r:I

    invoke-virtual {p4}, Lr4/e;->d()Lq4/c;

    move-result-object p1

    invoke-virtual {p1}, Lq4/c;->a()Ln4/a;

    move-result-object p1

    iput-object p1, p0, Lm4/h;->k:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p4}, Lr4/e;->g()Lq4/d;

    move-result-object p1

    invoke-virtual {p1}, Lq4/d;->a()Ln4/a;

    move-result-object p1

    iput-object p1, p0, Lm4/h;->l:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p4}, Lr4/e;->h()Lq4/f;

    move-result-object p1

    invoke-virtual {p1}, Lq4/f;->a()Ln4/a;

    move-result-object p1

    iput-object p1, p0, Lm4/h;->m:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p4}, Lr4/e;->b()Lq4/f;

    move-result-object p1

    invoke-virtual {p1}, Lq4/f;->a()Ln4/a;

    move-result-object p1

    iput-object p1, p0, Lm4/h;->n:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/a;->w()Lr4/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/a;->w()Lr4/a;

    move-result-object p1

    invoke-virtual {p1}, Lr4/a;->a()Lq4/b;

    move-result-object p1

    invoke-virtual {p1}, Lq4/b;->d()Ln4/d;

    move-result-object p1

    iput-object p1, p0, Lm4/h;->s:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lm4/h;->s:Ln4/a;

    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_0
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/a;->y()Lu4/j;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ln4/c;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/a;->y()Lu4/j;

    move-result-object p2

    invoke-direct {p1, p0, p3, p2}, Ln4/c;-><init>(Ln4/a$b;Lcom/airbnb/lottie/model/layer/a;Lu4/j;)V

    iput-object p1, p0, Lm4/h;->u:Ln4/c;

    :cond_1
    return-void
.end method

.method private g([I)[I
    .locals 4

    iget-object v0, p0, Lm4/h;->p:Ln4/q;

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

.method private i()I
    .locals 4

    iget-object v0, p0, Lm4/h;->m:Ln4/a;

    invoke-virtual {v0}, Ln4/a;->f()F

    move-result v0

    iget v1, p0, Lm4/h;->r:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lm4/h;->n:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->f()F

    move-result v1

    iget v2, p0, Lm4/h;->r:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lm4/h;->k:Ln4/a;

    invoke-virtual {v2}, Ln4/a;->f()F

    move-result v2

    iget v3, p0, Lm4/h;->r:I

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

.method private j()Landroid/graphics/LinearGradient;
    .locals 14

    invoke-direct {p0}, Lm4/h;->i()I

    move-result v0

    iget-object v1, p0, Lm4/h;->d:Landroidx/collection/x;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lm4/h;->m:Ln4/a;

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lm4/h;->n:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lm4/h;->k:Ln4/a;

    invoke-virtual {v4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/d;

    invoke-virtual {v4}, Lr4/d;->d()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lm4/h;->g([I)[I

    move-result-object v11

    invoke-virtual {v4}, Lr4/d;->e()[F

    move-result-object v12

    new-instance v4, Landroid/graphics/LinearGradient;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lm4/h;->d:Landroidx/collection/x;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    return-object v4
.end method

.method private k()Landroid/graphics/RadialGradient;
    .locals 13

    invoke-direct {p0}, Lm4/h;->i()I

    move-result v0

    iget-object v1, p0, Lm4/h;->e:Landroidx/collection/x;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lm4/h;->m:Ln4/a;

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lm4/h;->n:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lm4/h;->k:Ln4/a;

    invoke-virtual {v4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/d;

    invoke-virtual {v4}, Lr4/d;->d()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lm4/h;->g([I)[I

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

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const v0, 0x3a83126f    # 0.001f

    :cond_1
    move v9, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lm4/h;->e:Landroidx/collection/x;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lm4/h;->q:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/lang/Object;Lw4/c;)V
    .locals 2

    sget-object v0, Lcom/airbnb/lottie/p0;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lm4/h;->l:Ln4/a;

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/p0;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lm4/h;->o:Ln4/a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lm4/h;->c:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Ln4/a;)V

    :cond_1
    if-nez p2, :cond_2

    iput-object v1, p0, Lm4/h;->o:Ln4/a;

    goto/16 :goto_0

    :cond_2
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lm4/h;->o:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lm4/h;->c:Lcom/airbnb/lottie/model/layer/a;

    iget-object p2, p0, Lm4/h;->o:Ln4/a;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/airbnb/lottie/p0;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lm4/h;->p:Ln4/q;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lm4/h;->c:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Ln4/a;)V

    :cond_4
    if-nez p2, :cond_5

    iput-object v1, p0, Lm4/h;->p:Ln4/q;

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lm4/h;->d:Landroidx/collection/x;

    invoke-virtual {p1}, Landroidx/collection/x;->b()V

    iget-object p1, p0, Lm4/h;->e:Landroidx/collection/x;

    invoke-virtual {p1}, Landroidx/collection/x;->b()V

    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lm4/h;->p:Ln4/q;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lm4/h;->c:Lcom/airbnb/lottie/model/layer/a;

    iget-object p2, p0, Lm4/h;->p:Ln4/q;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/airbnb/lottie/p0;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lm4/h;->s:Ln4/a;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_7
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lm4/h;->s:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lm4/h;->c:Lcom/airbnb/lottie/model/layer/a;

    iget-object p2, p0, Lm4/h;->s:Ln4/a;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/airbnb/lottie/p0;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lm4/h;->u:Ln4/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Ln4/c;->c(Lw4/c;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/airbnb/lottie/p0;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lm4/h;->u:Ln4/c;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Ln4/c;->f(Lw4/c;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/airbnb/lottie/p0;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lm4/h;->u:Ln4/c;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Ln4/c;->d(Lw4/c;)V

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/p0;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lm4/h;->u:Ln4/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Ln4/c;->e(Lw4/c;)V

    goto :goto_0

    :cond_c
    sget-object v0, Lcom/airbnb/lottie/p0;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lm4/h;->u:Ln4/c;

    if-eqz p1, :cond_d

    invoke-virtual {p1, p2}, Ln4/c;->g(Lw4/c;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm4/c;

    instance-of v1, v0, Lm4/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm4/h;->i:Ljava/util/List;

    check-cast v0, Lm4/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Lp4/d;ILjava/util/List;Lp4/d;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lv4/k;->k(Lp4/d;ILjava/util/List;Lp4/d;Lm4/k;)V

    return-void
.end method

.method public f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Lm4/h;->f:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Lm4/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lm4/h;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lm4/h;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm4/m;

    invoke-interface {v2}, Lm4/m;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lm4/h;->f:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm4/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    iget-boolean v0, p0, Lm4/h;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "GradientFillContent#draw"

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lm4/h;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lm4/h;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lm4/h;->f:Landroid/graphics/Path;

    iget-object v4, p0, Lm4/h;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm4/m;

    invoke-interface {v4}, Lm4/m;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lm4/h;->f:Landroid/graphics/Path;

    iget-object v3, p0, Lm4/h;->h:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v2, p0, Lm4/h;->j:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lm4/h;->j()Landroid/graphics/LinearGradient;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lm4/h;->k()Landroid/graphics/RadialGradient;

    move-result-object v2

    :goto_1
    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lm4/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, p0, Lm4/h;->o:Ln4/a;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lm4/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_4
    iget-object v2, p0, Lm4/h;->s:Ln4/a;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lm4/h;->g:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_2

    :cond_5
    iget v3, p0, Lm4/h;->t:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_6

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v2, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iget-object v4, p0, Lm4/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_6
    :goto_2
    iput v2, p0, Lm4/h;->t:F

    :cond_7
    int-to-float v2, p3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lm4/h;->l:Ln4/a;

    invoke-virtual {v4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lm4/h;->g:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-static {v2, v0, v4}, Lv4/k;->c(III)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lm4/h;->u:Ln4/c;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lm4/h;->g:Landroid/graphics/Paint;

    invoke-static {p3, v2}, Lv4/l;->l(II)I

    move-result p3

    invoke-virtual {v0, v3, p2, p3}, Ln4/c;->b(Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V

    :cond_8
    iget-object p2, p0, Lm4/h;->f:Landroid/graphics/Path;

    iget-object p3, p0, Lm4/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_9
    return-void
.end method
