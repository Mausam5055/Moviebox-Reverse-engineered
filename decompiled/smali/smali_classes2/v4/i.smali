.class public Lv4/i;
.super Lv4/c;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private d:F

.field private e:Z

.field private f:J

.field private g:F

.field private h:F

.field private i:I

.field private j:F

.field private k:F

.field private l:Lcom/airbnb/lottie/h;

.field protected m:Z

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lv4/c;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lv4/i;->d:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv4/i;->e:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lv4/i;->f:J

    const/4 v1, 0x0

    iput v1, p0, Lv4/i;->g:F

    iput v1, p0, Lv4/i;->h:F

    iput v0, p0, Lv4/i;->i:I

    const/high16 v1, -0x31000000

    iput v1, p0, Lv4/i;->j:F

    const/high16 v1, 0x4f000000

    iput v1, p0, Lv4/i;->k:F

    iput-boolean v0, p0, Lv4/i;->m:Z

    iput-boolean v0, p0, Lv4/i;->n:Z

    return-void
.end method

.method private G()V
    .locals 6

    iget-object v0, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lv4/i;->h:F

    iget v1, p0, Lv4/i;->j:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lv4/i;->k:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lv4/i;->j:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lv4/i;->k:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lv4/i;->h:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const-string v1, "Frame must be [%f,%f]. It is %f"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n()F
    .locals 2

    iget-object v0, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    if-nez v0, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    invoke-virtual {v0}, Lcom/airbnb/lottie/h;->i()F

    move-result v0

    div-float/2addr v1, v0

    iget v0, p0, Lv4/i;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v1, v0

    return v1
.end method

.method private r()Z
    .locals 2

    invoke-virtual {p0}, Lv4/i;->q()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public A(F)V
    .locals 2

    iget v0, p0, Lv4/i;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lv4/i;->p()F

    move-result v0

    invoke-virtual {p0}, Lv4/i;->o()F

    move-result v1

    invoke-static {p1, v0, v1}, Lv4/k;->b(FFF)F

    move-result p1

    iput p1, p0, Lv4/i;->g:F

    iget-boolean v0, p0, Lv4/i;->n:Z

    if-eqz v0, :cond_1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    :cond_1
    iput p1, p0, Lv4/i;->h:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv4/i;->f:J

    invoke-virtual {p0}, Lv4/c;->i()V

    return-void
.end method

.method public B(F)V
    .locals 1

    iget v0, p0, Lv4/i;->j:F

    invoke-virtual {p0, v0, p1}, Lv4/i;->C(FF)V

    return-void
.end method

