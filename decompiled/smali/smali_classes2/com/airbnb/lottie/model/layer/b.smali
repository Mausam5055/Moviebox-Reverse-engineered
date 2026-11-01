.class public Lcom/airbnb/lottie/model/layer/b;
.super Lcom/airbnb/lottie/model/layer/a;


# instance fields
.field private E:Ln4/a;

.field private final F:Ljava/util/List;

.field private final G:Landroid/graphics/RectF;

.field private final H:Landroid/graphics/RectF;

.field private final I:Landroid/graphics/Paint;

.field private J:Ljava/lang/Boolean;

.field private K:Ljava/lang/Boolean;

.field private L:F

.field private M:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/h;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->G:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->H:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->I:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/model/layer/b;->M:Z

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->v()Lq4/b;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lq4/b;->d()Ln4/d;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/b;->E:Ln4/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/b;->E:Ln4/a;

    invoke-virtual {p2, p0}, Ln4/a;->a(Ln4/a$b;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->E:Ln4/a;

    :goto_0
    new-instance p2, Landroidx/collection/x;

    invoke-virtual {p4}, Lcom/airbnb/lottie/h;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p2, v2}, Landroidx/collection/x;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move-object v3, v1

    :goto_1
    const/4 v4, 0x0

    if-ltz v2, :cond_4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/layer/Layer;

    invoke-static {p0, v5, p1, p4}, Lcom/airbnb/lottie/model/layer/a;->u(Lcom/airbnb/lottie/model/layer/b;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/model/layer/a;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/a;->z()Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->e()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/model/layer/a;->J(Lcom/airbnb/lottie/model/layer/a;)V

    move-object v3, v1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v4, Lcom/airbnb/lottie/model/layer/b$a;->a:[I

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->i()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v0, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v6

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {p2}, Landroidx/collection/x;->n()I

    move-result p1

    if-ge v4, p1, :cond_7

    invoke-virtual {p2, v4}, Landroidx/collection/x;->j(I)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/model/layer/a;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/layer/a;->z()Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/Layer;->k()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/model/layer/a;

    if-eqz p3, :cond_6

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/model/layer/a;->L(Lcom/airbnb/lottie/model/layer/a;)V

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method protected I(Lp4/d;ILjava/util/List;Lp4/d;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/airbnb/lottie/model/layer/a;->d(Lp4/d;ILjava/util/List;Lp4/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->K(Z)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/model/layer/a;->K(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public M(F)V
    .locals 4

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "CompositionLayer#setProgress"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Lcom/airbnb/lottie/model/layer/b;->L:F

    invoke-super {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->M(F)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->E:Ln4/a;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->O()Lcom/airbnb/lottie/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/h;->e()F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->c()Lcom/airbnb/lottie/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/h;->p()F

    move-result v0

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->E:Ln4/a;

    invoke-virtual {v2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->c()Lcom/airbnb/lottie/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/h;->i()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v2, v0

    div-float p1, v2, p1

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->E:Ln4/a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->s()F

    move-result v0

    sub-float/2addr p1, v0

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->w()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->j()Ljava/lang/String;

    move-result-object v0

    const-string v2, "__container"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->w()F

    move-result v0

    div-float/2addr p1, v0

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/model/layer/a;->M(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_5
    return-void
.end method

.method public P()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/model/layer/b;->L:F

    return v0
.end method

.method public Q()Z
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->K:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/a;

    instance-of v3, v2, Lcom/airbnb/lottie/model/layer/e;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/a;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->K:Ljava/lang/Boolean;

    return v1

    :cond_0
    instance-of v3, v2, Lcom/airbnb/lottie/model/layer/b;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/airbnb/lottie/model/layer/b;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/b;->Q()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->K:Ljava/lang/Boolean;

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->K:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->K:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->J:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->B()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->J:Ljava/lang/Boolean;

    return v1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/a;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->J:Ljava/lang/Boolean;

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->J:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->J:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public S(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/b;->M:Z

    return-void
.end method

.method public b(Ljava/lang/Object;Lw4/c;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->b(Ljava/lang/Object;Lw4/c;)V

    sget-object v0, Lcom/airbnb/lottie/p0;->E:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/b;->E:Ln4/a;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/b;->E:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/b;->E:Ln4/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->G:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/layer/a;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->G:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lcom/airbnb/lottie/model/layer/a;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->G:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "CompositionLayer#draw"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->H:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->m()F

    move-result v2

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->l()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->H:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->m0()Z

    move-result v0

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    if-eq p3, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/b;->I:Landroid/graphics/Paint;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/b;->H:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/b;->I:Landroid/graphics/Paint;

    invoke-static {p1, v4, v5}, Lv4/l;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    if-eqz v0, :cond_3

    move p3, v2

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_2
    if-ltz v0, :cond_7

    iget-boolean v2, p0, Lcom/airbnb/lottie/model/layer/b;->M:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->j()Ljava/lang/String;

    move-result-object v2

    const-string v4, "__container"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->H:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->H:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_4

    :cond_5
    :goto_3
    move v2, v3

    :goto_4
    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v2, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_8
    return-void
.end method
