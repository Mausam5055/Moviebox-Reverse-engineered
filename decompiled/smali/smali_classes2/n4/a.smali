.class public abstract Ln4/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4/a$d;,
        Ln4/a$b;,
        Ln4/a$c;,
        Ln4/a$f;,
        Ln4/a$e;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;

.field private b:Z

.field private final c:Ln4/a$d;

.field protected d:F

.field protected e:Lw4/c;

.field private f:Ljava/lang/Object;

.field private g:F

.field private h:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ln4/a;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln4/a;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Ln4/a;->d:F

    const/4 v0, 0x0

    iput-object v0, p0, Ln4/a;->f:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Ln4/a;->g:F

    iput v0, p0, Ln4/a;->h:F

    invoke-static {p1}, Ln4/a;->p(Ljava/util/List;)Ln4/a$d;

    move-result-object p1

    iput-object p1, p0, Ln4/a;->c:Ln4/a$d;

    return-void
.end method

.method private g()F
    .locals 2

    iget v0, p0, Ln4/a;->g:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ln4/a;->c:Ln4/a$d;

    invoke-interface {v0}, Ln4/a$d;->d()F

    move-result v0

    iput v0, p0, Ln4/a;->g:F

    :cond_0
    iget v0, p0, Ln4/a;->g:F

    return v0
.end method

.method private static p(Ljava/util/List;)Ln4/a$d;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ln4/a$c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ln4/a$c;-><init>(Ln4/a$a;)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ln4/a$f;

    invoke-direct {v0, p0}, Ln4/a$f;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1
    new-instance v0, Ln4/a$e;

    invoke-direct {v0, p0}, Ln4/a$e;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a(Ln4/a$b;)V
    .locals 1

    iget-object v0, p0, Ln4/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()Lw4/a;
    .locals 3

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "BaseKeyframeAnimation#getCurrentKeyframe"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ln4/a;->c:Ln4/a$d;

    invoke-interface {v0}, Ln4/a$d;->b()Lw4/a;

    move-result-object v0

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_1
    return-object v0
.end method

.method c()F
    .locals 2

    iget v0, p0, Ln4/a;->h:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ln4/a;->c:Ln4/a$d;

    invoke-interface {v0}, Ln4/a$d;->e()F

    move-result v0

    iput v0, p0, Ln4/a;->h:F

    :cond_0
    iget v0, p0, Ln4/a;->h:F

    return v0
.end method

.method protected d()F
    .locals 2

    invoke-virtual {p0}, Ln4/a;->b()Lw4/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw4/a;->i()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lw4/a;->d:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ln4/a;->e()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method e()F
    .locals 3

    iget-boolean v0, p0, Ln4/a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ln4/a;->b()Lw4/a;

    move-result-object v0

    invoke-virtual {v0}, Lw4/a;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget v1, p0, Ln4/a;->d:F

    invoke-virtual {v0}, Lw4/a;->f()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Lw4/a;->c()F

    move-result v2

    invoke-virtual {v0}, Lw4/a;->f()F

    move-result v0

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public f()F
    .locals 1

    iget v0, p0, Ln4/a;->d:F

    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ln4/a;->e()F

    move-result v0

    iget-object v1, p0, Ln4/a;->e:Lw4/c;

    if-nez v1, :cond_0

    iget-object v1, p0, Ln4/a;->c:Ln4/a$d;

    invoke-interface {v1, v0}, Ln4/a$d;->a(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ln4/a;->f:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ln4/a;->b()Lw4/a;

    move-result-object v1

    iget-object v2, v1, Lw4/a;->e:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lw4/a;->f:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_1

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, v1, Lw4/a;->f:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Ln4/a;->j(Lw4/a;FFF)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ln4/a;->d()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Ln4/a;->i(Lw4/a;F)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ln4/a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method abstract i(Lw4/a;F)Ljava/lang/Object;
.end method

.method protected j(Lw4/a;FFF)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This animation does not support split dimensions!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Ln4/a;->e:Lw4/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 3

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "BaseKeyframeAnimation#notifyListeners"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ln4/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ln4/a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln4/a$b;

    invoke-interface {v2}, Ln4/a$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_2
    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln4/a;->b:Z

    return-void
.end method

.method public n(F)V
    .locals 2

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "BaseKeyframeAnimation#setProgress"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ln4/a;->c:Ln4/a$d;

    invoke-interface {v0}, Ln4/a$d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Ln4/a;->g()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    invoke-direct {p0}, Ln4/a;->g()F

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ln4/a;->c()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Ln4/a;->c()F

    move-result p1

    :cond_4
    :goto_0
    iget v0, p0, Ln4/a;->d:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_5
    return-void

    :cond_6
    iput p1, p0, Ln4/a;->d:F

    iget-object v0, p0, Ln4/a;->c:Ln4/a$d;

    invoke-interface {v0, p1}, Ln4/a$d;->c(F)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ln4/a;->l()V

    :cond_7
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_8
    return-void
.end method

.method public o(Lw4/c;)V
    .locals 2

    iget-object v0, p0, Ln4/a;->e:Lw4/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw4/c;->c(Ln4/a;)V

    :cond_0
    iput-object p1, p0, Ln4/a;->e:Lw4/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lw4/c;->c(Ln4/a;)V

    :cond_1
    return-void
.end method