.method public C(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/h;->p()F

    move-result v0

    :goto_0
    iget-object v1, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/h;->f()F

    move-result v1

    :goto_1
    invoke-static {p1, v0, v1}, Lv4/k;->b(FFF)F

    move-result p1

    invoke-static {p2, v0, v1}, Lv4/k;->b(FFF)F

    move-result p2

    iget v0, p0, Lv4/i;->j:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget v0, p0, Lv4/i;->k:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    :cond_2
    iput p1, p0, Lv4/i;->j:F

    iput p2, p0, Lv4/i;->k:F

    iget v0, p0, Lv4/i;->h:F

    invoke-static {v0, p1, p2}, Lv4/k;->b(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lv4/i;->A(F)V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D(I)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lv4/i;->k:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lv4/i;->C(FF)V

    return-void
.end method

.method public E(F)V
    .locals 0

    iput p1, p0, Lv4/i;->d:F

    return-void
.end method

.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, Lv4/i;->n:Z

    return-void
.end method

.method a()V
    .locals 1

    invoke-super {p0}, Lv4/c;->a()V

    invoke-direct {p0}, Lv4/i;->r()Z

    move-result v0

    invoke-virtual {p0, v0}, Lv4/c;->b(Z)V

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Lv4/i;->a()V

    invoke-virtual {p0}, Lv4/i;->v()V

    return-void
.end method

.method public doFrame(J)V
    .locals 6

    invoke-virtual {p0}, Lv4/i;->u()V

    iget-object v0, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lv4/i;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "LottieValueAnimator#doFrame"

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_1
    iget-wide v2, p0, Lv4/i;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sub-long v4, p1, v2

    :goto_0
    invoke-direct {p0}, Lv4/i;->n()F

    move-result v0

    long-to-float v2, v4

    div-float/2addr v2, v0

    iget v0, p0, Lv4/i;->g:F

    invoke-direct {p0}, Lv4/i;->r()Z

    move-result v3

    if-eqz v3, :cond_3

    neg-float v2, v2

    :cond_3
    add-float/2addr v0, v2

    invoke-virtual {p0}, Lv4/i;->p()F

    move-result v2

    invoke-virtual {p0}, Lv4/i;->o()F

    move-result v3

    invoke-static {v0, v2, v3}, Lv4/k;->d(FFF)Z

    move-result v2

    iget v3, p0, Lv4/i;->g:F

    invoke-virtual {p0}, Lv4/i;->p()F

    move-result v4

    invoke-virtual {p0}, Lv4/i;->o()F

    move-result v5

    invoke-static {v0, v4, v5}, Lv4/k;->b(FFF)F

    move-result v0

    iput v0, p0, Lv4/i;->g:F

    iget-boolean v4, p0, Lv4/i;->n:Z

    if-eqz v4, :cond_4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    :cond_4
    iput v0, p0, Lv4/i;->h:F

    iput-wide p1, p0, Lv4/i;->f:J

    iget-boolean v0, p0, Lv4/i;->n:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lv4/i;->g:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lv4/c;->i()V

    :cond_6
    if-nez v2, :cond_b

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    iget v0, p0, Lv4/i;->i:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-lt v0, v2, :cond_8

    iget p1, p0, Lv4/i;->d:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    invoke-virtual {p0}, Lv4/i;->p()F

    move-result p1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lv4/i;->o()F

    move-result p1

    :goto_1
    iput p1, p0, Lv4/i;->g:F

    iput p1, p0, Lv4/i;->h:F

    invoke-virtual {p0}, Lv4/i;->v()V

    invoke-direct {p0}, Lv4/i;->r()Z

    move-result p1

    invoke-virtual {p0, p1}, Lv4/c;->b(Z)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lv4/c;->e()V

    iget v0, p0, Lv4/i;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv4/i;->i:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    iget-boolean v0, p0, Lv4/i;->e:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lv4/i;->e:Z

    invoke-virtual {p0}, Lv4/i;->y()V

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lv4/i;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lv4/i;->o()F

    move-result v0

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lv4/i;->p()F

    move-result v0

    :goto_2
    iput v0, p0, Lv4/i;->g:F

    iput v0, p0, Lv4/i;->h:F

    :goto_3
    iput-wide p1, p0, Lv4/i;->f:J

    :cond_b
    :goto_4
    invoke-direct {p0}, Lv4/i;->G()V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_c
    :goto_5
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 3

    iget-object v0, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lv4/i;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lv4/i;->o()F

    move-result v0

    iget v1, p0, Lv4/i;->h:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lv4/i;->o()F

    move-result v1

    invoke-virtual {p0}, Lv4/i;->p()F

    move-result v2

    :goto_0
    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lv4/i;->h:F

    invoke-virtual {p0}, Lv4/i;->p()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lv4/i;->o()F

    move-result v1

    invoke-virtual {p0}, Lv4/i;->p()F

    move-result v2

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lv4/i;->l()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/h;->d()F

    move-result v0

    float-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lv4/i;->m:Z

    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    const/high16 v0, -0x31000000

    iput v0, p0, Lv4/i;->j:F

    const/high16 v0, 0x4f000000

    iput v0, p0, Lv4/i;->k:F

    return-void
.end method

.method public k()V
    .locals 1

    invoke-virtual {p0}, Lv4/i;->v()V

    invoke-direct {p0}, Lv4/i;->r()Z

    move-result v0

    invoke-virtual {p0, v0}, Lv4/c;->b(Z)V

    return-void
.end method

.method public l()F
    .locals 3

    iget-object v0, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lv4/i;->h:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/h;->p()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    invoke-virtual {v0}, Lcom/airbnb/lottie/h;->f()F

    move-result v0

    iget-object v2, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    invoke-virtual {v2}, Lcom/airbnb/lottie/h;->p()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lv4/i;->h:F

    return v0
.end method

.method public o()F
    .locals 3

    iget-object v0, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lv4/i;->k:F

    const/high16 v2, 0x4f000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/h;->f()F

    move-result v1

    :cond_1
    return v1
.end method

.method public p()F
    .locals 3

    iget-object v0, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lv4/i;->j:F

    const/high16 v2, -0x31000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/h;->p()F

    move-result v1

    :cond_1
    return v1
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lv4/i;->d:F

    return v0
.end method

.method public s()V
    .locals 0

    invoke-virtual {p0}, Lv4/i;->v()V

    invoke-virtual {p0}, Lv4/c;->c()V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lv4/i;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lv4/i;->e:Z

    invoke-virtual {p0}, Lv4/i;->y()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv4/i;->m:Z

    invoke-direct {p0}, Lv4/i;->r()Z

    move-result v0

    invoke-virtual {p0, v0}, Lv4/c;->g(Z)V

    invoke-direct {p0}, Lv4/i;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv4/i;->o()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv4/i;->p()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lv4/i;->A(F)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv4/i;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lv4/i;->i:I

    invoke-virtual {p0}, Lv4/i;->u()V

    return-void
.end method

.method protected u()V
    .locals 1

    invoke-virtual {p0}, Lv4/i;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lv4/i;->w(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method protected v()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lv4/i;->w(Z)V

    return-void
.end method

.method protected w(Z)V
    .locals 1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lv4/i;->m:Z

    :cond_0
    return-void
.end method

.method public x()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv4/i;->m:Z

    invoke-virtual {p0}, Lv4/i;->u()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv4/i;->f:J

    invoke-direct {p0}, Lv4/i;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv4/i;->m()F

    move-result v0

    invoke-virtual {p0}, Lv4/i;->p()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lv4/i;->o()F

    move-result v0

    invoke-virtual {p0, v0}, Lv4/i;->A(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lv4/i;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lv4/i;->m()F

    move-result v0

    invoke-virtual {p0}, Lv4/i;->o()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lv4/i;->p()F

    move-result v0

    invoke-virtual {p0, v0}, Lv4/i;->A(F)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lv4/c;->f()V

    return-void
.end method

.method public y()V
    .locals 1

    invoke-virtual {p0}, Lv4/i;->q()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lv4/i;->E(F)V

    return-void
.end method

.method public z(Lcom/airbnb/lottie/h;)V
    .locals 2

    iget-object v0, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lv4/i;->l:Lcom/airbnb/lottie/h;

    if-eqz v0, :cond_1

    iget v0, p0, Lv4/i;->j:F

    invoke-virtual {p1}, Lcom/airbnb/lottie/h;->p()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lv4/i;->k:F

    invoke-virtual {p1}, Lcom/airbnb/lottie/h;->f()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lv4/i;->C(FF)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/h;->p()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/h;->f()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lv4/i;->C(FF)V

    :goto_1
    iget p1, p0, Lv4/i;->h:F

    const/4 v0, 0x0

    iput v0, p0, Lv4/i;->h:F

    iput v0, p0, Lv4/i;->g:F

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lv4/i;->A(F)V

    invoke-virtual {p0}, Lv4/c;->i()V

    return-void
.end method
