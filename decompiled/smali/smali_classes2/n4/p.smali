.class public Ln4/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Matrix;

.field private final e:[F

.field private f:Ln4/a;

.field private g:Ln4/a;

.field private h:Ln4/a;

.field private i:Ln4/a;

.field private j:Ln4/a;

.field private k:Ln4/d;

.field private l:Ln4/d;

.field private m:Ln4/a;

.field private n:Ln4/a;

.field private final o:Z


# direct methods
.method public constructor <init>(Lq4/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lq4/n;->c()Lq4/e;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lq4/n;->c()Lq4/e;

    move-result-object v0

    invoke-virtual {v0}, Lq4/e;->a()Ln4/a;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ln4/p;->f:Ln4/a;

    invoke-virtual {p1}, Lq4/n;->f()Lq4/o;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lq4/n;->f()Lq4/o;

    move-result-object v0

    invoke-interface {v0}, Lq4/o;->a()Ln4/a;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Ln4/p;->g:Ln4/a;

    invoke-virtual {p1}, Lq4/n;->h()Lq4/g;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lq4/n;->h()Lq4/g;

    move-result-object v0

    invoke-virtual {v0}, Lq4/g;->a()Ln4/a;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Ln4/p;->h:Ln4/a;

    invoke-virtual {p1}, Lq4/n;->g()Lq4/b;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lq4/n;->g()Lq4/b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/b;->d()Ln4/d;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Ln4/p;->i:Ln4/a;

    invoke-virtual {p1}, Lq4/n;->i()Lq4/b;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lq4/n;->i()Lq4/b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/b;->d()Ln4/d;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Ln4/p;->k:Ln4/d;

    invoke-virtual {p1}, Lq4/n;->l()Z

    move-result v0

    iput-boolean v0, p0, Ln4/p;->o:Z

    iget-object v0, p0, Ln4/p;->k:Ln4/d;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ln4/p;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ln4/p;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ln4/p;->d:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Ln4/p;->e:[F

    goto :goto_5

    :cond_5
    iput-object v1, p0, Ln4/p;->b:Landroid/graphics/Matrix;

    iput-object v1, p0, Ln4/p;->c:Landroid/graphics/Matrix;

    iput-object v1, p0, Ln4/p;->d:Landroid/graphics/Matrix;

    iput-object v1, p0, Ln4/p;->e:[F

    :goto_5
    invoke-virtual {p1}, Lq4/n;->j()Lq4/b;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lq4/n;->j()Lq4/b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/b;->d()Ln4/d;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Ln4/p;->l:Ln4/d;

    invoke-virtual {p1}, Lq4/n;->e()Lq4/d;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lq4/n;->e()Lq4/d;

    move-result-object v0

    invoke-virtual {v0}, Lq4/d;->a()Ln4/a;

    move-result-object v0

    iput-object v0, p0, Ln4/p;->j:Ln4/a;

    :cond_7
    invoke-virtual {p1}, Lq4/n;->k()Lq4/b;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lq4/n;->k()Lq4/b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/b;->d()Ln4/d;

    move-result-object v0

    iput-object v0, p0, Ln4/p;->m:Ln4/a;

    goto :goto_7

    :cond_8
    iput-object v1, p0, Ln4/p;->m:Ln4/a;

    :goto_7
    invoke-virtual {p1}, Lq4/n;->d()Lq4/b;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lq4/n;->d()Lq4/b;

    move-result-object p1

    invoke-virtual {p1}, Lq4/b;->d()Ln4/d;

    move-result-object p1

    iput-object p1, p0, Ln4/p;->n:Ln4/a;

    goto :goto_8

    :cond_9
    iput-object v1, p0, Ln4/p;->n:Ln4/a;

    :goto_8
    return-void
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ln4/p;->e:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/model/layer/a;)V
    .locals 1

    iget-object v0, p0, Ln4/p;->j:Ln4/a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    iget-object v0, p0, Ln4/p;->m:Ln4/a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    iget-object v0, p0, Ln4/p;->n:Ln4/a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    iget-object v0, p0, Ln4/p;->f:Ln4/a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    iget-object v0, p0, Ln4/p;->g:Ln4/a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    iget-object v0, p0, Ln4/p;->h:Ln4/a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    iget-object v0, p0, Ln4/p;->i:Ln4/a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    iget-object v0, p0, Ln4/p;->k:Ln4/d;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    iget-object v0, p0, Ln4/p;->l:Ln4/d;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    return-void
.end method

.method public b(Ln4/a$b;)V
    .locals 1

    iget-object v0, p0, Ln4/p;->j:Ln4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ln4/a;->a(Ln4/a$b;)V

    :cond_0
    iget-object v0, p0, Ln4/p;->m:Ln4/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ln4/a;->a(Ln4/a$b;)V

    :cond_1
    iget-object v0, p0, Ln4/p;->n:Ln4/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ln4/a;->a(Ln4/a$b;)V

    :cond_2
    iget-object v0, p0, Ln4/p;->f:Ln4/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ln4/a;->a(Ln4/a$b;)V

    :cond_3
    iget-object v0, p0, Ln4/p;->g:Ln4/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ln4/a;->a(Ln4/a$b;)V

    :cond_4
    iget-object v0, p0, Ln4/p;->h:Ln4/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ln4/a;->a(Ln4/a$b;)V

    :cond_5
    iget-object v0, p0, Ln4/p;->i:Ln4/a;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Ln4/a;->a(Ln4/a$b;)V

    :cond_6
    iget-object v0, p0, Ln4/p;->k:Ln4/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ln4/a;->a(Ln4/a$b;)V

    :cond_7
    iget-object v0, p0, Ln4/p;->l:Ln4/d;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ln4/a;->a(Ln4/a$b;)V

    :cond_8
    return-void
.end method

.method public c(Ljava/lang/Object;Lw4/c;)Z
    .locals 3

    sget-object v0, Lcom/airbnb/lottie/p0;->f:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Ln4/p;->f:Ln4/a;

    if-nez p1, :cond_0

    new-instance p1, Ln4/q;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Ln4/q;-><init>(Lw4/c;Ljava/lang/Object;)V

    iput-object p1, p0, Ln4/p;->f:Ln4/a;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/p0;->g:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Ln4/p;->g:Ln4/a;

    if-nez p1, :cond_2

    new-instance p1, Ln4/q;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Ln4/q;-><init>(Lw4/c;Ljava/lang/Object;)V

    iput-object p1, p0, Ln4/p;->g:Ln4/a;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/airbnb/lottie/p0;->h:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Ln4/p;->g:Ln4/a;

    instance-of v1, v0, Ln4/n;

    if-eqz v1, :cond_4

    check-cast v0, Ln4/n;

    invoke-virtual {v0, p2}, Ln4/n;->s(Lw4/c;)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/airbnb/lottie/p0;->i:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Ln4/p;->g:Ln4/a;

    instance-of v1, v0, Ln4/n;

    if-eqz v1, :cond_5

    check-cast v0, Ln4/n;

    invoke-virtual {v0, p2}, Ln4/n;->t(Lw4/c;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/airbnb/lottie/p0;->o:Lw4/d;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Ln4/p;->h:Ln4/a;

    if-nez p1, :cond_6

    new-instance p1, Ln4/q;

    new-instance v0, Lw4/d;

    invoke-direct {v0}, Lw4/d;-><init>()V

    invoke-direct {p1, p2, v0}, Ln4/q;-><init>(Lw4/c;Ljava/lang/Object;)V

    iput-object p1, p0, Ln4/p;->h:Ln4/a;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/airbnb/lottie/p0;->p:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Ln4/p;->i:Ln4/a;

    if-nez p1, :cond_8

    new-instance p1, Ln4/q;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ln4/q;-><init>(Lw4/c;Ljava/lang/Object;)V

    iput-object p1, p0, Ln4/p;->i:Ln4/a;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/airbnb/lottie/p0;->c:Ljava/lang/Integer;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Ln4/p;->j:Ln4/a;

    if-nez p1, :cond_a

    new-instance p1, Ln4/q;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ln4/q;-><init>(Lw4/c;Ljava/lang/Object;)V

    iput-object p1, p0, Ln4/p;->j:Ln4/a;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/p0;->C:Ljava/lang/Float;

    const/high16 v2, 0x42c80000    # 100.0f

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Ln4/p;->m:Ln4/a;

    if-nez p1, :cond_c

    new-instance p1, Ln4/q;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ln4/q;-><init>(Lw4/c;Ljava/lang/Object;)V

    iput-object p1, p0, Ln4/p;->m:Ln4/a;

    goto :goto_0

    :cond_c
    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_d
    sget-object v0, Lcom/airbnb/lottie/p0;->D:Ljava/lang/Float;

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Ln4/p;->n:Ln4/a;

    if-nez p1, :cond_e

    new-instance p1, Ln4/q;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ln4/q;-><init>(Lw4/c;Ljava/lang/Object;)V

    iput-object p1, p0, Ln4/p;->n:Ln4/a;

    goto :goto_0

    :cond_e
    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_f
    sget-object v0, Lcom/airbnb/lottie/p0;->q:Ljava/lang/Float;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Ln4/p;->k:Ln4/d;

    if-nez p1, :cond_10

    new-instance p1, Ln4/d;

    new-instance v0, Lw4/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lw4/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ln4/d;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Ln4/p;->k:Ln4/d;

    :cond_10
    iget-object p1, p0, Ln4/p;->k:Ln4/d;

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_11
    sget-object v0, Lcom/airbnb/lottie/p0;->r:Ljava/lang/Float;

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Ln4/p;->l:Ln4/d;

    if-nez p1, :cond_12

    new-instance p1, Ln4/d;

    new-instance v0, Lw4/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lw4/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ln4/d;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Ln4/p;->l:Ln4/d;

    :cond_12
    iget-object p1, p0, Ln4/p;->l:Ln4/d;

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public e()Ln4/a;
    .locals 1

    iget-object v0, p0, Ln4/p;->n:Ln4/a;

    return-object v0
.end method

.method public f()Landroid/graphics/Matrix;
    .locals 13

    iget-object v0, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Ln4/p;->g:Ln4/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v3, v1

    if-nez v4, :cond_0

    iget v4, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-boolean v2, p0, Ln4/p;->o:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ln4/a;->f()F

    move-result v2

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const v5, 0x38d1b717    # 1.0E-4f

    add-float/2addr v5, v2

    invoke-virtual {v0, v5}, Ln4/a;->n(F)V

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Ln4/a;->n(F)V

    iget v0, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    float-to-double v2, v0

    iget v0, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    iget-object v0, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ln4/p;->i:Ln4/a;

    if-eqz v0, :cond_4

    instance-of v2, v0, Ln4/q;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_3
    check-cast v0, Ln4/d;

    invoke-virtual {v0}, Ln4/d;->q()F

    move-result v0

    :goto_0
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    iget-object v2, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_4
    :goto_1
    iget-object v0, p0, Ln4/p;->k:Ln4/d;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_7

    iget-object v3, p0, Ln4/p;->l:Ln4/d;

    const/high16 v4, 0x42b40000    # 90.0f

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ln4/d;->q()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v3, v5

    :goto_2
    iget-object v5, p0, Ln4/p;->l:Ln4/d;

    if-nez v5, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Ln4/d;->q()F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    :goto_3
    invoke-virtual {v0}, Ln4/d;->q()F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-direct {p0}, Ln4/p;->d()V

    iget-object v5, p0, Ln4/p;->e:[F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v7, 0x1

    aput v4, v5, v7

    neg-float v8, v4

    const/4 v9, 0x3

    aput v8, v5, v9

    const/4 v10, 0x4

    aput v3, v5, v10

    const/16 v11, 0x8

    aput v2, v5, v11

    iget-object v12, p0, Ln4/p;->b:Landroid/graphics/Matrix;

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Ln4/p;->d()V

    iget-object v5, p0, Ln4/p;->e:[F

    aput v2, v5, v6

    aput v0, v5, v9

    aput v2, v5, v10

    aput v2, v5, v11

    iget-object v0, p0, Ln4/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Ln4/p;->d()V

    iget-object v0, p0, Ln4/p;->e:[F

    aput v3, v0, v6

    aput v8, v0, v7

    aput v4, v0, v9

    aput v3, v0, v10

    aput v2, v0, v11

    iget-object v3, p0, Ln4/p;->d:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Ln4/p;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Ln4/p;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Ln4/p;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Ln4/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Ln4/p;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_7
    iget-object v0, p0, Ln4/p;->h:Ln4/a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw4/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lw4/d;->b()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lw4/d;->c()F

    move-result v3

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lw4/d;->b()F

    move-result v3

    invoke-virtual {v0}, Lw4/d;->c()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_9
    iget-object v0, p0, Ln4/p;->f:Ln4/a;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_b

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_a

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_b

    :cond_a
    iget-object v1, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_b
    iget-object v0, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public g(F)Landroid/graphics/Matrix;
    .locals 9

    iget-object v0, p0, Ln4/p;->g:Ln4/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_0
    iget-object v2, p0, Ln4/p;->h:Ln4/a;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw4/d;

    :goto_1
    iget-object v3, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    iget-object v3, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Lw4/d;->b()F

    move-result v3

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2}, Lw4/d;->c()F

    move-result v2

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    iget-object v0, p0, Ln4/p;->i:Ln4/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Ln4/p;->f:Ln4/a;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    :goto_2
    iget-object v2, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    if-nez v1, :cond_5

    move v3, p1

    goto :goto_3

    :cond_5
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_7
    iget-object p1, p0, Ln4/p;->a:Landroid/graphics/Matrix;

    return-object p1
.end method

.method public h()Ln4/a;
    .locals 1

    iget-object v0, p0, Ln4/p;->j:Ln4/a;

    return-object v0
.end method

.method public i()Ln4/a;
    .locals 1

    iget-object v0, p0, Ln4/p;->m:Ln4/a;

    return-object v0
.end method

.method public j(F)V
    .locals 1

    iget-object v0, p0, Ln4/p;->j:Ln4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ln4/a;->n(F)V

    :cond_0
    iget-object v0, p0, Ln4/p;->m:Ln4/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ln4/a;->n(F)V

    :cond_1
    iget-object v0, p0, Ln4/p;->n:Ln4/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ln4/a;->n(F)V

    :cond_2
    iget-object v0, p0, Ln4/p;->f:Ln4/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ln4/a;->n(F)V

    :cond_3
    iget-object v0, p0, Ln4/p;->g:Ln4/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ln4/a;->n(F)V

    :cond_4
    iget-object v0, p0, Ln4/p;->h:Ln4/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ln4/a;->n(F)V

    :cond_5
    iget-object v0, p0, Ln4/p;->i:Ln4/a;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Ln4/a;->n(F)V

    :cond_6
    iget-object v0, p0, Ln4/p;->k:Ln4/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ln4/a;->n(F)V

    :cond_7
    iget-object v0, p0, Ln4/p;->l:Ln4/d;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ln4/a;->n(F)V

    :cond_8
    return-void
.end method
