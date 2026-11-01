.class public Lm4/p;
.super Ljava/lang/Object;

# interfaces
.implements Lm4/e;
.implements Lm4/m;
.implements Lm4/j;
.implements Ln4/a$b;
.implements Lm4/k;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Path;

.field private final c:Lcom/airbnb/lottie/LottieDrawable;

.field private final d:Lcom/airbnb/lottie/model/layer/a;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Ln4/a;

.field private final h:Ln4/a;

.field private final i:Ln4/p;

.field private j:Lm4/d;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lr4/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lm4/p;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm4/p;->b:Landroid/graphics/Path;

    iput-object p1, p0, Lm4/p;->c:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lm4/p;->d:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {p3}, Lr4/g;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lm4/p;->e:Ljava/lang/String;

    invoke-virtual {p3}, Lr4/g;->f()Z

    move-result p1

    iput-boolean p1, p0, Lm4/p;->f:Z

    invoke-virtual {p3}, Lr4/g;->b()Lq4/b;

    move-result-object p1

    invoke-virtual {p1}, Lq4/b;->d()Ln4/d;

    move-result-object p1

    iput-object p1, p0, Lm4/p;->g:Ln4/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {p3}, Lr4/g;->d()Lq4/b;

    move-result-object p1

    invoke-virtual {p1}, Lq4/b;->d()Ln4/d;

    move-result-object p1

    iput-object p1, p0, Lm4/p;->h:Ln4/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {p3}, Lr4/g;->e()Lq4/n;

    move-result-object p1

    invoke-virtual {p1}, Lq4/n;->b()Ln4/p;

    move-result-object p1

    iput-object p1, p0, Lm4/p;->i:Ln4/p;

    invoke-virtual {p1, p2}, Ln4/p;->a(Lcom/airbnb/lottie/model/layer/a;)V

    invoke-virtual {p1, p0}, Ln4/p;->b(Ln4/a$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lm4/p;->c:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/lang/Object;Lw4/c;)V
    .locals 1

    iget-object v0, p0, Lm4/p;->i:Ln4/p;

    invoke-virtual {v0, p1, p2}, Ln4/p;->c(Ljava/lang/Object;Lw4/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/p0;->u:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lm4/p;->g:Ln4/a;

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/p0;->v:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lm4/p;->h:Ln4/a;

    invoke-virtual {p1, p2}, Ln4/a;->o(Lw4/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lm4/p;->j:Lm4/d;

    invoke-virtual {v0, p1, p2}, Lm4/d;->c(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public d(Lp4/d;ILjava/util/List;Lp4/d;)V
    .locals 3

    invoke-static {p1, p2, p3, p4, p0}, Lv4/k;->k(Lp4/d;ILjava/util/List;Lp4/d;Lm4/k;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lm4/p;->j:Lm4/d;

    invoke-virtual {v1}, Lm4/d;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lm4/p;->j:Lm4/d;

    invoke-virtual {v1}, Lm4/d;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm4/c;

    instance-of v2, v1, Lm4/k;

    if-eqz v2, :cond_0

    check-cast v1, Lm4/k;

    invoke-static {p1, p2, p3, p4, v1}, Lv4/k;->k(Lp4/d;ILjava/util/List;Lp4/d;Lm4/k;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object v0, p0, Lm4/p;->j:Lm4/d;

    invoke-virtual {v0, p1, p2, p3}, Lm4/d;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public g(Ljava/util/ListIterator;)V
    .locals 8

    iget-object v0, p0, Lm4/p;->j:Lm4/d;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm4/c;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lm4/d;

    iget-object v2, p0, Lm4/p;->c:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v3, p0, Lm4/p;->d:Lcom/airbnb/lottie/model/layer/a;

    iget-boolean v5, p0, Lm4/p;->f:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lm4/d;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Ljava/lang/String;ZLjava/util/List;Lq4/n;)V

    iput-object p1, p0, Lm4/p;->j:Lm4/d;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm4/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, Lm4/p;->j:Lm4/d;

    invoke-virtual {v0}, Lm4/d;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lm4/p;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lm4/p;->g:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lm4/p;->h:Ln4/a;

    invoke-virtual {v2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lm4/p;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lm4/p;->i:Ln4/p;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Ln4/p;->g(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lm4/p;->b:Landroid/graphics/Path;

    iget-object v4, p0, Lm4/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm4/p;->b:Landroid/graphics/Path;

    return-object v0
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, Lm4/p;->g:Ln4/a;

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lm4/p;->h:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lm4/p;->i:Ln4/p;

    invoke-virtual {v2}, Ln4/p;->i()Ln4/a;

    move-result-object v2

    invoke-virtual {v2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lm4/p;->i:Ln4/p;

    invoke-virtual {v4}, Ln4/p;->e()Ln4/a;

    move-result-object v4

    invoke-virtual {v4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Lm4/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lm4/p;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, Lm4/p;->i:Ln4/p;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Ln4/p;->g(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    invoke-static {v2, v4, v7}, Lv4/k;->i(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lm4/p;->j:Lm4/d;

    iget-object v7, p0, Lm4/p;->a:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Lm4/d;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
