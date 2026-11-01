.class public final Landroidx/dynamicanimation/animation/d;
.super Landroidx/dynamicanimation/animation/b;


# instance fields
.field private A:Landroidx/dynamicanimation/animation/e;

.field private B:F

.field private C:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/b;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/c;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Landroidx/dynamicanimation/animation/d;->B:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/d;->C:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/c;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/b;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/c;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Landroidx/dynamicanimation/animation/d;->B:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/d;->C:Z

    new-instance p1, Landroidx/dynamicanimation/animation/e;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/e;-><init>(F)V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    return-void
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/e;->a()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Landroidx/dynamicanimation/animation/b;->g:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    iget v2, p0, Landroidx/dynamicanimation/animation/b;->h:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be less than the min value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public i()V
    .locals 3

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/d;->p()V

    iget-object v0, p0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/b;->d()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/dynamicanimation/animation/e;->g(D)V

    invoke-super {p0}, Landroidx/dynamicanimation/animation/b;->i()V

    return-void
.end method

.method k(J)Z
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/d;->C:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    iget v1, v0, Landroidx/dynamicanimation/animation/d;->B:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {v6, v1}, Landroidx/dynamicanimation/animation/e;->e(F)Landroidx/dynamicanimation/animation/e;

    iput v5, v0, Landroidx/dynamicanimation/animation/d;->B:F

    :cond_0
    iget-object v1, v0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/e;->a()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/b;->b:F

    iput v4, v0, Landroidx/dynamicanimation/animation/b;->a:F

    iput-boolean v3, v0, Landroidx/dynamicanimation/animation/d;->C:Z

    return v2

    :cond_1
    iget v1, v0, Landroidx/dynamicanimation/animation/d;->B:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/e;->a()F

    iget-object v6, v0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    iget v1, v0, Landroidx/dynamicanimation/animation/b;->b:F

    float-to-double v7, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/b;->a:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Landroidx/dynamicanimation/animation/e;->h(DDJ)Landroidx/dynamicanimation/animation/b$o;

    move-result-object v1

    iget-object v6, v0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    iget v7, v0, Landroidx/dynamicanimation/animation/d;->B:F

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/e;->e(F)Landroidx/dynamicanimation/animation/e;

    iput v5, v0, Landroidx/dynamicanimation/animation/d;->B:F

    iget-object v13, v0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    iget v5, v1, Landroidx/dynamicanimation/animation/b$o;->a:F

    float-to-double v14, v5

    iget v1, v1, Landroidx/dynamicanimation/animation/b$o;->b:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/e;->h(DDJ)Landroidx/dynamicanimation/animation/b$o;

    move-result-object v1

    iget v5, v1, Landroidx/dynamicanimation/animation/b$o;->a:F

    iput v5, v0, Landroidx/dynamicanimation/animation/b;->b:F

    iget v1, v1, Landroidx/dynamicanimation/animation/b$o;->b:F

    iput v1, v0, Landroidx/dynamicanimation/animation/b;->a:F

    goto :goto_0

    :cond_2
    iget-object v5, v0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    iget v1, v0, Landroidx/dynamicanimation/animation/b;->b:F

    float-to-double v6, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/b;->a:F

    float-to-double v8, v1

    move-wide/from16 v10, p1

    invoke-virtual/range {v5 .. v11}, Landroidx/dynamicanimation/animation/e;->h(DDJ)Landroidx/dynamicanimation/animation/b$o;

    move-result-object v1

    iget v5, v1, Landroidx/dynamicanimation/animation/b$o;->a:F

    iput v5, v0, Landroidx/dynamicanimation/animation/b;->b:F

    iget v1, v1, Landroidx/dynamicanimation/animation/b$o;->b:F

    iput v1, v0, Landroidx/dynamicanimation/animation/b;->a:F

    :goto_0
    iget v1, v0, Landroidx/dynamicanimation/animation/b;->b:F

    iget v5, v0, Landroidx/dynamicanimation/animation/b;->h:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/b;->b:F

    iget v5, v0, Landroidx/dynamicanimation/animation/b;->g:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/b;->b:F

    iget v5, v0, Landroidx/dynamicanimation/animation/b;->a:F

    invoke-virtual {v0, v1, v5}, Landroidx/dynamicanimation/animation/d;->o(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/e;->a()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/b;->b:F

    iput v4, v0, Landroidx/dynamicanimation/animation/b;->a:F

    return v2

    :cond_3
    return v3
.end method

.method public l(F)V
    .locals 1

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/dynamicanimation/animation/d;->B:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/dynamicanimation/animation/e;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/e;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/e;->e(F)Landroidx/dynamicanimation/animation/e;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/d;->i()V

    :goto_0
    return-void
.end method

.method public m()Z
    .locals 4

    iget-object v0, p0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/e;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Landroidx/dynamicanimation/animation/e;
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    return-object v0
.end method

.method o(FF)Z
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/e;->c(FF)Z

    move-result p1

    return p1
.end method

.method public q(Landroidx/dynamicanimation/animation/e;)Landroidx/dynamicanimation/animation/d;
    .locals 0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/d;->A:Landroidx/dynamicanimation/animation/e;

    return-object p0
.end method

.method public r()V
    .locals 2

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/d;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/b;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/d;->C:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Spring animations can only come to an end when there is damping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
